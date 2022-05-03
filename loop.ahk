SetKeyDelay, 0, 200

F8::
ToolTip, Bot Running.., 0, 0
gosub, Loot
gosub, Start6
gosub, Start7
gosub, Start8
gosub, Start9
Return

Start6:
SetTimer Start6, Off
ControlSend, , {6}, Guild Wars 2
sleep, 2500
SetTimer Lootandreset6, 270000 ;start the Timer
Return

Start7:
SetTimer Start7, Off
ControlSend, , {7}, Guild Wars 2
sleep, 2500
SetTimer Lootandreset7, 270000 ;start the Timer
Return

Start8:
SetTimer Start8, Off
ControlSend, , {8}, Guild Wars 2
sleep, 2500
SetTimer Lootandreset8, 270000 ;start the Timer
Return

Start9:
SetTimer Start9, Off
ControlSend, , {9}, Guild Wars 2
sleep, 2500
SetTimer Lootandreset9, 270000 ;start the Timer
Return

Lootandreset6:
SetTimer Lootandreset6, Off
ControlSend, , {.}, Guild Wars 2
sleep, 2500
ControlSend, , {6}, Guild Wars 2
sleep, 2500
SetTimer Start6, 22000 ;start the Timer
Return

Lootandreset7:
SetTimer Lootandreset7, Off
ControlSend, , {.}, Guild Wars 2
sleep, 2500
ControlSend, , {7}, Guild Wars 2
sleep, 2500
SetTimer Start7, 22000 ;start the Timer
Return

Lootandreset8:
SetTimer Lootandreset8, Off
ControlSend, , {.}, Guild Wars 2
sleep, 2500
ControlSend, , {8}, Guild Wars 2
sleep, 2500
SetTimer Start8, 42000 ;start the Timer
Return

Lootandreset9:
SetTimer Lootandreset9, Off
ControlSend, , {.}, Guild Wars 2
sleep, 2500
ControlSend, , {9}, Guild Wars 2
sleep, 2500
SetTimer Start9, 22000 ;start the Timer
Return

Loot:
SetTimer Loot, Off
ControlSend, , {.}, Guild Wars 2
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