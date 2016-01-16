#include "irreader.h"
#include "pixcircle.h"
#include "serialstream.h"

SYSTEM_MODE(MANUAL);

#define LOOP_PERIOD     200 // In microseconds
#define LOOP_ITERATIONS 250 // Number of loop iterations before repeating

#define PIXEL_PIN D0
#define IR_PIN    D1

namespace
{

// Time when loop() was last run.
uint32_t _lastLoopTime = 0;

// Counter for the number of times the main loop has run (loops at
// LOOP_ITERATIONS)
uint8_t _loopCount = LOOP_ITERATIONS;

SerialStream _serial;
PixCircle _pixCircle(PIXEL_PIN, 128, 128, 128);
//IrReader _irReader(IR_PIN);

//uint32_t initTime = 0;
//uint32_t runs = 0;
//uint32_t total = 0;

} // namespace

void doLoopDelay()
{
    // Delay until it's been 200us since the last invocation.
    uint32_t now = micros();
    if(_lastLoopTime == 0)
    {
        // First execution (probably). Go through immediately.
    }
    else
    {
        uint32_t elapsed;
        if(now < _lastLoopTime)
        {
            // Timer has wrapped around.
            elapsed = 0xffffffff - _lastLoopTime;
            elapsed += now;
        }
        else
        {
            elapsed = now - _lastLoopTime;
        }

        if(elapsed >= LOOP_PERIOD)
        {
            Serial.print("Loop running slowly, time=");
            Serial.print(elapsed);
            Serial.print("us, count=");
            Serial.println(_loopCount);
        }
        else
        {
            delayMicroseconds(LOOP_PERIOD - elapsed);
        }
    }
    _lastLoopTime = micros();

//    ++runs;
//    if(initTime == 0)
//    {
//        initTime = now;
//        runs = 0;
//        total = 0;
//    }
//    else if(now - initTime > 1000000)
//    {
//        Serial.print("loop count=");
//        Serial.println(runs);
//        initTime = now;
//        runs = 0;
//        total = 0;
//    }
//    else
//    {
//    }

    // Update the loop counter so the main loop knows what it's meant to be
    // doing this iteration.
    ++_loopCount;
    if(_loopCount >= LOOP_ITERATIONS)
    {
        _loopCount = 0;
    }
}

void setup()
{
    _serial.init();
    _pixCircle.init();
//    _irReader.init();
}

void loop()
{
    // The main loop runs at 5kHz (ie: a period of 200us). That's too fast for
    // the software timers to handle so we must implement it ourselves.
    //
    // If the system mode is automatic then the delay between calls to loop()
    // is about 1000us, but in manual mode it's 4us. So manual mode must be used
    // in order for our fast loop to work. To re-flash in manual mode hold down
    // the 'setup' button, then 'reset'. Release 'reset', then release 'setup'
    // once the RGB LED shows magenta (red + blue). The Photon will then boot
    // into a cloud-connected safe mode which won't run user code, but the IDE
    // can download new firmware.
    //
    // The main loop is run at such a fast speed so that we can poll the IR
    // receiver state frequently enough to get the pulse timings. Normally this
    // would be done using interrupts, but because of the timing sensitivity of
    // the NeoPixels, interrupts are disabled much of the time. Polling is also
    // required because several IR receivers are multiplexed onto a single pin
    // via a parallel to serial shift register, so changes to the receiver state
    // are not directly seen by the Photon.
    doLoopDelay();

    // The IR receivers are checked every iteration.
//    _irReader.poll();

    // Time to update the IR emitter state?

    // All other tasks are separated into small chunks that will fit into these
    // 200us passes. The slowest of these is the LEDs, which update at 20Hz so
    // that is used to set the iteration limit.
    if(_loopCount == 0)
    {
        _pixCircle.step();
    }
    else if(_loopCount == 1)
    {
        _pixCircle.show();
    }
    else
    {
        _serial.stream();
    }
}
