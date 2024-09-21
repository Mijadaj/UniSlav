Persistent
KeyHistory(16)

DetectHiddenWindows(true)

scriptA := "keyboard_cyrl.ahk"
scriptB := "keyboard_latn.ahk"
scriptC := "keyboard_cyrs.ahk"
scriptX := "..\test.ahk"
currentScript := ""

^1::
{
    global
    if (currentScript = "") {
        Run(scriptA, , , &pidA)
        currentScript := "A"
        ToolTip("Slavic Cyrillic")
        SetTimer(ToolTip,-1000)
    }
    else if (currentScript = "A") {
        ProcessClose(pidA)
        Run(scriptB, , , &pidB)
        currentScript := "B"
        ToolTip("Slavic Latin")
        SetTimer(ToolTip,-1000)
    }
    else if (currentScript = "B") {
        ProcessClose(pidB)
        currentScript := ""
        ToolTip("exit")
        SetTimer(ToolTip,-1000)
    }
return
}

^2::
{
    global
    if (currentScript = "")  ; No script is running
    {
        Run(scriptX, , , &pidX)
        currentScript := "X"
        ToolTip("test script")
        SetTimer(ToolTip,-3000)
    }
    else if (currentScript := "X")
    {
        ProcessClose(pidX)
        currentScript := ""
        Reload()
    }
}
return

AppsKey::RAlt

+f11::
{
Run("https://chobitool.com/unicodepoint/")
return
}

f12::KeyHistory
