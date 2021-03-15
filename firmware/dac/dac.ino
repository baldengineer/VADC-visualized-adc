#include "dac.h"
#include "tft.h"

void handle_serial() {
  if (Serial.available()) {
    if (Serial.peek() != '!') {
      int dac_value = Serial.parseInt();

      if (dac_value < 0)
        dac_value = 0;
      if (dac_value > 0xF)
        dac_value = 0xF;
      Serial.print("Got: "); Serial.println(dac_value);

      send_data_to_bits(convert_to_bit(dac_value));	
    } else {
      Serial.read();
      digitalWrite(sh_enable, HIGH);
      delay(5);
      digitalWrite(sh_enable, LOW);
      Serial.println("Sampled");
    }
  }	
}

void init_595() {
	pinMode(clock_595, OUTPUT);
	pinMode(latch_595, OUTPUT);
	pinMode(data_595, OUTPUT);

	digitalWrite(clock_595, LOW);
	digitalWrite(data_595, LOW);
	digitalWrite(latch_595, HIGH);


	uint32_t data_out=0x0;
	data_out = set_relay(data_out, RELAY_ON, 0);
	data_out = set_relay(data_out, RELAY_ON, 1);
	data_out = set_relay(data_out, RELAY_ON, 2);
	data_out = set_relay(data_out, RELAY_ON, 3);

	send_data_to_bits(data_out);
}

uint32_t set_relay(uint32_t data_stream, bool state, int relay_number) {
	int shift_by = (relay_number * 8) + 6;
	bitWrite(data_stream, shift_by, !state);
	Serial.print(relay_number); Serial.print(": "); Serial.println(data_stream, HEX);
	return data_stream;
}

void send_data_to_bits(uint32_t data_out) {
	// X R X X  X X X 1  X R X X  X X X 1   X R X X  X X X 1   X R X X  X X X 1
	digitalWrite(latch_595, LOW);
 	 shiftOut(data_595, clock_595, MSBFIRST, (data_out >> 24));  // bit 4
	 shiftOut(data_595, clock_595, MSBFIRST, (data_out >> 16));  // bit 3
	 shiftOut(data_595, clock_595, MSBFIRST, (data_out >> 8));	// bit 2
	 shiftOut(data_595, clock_595, MSBFIRST, (data_out));		// bit 0
	digitalWrite(latch_595, HIGH);

  // give the relays time to settle
  delay(10);
}

double measure_dac_value() {
  return analogRead(A5) * (adc_vref/(pow(2,10)));
}

void print_dac_and_binary(uint16_t color, char *msg) {
  char str_val[8] = {"0.00v"}; // = "00.00v";
  double current_dac_voltage = measure_dac_value();
  Serial.print(F("current_dac_voltage = ")); Serial.print(current_dac_voltage); Serial.println(F(" volts)"));
  dtostrf(current_dac_voltage, 5, 2, str_val);
  tft_print_twolines(str_val, color, msg, color); 
}

void print_dac_value(uint16_t color) {
  char str_val[8] = {"0.00v"}; // = "00.00v";
  double current_dac_voltage = measure_dac_value();
  Serial.print(F("current_dac_voltage = ")); Serial.print(current_dac_voltage); Serial.println(F(" volts)"));
  dtostrf(current_dac_voltage, 5, 2, str_val);
  tft_print_oneline(str_val, color);
}

