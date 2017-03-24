; Get Debug output of ultra sound

; Define pins for Trigger & Echo
Symbol frontL_SIG 	= 9
Symbol frontR_SIG 	= 7

; ADC channel 8
Symbol line = 8

; 8 bit word variable for ranges
Symbol frontL_range	= b0
Symbol frontR_range  = b1
Symbol linevalue 		= b2

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
	
	 ; use dedicated `ultra` command
	Readadc frontL_SIG, frontL_range
	Readadc frontR_SIG, frontR_range
	
	; read line sensor
	Readadc line, linevalue
			
	; display values (named like symbols) 
	Debug 
	
	; short delay
	Pause 50
	
	; loop around forever
	Goto Main