; Script by Ramon

#Persistent
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
toggle := False

~$*WheelUp:: ; Ao rolar o scroll do mouse para cima
    if (toggle) {
        Click
    } else {
        Send {WheelUp}
    }
return

~$*WheelDown:: ; Ao rolar o scroll do mouse para baixo
    if (toggle) {
        Click
    } else {
        Send {WheelDown}
    }
return

F11:: ; Ativar/Desativar o script
toggle := !toggle
if (toggle) {
    ToolTip, Shift_Click Ativo
} else {
    ToolTip
}
return
