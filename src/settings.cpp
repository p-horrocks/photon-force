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
    return RofSemiAuto;
}

void ourColour(uint8_t& red, uint8_t& green, uint8_t& blue)
{
    red   = 128;
    green = 128;
    blue  = 128;
}

uint32_t reviveDelay()
{
    // 5 seconds
    return 5000000;
}

uint8_t maxHitPoints()
{
    return 1;
}

} // namespace settings