uint32_t convert_to_bit(byte counter) {
	uint32_t data_out = 0x0;
	
	switch(counter) {
	    case 0:
	      data_out = 0x40404040;
	      break;
	    case 1:
	      data_out = 0x404040BF;  // 1011 111
	      break; 
	    case 2:
	      data_out = 0x4040BF40;
	      break;
	    case 3:
	      data_out = 0x4040BFBF;
	      break;
	    case 4:
	      data_out = 0x40BF4040;
	      break;
	    case 5:
	      data_out = 0x40BF40BF;
	      break;
	    case 6:
	      data_out = 0x40BFBF40;
	      break;
	    case 7:
	      data_out = 0x40BFBFBF;
	      break;
	    case 8:
	      data_out = 0xBF404040;
	      break;
	    case 9:
	      data_out = 0xBF4040BF;
	      break;
	    case 10:
	      data_out = 0xBF40BF40;
	      break;  
	    case 11:
	      data_out = 0xBF40BFBF;
	      break;  
	    case 12:
	      data_out = 0xBFBF4040;
	      break;
	    case 13:
	      data_out = 0xBFBF40BF;
	      break;  
	    case 14:
	      data_out = 0xBFBFBF40;
	      break;  
	    case 15:
	      data_out = 0xBFBFBFBF;
	      break;  
	  }
	return data_out;
}

void sample_vin() {
  digitalWrite(sh_enable, HIGH);
  delay(500);
  digitalWrite(sh_enable, LOW);
}

void dac_cal() {
  int cal_delay = 100;
  // clear the relays
  char msg[6] = {"Cal"};
  tft_print_oneline(msg, LCD_RED);
  send_data_to_bits(convert_to_bit(0)); // clear, good for scope view
  delay(cal_delay);

  // set 15, measure the voltage
  send_data_to_bits(convert_to_bit(15)); // clear, good for scope view
  delay(cal_delay);
  dac_value_max = measure_dac_value();

  // set 8, measure the voltage
  send_data_to_bits(convert_to_bit(8)); // clear, good for scope view
  delay(cal_delay);
  double dac_value_verify = measure_dac_value();

  // set 1, measure the voltage
  send_data_to_bits(convert_to_bit(1)); // clear, good for scope view
  delay(cal_delay);
  dac_value_step = measure_dac_value();

  // set 0, measure the voltage
  send_data_to_bits(convert_to_bit(0)); // clear, good for scope view
  delay(cal_delay);
  dac_value_min = measure_dac_value();


  char step_str[8];
  dtostrf(dac_value_step, 5, 2, step_str);
  char verify_str[8];
  dtostrf((dac_value_verify/8.0), 5, 2, verify_str);

  send_data_to_bits(convert_to_bit(0));

  tft_print_twolines(step_str, LCD_BLUE, verify_str, LCD_GREEN);

  delay(1000);
  tft_print_oneline(msg_ready, LCD_BLUE);

}

void setup() {
	Serial.begin(9600);
	Serial.println(F("Visualized ADC - DAC"));
	init_595();
	init_tft();

  analogReference(EXTERNAL);
  analogRead(A0);

	pinMode(sh_enable, OUTPUT);
	digitalWrite(sh_enable, LOW);
	pinMode(comparator_result, INPUT);

  pinMode(step_button, INPUT_PULLUP);
	pinMode(cal_button, INPUT_PULLUP);
	pinMode(button, INPUT_PULLUP);

  dac_cal();
}



void led_blink(byte bit, byte test_value) {
  static unsigned long previous_led_blink=0;
  static bool led_state = false;
  unsigned long led_invterval = 50;
  unsigned long current_millis = millis();
  if (current_millis - previous_led_blink >= led_invterval) {
    uint32_t data_stream = convert_to_bit(test_value);
    if (led_state) {
      led_state = false;
      //0x40;
      bitWrite(data_stream, ((bit*8)-1), 0);  // 4*8, 32-1 = 31
      bitWrite(data_stream, ((bit*8)-2), 0);  // 4*8, 32-2 = 30
      bitWrite(data_stream, ((bit*8)-3), 0);
      bitWrite(data_stream, ((bit*8)-4), 0);
      bitWrite(data_stream, ((bit*8)-5), 0);
      bitWrite(data_stream, ((bit*8)-6), 0);
      bitWrite(data_stream, ((bit*8)-7), 0);
      bitWrite(data_stream, ((bit*8)-8), 0);  // 48*-8, 32-8 = 24
    } else {
      led_state = true;  // 0xBF
      bitWrite(data_stream, ((bit*8)-1), 1);  // 4*8, 32-1 = 31
      bitWrite(data_stream, ((bit*8)-2), 0);  // 4*8, 32-2 = 30
      bitWrite(data_stream, ((bit*8)-3), 1);
      bitWrite(data_stream, ((bit*8)-4), 1);
      bitWrite(data_stream, ((bit*8)-5), 1);
      bitWrite(data_stream, ((bit*8)-6), 1);
      bitWrite(data_stream, ((bit*8)-7), 1);
      bitWrite(data_stream, ((bit*8)-8), 1);  // 48*-8, 32-8 = 24
    }
   // set_relay(data_stream, true, bit);  // uint32_t data_stream, bool state, int relay_number
    send_data_to_bits(data_stream);
    previous_led_blink = current_millis;
  }

}

