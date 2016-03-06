#include "application.h"

#include "audio.h"
#include "audio_data.h"
#include "dma.h"

extern "C" void audio_dmaComplete()
{
    if(DMA_GetITStatus(DMA1_Stream5, DMA_IT_TCIF5))
    {
        DMA_ClearITPendingBit(DMA1_Stream5, DMA_IT_TCIF5);
        DMA_Cmd(DMA1_Stream5, DISABLE);
        TIM_Cmd(TIM7,         DISABLE);
    }
}

namespace audio
{

void init()
{
    // Enable GPIO, TIM, DMA and DAC clocks
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM7,  ENABLE);
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_DAC,   ENABLE);
    RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOA, ENABLE);
    RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_DMA1,  ENABLE);

    DMA_DeInit(DMA1_Stream5);
    DAC_DeInit();
    TIM_DeInit(TIM7);

    // Configure DAC Channel1 as output
    GPIO_InitTypeDef gpioInit = { 0 };
    gpioInit.GPIO_Pin         = GPIO_Pin_4;
    gpioInit.GPIO_Speed       = GPIO_Speed_100MHz;
    gpioInit.GPIO_PuPd        = GPIO_PuPd_NOPULL ;
    gpioInit.GPIO_Mode        = GPIO_Mode_AN;
    GPIO_Init(GPIOA, &gpioInit);

    // DMA configuration
    DMA_InitTypeDef dmaInit;
    DMA_StructInit(&dmaInit);
    dmaInit.DMA_Channel            = DMA_Channel_7;
    dmaInit.DMA_PeripheralBaseAddr = (uint32_t)&((DAC_TypeDef*)DAC_BASE)->DHR8R1; // The define for DAC doesn't compile
    dmaInit.DMA_Memory0BaseAddr    = (uint32_t)&AUDIO_DATA;
    dmaInit.DMA_DIR                = DMA_DIR_MemoryToPeripheral;
    dmaInit.DMA_BufferSize         = AUDIO_DATA_SIZE;
    dmaInit.DMA_PeripheralInc      = DMA_PeripheralInc_Disable;
    dmaInit.DMA_MemoryInc          = DMA_MemoryInc_Enable;
    dmaInit.DMA_PeripheralDataSize = DMA_PeripheralDataSize_Byte;
    dmaInit.DMA_MemoryDataSize     = DMA_MemoryDataSize_Byte;
    dmaInit.DMA_Mode               = DMA_Mode_Normal; // ie: not circular
    dmaInit.DMA_Priority           = DMA_Priority_VeryHigh;
    dmaInit.DMA_FIFOMode           = DMA_FIFOMode_Enable;
    dmaInit.DMA_FIFOThreshold      = DMA_FIFOThreshold_HalfFull;
    dmaInit.DMA_MemoryBurst        = DMA_MemoryBurst_INC4;
    dmaInit.DMA_PeripheralBurst    = DMA_PeripheralBurst_Single;
    DMA_Init(DMA1_Stream5, &dmaInit);
    DMA_ITConfig(DMA1_Stream5, DMA_IT_TC, ENABLE);

    // DAC configuration
    DAC_InitTypeDef dacInit;
    DAC_StructInit(&dacInit);
    dacInit.DAC_Trigger        = DAC_Trigger_T7_TRGO;
    dacInit.DAC_OutputBuffer   = DAC_OutputBuffer_Enable;
    dacInit.DAC_WaveGeneration = DAC_WaveGeneration_None;
    DAC_Init(DAC_Channel_1, &dacInit);

    const uint32_t frequency = 22050;
    const uint32_t timClock  = SystemCoreClock / 2; // TIM7 runs at half the system frequency.

    // Timer configuration.
    TIM_TimeBaseInitTypeDef timInit = { 0 };
    timInit.TIM_Period      = 1;
    timInit.TIM_Prescaler   = (timClock / frequency) - 1;
    timInit.TIM_CounterMode = TIM_CounterMode_Up;
    TIM_TimeBaseInit(TIM7, &timInit);
    TIM_ARRPreloadConfig(TIM7, ENABLE);

    TIM_SelectOutputTrigger(TIM7, TIM_TRGOSource_Update);
    TIM_SelectCCDMA(TIM7, ENABLE);
    TIM_DMAConfig(TIM7, TIM_DMABase_OR, TIM_DMABurstLength_1Transfer);
    TIM_DMACmd(TIM7, TIM_DMA_Update, ENABLE);

    NVIC_InitTypeDef nvicInit                  = { 0 };
    nvicInit.NVIC_IRQChannel                   = DMA1_Stream5_IRQn;
    nvicInit.NVIC_IRQChannelPreemptionPriority = 4;
    nvicInit.NVIC_IRQChannelSubPriority        = 0;
    nvicInit.NVIC_IRQChannelCmd                = ENABLE;
    NVIC_Init(&nvicInit);

    // Put out handler into the interrupt vector table
    uint32_t* interruptTable = (uint32_t*)SCB->VTOR;
    interruptTable[dma::IrqDMA1_Stream5] = (uint32_t)&audio_dmaComplete;

    DAC_Cmd(DAC_Channel_1, ENABLE);
    DAC_SetChannel1Data(DAC_Align_8b_R, 0x80);
    DAC_DMACmd(DAC_Channel_1, ENABLE);
}

void play()
{
    if(DMA_GetCmdStatus(DMA1_Stream5) == ENABLE)
    {
        // Disable the DMA and wait for it to respond
        DMA_Cmd(DMA1_Stream5, DISABLE);
        while(DMA_GetCmdStatus(DMA1_Stream5) == ENABLE)
        {
        }
    }

    TIM_Cmd(TIM7,         ENABLE);
    DMA_Cmd(DMA1_Stream5, ENABLE);
}

} // namespace audio
