; Get Debug output for the bot type 2: light and line sensor

; Define pins
Symbol frontL_SIG 	= 9
Symbol frontR_SIG 	= 7

; ADC channel 8
Symbol line = 8

; 8 bit word variable for light intensity
Symbol frontL_intensity	= b0
Symbol frontR_intensity  = b1
Symbol linevalue 	= b2

; LED
Symbol light = B.0

Start:
	low B.0
	
	Forward A
	Forward B
	Pause 1000
	
	Backward A
	Backward B
	Pause 1000
	
	Halt A
	Halt B
		
	Goto Main

Main:
	
	; read light intensity from adc (analog digitial converter) 
	Readadc frontL_SIG, frontL_intensity
	Readadc frontR_SIG, frontR_intensity
	
	; read line sensor
	Readadc line, linevalue
			
	; display values (named like symbols) 
	Debug 
	
	; short delay
	Pause 50
	
	; loop around forever
	Goto Main
