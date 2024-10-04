#SingleInstance Force
DetectHiddenWindows(true)
A_IconTip := "UniSlav"
TraySetIcon("icon\main.ico",,false)
IniWrite(A_ScriptHwnd, A_Temp "\UniSlav.tmp", "HWND", "ctrl")
SetTimer(ToolTip,-2000)
ToolTip("UniSlav launched.")

ahkPath := A_ScriptDir "\AutoHotkey64.exe"
HKModern := RegRead("HKEY_CURRENT_USER\Software\UniSlav\Hotkey", "ModernSlavicKeyboard", "^1")
HKChurch := RegRead("HKEY_CURRENT_USER\Software\UniSlav\Hotkey", "ChurchSlavonicKeyboard", "^2")


Hotkey(HKModern,ModernKB,"On")
Hotkey(HKChurch,ChurchKB,"On")
ModernKB(*) {
    global
    checkWin()
    if !currentScript {
        A_IconHidden := 1
        Run(ahkPath " layout\keyboard_cyrl.ahk")
        SetTimer(ToolTip,-1500)
        ToolTip("Slavic Cyrillic")
    }
    else if WinCyrl {
        WinClose("ahk_id " HWND_cyrl)
        Run(ahkPath " layout\keyboard_latn.ahk")
        SetTimer(ToolTip,-1500)
        ToolTip("Slavic Latin")
    }
    else if WinLatn {
        WinClose("ahk_id" HWND_latn)
        A_IconHidden := 0
        SetTimer(ToolTip,-1500)
        ToolTip("Exiting keyboard mode...")
    }
    else {
        switchKeyboard(HKModern,HKChurch)
    }
}
ChurchKB(*) {
    global
    checkWin()
    if !currentScript {
        A_IconHidden := 1
        Run(ahkPath " layout\keyboard_cyrs.ahk")
        SetTimer(ToolTip,-1500)
        ToolTip("Early Cyrillic")
    }
    else if WinCyrs {
        WinClose("ahk_id" HWND_cyrs)
        Run(ahkPath " layout\keyboard_glag.ahk")
        SetTimer(ToolTip,-1500)
        ToolTip("Glagolitic")
    }
    else if WinGlag {
        WinClose("ahk_id" HWND_glag)
        A_IconHidden := 0
        SetTimer(ToolTip,-1500)
        ToolTip("Exiting keyboard mode...")
    }
    else {
        switchKeyboard(HKChurch,HKModern)
    }
}
checkWin() {
    global
    HWND_cyrl := IniRead(A_Temp "\UniSlav.tmp", "HWND", "cyrl", "")
    HWND_latn := IniRead(A_Temp "\UniSlav.tmp", "HWND", "latn", "")
    HWND_cyrs := IniRead(A_Temp "\UniSlav.tmp", "HWND", "cyrs", "")
    HWND_glag := IniRead(A_Temp "\UniSlav.tmp", "HWND", "glag", "")
    WinCyrl := WinExist("ahk_id " HWND_cyrl)
    WinLatn := WinExist("ahk_id " HWND_latn)
    WinCyrs := WinExist("ahk_id " HWND_cyrs)
    WinGlag := WinExist("ahk_id " HWND_glag)
    if !(WinCyrl || WinLatn || WinCyrs || WinGlag)
        currentScript := false
    else
        currentScript := true
}
switchKeyboard(new,old) {
    global
    if old = HKModern {
        closeCyrl()
        closeLatn()
    }
    else if old = HKChurch {
        closeCyrs()
        closeGlag()
    }
    Send new
}

OnExit cleanUp
cleanUp(*) {
    ToolTip("Exiting UniSlav.")
    checkWin()
    closeCyrl()
    closeLatn()
    closeCyrs()
    closeGlag()
    FileDelete(A_Temp "\UniSlav.tmp")
    Sleep 1500
}

closeCyrl() {
    if WinCyrl
        WinClose("ahk_id" HWND_cyrl)
}
closeLatn() {
    if WinLatn
        WinClose("ahk_id" HWND_latn)
}
closeCyrs() {
    if WinCyrs
        WinClose("ahk_id" HWND_cyrs)
}
closeGlag() {
    if WinGlag
        WinClose("ahk_id" HWND_glag)
}