void loop() {
  unsigned long current_millis = millis();

  handle_serial();

  // Print current DAC value (mostly for testing)
  if (digitalRead(cal_button) == PRESSED)
    dac_cal();

  // manual stepper mode, go one step at a time.
  if (digitalRead(step_button) == PRESSED) {
   stepper = true;
   start_SAR = true;
  }

  // kick-off the conversion
	if (digitalRead(button) == PRESSED) {
		start_SAR = true;
	}

	// start conversion
	if (start_SAR) {
    send_data_to_bits(convert_to_bit(0)); // clear, good for scope view
    print_dac_value(LCD_BLUE);
		start_SAR = false;
    Serial.println(F("---\nConversion Start:"));
    Serial.print(F("vref = ")); Serial.println(adc_vref);
    Serial.print(F("adc_voltage_step = ")); Serial.println(adc_voltage_step);

		// sample Vin
    sample_vin();

		final_countdown = 0;

    // string to display bit sequence on LCD
    char bit_sequence[dac_width+1]; 
    for (int x=0; x<dac_width; x++)
      bit_sequence[x] = '?';
    bit_sequence[dac_width+1] = '\0';

    // test one bit at a time, going from MSB to LSB
    const byte remap[] = {3,2,1,0};
		for (int x=(dac_width-1); x>=0; x--) {
      // test the current  bit
			bitWrite(final_countdown, x, 1);
			send_data_to_bits(convert_to_bit(final_countdown));
      delay(10);
      bit_sequence[remap[x]] = 'X';
      //print_dac_value(LCD_BLUE); // red is actually blue
      print_dac_and_binary(LCD_BLUE, bit_sequence);

      if (stepper) 
        while(digitalRead(step_button) == NOT_PRESSED)
          led_blink((x+1), final_countdown);
      else 
        //delay(500);
        for (int ticks=0; ticks<500; ticks++) {
          led_blink((x+1), final_countdown);
          delay(1);
        }
          
      // capture comparator result, finalizing the current bit
      if (digitalRead(comparator_result)) {
		  	bitWrite(final_countdown, x, HIGH);
        bit_sequence[remap[x]] = '1';
      } else {
		  	bitWrite(final_countdown, x, LOW);
        bit_sequence[remap[x]] = '0';        
      }


      print_dac_and_binary(LCD_BLUE, bit_sequence);  
		}
	
		// send final value	
    if (stepper) while(digitalRead(step_button) == NOT_PRESSED);
		send_data_to_bits(convert_to_bit(final_countdown));
    delay(10);

    char low_value[8];
    char high_value[8];

    dtostrf((dac_value_step * final_countdown),  3, 1, low_value);
    dtostrf(((dac_value_step * final_countdown) + dac_value_step), 3, 1, high_value );
    char line1[8];
    sprintf(line1, "%s-%s", low_value, high_value);

   // print_dac_value(LCD_RED);
//    tft_print_twolines(low_value, LCD_GREEN, high_value, LCD_RED);
    tft_print_twolines(line1, LCD_GREEN, bit_sequence, LCD_BLUE);

		Serial.print(F("Conversion: ")); Serial.print(final_countdown);
		Serial.print(F(","));
		Serial.print(final_countdown * 0.3);
		Serial.println(F("V"));
    stepper = false;
	}
}