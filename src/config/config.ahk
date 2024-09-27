Persistent
#SingleInstance Force
A_IconTip := "Setting Hotkey"
TraySetIcon("..\icon\main.ico",,false)

lang_en := {Title: "Personal settings"
           ,Lang: "English"
           ,Text1: "Set the shortcut keys to launch each keyboard.`nPlease press a combination of Ctrl or Alt with a single key."
           ,Text2: "Modern Slavic keyboard (Slavic Cyrillic, Slavic Latin)"
           ,Text3: "Church Slavonic keyboard (Early Cyrillic, Glagolitic)"
           ,Text4: "This shortcut key cannot be set."
           ,Text5: "Settings have been completed.`nWould you like to launch UniSlav?"
           ,Button: "Save"}
lang_ja := {Title: "個人設定"
           ,Lang: "日本語"
           ,Text1: "各キーボードを起動するためのショートカットキーを設定します。`nCtrl または Alt と1つのキーの組み合わせを押してください。"
           ,Text2: "現代スラヴ語キーボード (Slavic Cyrillic, Slavic Latin)"
           ,Text3: "教会スラヴ語キーボード (Early Cyrillic, Glagolitic)"
           ,Text4: "このショートカットキーは設定できません。"
           ,Text5: "設定を終了します。`nUniSlav を起動しますか？"
           ,Button: "保存"}

currentLang := lang_ja
HKModern := IniRead("config.ini", "Hotkey", "ModernSlavicKeyboard", "^1")
HKChurch := IniRead("config.ini", "Hotkey", "ChurchSlavonicKeyboard", "^2")
F6::Reload

createGui()
createGui() {
    global currentLang, HKChurch, HKModern
    setHK := Gui()
    setHK.Title := currentLang.Title
    setHK.SetFont("s10", "Segoe UI")
    setHK.SetFont("s10", "MS Pゴシック")
    setLang := setHK.Add("DropDownList", "Choose1", ["日本語","English"])
    setLang.Choose(currentLang.Lang)
    setHK.Add("Text","vText1", currentLang.Text1)
    setHK.SetFont("bold",)
    setHK.Add("Text","vText2", currentLang.Text2)
    setModern := setHK.Add("Hotkey", "Limit3", HKModern)
    setHK.Add("Text","vText3 xm", currentLang.Text3)
    setChurch := setHK.Add("Hotkey", "Limit3", HKChurch)
    setHK.SetFont("norm",)
    saveButton := setHK.Add("Button", "Center", currentLang.Button)

    ;reload Gui
    setLang.OnEvent("Change",lang_change)
    setHK.Show("AutoSize Center")
    ;save hotkeys
    saveButton.OnEvent("Click",save_Click)
    setHK.Show()

    lang_change(*) {
        if setLang.Text = "日本語"
            currentLang := lang_ja
        else if setLang.Text = "English"
            currentLang := lang_en
        setHK.Destroy
        createGui()
    }

    save_Click(*) {
        HKModern := setModern.Value
        HKChurch := setChurch.Value
        if !HKModern || !HKChurch {
            setHK.Opt("+OwnDialogs")
            MsgBox currentLang.Text4, currentLang.Title, "48"
            return
        }
        else {
            setHK.Submit()
            IniWrite HKModern, "config.ini", "Hotkey", "ModernSlavicKeyboard"
            IniWrite HKChurch, "config.ini", "Hotkey", "ChurchSlavonicKeyboard"
            Result := MsgBox(currentLang.Text5, currentLang.Title, "35")
            if Result = "Yes" {
                Run "..\keyboardController.ahk"
                ExitApp
            }
            else if Result = "No" {
                ExitApp
            }
            else {
                createGui()
            }
        }
    }
}