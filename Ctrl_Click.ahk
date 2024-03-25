; Script by Ramon

#Persistent
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Screen
toggle := False

F10:: ; Ativar/Desativar o script
toggle := !toggle
if (toggle) {
    SetTimer, ClickWithCtrl, 30
} else {
    SetTimer, ClickWithCtrl, Off
}
return

ClickWithCtrl:
    if (toggle) {
        CoordMode, Mouse, Screen
        MouseGetPos, xpos, ypos
        SendInput, {Ctrl Down}
        Click %xpos%, %ypos%
        SendInput, {Ctrl Up}
    }
return
