; Get Debug output of ultra sound

; Define pins for Trigger & Echo
Symbol frontL_SIG 	= C.1 
Symbol frontR_SIG 	= C.3
Symbol back_SIG	= B.0

; ADC channel 8
Symbol line = 8

; 16 bit word variable for ranges
Symbol frontL_range	= w1
Symbol frontR_range 	= w2
Symbol back_range 		= w3
Symbol linevalue 		= b0


Start:

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
	Ultra frontL_SIG, frontL_range
	Ultra frontR_SIG, frontR_range
	Ultra back_SIG, back_range
	
	; read line sensor
	Readadc line, linevalue
			
	; display values (named like symbols) 
	Debug 
	
	; short delay
	Pause 50
	
	; loop around forever
	Goto Main