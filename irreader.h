#ifndef IRREADER_H
#define IRREADER_H

#include "application.h"

class IrReader
{
public:
    IrReader(uint8_t pin);

    void init();
    void poll();

private:
    const uint8_t pin_;
    uint8_t state_;
};

#endif // IRREADER_H
