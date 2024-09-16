#Persistent
#KeyHistory, 16

DetectHiddenWindows, ON

; Path to AHK scripts
scriptA := "keyboard_cyrl.ahk"
scriptB := "keyboard_latn.ahk"
scriptC := "keyboard_cyrs.ahk"
scriptX := "..\test.ahk"

; Variable to track which script is currently running
currentScript := ""

RemoveToolTip:
ToolTip
return

^1::
    if (currentScript = "")
    {
        Run, %scriptA%, , , pidA
        currentScript := "A"
        ToolTip, Slavic Cyrillic
        SetTimer, RemoveToolTip, -1000
    }
    else if (currentScript = "A")
    {
        Process, Close, %pidA%
        Run, %scriptB%, , , pidB
        currentScript := "B"
        ToolTip, Slavic Latin
        SetTimer, RemoveToolTip, -1000
    }
    else if (currentScript = "B")
    {
        Process, Close, %pidB%
        Run, %scriptC%, , , pidC
        currentScript := "C"
        ToolTip, Church Cyrillic
        SetTimer, RemoveToolTip, -1000
    }
    else if (currentScript = "C")
    {
        Process, Close, %pidC%
        currentScript := ""
        ToolTip, exit
        SetTimer, RemoveToolTip, -1000
    }
return

^2::
    if (currentScript = "")  ; No script is running
    {
        Run, %scriptX%, , , pidX
        currentScript := "X"
        ToolTip, test script
        SetTimer, RemoveToolTip, -3000
    }
    else
    {
        Process, Close, %pidX%
        currentScript := ""
        Reload
    }
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
  If(ShortName="Glag.ahk")
  {
    WinClose, %title%
       exit
  }
}
Run, Glag.ahk
return

Shift & F2:: ; IPA
list =
WinGet, id, list, ahk_class AutoHotkey
Loop, %id%
{
  this_ID := id%A_Index%
  WinGetTitle, title, ahk_id %this_ID%
  ScriptPath := RegExReplace(title, " - AutoHotkey v" A_AhkVersion )
  SplitPath, ScriptPath, ShortName
  If(ShortName="XSAMPA.ahk")
  {
    WinClose, %title%
       exit
  }
}
Run, XSAMPA.ahk
return

AppsKey::RAlt

+f11::
Run, https://chobitool.com/unicodepoint/
return

f12::
KeyHistory
return
