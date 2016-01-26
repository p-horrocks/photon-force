#include "application.h"

#include "irreader.h"
#include "neopix.h"
#include "serialstream.h"

SYSTEM_MODE(MANUAL);

// Photon pin assignments
// ----------------------
//
// Because there are so many dependent functions they can't all be defined here
// easily. This table shows the assignments, however, and hopefully they stay
// relatively in-sync with reality.
//
// Function         Requires  Pin     TIM DMA
// ------------------------------------------
// NeoPixel circle  timer/DMA D3/PB4  3.1 4.5
// IR recv (enable) -         D4/PB3
// IR recv (clk)    -         D5/PA15
// IR recv (input)  -         D6/PA14
// IR send          timer/DMA D1/PB6  4.1 0.2
// Trigger          interrupt D2/PB5
// Audio            DAC/DMA   DAC/PA4 7   5.7
// Haptic           -         D7/PA13
// Power (sense)    ADC       A0/PC5
// Power (enable)   -         A1/PC3

// Note: interrupt not available on D0

void setup()
{
    // serialstream must be initialised first.
    serialstream::init();
    neopix::init();

    serialstream::print("*** PhotonForce ready ***\r\n");
}

void loop()
{
    uint32_t now = micros();

    serialstream::update();
    neopix::update(now);
}
