#include "irreader.h"

IrReader::IrReader(uint8_t pin) :
    pin_(pin),
    state_(LOW)
{
}

void IrReader::init()
{
    pinMode(pin_, INPUT);
}

void IrReader::poll()
{
    uint8_t newState = digitalRead(pin_);
    if(newState != state_)
    {
        Serial.println(newState);
        state_ = newState;
    }
}
