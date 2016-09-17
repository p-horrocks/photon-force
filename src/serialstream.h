#ifndef SERIALSTREAM_H
#define SERIALSTREAM_H

// The main loop is so fast that printing out debugging data to the serial port
// takes too long. This class spaces out the transmission so it doesn't
// interfere with the main loop.
namespace serialstream
{

void init();
void update();

void print(const char* str);
void printCh(char ch);
void printNum(int n);
void printNum(uint32_t n);
void printNum(uint16_t n);
void printNum(uint8_t n);
void printHex(uint32_t n);
void printHex(uint8_t n);

} // namespace serialstream

#endif // SERIALSTREAM_H
