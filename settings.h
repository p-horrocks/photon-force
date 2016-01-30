#ifndef SETTINGS_H
#define SETTINGS_H

namespace settings
{

// Returns the IR code to be sent when the gun fires.
uint32_t ourIrCode();

// Returns the rate-of-fire permitted. Note that in semi-auto mode the rate
// cannot exceed the time it takes to transmit the IR code, even if the user is
// able to pull the trigger that fast.
enum RateOfFire
{
    RofSemiAuto,
    Rof60rpm,
    Rof300rpm,
    Rof600rpm
};
RateOfFire rateOfFire();

// The LED colour to show.
void ourColour(uint8_t& red, uint8_t& green, uint8_t& blue);

} // namespace settings

#endif // SETTINGS_H
