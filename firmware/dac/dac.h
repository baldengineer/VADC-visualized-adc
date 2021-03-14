
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
double adc_vref = 4.98;
double adc_voltage_step = adc_vref / ((pow(2,dac_width)-1.0));
int comparator_value = 0;

double dac_value_min = 0.0;
double dac_value_max = 0.0;
double dac_value_step = 0.0;

unsigned long previous_print_millis = 0;
unsigned long print_interval = 1000;

// Test Pattern variables
int wait = 2500;
byte counter = 0x0;
const byte button = 6;
const byte cal_button =  A3;
const byte step_button = A4;
const byte vref_input = A1;

bool stepper = false;


#define PRESSED LOW
#define NOT_PRESSED HIGH

// Strings
const char msg_ready[8] = {"Ready"};

