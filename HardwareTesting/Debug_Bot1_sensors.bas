; Debug Bot102 (type 1)

; Define pins for Trigger & Echo
symbol frontL_SIG	= C.1 
symbol frontR_SIG	= C.3
symbol back_SIG	= B.0

; ADC channel 8
symbol line = 8

; 16 bit word variable for ranges
symbol frontL_range	= w1
symbol frontR_range	= w2
symbol back_range	= w3
symbol linevalue	= b0


start:

	forward A
	forward B
	pause 1000
	
	backward A
	backward B
	pause 1000
	
	halt A
	halt B
	
	goto main

main:
	 ; use dedicated `ultra` command
	ultra frontL_SIG, frontL_range
	ultra frontR_SIG, frontR_range
	ultra back_SIG, back_range
	
	; read line sensor
	readadc line, linevalue
			
	; display values (named like symbols) 
	debug 
	
	; short delay
	pause 50
	
	; loop around forever
	goto main