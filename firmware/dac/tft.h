// 0.96" RGB TFT 160x80 module
#define TFT_CS         10
#define TFT_RST         9 // Or set to -1 and connect to Arduino RESET pin
#define TFT_DC         A0
//#define TFT_BACKLIGHT  A1

// Fixing the colors
#define LCD_BLUE  ST77XX_RED
#define LCD_RED   ST77XX_BLUE
#define LCD_GREEN ST77XX_GREEN

// ST7735 use:
Adafruit_ST7735 tft = Adafruit_ST7735(TFT_CS, TFT_DC, TFT_RST);

// Example of using canvas, if we're going to use that
GFXcanvas1 canvas(160, 80); // 160x80 pixel canvas