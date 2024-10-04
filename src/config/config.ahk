#NoTrayIcon
#SingleInstance Force
DetectHiddenWindows(True)
A_IconTip := "Setting Hotkey"
A_ScriptName := "UniSlav Manager"
TraySetIcon("..\icon\main.ico",,false)
IniWrite(A_ScriptHwnd, A_Temp "\UniSlav.tmp", "HWND", "admin")

lang_en := {Lang: "English"
           ,Tab1: "Settings"
           ,Text1: "Set the shortcut keys to launch each keyboard.`nPlease press a combination of Ctrl or Alt with a single key."
           ,Text2: "Modern Slavic keyboard (Slavic Cyrillic, Slavic Latin)"
           ,Text3: "Church Slavonic keyboard (Early Cyrillic, Glagolitic)"
           ,Text4: "This shortcut key cannot be set."
           ,StartUp: "Automatically launch UniSlav on PC startup."
           ,Save: "Save"
           ,Tab2: "Information"
           ,Toggle: "Launch / Exit UniSlav"}
lang_ja := {Lang: "日本語"
           ,Tab1: "設定"
           ,Text1: "各キーボードを起動するためのショートカットキーを設定します。`nCtrl または Alt と1つのキーの組み合わせを押してください。"
           ,Text2: "現代スラヴ語キーボード (Slavic Cyrillic, Slavic Latin)"
           ,Text3: "教会スラヴ語キーボード (Early Cyrillic, Glagolitic)"
           ,Text4: "このショートカットキーは設定できません。"
           ,StartUp: "PC起動時に UniSlav を自動的に立ち上げる。"
           ,Save: "保存"
           ,Tab2: "情報"
           ,Toggle: "UniSlav を起動/終了"}

currentLang := lang_ja
HKModern := RegRead("HKEY_CURRENT_USER\Software\UniSlav\Hotkey", "ModernSlavicKeyboard", "^1")
HKChurch := RegRead("HKEY_CURRENT_USER\Software\UniSlav\Hotkey", "ChurchSlavonicKeyboard", "^2")
StartUp := RegRead("HKEY_CURRENT_USER\Software\UniSlav\Hotkey", "StartUp", "0")

F6::Reload

createGui()
createGui() {
    global
    admin := Gui()
    admin.SetFont("s10", "Segoe UI")
    admin.SetFont("s10", "MS Pゴシック")
    setLang := admin.Add("DropDownList", , ["日本語","English"])
    setLang.Choose(currentLang.Lang)
    admin.Add("Tab3","vTab", [currentLang.Tab1, currentLang.Tab2])
    ;Tab1
    admin.Add("Text","vText1", currentLang.Text1) ; about settings
    admin.SetFont("bold",)
    admin.Add("Text","vText2", currentLang.Text2) ; modern slavic keyboard
    admin.Add("Hotkey", "vHKModern Limit3", HKModern)
    admin.Add("Text","vText3", currentLang.Text3) ; church slavonic keyboard
    admin.Add("Hotkey", "vHKChurch Limit3", HKChurch)
    admin.SetFont("norm",)
    admin.Add("Checkbox", "vStartUp y+10 Checked" StartUp, currentLang.StartUp) ; startup setting
    admin.Add("Button", "vSave Center", currentLang.Save)
    ;Tab1
    admin["Tab"].UseTab(2)
    admin.Add("Text", "Section","Software License:")
    admin.Add("Link", "yp+0", '<a href="https://www.gnu.org/licenses/old-licenses/gpl-2.0.html">GNU General Public License, version 2</a>')
    admin.Add("Link", "xp+0 y+0", 'Copyright © 2024 <a href="https://github.com/Mijadaj">Міја</a>')
    admin.Add("Link", "xs+0 y+10",'GitHub: <a href="https://github.com/Mijadaj/UniSlav">Repository</a>, '
                    '<a href="https://github.com/Mijadaj/UniSlav/releases/latest">Latest release</a>')
    ;bottom
    admin["Tab"].UseTab(0)
    admin.Add("Button", "vToggle Center", currentLang.Toggle)
    ;reload Gui
    setLang.OnEvent("Change",lang_change)
    admin.Show("Center")
    ;save settings
    admin["Save"].OnEvent("Click",save_Click)
    admin["Toggle"].OnEvent("Click",toggle_Click)
    admin.Show("Center")

    lang_change(*) {
        if setLang.Text = "日本語"
            currentLang := lang_ja
        else if setLang.Text = "English"
            currentLang := lang_en
        admin.Destroy
        createGui()
    }
    save_Click(*) {
        HKModern := admin["HKModern"].Value
        HKChurch := admin["HKChurch"].Value
        StartUp := admin["StartUp"].Value
        if !HKModern || !HKChurch {
            admin.Opt("+OwnDialogs")
            MsgBox currentLang.Text4, A_ScriptName, "48"
            return
        }
        else {
            RegWrite HKModern, "REG_SZ", "HKEY_CURRENT_USER\Software\UniSlav\Hotkey", "ModernSlavicKeyboard"
            RegWrite HKChurch, "REG_SZ", "HKEY_CURRENT_USER\Software\UniSlav\Hotkey", "ChurchSlavonicKeyboard"
            RegWrite StartUp, "REG_SZ", "HKEY_CURRENT_USER\Software\UniSlav\Hotkey", "StartUp"
        }
        if StartUp
            FileCreateShortcut A_ScriptDir "\..\keyboardController.ahk", A_Startup "\UniSlav.lnk",,
            , "Launch UniSlav keyboardController.ahk", A_ScriptDir "\..\icon\main.ico"
        else if FileExist(A_Startup "\UniSlav.lnk")
            FileDelete A_Startup "\UniSlav.lnk"
    }

    toggle_Click(*) {
        HWND_Ctrl := IniRead(A_Temp "\UniSlav.tmp", "HWND", "ctrl", "")
        save_Click()
        SetTimer(ToolTip,-1500)
        if WinExist("ahk_id " HWND_Ctrl) {
            WinClose("ahk_id " HWND_Ctrl)
            ToolTip()
        }
        else {
            Run A_ScriptDir "\..\AutoHotkey64.exe" " ..\keyboardController.ahk"
        }
    }
}