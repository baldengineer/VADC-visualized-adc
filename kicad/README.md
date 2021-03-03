# Visualized ADC KiCad Design Files

## Visual ADC Relay Block
Single bit block of the DAC inside of the ADC. The board contains a relay, R resistor, 2R resistor, LEDs, a shift register, and a buffer. 

The shift register and buffer control the relay and six LEDs individually. The relay controls the 2R resistor. 

The idea is to daisy chain these together. (So far, only tested with 4 bits.)

Board was fabricated with OSH Park's 4 layer service. The fiberglass material helps the reverse-mount LEDs glow.

## Sample-Hold-Compare
These files are schematic-only. I captured the breadboard circuit we used for the sample-and-hold amplifier and op-amp as a comparator.
