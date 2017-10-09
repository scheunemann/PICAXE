; Switch lights on and off with the user button

; pre load value for timer for one `tick` every 0.1 sec
Settimer 62411

; Symbols
Symbol uButton  = pinC.6
Symbol leftLED    = B.1
Symbol rightLED = B.3

Main:
	
	Do 
		timer = 0;

		If uButton = 1 Then
		
			High leftLED
			High rightLED
		
		Else
	
			Low leftLED
			Low rightLED
		
		Endif
	
		Do Loop Until timer > 0
	
		Debug
		
	Loop ;infinite loop

End