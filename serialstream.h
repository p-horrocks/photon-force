#ifndef SERIALSTREAM_H
#define SERIALSTREAM_H

// The main loop is so fast that printing out debugging data to the serial port
// takes too long. This class spaces out the transmission so it doesn't
// interfere with the main loop.
#define BUFFER_LEN 256

class SerialStream
{
public:
    SerialStream();

    void init();
    void print(const char* str);
    void stream();

private:
    // Position where new characters are appended.
    uint8_t head_;

    // Position where the next character will be streamed from.
    uint8_t tail_;

    char buffer_[BUFFER_LEN];
};

#endif // SERIALSTREAM_H
