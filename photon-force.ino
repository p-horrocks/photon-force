#include "irreader.h"
#include "pixcircle.h"

SYSTEM_MODE(MANUAL);

#define LOOP_PERIOD 200
#define PIXEL_PIN   D0
#define IR_PIN      D1

uint32_t _lastPixTime = 0;
PixCircle _pixCircle(PIXEL_PIN, 128, 128, 128);
IrReader _irReader(IR_PIN);

uint32_t _loopCount = 0;
uint32_t _countTime = 0;

void setup()
{
    // For debugging output
    Serial.begin(115200);

    _pixCircle.init();
    _irReader.init();
}

void loop()
{
    uint32_t now = micros();
    if(now - _lastPixTime > 50000)
    {
        _lastPixTime = now;
        _pixCircle.step();
    }

    _irReader.poll();

    ++_loopCount;
    if(_countTime == 0)
    {
        _countTime = now;
    }
    else
    {
        uint32_t elapsed = now - _countTime;
        if(elapsed > 1000000)
        {
            Serial.print("Average loop time: ");
            Serial.print(elapsed / _loopCount);
            Serial.println(" us");
            _loopCount = 0;
            _countTime = now;
        }
    }
}
