;; Click on the first text box that you want to start auto-filling
;; Update the variable prefString with your "remaining preferences list" without empty spaces (comma-separated)
;; Reload this script (right-click tray icon -> Reload script)
;; Then Press Ctrl-Alt-K

^!k::
	
	;; --------------------- Put preferences below ----------------------
	
	prefString = 101,102,103,104,105
	
	;; --------------------- Put preferences above ----------------------
	
	
	;; Following line tokenizes the string with delimiter as a comma (the backtick is the escape character)
	StringSplit, prefArray, prefString, `,


		; Read from the array:
		Loop %prefArray0%
		{
			;; The following line uses the := operator to retrieve an array element:
			;; Retrieve array elements one-by-one
			element := prefArray%A_Index%  ; A_Index is a built-in variable.

			;; Write element followed by pressing tab
			
			Send %element%
			Send {TAB}
			
			;; Ok, last time because Autohotkey was pretty fast in entering the values the page used to hang
			;; because it was updating the "Remaining preferences box"
			;; So, I had to use a delay of about 1 second between entering values
			;; Uncomment the following line if you need it
			
			;; Sleep, 1000 ; 2 second delay
		}

return
