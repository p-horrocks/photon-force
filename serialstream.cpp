#include "application.h"

#include "serialstream.h"

#define BUFFER_LEN 256

namespace serialstream
{

namespace
{

char _buffer[BUFFER_LEN] = { 0 };

// Position in the buffer for the next append.
uint8_t _head = 0;

// Position where the next character will be streamed from.
uint8_t _tail = 0;

} // namespace

void init()
{
    Serial.begin(115200);
}

void update()
{
    // Stream out just the next character. At 115200 a byte takes around
    // 67us to transmit. Since we want the main loop to run as fast as possible
    // only one character is transmitted each iteration.
    if(tail_ != head_)
    {
        char next[2] = " ";
        next[0] = _buffer[_tail];
        Serial.print(next);
        ++_tail;
    }
}

void print(const char* str)
{
    // Append the characters until the head hits the tail. Silently drop the
    // rest.
    while(*str)
    {
        if(_head + 1 == _tail)
            break;

        _buffer[_head] = *str;
        ++_head;
        ++str;
    }
}

} // namespace serialstream
