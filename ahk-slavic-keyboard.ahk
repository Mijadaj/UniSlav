#SingleInstance Force
title := "ahk-slavic-keyboard"
result := MsgBox("Your file will be downloaded to the following location:`n" A_WorkingDir "\" title, title, 65)

if result = "Cancel" {
    MsgBox("Download canceled.", title, "T2")
    ExitApp
}
else {
    DirCreate A_WorkingDir "\ahk-slavic-keyboard"
    FileInstall "src\keyboardController.ahk", A_WorkingDir "\ahk-slavic-keyboard\keyboardController.ahk", 1
    FileInstall "src\keyboard_latn.ahk", A_WorkingDir "\ahk-slavic-keyboard\keyboard_latn.ahk", 1
    FileInstall "src\keyboard_cyrl.ahk", A_WorkingDir "\ahk-slavic-keyboard\keyboard_cyrl.ahk", 1
    FileInstall "src\keyboard_cyrs.ahk", A_WorkingDir "\ahk-slavic-keyboard\keyboard_cyrs.ahk", 1
    FileInstall "src\keyboard_glag.ahk", A_WorkingDir "\ahk-slavic-keyboard\keyboard_glag.ahk", 1
    Run A_WorkingDir "\ahk-slavic-keyboard\keyboardController.ahk"
    MsgBox("Download Completed.`nPress Ctrl + 1 or Ctrl + 2 to get started!")
}