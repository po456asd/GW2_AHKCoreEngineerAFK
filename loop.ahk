SetKeyDelay, 0, 200
SetTitleMatchMode, 2

F7::
WinGet, gamepid, PID, A
ToolTip, %gamepid%, 0, 0
sleep 2500
ToolTip, , 0, 0
Return

F8::
;if ( gamepid < 1 ) {
;	ToolTip, use F7 to get windows pid first, 0, 0
;	sleep 2500
;	ToolTip, , 0, 0
;	return
;}
;else {
	ToolTip, Bot Running.., 0, 0
	gosub, Loot
	gosub, Start6
	gosub, Start7
	gosub, Start8
	gosub, Start9
;}
Return

Start6:
SetTimer Start6, Off
Controlsend, , {6}, Guild Wars 2
sleep, 2500
SetTimer Lootandreset6, 270000 ;start the Timer
Return

Start7:
SetTimer Start7, Off
Controlsend, , {7}, Guild Wars 2
sleep, 2500
SetTimer Lootandreset7, 270000 ;start the Timer
Return

Start8:
SetTimer Start8, Off
Controlsend, , {8}, Guild Wars 2
sleep, 2500
SetTimer Lootandreset8, 270000 ;start the Timer
Return

Start9:
SetTimer Start9, Off
Controlsend, , {9}, Guild Wars 2
sleep, 2500
SetTimer Lootandreset9, 270000 ;start the Timer
Return

Lootandreset6:
SetTimer Lootandreset6, Off
Controlsend, , {.}, Guild Wars 2
sleep, 2500
Controlsend, , {6}, Guild Wars 2
sleep, 2500
SetTimer Start6, 22000 ;start the Timer
Return

Lootandreset7:
SetTimer Lootandreset7, Off
Controlsend, , {.}, Guild Wars 2
sleep, 2500
Controlsend, , {7}, Guild Wars 2
sleep, 2500
SetTimer Start7, 22000 ;start the Timer
Return

Lootandreset8:
SetTimer Lootandreset8, Off
Controlsend, , {.}, Guild Wars 2
sleep, 2500
Controlsend, , {8}, Guild Wars 2
sleep, 2500
SetTimer Start8, 42000 ;start the Timer
Return

Lootandreset9:
SetTimer Lootandreset9, Off
Controlsend, , {.}, Guild Wars 2
sleep, 2500
Controlsend, , {9}, Guild Wars 2
sleep, 2500
SetTimer Start9, 22000 ;start the Timer
Return

Loot:
SetTimer Loot, Off
Controlsend, , {.}, Guild Wars 2
sleep, 2000
SetTimer Loot, 30000 ;start the Timer
Return

; #### stops the Timer by pressing the left mouse button ####
F9::
SetTimer Start6, Off
SetTimer Lootandreset6, Off
SetTimer Start7, Off
SetTimer Lootandreset7, Off
SetTimer Start8, Off
SetTimer Lootandreset8, Off
SetTimer Start9, Off
SetTimer Lootandreset9, Off
SetTimer Loot, Off
ToolTip, , 0, 0
Return

Imagesearch:
ImageSearch, , , 997, 976, 1294, 1073, *75 *Trans0xFFFFFF Image\%imagename%.png
if errorlevel = 0 
{
	ToolTip, Image Found, 0, 0
}
if errorlevel = 1 
{
	ToolTip, Image Not Found, 0, 0
}
if errorlevel = 2 
{
	ToolTip, Failed to open Image, 0, 0
}
Return

F10::
gosub, Loot
Return