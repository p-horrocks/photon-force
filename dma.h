#ifndef DMA_H
#define DMA_H

namespace dma
{

// Checks the DMA status flags and returns the current status.
enum Status
{
    Complete,
    InProgress,
    Error
};
Status checkStatus(DMA_Stream_TypeDef* stream);

// Doesn't really belong here, but close enough.
enum InterruptIndex
{
    IrqDMA1_Stream4 = 31,
    IrqDMA1_Stream5 = 32
};

} // namespace dma

#endif // DMA_H
