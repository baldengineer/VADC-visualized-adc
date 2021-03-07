
#include <Arduino.h>

// for the TFT
#include <Adafruit_GFX.h>    // Core graphics library
#include <Adafruit_ST7735.h> // Hardware-specific library for ST7735
#include <SPI.h>
//#include <Fonts/FreeMonoBoldOblique12pt7b.h>
//#include <Fonts/FreeSansBold24pt7b.h>	
#include <Fonts/FreeSansBold18pt7b.h>
#include <String.h>

#define RELAY_ON false
#define RELAY_OFF true

// 595 bit that contains the relay
#define relay_mask 0x40

// Shift Register Bits
const byte clock_595 = 2;
const byte latch_595 = 3;
const byte data_595 = 4;

// Front-End Variables
const byte sh_enable = 8;
const byte comparator_result = 7;

// SAR variables
bool start_SAR = false;
uint8_t final_countdown =0;
const byte dac_width = 4;
double adc_vref = 5.0;


// Test Pattern variables
int wait = 2500;
byte counter = 0x0;
const byte button = 6;

#define PRESSED LOW
#define NOT_PRESSED HIGH

