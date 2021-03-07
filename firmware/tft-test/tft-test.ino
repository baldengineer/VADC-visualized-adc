
#include <Adafruit_GFX.h>    // Core graphics library
#include <Adafruit_ST7735.h> // Hardware-specific library for ST7735
#include <SPI.h>
//#include <Fonts/FreeMonoBoldOblique12pt7b.h>
//#include <Fonts/FreeSansBold24pt7b.h>	
#include <Fonts/FreeSansBold18pt7b.h>
#include <String.h>

// 0.96" RGB TFT 160x80 module
#define TFT_CS        10
#define TFT_RST        9 // Or set to -1 and connect to Arduino RESET pin
#define TFT_DC         A1
#define TFT_BACKLIGHT  A0

// ST7735 use:
Adafruit_ST7735 tft = Adafruit_ST7735(TFT_CS, TFT_DC, TFT_RST);

void testdrawtext(char *text, uint16_t color) {
  int16_t  x1, y1;
  uint16_t w, h;

  //void fillRect(uint16_t x0, uint16_t y0, uint16_t w, uint16_t h, uint16_t color);
  // get blank out area
  //tft.getTextBounds("222", 0, 0, &x1, &y1, &w, &h);
 // tft.fillRect(0,0,w,h,ST77XX_BLACK);
  // get area for text
 // tft.getTextBounds(text, 0, 0, &x1, &y1, &w, &h);
  tft.setCursor(0, 0);
  tft.setTextColor(color);
  tft.setTextWrap(true);
  tft.print(text);
}

GFXcanvas1 canvas(160, 80); // 160x80 pixel canvas

void setup() {
  Serial.begin(9600);
  Serial.println(F("TFT Test Code (for vADC"));

  Serial.print(F("Initializing TFT..."));
  tft.initR(INITR_MINI160x80);  // Init ST7735S mini display
  Serial.println(F("DONE"));
  //tft.setSPISpeed(1000000);
  tft.invertDisplay(true); // color control
  tft.setRotation(3); // 1,3 are land, 0 and 2 are port
  tft.setFont(&FreeSansBold18pt7b);
 // testdrawtext("Hello  chat", ST77XX_BLUE);
 // delay(500);
  //tft.fillScreen(ST77XX_BLACK);
 // testdrawtext("012345679", ST77XX_BLUE);

  tft.fillScreen(ST77XX_BLACK);


  tft.setTextColor(ST77XX_RED);
  tft.setTextWrap(false);
  //          "01234567"
 // tft.println("vADC 1.0");


  //drawLine(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1, uint16_t color);
  tft.drawLine(0,0,5,0,   ST77XX_BLUE);
  tft.drawLine(0,39,5,39, ST77XX_BLUE);
 
  tft.drawLine(0,40,5,40, ST77XX_BLUE);
  tft.drawLine(0,79,5,79, ST77XX_BLUE);
 
 
  int16_t  x1, y1;
  uint16_t w, h;
  // half the 40px
  tft.getTextBounds("1.21v", 0, 0, &x1, &y1, &w, &h);
  tft.setCursor( ((159-w)/2), ((39-h)/2)+h ); // rj math says 18pt = 35px
  tft.print("1.21v"); // 0,0 is bottom left

  tft.getTextBounds("1.51v", 0, 0, &x1, &y1, &w, &h);
  tft.setCursor( ((159-w)/2), (((39-h)/2)+(39+h)) ); // rj math says 18pt = 35px
  tft.print("1.51v");
 // tft.print("1.51v");

  while(1);
 // canvas.setFont(&FreeMonoBoldOblique12pt7b);
 // canvas.setCursor(0, 0);
 // canvas.println("Hello Chat!");
//  int x=0;
 // int y=0;
 // tft.drawBitmap(x, y, canvas.getBuffer(), 160, 80, ST77XX_WHITE); // Copy to scree



}

char buf[16];
void loop() {
  // put your main code here, to run repeatedly:
  for (int x=0; x<100; x++) {
      //Serial.println(x);
      // tft.fillScreen(ST77XX_BLACK);
      itoa(x,buf,10);
      testdrawtext(buf, ST77XX_WHITE);
      delay(250);
  }
}


  // needed to change colstart and rowstart in the
  // library, per: https://github.com/adafruit/Adafruit-ST7735-Library/pull/126


  /*
    Adafruit invests time and resources providing this open source code,
    please support Adafruit and open-source hardware by purchasing
    products from Adafruit!

    Written by Limor Fried/Ladyada for Adafruit Industries.
    MIT license, all text above must be included in any redistribution
  **************************************************************************/

