#include "application.h"

#include "audio.h"
#include "audio_data.h"
#include "dma.h"
#include "iremitter.h"
#include "irreader.h"
#include "neopix.h"
#include "serialstream.h"
#include "settings.h"
#include "trigger.h"

#define VERSION "0.1"

SYSTEM_MODE(MANUAL);
PRODUCT_ID(PLATFORM_ID);
PRODUCT_VERSION(2);

// Photon pin assignments
// ----------------------
//
// Because there are so many dependent functions they can't all be defined here
// easily. This table shows the assignments, however, and hopefully they stay
// relatively in-sync with reality.
//
// Function         Requires  Pin      TIM  DMA1
// --------------------------------------------------
// Haptic           I2C       D0/PB7  (4.2) (3.2) SDA
// Haptic           I2C       D1/PB6  (4.1) (0.2) SCL
// Trigger          interrupt D2/PB5  (3.2) (5.5)
// NeoPixel circle  timer/DMA D3/PB4   3.1   4.5
// IR recv (enable) -         D4/PB3
// IR recv (clk)    -         D5/PA15
//                            D6/PA14
//                            D7/PA13
//
// Power (sense)    ADC       A0/PC5
// IR recv (input1) 5V        A1/PC3
// IR recv (input2) 5V        A2/PC2
// Power (enable)   -         A3/PA5
// IR recv (input3) 5V        A4/PA6  (3.1) (4.5)
// IR recv (input4) 5V        A5/PA7  (3.2) (5.5)
// Audio            DAC/DMA   DAC/PA4  7     5.7
// IR send          timer/DMA WKP/PA0  5.1   2.6

// Note: interrupt not available on D0

void setup()
{
    // serialstream must be initialised first.
    serialstream::init();
    neopix::init();
    irreader::init();
    iremitter::init();
    trigger::init();
    audio::init();

    // Sending serial data too soon can mean that it gets sent before the
    // receiver has had a chance to reconnect after the Photon rebooted.
    delay(1000);

    serialstream::print("*** PhotonForce " VERSION " ***\r\n");
}

void loop()
{
    uint32_t now = micros();

    serialstream::update();
    neopix::update(now);
    irreader::update(now);
    iremitter::update();

    if(trigger::shouldFire(now))
    {
        serialstream::print("Firing\r\n");

        iremitter::sendCode(settings::ourIrCode());
        audio::play();
    }
}
