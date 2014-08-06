; windows key should act like ctrl, also replace alt gr with win key
LWin::LCtrl
RAlt::LWin

; close programs osx style
^q::!F4

;command-backspace deletes whole line
^BS::Send {LShift down}{Home}{LShift Up}{Del}

;alt-delete deletes previous word
!BS::Send {LShift down}{LCtrl down}{Left}{LShift Up}{Lctrl up}{Del}

; Navigation of smaller chunks (skip word)
<!Left::Send {ctrl down}{Left}{ctrl up}
<!Right::Send {ctrl down}{Right}{ctrl up}

; Navigation using of bigger chunks (Skip to start/end of line/paragraph/document)
^Left::Send {Home}
^Right::Send {End}
!Up::Send {ctrl down}{Up}{ctrl up}
!Down::Send {ctrl down}{Down}{ctrl up}
^Up::Send {Lctrl down}{Home}{Lctrl up}
^Down::Send {Lctrl down}{End}{Lctrl up}

; Selection (uses a combination of the above with shift)
<!+Left::Send {ctrl down}{shift down}{Left}{shift up}{ctrl up}
<!+Right::Send {ctrl down}{shift down}{Right}{shift up}{ctrl up}
^+Left::Send {shift down}{Home}}{shift up}
^+Right::Send {shift down}{End}}{shift up}
!+Up::Send {ctrl down}{shift down}{Up}}{shift up}{ctrl up}
!+Down::Send {ctrl down}{shift down}{Down}}{shift up}{ctrl up}
^+Up::Send {Lctrl down}{shift down}{Home}}{shift up}{Lctrl up}
^+Down::Send {Lctrl down}{shift down}{End}}{shift up}{Lctrl up}
