#include "application.h"

#include "dma.h"
#include "serialstream.h"

namespace dma
{

namespace
{

const struct
{
    uint32_t fifoError;
    uint32_t directError;
    uint32_t transferError;
    uint32_t halfComplete;
    uint32_t allComplete;
}
_dmaStreamFlags[] =
{
    { DMA_FLAG_FEIF0, DMA_FLAG_DMEIF0, DMA_FLAG_TEIF0, DMA_FLAG_HTIF0, DMA_FLAG_TCIF0 },
    { DMA_FLAG_FEIF1, DMA_FLAG_DMEIF1, DMA_FLAG_TEIF1, DMA_FLAG_HTIF1, DMA_FLAG_TCIF1 },
    { DMA_FLAG_FEIF2, DMA_FLAG_DMEIF2, DMA_FLAG_TEIF2, DMA_FLAG_HTIF2, DMA_FLAG_TCIF2 },
    { DMA_FLAG_FEIF3, DMA_FLAG_DMEIF3, DMA_FLAG_TEIF3, DMA_FLAG_HTIF3, DMA_FLAG_TCIF3 },
    { DMA_FLAG_FEIF4, DMA_FLAG_DMEIF4, DMA_FLAG_TEIF4, DMA_FLAG_HTIF4, DMA_FLAG_TCIF4 },
    { DMA_FLAG_FEIF5, DMA_FLAG_DMEIF5, DMA_FLAG_TEIF5, DMA_FLAG_HTIF5, DMA_FLAG_TCIF5 },
    { DMA_FLAG_FEIF6, DMA_FLAG_DMEIF6, DMA_FLAG_TEIF6, DMA_FLAG_HTIF6, DMA_FLAG_TCIF6 },
    { DMA_FLAG_FEIF7, DMA_FLAG_DMEIF7, DMA_FLAG_TEIF7, DMA_FLAG_HTIF7, DMA_FLAG_TCIF7 }
};

} // namespace

Status checkStatus(DMA_Stream_TypeDef* stream)
{
    uint8_t idx;
    if((stream == DMA1_Stream0) || (stream == DMA2_Stream0))
    {
        idx = 0;
    }
    else if((stream == DMA1_Stream1) || (stream == DMA2_Stream1))
    {
        idx = 1;
    }
    else if((stream == DMA1_Stream2) || (stream == DMA2_Stream2))
    {
        idx = 2;
    }
    else if((stream == DMA1_Stream3) || (stream == DMA2_Stream3))
    {
        idx = 3;
    }
    else if((stream == DMA1_Stream4) || (stream == DMA2_Stream4))
    {
        idx = 4;
    }
    else if((stream == DMA1_Stream5) || (stream == DMA2_Stream5))
    {
        idx = 5;
    }
    else if((stream == DMA1_Stream6) || (stream == DMA2_Stream6))
    {
        idx = 6;
    }
    else if((stream == DMA1_Stream7) || (stream == DMA2_Stream7))
    {
        idx = 7;
    }
    else
    {
        return;
    }

    if(DMA_GetFlagStatus(stream, _dmaStreamFlags[idx].fifoError))
    {
        // We use direct mode - these can be ignored.
        DMA_ClearFlag(stream, _dmaStreamFlags[idx].fifoError);
//        return Error;
    }

    if(DMA_GetFlagStatus(stream, _dmaStreamFlags[idx].directError))
    {
        Serial.println("Direct mode error");
        DMA_ClearFlag(stream, _dmaStreamFlags[idx].directError);
        return Error;
    }

    if(DMA_GetFlagStatus(stream, _dmaStreamFlags[idx].transferError))
    {
        Serial.println("Transfer error");
        DMA_ClearFlag(stream, _dmaStreamFlags[idx].transferError);
        return Error;
    }

    if(DMA_GetFlagStatus(stream, _dmaStreamFlags[idx].halfComplete))
    {
        // Transfer half complete
        DMA_ClearFlag(stream, _dmaStreamFlags[idx].halfComplete);
    }

    if(DMA_GetFlagStatus(stream, _dmaStreamFlags[idx].allComplete))
    {
        DMA_ClearFlag(stream, _dmaStreamFlags[idx].allComplete);
        return Complete;
    }

    return InProgress;
}

} // namespace dma
