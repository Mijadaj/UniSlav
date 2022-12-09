#Persistent
DetectHiddenWindows, ON

F1:: ; early cyrillic
list =
WinGet, id, list, ahk_class AutoHotkey
Loop, %id%
{
  this_ID := id%A_Index%
  WinGetTitle, title, ahk_id %this_ID%
  ScriptPath := RegExReplace(title, " - AutoHotkey v" A_AhkVersion )
  SplitPath, ScriptPath, ShortName
  If(ShortName="early_cyrillic_keyboard.ahk")
  {
    WinClose, %title%   
       exit
  }
}
Run, early_cyrillic_keyboard.ahk
return

F2:: ; diacritics
list =
WinGet, id, list, ahk_class AutoHotkey
Loop, %id%
{
  this_ID := id%A_Index%
  WinGetTitle, title, ahk_id %this_ID%
  ScriptPath := RegExReplace(title, " - AutoHotkey v" A_AhkVersion )
  SplitPath, ScriptPath, ShortName
  If(ShortName="diacritics_keyboard.ahk")
  {
    WinClose, %title%   
       exit
  }
}
Run, diacritics_keyboard.ahk
return

F3:: ; modern cyrillic
list =
WinGet, id, list, ahk_class AutoHotkey
Loop, %id%
{
  this_ID := id%A_Index%
  WinGetTitle, title, ahk_id %this_ID%
  ScriptPath := RegExReplace(title, " - AutoHotkey v" A_AhkVersion )
  SplitPath, ScriptPath, ShortName
  If(ShortName="modern_cyrillic_keyboard.ahk")
  {
    WinClose, %title%
       exit
  }
}
Run, modern_cyrillic_keyboard.ahk
return

Shift & F1:: ; glagolitic
list =
WinGet, id, list, ahk_class AutoHotkey
Loop, %id%
{
  this_ID := id%A_Index%
  WinGetTitle, title, ahk_id %this_ID%
  ScriptPath := RegExReplace(title, " - AutoHotkey v" A_AhkVersion )
  SplitPath, ScriptPath, ShortName
  If(ShortName="glagolitic_keyboard.ahk")
  {
    WinClose, %title%
       exit
  }
}
Run, glagolitic_keyboard.ahk
return