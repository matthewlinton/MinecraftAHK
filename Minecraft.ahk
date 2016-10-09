; Click Left mouse button until control key is pressed
^+LButton::
Loop {
	click
	KeyWait, Control
	sleep 256
} Until GetKeyState("Control")
return

; Hold Left mouse button down until control key is pressed
!+LButton::
Loop {
	send {RButton down}
	KeyWait, Control
	sleep 256
} Until GetKeyState("Control")
send {RButton up}
return

; Click Right mouse button until control key is pressed
^+RButton::
Loop {
	click right
	KeyWait, Control
	sleep 128
} Until GetKeyState("Control")
return

; Hold Right mouse button down until control key is pressed
!+RButton::
Loop {
	send {RButton down}
	KeyWait, Control
	sleep 256
} Until GetKeyState("Control")
send {RButton up}
return

; Walk forward by pressing "w" down until control key is pressed
^+w::
Loop {
	send {w down}
	KeyWait, Control
	sleep 32
} Until GetKeyState("Control")
send {w up}
return


