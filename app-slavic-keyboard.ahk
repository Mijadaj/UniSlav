#SingleInstance Force
title := "app-slavic-keyboard"
result := MsgBox("Your file will be downloaded to the following location:`n" A_WorkingDir "\" title, title, 65)

if result = "Cancel" {
    MsgBox("Download canceled.", title, "T2")
    ExitApp
}
else {
    DirCreate A_WorkingDir "\app-slavic-keyboard"
    FileInstall "apps\keyboardController.exe", A_WorkingDir "\app-slavic-keyboard\keyboardController.exe", 1
    FileInstall "apps\keyboard_latn.exe", A_WorkingDir "\app-slavic-keyboard\keyboard_latn.exe", 1
    FileInstall "apps\keyboard_cyrl.exe", A_WorkingDir "\app-slavic-keyboard\keyboard_cyrl.exe", 1
    FileInstall "apps\keyboard_cyrs.exe", A_WorkingDir "\app-slavic-keyboard\keyboard_cyrs.exe", 1
    FileInstall "apps\keyboard_glag.exe", A_WorkingDir "\app-slavic-keyboard\keyboard_glag.exe", 1
    Run A_WorkingDir "\app-slavic-keyboard\keyboardController.exe"
    MsgBox("Download Completed.`nPress Ctrl + 1 or Ctrl + 2 to get started!")
}