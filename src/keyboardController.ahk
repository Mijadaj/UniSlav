KeyHistory(16)
#SingleInstance Force
DetectHiddenWindows(true)

scriptA := "keyboard_cyrl.ahk"
scriptB := "keyboard_latn.ahk"
scriptC := "keyboard_cyrs.ahk"
scriptD := "keyboard_glag.ahk"
scriptX := "..\test.ahk"
currentScript := false

^3::
{
    if WinExist(scriptA)
    WinClose(scriptA)
}

switchKeyboard(new,old) {
    global
    SetTimer(ToolTip,-1500)
    if old = "^1" {
        ToolTip("Loading Church Slavonic keyboard...")
        if WinExist(scriptA)
            WinClose(scriptA)
        if WinExist(scriptB)
            WinClose(scriptB)
    }
    else if old = "^2" {
        ToolTip("Loading Modern Slavic keyboard...")
        if WinExist(scriptC)
            WinClose(scriptC)
        if WinExist(scriptD)
            WinClose(scriptD)
    }
    currentScript := false
    Sleep 2000
    Send new
}

^1::
{
    global
    if !currentScript {
        Run(scriptA)
        currentScript := true
        SetTimer(ToolTip,-1500)
        ToolTip("Slavic Cyrillic")
    }
    else if WinExist(scriptA) {
        WinClose(scriptA)
        Run(scriptB)
        currentScript := true
        SetTimer(ToolTip,-1500)
        ToolTip("Slavic Latin")
    }
    else if WinExist(scriptB) {
        WinClose(scriptB)
        currentScript := false
        SetTimer(ToolTip,-1500)
        ToolTip("Exiting keyboard mode...")
    }
    else {
        switchKeyboard("^1","^2")
    }
}

^2::
{
    global
    if !currentScript {
        Run(scriptC, , , &pidC)
        currentScript := true
        SetTimer(ToolTip,-1500)
        ToolTip("Early Cyrillic")
    }
    else if WinExist(scriptC) {
        WinClose(scriptC)
        Run(scriptD)
        currentScript := true
        SetTimer(ToolTip,-1500)
        ToolTip("Glagolitic")
    }
    else if WinExist(scriptD) {
        WinClose(scriptD)
        currentScript := false
        SetTimer(ToolTip,-1500)
        ToolTip("Exiting keyboard mode...")
    }
    else {
        switchKeyboard("^2","^1")
    }
}

^q::
{
    global
    if !currentScript  ; No script is running
    {
        Run(scriptX)
        currentScript := true
        ToolTip("test script")
        SetTimer(ToolTip,-2000)
    }
    else if WinExist("test.ahk") {
        WinClose("test.ahk")
        currentScript := false
        Reload
    }
}

F6::Reload
AppsKey::RAlt
+f11::Run("https://chobitool.com/unicodepoint/")
f12::KeyHistory
