#include "pixcircle.h"

#define PIXEL_COUNT 24
#define PIXEL_TYPE  WS2812B

namespace
{

uint32_t _fadeFactors[PIXEL_COUNT] = { 100, 50, 25, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };

uint32_t componentValue(uint32_t base, int stage)
{
    uint32_t factor = _fadeFactors[stage];
    return (base * factor) / 100;
}

} // namespace

PixCircle::PixCircle(uint8_t pin, uint32_t red, uint32_t green, uint32_t blue) :
    red_(red),
    green_(green),
    blue_(blue),
    currentPix_(0),
    strip_(PIXEL_COUNT, pin, PIXEL_TYPE)
{
}

void PixCircle::init()
{
    strip_.begin();
    strip_.show();
}

void PixCircle::step()
{
    int i;
    for(i = 0; i < PIXEL_COUNT; ++i)
    {
        unsigned long pix = i + currentPix_;
        if(pix >= PIXEL_COUNT)
        {
            pix -= PIXEL_COUNT;
        }

        uint32_t r = componentValue(red_, i);
        uint32_t g = componentValue(green_, i);
        uint32_t b = componentValue(blue_, i);

        strip_.setPixelColor(pix, strip_.Color(r, g, b));
    }
    strip_.show();

    currentPix_ = (currentPix_ == 0) ? (PIXEL_COUNT - 1) : (currentPix_ - 1);
}
