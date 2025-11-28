; AutoHotkey v2 script
; 'a' acts normally, but when held it works like a modifier key
; ------------------------------------------------------------
; CONFIGURATION SECTION – ENTER YOUR SCREEN VALUES HERE
; ------------------------------------------------------------
; Change the X/Y values below to match your own screen setup.
; Each pair corresponds to a control box function.

Coord_ResetAim_LeftTee   := [1058, 787]   ; a + c
Coord_ResetAim_Up        := [1155, 172]   ; a + Up
Coord_ResetAim_RightTee  := [1155, 231]   ; a + Right
Coord_ResetAim_Down      := [1155, 270]   ; a + Down
Coord_ResetAim_Left      := [1155, 324]   ; a + Left

; ------------------------------------------------------------
; FUNCTION DEFINITIONS
; ------------------------------------------------------------
ClickAt(coords) {
    MouseClick("left", coords[1], coords[2])  ; perform the click
    Sleep(50)                                 ; short delay so click registers
    MouseMove(0, 0)                           ; then move cursor to top-left
}

; --- Ensure 'a' still types normally ---
*a::Send("a")

; ------------------------------------------------------------
; HOTKEYS – MAP CONTROL BOX FUNCTIONS TO KEY COMBOS
; ------------------------------------------------------------
#HotIf GetKeyState("a", "P")   ; Only active while 'a' is physically pressed

; Reset Aim + Left Tee Position
a & c::ClickAt(Coord_ResetAim_LeftTee)

; Reset Aim + Up
a & Up::ClickAt(Coord_ResetAim_Up)

; Reset Aim + Right Tee Position
a & Right::ClickAt(Coord_ResetAim_RightTee)

; Reset Aim + Down
a & Down::ClickAt(Coord_ResetAim_Down)

; Reset Aim + Left
a & Left::ClickAt(Coord_ResetAim_Left)

#HotIf   ; End conditional hotkeys