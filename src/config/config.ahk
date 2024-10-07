/*
Copyright (C) 2024 Міја

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, see
<https://www.gnu.org/licenses/>.
*/
;@Ahk2Exe-SetMainIcon %A_ScriptDir%\..\icon\main.ico
;@Ahk2Exe-SetCopyright Copyright © 2024 Міја
;@Ahk2Exe-SetDescription UniSlav Manager
;@Ahk2Exe-SetName UniSlav
;@Ahk2Exe-SetVersion 0.1.0
#NoTrayIcon
#SingleInstance Force
DetectHiddenWindows(True)
A_ScriptName := "UniSlav Manager"
IniWrite(A_ScriptHwnd, A_Temp "\UniSlav.tmp", "HWND", "admin")

lang_en := {Lang: "English"
           ,Tab1: "Settings"
           ,Text1: "Set the shortcut keys to launch each keyboard.`nPlease press a combination of Ctrl or Alt with a single key."
           ,Text2: "Modern Slavic keyboard (Slavic Cyrillic, Slavic Latin)"
           ,Text3: "Church Slavonic keyboard (Early Cyrillic, Glagolitic)"
           ,Text4: "This shortcut key cannot be set."
           ,Modifier: "Use Alt as a modifier key instead of [Muhenkan] (sc07B)"
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
           ,Modifier: "[無変換]の代わりにAltを修飾キーとして使用する"
           ,StartUp: "PC起動時に UniSlav を自動的に立ち上げる。"
           ,Save: "保存"
           ,Tab2: "情報"
           ,Toggle: "UniSlav を起動/終了"}

currentLang := lang_ja
HKModern := RegRead("HKEY_CURRENT_USER\Software\UniSlav\Hotkey", "ModernSlavicKeyboard", "^1")
HKChurch := RegRead("HKEY_CURRENT_USER\Software\UniSlav\Hotkey", "ChurchSlavonicKeyboard", "^2")
Modifier := RegRead("HKEY_CURRENT_USER\Software\UniSlav\Hotkey", "Modifier", "0")
StartUp := RegRead("HKEY_CURRENT_USER\Software\UniSlav\Hotkey", "StartUp", "0")

createGui()
createGui() {
    global
    admin := Gui()
    admin.SetFont("s10", "Segoe UI")
    admin.SetFont("s10", "MS Pゴシック")
    setLang := admin.Add("DropDownList", , ["日本語","English"])
    setLang.Choose(currentLang.Lang)
    admin.Add("Tab3","vTab", [currentLang.Tab1, currentLang.Tab2])
    ;Tab1 settings
    admin.Add("Text","vText1", currentLang.Text1) ; about settings
    admin.SetFont("bold",)
    admin.Add("Text","vText2", currentLang.Text2) ; modern slavic keyboard
    admin.Add("Hotkey", "vHKModern Limit3", HKModern)
    admin.Add("Text","vText3", currentLang.Text3) ; church slavonic keyboard
    admin.Add("Hotkey", "vHKChurch Limit3", HKChurch)
    admin.SetFont("norm",)
    admin.Add("Checkbox", "vModifier y+10 Checked" Modifier, currentLang.Modifier) ; startup setting
    admin.Add("Checkbox", "vStartUp y+10 Checked" StartUp, currentLang.StartUp) ; startup setting
    admin.Add("Button", "vSave Center", currentLang.Save)
    ;Tab2 info
    admin["Tab"].UseTab(2)
    admin.Add("Text", ,"Version:`n`nSoftware License:`n`n`nGitHub:")
    admin.Add("Link", "x+10", '0.1.0`n`n'
                            '<a href="https://www.gnu.org/licenses/old-licenses/gpl-2.0.html">GNU General Public License, version 2</a>`n'
                            'Copyright © 2024 <a href="https://github.com/Mijadaj">Міја</a>`n`n'
                            '<a href="https://github.com/Mijadaj/UniSlav">Repository</a>, <a href="https://github.com/Mijadaj/UniSlav/releases/latest">Latest release</a>')
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
        Modifier := admin["Modifier"].Value
        StartUp := admin["StartUp"].Value
        if !HKModern || !HKChurch {
            admin.Opt("+OwnDialogs")
            MsgBox currentLang.Text4, A_ScriptName, "48"
            return
        }
        else {
            RegWrite HKModern, "REG_SZ", "HKEY_CURRENT_USER\Software\UniSlav\Hotkey", "ModernSlavicKeyboard"
            RegWrite HKChurch, "REG_SZ", "HKEY_CURRENT_USER\Software\UniSlav\Hotkey", "ChurchSlavonicKeyboard"
            RegWrite Modifier, "REG_SZ", "HKEY_CURRENT_USER\Software\UniSlav\Hotkey", "Modifier"
            RegWrite StartUp, "REG_SZ", "HKEY_CURRENT_USER\Software\UniSlav\Hotkey", "StartUp"
        }
        if StartUp
            FileCreateShortcut A_ScriptDir "\..\UniSlav.ahk", A_Startup "\UniSlav.lnk",,
            , "Launch UniSlav UniSlav.ahk", A_ScriptDir "\..\icon\main.ico"
        else if FileExist(A_Startup "\UniSlav.lnk")
            FileDelete A_Startup "\UniSlav.lnk"
    }

    toggle_Click(*) {
        HWND_Ctrl := IniRead(A_Temp "\UniSlav.tmp", "HWND", "ctrl", "")
        SetTimer(ToolTip,-1500)
        if WinExist("ahk_id " HWND_Ctrl) {
            WinClose("ahk_id " HWND_Ctrl)
            ToolTip()
        }
        else {
            Run A_ScriptDir "\..\AutoHotkey64.exe" " ..\UniSlav.ahk"
        }
    }
}