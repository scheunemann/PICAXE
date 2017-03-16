; Switch lights on and off with the user button

main:	

	If pinC.6 = 1 then
		
		high B.1
		high B.3
		
	else
	
		low B.1
		low B.3
		
	endif
	
	goto main