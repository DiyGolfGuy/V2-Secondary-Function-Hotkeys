F1::  ; When F1 is pressed
CoordMode, Mouse, Screen  ; Sets MouseGetPos to use screen coordinates
MouseGetPos, xPos, yPos  ; Get the current mouse position
ToolTip % "Screen: (" . xPos . ", " . yPos . ")"  ; Display the screen coordinates
return
