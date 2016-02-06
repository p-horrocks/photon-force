#include "application.h"

#include "settings.h"

namespace settings
{

uint32_t ourIrCode()
{
    return 0x4ebb708f;
}

RateOfFire rateOfFire()
{
    return Rof600rpm;
}

void ourColour(uint8_t& red, uint8_t& green, uint8_t& blue)
{
    red   = 128;
    green = 128;
    blue  = 128;
}

} // namespace settings
