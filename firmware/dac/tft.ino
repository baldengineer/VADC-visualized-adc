

// 0.96" RGB TFT 160x80 module
#define TFT_CS         10
#define TFT_RST         9 // Or set to -1 and connect to Arduino RESET pin
#define TFT_DC         A1
#define TFT_BACKLIGHT  A0

// ST7735 use:
Adafruit_ST7735 tft = Adafruit_ST7735(TFT_CS, TFT_DC, TFT_RST);

// Example of using canvas, if we're going to use that
GFXcanvas1 canvas(160, 80); // 160x80 pixel canvas

// Adafruit's example text draw, may not use
void testdrawtext(char *text, uint16_t color) {
  int16_t  x1, y1;
  uint16_t w, h;

  tft.setCursor(0, 0);
  tft.setTextColor(color);
  tft.setTextWrap(true);
  tft.print(text);
}

// TODO: should center on the screen.
void tft_print_oneline(char *line1, uint16_t color1) {
  // for text bounding box
  int16_t  x1, y1;
  uint16_t w, h;
  
  // top half the 40px - remember, cursor is 0-indexed! (so height/width is -1!)
  tft.fillScreen(ST77XX_BLACK);
  tft.setTextColor(color1);

  tft.getTextBounds(line1, 0, 0, &x1, &y1, &w, &h); // how much space we need
  tft.setCursor( ((159-w)/2), ((79-h)/2)+h ); // rj math says 18pt = 35px
  tft.print(line1); // 0,0 is bottom left

}


void tft_print_twolines(char *line1, uint16_t color1, char *line2, uint16_t color2) {
  // for text bounding box
  int16_t  x1, y1;
  uint16_t w, h;

  tft.fillScreen(ST77XX_BLACK);
  // top half the 40px - remember, cursor is 0-indexed! (so height/width is -1!)
  tft.setTextColor(color1);
  tft.getTextBounds(line1, 0, 0, &x1, &y1, &w, &h); // how much space we need
  tft.setCursor( ((159-w)/2), ((39-h)/2)+h ); // rj math says 18pt = 35px
  tft.print(line1); // 0,0 is bottom left

  tft.setTextColor(color2);
  tft.getTextBounds(line2, 0, 0, &x1, &y1, &w, &h);
  tft.setCursor( ((159-w)/2), (((39-h)/2)+(39+h)) ); // rj math says 18pt = 35px
  tft.print(line2);
}

void init_tft() {
  Serial.print(F("Initializing TFT..."));
  tft.initR(INITR_MINI160x80);  // Init ST7735S mini display
  Serial.println(F("DONE"));

  tft.invertDisplay(true); // color control - still off though
  tft.setRotation(3); // 1,3 are land, 0 and 2 are port
  tft.fillScreen(ST77XX_BLACK);

  tft.setFont(&FreeSansBold18pt7b); // should be 35px high
  tft.setTextWrap(false); //
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

