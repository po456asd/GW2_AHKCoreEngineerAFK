SetKeyDelay, 0, 200

F8::
gosub, Loot
gosub, Start6
gosub, Start7
gosub, Start8
gosub, Start9
Return

Start6:
SetTimer Start6, Off
Send, {6}
sleep, 2500
SetTimer Lootandreset6, 270000 ;start the Timer
Return

Start7:
SetTimer Start7, Off
Send, {7}
sleep, 2500
SetTimer Lootandreset7, 270000 ;start the Timer
Return

Start8:
SetTimer Start8, Off
Send, {8}
sleep, 2500
SetTimer Lootandreset8, 270000 ;start the Timer
Return

Start9:
SetTimer Start9, Off
Send, {9}
sleep, 2500
SetTimer Lootandreset9, 270000 ;start the Timer
Return

Lootandreset6:
SetTimer Lootandreset6, Off
Send, {.}
sleep, 2500
Send, {6}
sleep, 2500
SetTimer Start6, 22000 ;start the Timer
Return

Lootandreset7:
SetTimer Lootandreset7, Off
Send, {.}
sleep, 2500
Send, {7}
sleep, 2500
SetTimer Start7, 22000 ;start the Timer
Return

Lootandreset8:
SetTimer Lootandreset8, Off
Send, {.}
sleep, 2500
Send, {8}
sleep, 2500
SetTimer Start8, 42000 ;start the Timer
Return

Lootandreset9:
SetTimer Lootandreset9, Off
Send, {.}
sleep, 2500
Send, {9}
sleep, 2500
SetTimer Start9, 22000 ;start the Timer
Return

Loot:
SetTimer Loot, Off
Send, {.}
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
Return