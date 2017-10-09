; Get Debug output of ultra sound

; ADC channel 8
Symbol linesensor = 8

; 16 bit word variable for ranges
Symbol linevalue = b0

; Constants
Symbol threshold = 100

Main:
	Forward A
	Forward B
	Do
	
	; read line sensor
	Readadc linesensor, linevalue
			
	; display values (named like symbols) 
	Debug 
	
	If linevalue > threshold Then
		Halt A
		Halt B
	Endif
	
	Loop ; loop around forever