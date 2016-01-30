#include "application.h"

#include "settings.h"

namespace settings
{

uint32_t ourIrCode()
{
    return 0x4ebb7887;
}

RateOfFire rateOfFire()
{
    return Rof600rpm;
}

} // namespace settings
