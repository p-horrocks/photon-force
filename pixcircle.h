#ifndef PIXCIRCLE_H
#define PIXCIRCLE_H

#include "application.h"
#include "neopixel/neopixel.h"

class PixCircle
{
public:
    PixCircle(uint8_t pin, uint32_t red, uint32_t green, uint32_t blue);

    void init();
    void step();
    void show();

private:
    const uint32_t red_;
    const uint32_t green_;
    const uint32_t blue_;
    uint8_t currentPix_;

    Adafruit_NeoPixel strip_;
};

#endif // PIXCIRCLE_H
