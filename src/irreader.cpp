#include "application.h"

#include "irreader.h"
#include "serialstream.h"

#define NUM_RECVS 32

namespace irreader
{

namespace
{

struct RecvState
{
    uint32_t lastChange;
    uint8_t  state;
};
RecvState _states[NUM_RECVS];

} // namespace

void init()
{
    uint32_t now = micros();
    for(int i = 0; i < NUM_RECVS; ++i)
    {
        _states[i].lastChange = now;
        _states[i].state      = HIGH;
    }

    pinMode(D4, OUTPUT);
    pinMode(D5, OUTPUT);
//    pinMode(A1, INPUT);
//    pinMode(A2, INPUT);
//    pinMode(A4, INPUT);
    pinMode(A5, INPUT);

    digitalWrite(D4, LOW);
    digitalWrite(D5, LOW);

    //remove-me
    serialstream::print("Init:\r\n");
    for(int i = 0; i < NUM_RECVS; ++i)
    {
        serialstream::print((_states[i].state == HIGH) ? "H" : "L");
    }
    serialstream::print("\r\n");
}

void update(uint32_t now)
{
    // Load the current input values into the shift register.
    digitalWrite(D4, HIGH);

    uint8_t states[32] = { LOW };
    for(int i = 0; i < 8; ++i)
    {
        // Toggle the clock to get the next value.
        digitalWrite(D5, HIGH);
//        states[i]     = digitalRead(A1);
//        states[i + 8] = digitalRead(A2);
        digitalRead(A5);
        digitalRead(A5);

        // Reset the clock half way through so that it's vaguely half way
        // through the cycle. Should give the best chance of keeping things
        // happy. Serial data is only shifted on the rising edge so we won't
        // lose anything.
        digitalWrite(D5, LOW);
//        states[i + 16] = digitalRead(A4);
        digitalRead(A5);
        states[i + 24] = digitalRead(A5);
    }

    // Return the register to normal.
    digitalWrite(D4, LOW);

    //remove-me
    // Compare new state to the previous
    uint8_t changed = 0;
    uint32_t delta = 0;
    for(int i = 0; i < NUM_RECVS; ++i)
    {
        if(states[i] != _states[i].state)
        {
            changed = true;
            delta = now - _states[i].lastChange;
            _states[i].state = states[i];
            _states[i].lastChange = now;
        }
    }
    if(changed)
    {
        serialstream::print((_states[25].state == HIGH) ? "H" : "L");
        if(delta < 20000)
        {
            serialstream::printNum(delta);
        }
        serialstream::print("\r\n");
    }
}

} // namespace irreader
