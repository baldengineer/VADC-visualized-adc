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

void print_dac_value(uint16_t color) {
  char str_val[8] = {"0.00v"}; // = "00.00v";
  double current_dac_voltage = analogRead(A5) * (5.0/(pow(2,10)-1.0));
  Serial.print("current_dac_voltage = "); Serial.print(current_dac_voltage); Serial.println(" volts)");
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

void setup() {
	Serial.begin(9600);
	Serial.println(F("Visualized ADC - DAC"));
	init_595();
	init_tft();

	pinMode(sh_enable, OUTPUT);
	digitalWrite(sh_enable, LOW);
	pinMode(comparator_result, INPUT);

  pinMode(step_button, INPUT_PULLUP);
	pinMode(dac_value_button, INPUT_PULLUP);
	pinMode(button, INPUT_PULLUP);

  //tft_print_twolines("1.21v", LCD_BLUE, "5.43v", LCD_GREEN);
  char msg[6] = {"Ready"};
  tft_print_oneline(msg, LCD_BLUE);
}

void loop() {
  unsigned long current_millis = millis();

  handle_serial();

  // Print current DAC value (mostly for testing)
  if (digitalRead(dac_value_button) == PRESSED)
    print_dac_value(LCD_GREEN);

  // manual stepper mode, go one step at a time.
  if (digitalRead(step_button) == PRESSED) {
   stepper = true;
   start_SAR = true;
  }

  // kick-off the conversion
	if (digitalRead(button) == PRESSED) {
		start_SAR = true;
		send_data_to_bits(convert_to_bit(0)); // clear, good for scope view
    print_dac_value(LCD_BLUE);
	}

	// start conversion
	if (start_SAR) {
		start_SAR = false;
    Serial.println(F("---\nConversion Start:"));
    Serial.print(F("vref = ")); Serial.println(adc_vref);
    Serial.print(F("adc_voltage_step = ")); Serial.println(adc_voltage_step);

		// sample Vin
    sample_vin();

		final_countdown =0;
    // test one bit at a time, going from MSB to LSB
		for (int x=(dac_width-1); x>=0; x--) {
			bitWrite(final_countdown, x, 1);
			send_data_to_bits(convert_to_bit(final_countdown));
      delay(10);
      print_dac_value(LCD_BLUE); // red is actually blue
      if (stepper) while(digitalRead(step_button) == NOT_PRESSED);
    
      // just for our display, not used elsewhere
			if (!stepper) delay(500);
			bitWrite(final_countdown, x, digitalRead(comparator_result));
      print_dac_value(LCD_BLUE);
		}
	
		// send final value	
    if (stepper) while(digitalRead(step_button) == NOT_PRESSED);
		send_data_to_bits(convert_to_bit(final_countdown));
    delay(10);
    print_dac_value(LCD_RED);
		Serial.print(F("Conversion: ")); Serial.print(final_countdown);
		Serial.print(F(","));
		Serial.print(final_countdown * 0.3);
		Serial.println(F("V"));
    stepper = false;
	}
}