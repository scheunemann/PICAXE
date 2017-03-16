; Go forward till the left ultra sound range is low (some obstacle)

Settimer 62411
; details http://www.picaxe.com/docs/picaxe_manual2.pdf pg 232
; Alternative `Settimer 34286` means a tick every 1 sec

; Symbols
Symbol frontL_SIG   	= C.1 
Symbol frontL_range = w1
Symbol threshold 	= 20

Main:
	
	Do 

		timer = 0;
		
		Ultra frontL_SIG, frontL_range
		
		If frontL_range < threshold Then
			Gosub DontMove
		Else
			Gosub Move
		Endif
	
		Debug
		
		Do Loop Until timer > 0
	
	Loop ;infinite loop

Move:
	Forward A
	Forward B
	Return

DontMove:
	Halt A
	Halt B
	Return

End