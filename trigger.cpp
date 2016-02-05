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

    const uint8_t isPressed = (digitalRead(D2) == LOW);

    uint32_t delay = 0;
    switch(settings::rateOfFire())
    {
    case settings::RofSemiAuto:
        delay = 0; break;
    case settings::Rof60rpm:
        delay = 1000000; break;
    case settings::Rof300rpm:
        delay = 200000; break;
    case settings::Rof600rpm:
        delay = 100000; break;
    }

    if(delay == 0)
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
