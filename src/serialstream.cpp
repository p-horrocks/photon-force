#include "application.h"

#include "serialstream.h"

#define BUFFER_LEN 1024

namespace serialstream
{

namespace
{

char _buffer[BUFFER_LEN] = { 0 };

// Position in the buffer for the next append.
uint8_t _head = 0;

// Position where the next character will be streamed from.
uint8_t _tail = 0;

void iPrintNum(uint32_t n)
{
    int pos = 0;
    char buf[32];

    while(n != 0)
    {
        buf[pos++] = (n % 10) + '0';
        n /= 10;
    }

    if(pos == 0)
    {
        printCh('0');
    }
    else
    {
        do
        {
            printCh(buf[--pos]);
        }
        while(pos > 0);
    }
}

void printHexNibble(uint8_t n)
{
    if(n < 10)
    {
        printCh(n + '0');
    }
    else if(n < 16)
    {
        printCh(n - 10 + 'a');
    }
    else
    {
        printCh('?');
    }
}

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
    if(_tail != _head)
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
        printCh(*str);
        ++str;
    }
}

void printCh(char ch)
{
    if(_head + 1 != _tail)
    {
        _buffer[_head++] = ch;
    }
}

void printNum(int n)
{
    int neg = 0;
    int pos = 0;
    char buf[32];

    if(n < 0)
    {
        neg = 1;
        n = -1;
    }

    while(n != 0)
    {
        buf[pos++] = (n % 10) + '0';
        n /= 10;
    }

    if(pos == 0)
    {
        printCh('0');
    }
    else
    {
        do
        {
            printCh(buf[--pos]);
        }
        while(pos > 0);

        if(neg)
        {
            printCh('-');
        }
    }
}

void printNum(uint32_t n)
{
    iPrintNum(n);
}

void printNum(uint16_t n)
{
    iPrintNum(n);
}

void printNum(uint8_t n)
{
    iPrintNum(n);
}

void printHex(uint32_t n)
{
    printHexNibble(n >> 28);
    printHexNibble((n >> 24) & 0x0f);
    printHexNibble((n >> 16) & 0x0f);
    printHexNibble((n >> 12) & 0x0f);
    printHexNibble((n >> 8) & 0x0f);
    printHexNibble((n >> 4) & 0x0f);
    printHexNibble(n & 0x0f);
}

void printHex(uint8_t n)
{
    printHexNibble(n >> 8);
    printHexNibble(n & 0x0f);
}

} // namespace serialstream
