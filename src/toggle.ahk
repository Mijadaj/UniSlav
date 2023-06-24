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
  If(ShortName="cyrillic_early.ahk")
  {
    WinClose, %title%   
       exit
  }
}
Run, cyrillic_early.ahk
return

F2:: ; letters & diacritics for Slavonic linguistics
list =
WinGet, id, list, ahk_class AutoHotkey
Loop, %id%
{
  this_ID := id%A_Index%
  WinGetTitle, title, ahk_id %this_ID%
  ScriptPath := RegExReplace(title, " - AutoHotkey v" A_AhkVersion )
  SplitPath, ScriptPath, ShortName
  If(ShortName="latin_diacritics.ahk")
  {
    WinClose, %title%   
       exit
  }
}
Run, latin_diacritics.ahk
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
  If(ShortName="cyrillic_modern.ahk")
  {
    WinClose, %title%
       exit
  }
}
Run, cyrillic_modern.ahk
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
  If(ShortName="glagolitic.ahk")
  {
    WinClose, %title%
       exit
  }
}
Run, glagolitic.ahk
return