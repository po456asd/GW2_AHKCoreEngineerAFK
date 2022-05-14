;Legendary Engineerz

SetKeyDelay, 0, 200
SetTitleMatchMode, 2

attack := "no"

randomwait:
Random, rand, 2000, 5000
return

F7::
WinGet, gamepid, ID, A
ToolTip, %gamepid%, 0, 0
sleep 2500
ToolTip, , 0, 0
Return

F8::
if ( gamepid < 1 ) {
	ToolTip, use F7 to get windows pid first, 0, 0
	sleep 2500
	ToolTip, , 0, 0
	return
}
else {
	ToolTip, Bot Running.., 0, 0
	SetTimer Start6, 100
	SetTimer Start7, 100
	SetTimer Start8, 100
	SetTimer Start9, 100	
	SetTimer Loot, 100
	if ( attack = "yes" )
	{
		SetTimer attack, 100
	}
	;gosub, swap
}
Return

;#################################################################

Start6:
SetTimer Start6, Off
if (waiting = 1)
{
	SetTimer Start6, 1000 ;start the Timer
}
else
{
	waiting := "1"
	if ( attack = "yes" ) {
		SetTimer attack, Off
	}
	Controlsend, ahk_parent,{numpad6}, ahk_id %gamepid%
	sleep, 2500
	gosub, randomwait
	if ( attack = "yes" ) {
		SetTimer attack, 100
	}
	waiting := "0"
	sleep, %rand%
	SetTimer Start6, 320000 ;start the Timer
}
Return

Start7:
SetTimer Start7, Off
if (waiting = 1)
{
	SetTimer Start7, 1000 ;start the Timer
}
else
{
	waiting := "1"
	if ( attack = "yes" ) {
		SetTimer attack, Off
	}
	Controlsend, ahk_parent,{numpad7}, ahk_id %gamepid%
	sleep, 2500
	gosub, randomwait
	if ( attack = "yes" ) {
		SetTimer attack, 100
	}
	waiting := "0"
	sleep, %rand%
	SetTimer Start7, 320000 ;start the Timer
}
Return

Start8:
SetTimer Start8, Off
if (waiting = 1)
{
	SetTimer Start8, 1000 ;start the Timer
}
else
{
	waiting := "1"
	if ( attack = "yes" ) {
		SetTimer attack, Off
	}
	Controlsend, ahk_parent,{numpad8}, ahk_id %gamepid%
	sleep, 2500
	gosub, randomwait
	if ( attack = "yes" ) {
		SetTimer attack, 100
	}
	waiting := "0"
	sleep, %rand%
	SetTimer Start8, 320000 ;start the Timer
}
Return

Start9:
SetTimer Start9, Off
if (waiting = 1)
{
	SetTimer Start9, 1000 ;start the Timer
}
else
{
	waiting := "1"
	if ( attack = "yes" ) {
		SetTimer attack, Off
	}
	Controlsend, ahk_parent,{numpad9}, ahk_id %gamepid%
	sleep, 2500
	gosub, randomwait
	if ( attack = "yes" ) {
		SetTimer attack, 100
	}
	waiting := "0"
	sleep, %rand%
	SetTimer Start9, 320000 ;start the Timer
}
Return



;#################################################################

Lootandreset6:
SetTimer Lootandreset6, Off
if ( attack = "yes" ) {
	SetTimer attack, Off
}
if (waiting = 1)
{
	SetTimer Lootandreset6, 1000 ;start the Timer
}
else
{
	waiting := "1"
	Controlsend, ahk_parent,{numpad0}, ahk_id %gamepid%
	Controlsend, ahk_parent,{numpad6}, ahk_id %gamepid%
	sleep, 2500
	waiting := "0"
	SetTimer Start6, 23000 ;start the Timer
}
if ( attack = "yes" ) {
	SetTimer attack, 100
}
Return

Lootandreset7:
SetTimer Lootandreset7, Off
if ( attack = "yes" ) {
	SetTimer attack, Off
}
if (waiting = 1)
{
	SetTimer Lootandreset7, 1000 ;start the Timer
}
else
{
	waiting := "1"
	Controlsend, ahk_parent,{numpad0}, ahk_id %gamepid%
	Controlsend, ahk_parent,{numpad7}, ahk_id %gamepid%
	sleep, 2500
	waiting := "0"
	SetTimer Start7, 23000 ;start the Timer
}
if ( attack = "yes" ) {
	SetTimer attack, 100
}
Return

Lootandreset8:
SetTimer Lootandreset8, Off
if ( attack = "yes" ) {
	SetTimer attack, Off
}
if (waiting = 1)
{
	SetTimer Lootandreset8, 1000 ;start the Timer
}
else
{
	waiting := "1"
	Controlsend, ahk_parent,{numpad0}, ahk_id %gamepid%
	Controlsend, ahk_parent,{numpad8}, ahk_id %gamepid%
	sleep, 2500
	waiting := "0"
	SetTimer Start8, 43000 ;start the Timer
}
if ( attack = "yes" ) {
	SetTimer attack, 100
}
Return

Lootandreset9:
SetTimer Lootandreset9, Off
if ( attack = "yes" ) {
	SetTimer attack, Off
}
if (waiting = 1)
{
	SetTimer Lootandreset9, 1000 ;start the Timer
}
else
{
	waiting := "1"
	Controlsend, ahk_parent,{numpad0}, ahk_id %gamepid%
	Controlsend, ahk_parent,{numpad9}, ahk_id %gamepid%
	sleep, 2500
	waiting := "0"
	SetTimer Start9, 23000 ;start the Timer
}
if ( attack = "yes" ) {
	SetTimer attack, 100
}
Return

attack:
SetTimer attack, Off
Controlsend, ahk_parent,{numpad1}, ahk_id %gamepid%
SetTimer attack, 100 ;start the Timer
Return

swap:
SetTimer swap, Off
Controlsend, ahk_parent,{tab}, ahk_id %gamepid%
SetTimer swap, 1000 ;start the Timer
Return

Loot:
SetTimer Loot, Off
Controlsend, ahk_parent,{numpad0}, ahk_id %gamepid%
sleep, 2000
SetTimer Loot, 30000 ;start the Timer
Return

Lootsemi:
SetTimer Lootsemi, Off
Controlsend, ahk_parent,{numpad0}, ahk_id %gamepid%
SetTimer Lootsemi, 1000 ;start the Timer
Return

; #### stops the Timer by pressing the left mouse button ####
F9::
SetTimer attack, Off
SetTimer swap, Off
SetTimer Start6, Off
SetTimer Lootandreset6, Off
SetTimer Start7, Off
SetTimer Lootandreset7, Off
SetTimer Start8, Off
SetTimer Lootandreset8, Off
SetTimer Start9, Off
SetTimer Lootandreset9, Off
SetTimer Loot, Off
SetTimer Lootsemi, Off
ToolTip, , 0, 0
Return

F10::
ToolTip, Loot Semi, 0, 0
gosub, Lootsemi
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