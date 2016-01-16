#include "application.h"
#include "serialstream.h"

SerialStream::SerialStream() :
    head_(0),
    tail_(0)
{
}

void SerialStream::init()
{
    Serial.begin(115200);
}

void SerialStream::print(const char* str)
{
    // Append the characters until the head hits the tail. Silently drop the
    // rest.
    while(*str)
    {
        if(head_ + 1 == tail_)
            break;

        buffer_[head_] = *str;
        ++head_;
        ++str;
    }
}

void SerialStream::stream()
{
    // Stream out just the next character. At 115200 a byte takes around
    // 67us to transmit. With a loop period of 200us that doesn't let us stream
    // much each iteration.
    if(tail_ != head_)
    {
        char next[2] = " ";
        next[0] = buffer_[tail_];
        Serial.print(next);
        ++tail_;
    }
}
