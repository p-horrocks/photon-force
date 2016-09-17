#include "application.h"

#include "hitpoints.h"
#include "settings.h"

namespace hitpoints
{

namespace
{

// Hit points remaining, zero if we're dead
uint8_t _hitPoints = 1;

// Time at which we died
uint32_t _deathTime = 0;

} // namespace

void init()
{
    _hitPoints = settings::maxHitPoints();
}

void update(uint32_t now)
{
    if(areWeDead())
    {
        uint32_t diff;
        if(now < _deathTime)
        {
            // The time counter has wrapped around back to zero
            diff = now + (0xffffffff - _deathTime);
        }
        else
        {
            diff = now - _deathTime;
        }

        if(diff >= settings::reviveDelay())
        {
            // Time's up, come back to life
            _hitPoints = settings::maxHitPoints();
        }
    }
}

bool areWeDead()
{
    return (_hitPoints == 0);
}

void applyHit(uint32_t now)
{
    // Ignore hits while dead
    if(areWeDead())
        return;

    _hitPoints -= 1;

    // If that hit made us dead then start the timer until we revive
    if(areWeDead())
    {
        _deathTime = now;
    }
}

} // namespace hitpoints
