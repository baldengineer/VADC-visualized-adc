
#include <Arduino.h>

#define RELAY_ON false
#define RELAY_OFF true

// 595 bit that contains the relay
#define relay_mask 0x40

// Shift Register Bits
const byte clock_595 = 2;
const byte latch_595 = 3;
const byte data_595 = 4;