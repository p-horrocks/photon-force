#include "application.h"

#include "dma.h"
#include "serialstream.h"

namespace dma
{

Status checkStatus(DMA_Stream_TypeDef* stream)
{
    if(DMA_GetFlagStatus(stream, DMA_FLAG_FEIF0))
    {
        // We use direct mode - these can be ignored.
        DMA_ClearFlag(stream, DMA_FLAG_FEIF0);
//        return Error;
    }

    if(DMA_GetFlagStatus(stream, DMA_FLAG_DMEIF0))
    {
        Serial.println("Direct mode error");
        DMA_ClearFlag(stream, DMA_FLAG_DMEIF0);
        return Error;
    }

    if(DMA_GetFlagStatus(stream, DMA_FLAG_TEIF0))
    {
        Serial.println("Transfer error");
        DMA_ClearFlag(stream, DMA_FLAG_TEIF0);
        return Error;
    }

    if(DMA_GetFlagStatus(stream, DMA_FLAG_HTIF0))
    {
        // Transfer half complete
        DMA_ClearFlag(stream, DMA_FLAG_HTIF0);
    }

    if(DMA_GetFlagStatus(stream, DMA_FLAG_TCIF0))
    {
        DMA_ClearFlag(stream, DMA_FLAG_TCIF0);
        return Complete;
    }

    return InProgress;
}

} // namespace dma
