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

} // namespace dma

#endif // DMA_H
