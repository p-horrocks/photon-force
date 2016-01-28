#include "application.h"

#include "iremitter.h"
#include "serialstream.h"

#define BUF_ELEMENTS 512
#define IR_CHUNKS    68 // 2 chunks per bit (32) + 2 for start + 2 for end

// For details on the IR protocol, see:
// http://lirc.sourceforge.net/remotes/generic/NEC.conf

// These values are in number of timer ticks (approx 26.3us per tick).
#define START_PULSE 342 // 9000us
#define START_GAP   171 // 4500us
#define ONE_PULSE   21  // 562us
#define ONE_GAP     21  // 562us
#define NIL_PULSE   21  // 562us
#define NIL_GAP     64  // 1687us
#define END_PULSE   21  // 562us
#define END_GAP     21  // 562us

namespace iremitter
{

namespace
{

uint8_t _chunkPos                 = 0;
uint16_t _tickCounts[IR_CHUNKS]   = { 0 };
uint16_t _pwmBuffer[BUF_ELEMENTS] = { 0 };

} // namespace

void init()
{
    return;

    RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB, ENABLE);
    RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_DMA1, ENABLE);
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM4, ENABLE);

    GPIO_InitTypeDef gpioInit = { 0 };
    gpioInit.GPIO_Pin   = GPIO_Pin_6;
    gpioInit.GPIO_Mode  = GPIO_Mode_AF;
    gpioInit.GPIO_OType = GPIO_OType_PP;
    gpioInit.GPIO_Speed = GPIO_Speed_100MHz;
    gpioInit.GPIO_PuPd  = GPIO_PuPd_NOPULL;
    GPIO_Init(GPIOB, &gpioInit);
    GPIO_PinAFConfig(GPIOB, GPIO_PinSource6, GPIO_AF_TIM4);

    // The IR codes are sent at 38kHz with a 1/3 duty cycle.
    const uint32_t frequency = 38000 * 3;
    const uint32_t timClock  = SystemCoreClock / 2; // TIM4 runs at half the system frequency.

    // Timer configuration.
    TIM_TimeBaseInitTypeDef timInit = { 0 };
    timInit.TIM_Period        = 3;
    timInit.TIM_Prescaler     = (timClock / frequency) - 1;
    timInit.TIM_ClockDivision = 0;
    timInit.TIM_CounterMode   = TIM_CounterMode_Up;
    TIM_DeInit(TIM4);
    TIM_TimeBaseInit(TIM4, &timInit);

    // Timer output channel configuration.
    TIM_OCInitTypeDef ocInit = { 0 };
    ocInit.TIM_OCMode        = TIM_OCMode_PWM1;
    ocInit.TIM_OutputState   = TIM_OutputState_Enable;
    ocInit.TIM_Pulse         = 0;
    ocInit.TIM_OCPolarity    = TIM_OCPolarity_High;
    ocInit.TIM_OCIdleState   = TIM_OCIdleState_Reset;
    TIM_OC1Init(TIM4, &ocInit);

    // Configure DMA1 channel 2 to copy to the PWM output.
    DMA_InitTypeDef dmaInit;
    DMA_StructInit(&dmaInit);
    dmaInit.DMA_Channel            = DMA_Channel_2;
    dmaInit.DMA_PeripheralBaseAddr = (uint32_t)&TIM4->CCR1;
    dmaInit.DMA_Memory0BaseAddr    = (uint32_t)&_pwmBuffer;
    dmaInit.DMA_DIR                = DMA_DIR_MemoryToPeripheral;
    dmaInit.DMA_BufferSize         = BUF_ELEMENTS;
    dmaInit.DMA_PeripheralInc      = DMA_PeripheralInc_Disable;
    dmaInit.DMA_MemoryInc          = DMA_MemoryInc_Enable;
    dmaInit.DMA_PeripheralDataSize = DMA_PeripheralDataSize_HalfWord;
    dmaInit.DMA_MemoryDataSize     = DMA_MemoryDataSize_HalfWord;
    dmaInit.DMA_Mode               = DMA_Mode_Circular;
    dmaInit.DMA_Priority           = DMA_Priority_High;
    dmaInit.DMA_FIFOMode           = DMA_FIFOMode_Enable;
    dmaInit.DMA_FIFOThreshold      = DMA_FIFOThreshold_HalfFull;
    dmaInit.DMA_MemoryBurst        = DMA_MemoryBurst_INC4;
    dmaInit.DMA_PeripheralBurst    = DMA_PeripheralBurst_Single;
    DMA_DeInit(DMA1_Stream0);
    DMA_Init(DMA1_Stream0, &dmaInit);

    TIM_OC1PreloadConfig(TIM4, TIM_OCPreload_Enable);
    TIM_ARRPreloadConfig(TIM4, ENABLE);
    TIM_DMAConfig(TIM4, TIM_DMABase_CCR1, TIM_DMABurstLength_1Transfer);
    TIM_SelectCCDMA(TIM4, ENABLE);
    TIM_DMACmd(TIM4, TIM_DMA_CC1, ENABLE);
}

void sendCode(uint32_t code)
{
    // If the last code is still being sent then do nothing.
    if(DMA_GetCmdStatus(DMA1_Stream0) == ENABLE)
    {
        serialstream::print("Cannot send IR code (still sending)\r\n");
        return;
    }

    // Create the tick counts for the code.
    int n            = 0;
    uint32_t mask    = 0x80000000;
    _chunkPos        = 0;
    _tickCounts[n++] = START_PULSE;
    _tickCounts[n++] = START_GAP;
    for(int i = 0; i < 32; ++i, mask >>= 1)
    {
        if(code & mask)
        {
            _tickCounts[n++] = ONE_PULSE;
            _tickCounts[n++] = ONE_GAP;
        }
        else
        {
            _tickCounts[n++] = NIL_PULSE;
            _tickCounts[n++] = NIL_GAP;
        }
    }
    _tickCounts[n++] = END_PULSE;
    _tickCounts[n++] = END_GAP;

    // remove-me
    serialstream::print("Tick counts:\r\n");
    for(int i = 0; i < IR_CHUNKS; ++i)
    {
        serialstream::printNum(_tickCounts[i]);
        serialstream::printCh(' ');
    }
    serialstream::print("\r\n");

//    DMA_SetCurrDataCounter(DMA1_Stream0, BUF_ELEMENTS);
//    DMA_Cmd(DMA1_Stream0, ENABLE);
//    TIM_Cmd(TIM0, ENABLE);
}

} // namespace iremitter
