#include "application.h"

#include "dma.h"
#include "irreader.h"
#include "neopix.h"
#include "serialstream.h"

#define VERSION "0.1"

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
//                            D0/PB7
// IR send          timer/DMA D1/PB6  4.1 0.2
// Trigger          interrupt D2/PB5
// NeoPixel circle  timer/DMA D3/PB4  3.1 4.5
// IR recv (enable) -         D4/PB3
// IR recv (clk)    -         D5/PA15
// Haptic           -         D6/PA14
//                            D7/PA13
//
// Power (sense)    ADC       A0/PC5
// IR recv (input1) 5V        A1/PC3
// IR recv (input2) 5V        A2/PC2
// Power (enable)   -         A3/PA5
// IR recv (input3) 5V        A4/PA6
// IR recv (input4) 5V        A5/PA7
// Audio            DAC/DMA   DAC/PA4 7   5.7
//                            WKP/PA0

// Note: interrupt not available on D0

void setup()
{
    // serialstream must be initialised first.
    serialstream::init();
    neopix::init();
    irreader::init();

    serialstream::print("*** PhotonForce " VERSION " ***\r\n");
}

void loop()
{
    uint32_t now = micros();

    serialstream::update();
    neopix::update(now);
    irreader::update(now);
}
