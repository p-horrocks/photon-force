#include "application.h"

#include "settings.h"
#include "trigger.h"

namespace trigger
{

namespace
{

const uint32_t MIN_DELAY = 200000; // 200ms = 300rpm

uint8_t _isReleased = 1;
uint32_t _lastFired = 0;

void triggerInterrupt()
{
    if(digitalRead(D2) == HIGH)
    {
        _isReleased = 1;
    }
}

} // namespace

void init()
{
    pinMode(D2, INPUT_PULLUP);
    attachInterrupt(D2, &triggerInterrupt, CHANGE);

    _lastFired = micros();
}

uint8_t shouldFire(uint32_t now)
{
    // If the minimum allowed delay between shots hasn't passed then no shot
    // will be allowed.
    uint32_t elapsed = now - _lastFired;
    if(elapsed < MIN_DELAY)
        return 0;

    const uint8_t isPressed        = (digitalRead(D2) == LOW);
    const settings::RateOfFire rof = settings::rateOfFire();
    if(rof == settings::RofSemiAuto)
    {
        // If we're on semi-auto then a shot is allowed if the trigger has been
        // both released and pressed since the last shot.
        if(_isReleased && isPressed)
        {
            _isReleased = 0;
            _lastFired  = now;
            return 1;
        }
    }
    else
    {
        // Full auto. Trigger doesn't need to have been released, just the
        // trigger still be down and the required time to have passed.
        const uint32_t delay = (rof == settings::Rof300rpm) ? 200000 : 1000000;
        if(isPressed && (elapsed >= delay))
        {
            _isReleased = 0;
            _lastFired  = now;
            return 1;
        }
    }

    return 0;
}

} // namespace trigger
