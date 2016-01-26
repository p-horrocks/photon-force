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

} // namespace serialstream

#endif // SERIALSTREAM_H
