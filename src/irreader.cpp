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
    uint32_t lastChange; // Time when the state last changed
    uint8_t  state;      // Current pin state (high/low)
    uint32_t code;       // Code being received
    uint8_t  bit;        // Current bit being received, 0xff for none, 0xfe for
                         // preamble
};
RecvState _states[NUM_RECVS];

// Returns true if the measured pulse length is 'close enough' to the expected
// pulse length
inline bool validatePulseLength(uint32_t actual, uint32_t nominal)
{
    // Allow +/- 30%
    uint32_t min = (nominal * 7) / 10;
    uint32_t max = (nominal * 10) / 7;
    return (actual >= min) && (actual <= max);
}

uint32_t checkForReceivedCode(uint8_t idx, uint8_t pulseType, uint32_t pulseLength)
{
    // Check for the first part of the start pulse
    if((pulseType == LOW) && validatePulseLength(pulseLength, 9000))
    {
        _states[idx].bit  = 0xfe;
        _states[idx].code = 0;
        return 0;
    }

    // Second half of the start pulse
    if((pulseType == HIGH) && (_states[idx].bit == 0xfe) && validatePulseLength(pulseLength, 4500))
    {
        _states[idx].bit = 0;
        return 0;
    }

    // If we're not in the process of receiving a code then ignore
    if(_states[idx].bit >= 0xfe)
        return 0;

    // A bit should always start with a low pulse
    if((pulseType == LOW) && (_states[idx].bit >= 32) && validatePulseLength(pulseLength, 562))
    {
        // Code successfully received
        _states[idx].bit = 0xff;
        return _states[idx].code;
    }
    else if((pulseType == LOW) && validatePulseLength(pulseLength, 562))
    {
        // Okay, but no data in it
    }
    else if((pulseType == HIGH) && validatePulseLength(pulseLength, 562))
    {
        // Received a 1 pulse
        _states[idx].code |= (0x80000000 >> _states[idx].bit);
        ++_states[idx].bit;
    }
    else if((pulseType == HIGH) && validatePulseLength(pulseLength, 1687))
    {
        // Received a 0 pulse
        ++_states[idx].bit;
    }
    else
    {
        // Invalid pulse received, reset
        _states[idx].bit = 0xff;
    }
    return 0;
}

} // namespace

void init()
{
    uint32_t now = micros();
    for(int i = 0; i < NUM_RECVS; ++i)
    {
        _states[i].lastChange = now;
        _states[i].state      = LOW;
        _states[i].code       = 0;
        _states[i].bit        = 0xff;
    }

    pinMode(D4, OUTPUT);
    pinMode(D5, OUTPUT);
//    pinMode(A1, INPUT);
//    pinMode(A2, INPUT);
//    pinMode(A4, INPUT);
    pinMode(A5, INPUT);

    digitalWrite(D4, LOW);
    digitalWrite(D5, LOW);
}

uint32_t update(uint32_t now)
{
    // The IR receivers are attached via a parallel to serial shift register
    // so that we can multipex multiple receivers onto a single pin. Tell the
    // shift register to load the current inputs into the register
    digitalWrite(D4, HIGH);

    uint8_t states[32] = { LOW };
    for(int i = 0; i < 8; ++i)
    {
        // Set the register's clock input high to shift the next value into
        // the output
        digitalWrite(D5, HIGH);
//        states[i]     = digitalRead(A1);
//        states[i + 8] = digitalRead(A2);
        // Dud reads because A1 and A2 aren't hooked up yet
        digitalRead(A5);
        digitalRead(A5);

        // Set the clock low, getting ready for the next cycle
        digitalWrite(D5, LOW);

//        states[i + 16] = digitalRead(A4);
        // Dud read because A4 isn't hooked up yet
        digitalRead(A5);
        states[i + 24] = digitalRead(A5);
    }

    // Return the register to listening to the parallel inputs
    digitalWrite(D4, LOW);

    // Compare new state to the previous to which have changed
    uint8_t changed = 0;
    uint32_t delta = 0;
    uint32_t code = 0;
    for(uint8_t i = 0; i < NUM_RECVS; ++i)
    {
        if(states[i] != _states[i].state)
        {
            changed = true;
            delta = now - _states[i].lastChange;
            uint32_t c = checkForReceivedCode(i, _states[i].state, delta);
            if(c != 0)
            {
                code = c;
            }
            _states[i].state = states[i];
            _states[i].lastChange = now;
        }
    }

    //remove-me
    if(code)
    {
        serialstream::print("code: ");
        serialstream::printHex(code);
        serialstream::print("\r\n");
    }

    return code;
}

} // namespace irreader
