; Get Debug output of ultra sound

; Define pins for Trigger & Echo
symbol FrontL_SIG 	= C.1 
symbol FrontR_SIG 	= C.3
symbol Back_SIG 	= B.0

; 16 bit word variable for ranges
symbol FrontL_range	= w1
symbol FrontR_range 	= w2
symbol Back_range 		= w3

main:

	 ; use dedicated `ultra` command
	ultra FrontL_SIG, FrontL_range
	ultra FrontR_SIG, FrontR_range
	ultra Back_SIG, Back_range
		
	; display range via debug command 
	debug FrontL_range
	debug FrontR_range
	debug Back_range
	
	; short delay
	pause 50
	
	; loop around forever
	goto main