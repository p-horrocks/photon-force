#include "application.h"

#include "dma.h"
#include "neopix.h"

// Each pixel requires a value per bit per colour component. One extra
// to reset the output value when finished.
#define NEOPIX_COUNT 24
#define BUF_ELEMENTS ((NEOPIX_COUNT * 3 * 8) + 1)

namespace neopix
{

namespace
{

uint8_t _red   = 0;
uint8_t _green = 0;
uint8_t _blue  = 128;

uint32_t _lastUpdate               = 0;
uint8_t _dmaActive                 = 0;
uint16_t _pwmBuffer[BUF_ELEMENTS]  = { 0 };
uint8_t _fadeFactors[NEOPIX_COUNT] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 6, 12, 36, 70, 135, 255 };
uint8_t _currentPix                = 0;

// Calcuate a colour channel value given the base value and the stage (used to
// determine the amount of fade to apply).
uint8_t pixComponentValue(uint8_t base, int stage)
{
    uint32_t v = _fadeFactors[stage];
    v *= base;
    return (uint8_t)(v >> 8);
}

// Converts a sinle colour channel value to its PWM representation and appends
// it to the PWM buffer ready for transmission to the hardware.
void appendToPwm(uint8_t value, int& pos)
{
    if(pos >= BUF_ELEMENTS)
        return;

    for(int i = 0; i < 8; ++i)
    {
        if(value & 0x80)
        {
            _pwmBuffer[pos++] = 16;
        }
        else
        {
            _pwmBuffer[pos++] = 8;
        }
        value <<= 1;
    }
}

} // namespace

void init()
{
    // The firmware PWM implementation can't be used because it only uses a
    // 500Hz signal. The NeoPixels use a 800kHz signal.
    RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB, ENABLE);
    RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_DMA1, ENABLE);
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE);

    GPIO_InitTypeDef gpioInit = { 0 };
    gpioInit.GPIO_Pin   = GPIO_Pin_4;
    gpioInit.GPIO_Mode  = GPIO_Mode_AF;
    gpioInit.GPIO_OType = GPIO_OType_PP;
    gpioInit.GPIO_Speed = GPIO_Speed_100MHz;
    gpioInit.GPIO_PuPd  = GPIO_PuPd_NOPULL;
    GPIO_Init(GPIOB, &gpioInit);
    GPIO_PinAFConfig(GPIOB, GPIO_PinSource4, GPIO_AF_TIM3);

    // Choose a prescaler value to give a 20MHz PWM. With a period of 25 that
    // gives a PWM frequency of 800kHz. A 0.4us pulse (to signify a 0) will be 8
    // ticks while a 0.8us pulse (for a 1) will be 16 ticks.
    const uint32_t frequency = 800000 * 25;
    const uint32_t timClock  = SystemCoreClock / 2; // TIM3 runs at half the system frequency.

    // Timer configuration.
    TIM_TimeBaseInitTypeDef timInit = { 0 };
    timInit.TIM_Period        = 25;
    timInit.TIM_Prescaler     = (timClock / frequency) - 1;
    timInit.TIM_ClockDivision = 0;
    timInit.TIM_CounterMode   = TIM_CounterMode_Up;
    TIM_DeInit(TIM3);
    TIM_TimeBaseInit(TIM3, &timInit);

    // Timer output channel configuration.
    TIM_OCInitTypeDef ocInit = { 0 };
    ocInit.TIM_OCMode        = TIM_OCMode_PWM1;
    ocInit.TIM_OutputState   = TIM_OutputState_Enable;
    ocInit.TIM_Pulse         = 0;
    ocInit.TIM_OCPolarity    = TIM_OCPolarity_High;
    ocInit.TIM_OCIdleState   = TIM_OCIdleState_Reset;
    TIM_OC1Init(TIM3, &ocInit);

    // Configure DMA1 channel 1 to copy to the PWM output.
    DMA_InitTypeDef dmaInit;
    DMA_StructInit(&dmaInit);
    dmaInit.DMA_Channel            = DMA_Channel_5;
    dmaInit.DMA_PeripheralBaseAddr = (uint32_t)&TIM3->CCR1;
    dmaInit.DMA_Memory0BaseAddr    = (uint32_t)&_pwmBuffer;
    dmaInit.DMA_DIR                = DMA_DIR_MemoryToPeripheral;
    dmaInit.DMA_BufferSize         = BUF_ELEMENTS;
    dmaInit.DMA_PeripheralInc      = DMA_PeripheralInc_Disable;
    dmaInit.DMA_MemoryInc          = DMA_MemoryInc_Enable;
    dmaInit.DMA_PeripheralDataSize = DMA_PeripheralDataSize_HalfWord;
    dmaInit.DMA_MemoryDataSize     = DMA_MemoryDataSize_HalfWord;
    dmaInit.DMA_Mode               = DMA_Mode_Normal; // ie: not circular
    dmaInit.DMA_Priority           = DMA_Priority_High;
    dmaInit.DMA_FIFOMode           = DMA_FIFOMode_Enable;
    dmaInit.DMA_FIFOThreshold      = DMA_FIFOThreshold_HalfFull;
    dmaInit.DMA_MemoryBurst        = DMA_MemoryBurst_INC4;
    dmaInit.DMA_PeripheralBurst    = DMA_PeripheralBurst_Single;
    DMA_DeInit(DMA1_Stream4);
    DMA_Init(DMA1_Stream4, &dmaInit);

    TIM_OC1PreloadConfig(TIM3, TIM_OCPreload_Enable);
    TIM_ARRPreloadConfig(TIM3, ENABLE);
    TIM_DMAConfig(TIM3, TIM_DMABase_CCR1, TIM_DMABurstLength_1Transfer);
    TIM_SelectCCDMA(TIM3, ENABLE);
    TIM_DMACmd(TIM3, TIM_DMA_CC1, ENABLE);

    _lastUpdate = micros();
}

void update(uint32_t now)
{
    const uint32_t elapsed = now - _lastUpdate;
    if(elapsed < (50 * 1000))
    {
        // Not time for an update. Switch of the timers if the last DMA is done.
        if(_dmaActive)
        {
            switch(dma::checkStatus(DMA1_Stream4))
            {
            case dma::InProgress:
                break;
            case dma::Complete:
            case dma::Error:
                _dmaActive = 0;
                DMA_Cmd(DMA1_Stream4, DISABLE);
                TIM_Cmd(TIM3, DISABLE);
            }
        }
    }
    else if(_dmaActive)
    {
        // Time for an update but the last DMA transfer is still going.
    }
    else
    {
        int pos = 0;
        for(int i = 0; i < NEOPIX_COUNT; ++i)
        {
            int pix = i + _currentPix;
            if(pix >= NEOPIX_COUNT)
            {
                pix -= NEOPIX_COUNT;
            }

            const uint8_t red   = pixComponentValue(_red,   pix);
            const uint8_t green = pixComponentValue(_green, pix);
            const uint8_t blue  = pixComponentValue(_blue,  pix);

            appendToPwm(green, pos);
            appendToPwm(red,   pos);
            appendToPwm(blue,  pos);
        }

        DMA_SetCurrDataCounter(DMA1_Stream4, BUF_ELEMENTS);
        DMA_Cmd(DMA1_Stream4, ENABLE);
        TIM_Cmd(TIM3, ENABLE);

        _currentPix = (_currentPix == 0) ? (NEOPIX_COUNT - 1) : (_currentPix - 1);
        _lastUpdate = now;
        _dmaActive  = 1;
    }
}

} // namespace neopix
