isHotKeyRunning := Map("^", [false, 0], "-", [false, 0], "@", [false, 0], "[", [false, 0], ".", [false, 0], "]", [false, 0])
result := false

q::Send("{U+0119}")
+q::Ę
sc07B & q:: ;
{
 if GetKeyState("Shift")
    Send("{U+0104}") ;Ą
 else
    Send("{U+0105}") ;ą
}

^^::WaitForAlphabet("^") ; inverted breve
^.::WaitForAlphabet(".") ; dot below
^-::WaitForAlphabet("-") ; macron
^@::WaitForAlphabet("@") ; grave
^[::WaitForAlphabet("[") ; double grave
^]::WaitForAlphabet("]") ; misc.

WaitForAlphabet(diacritic) {
    global isHotKeyRunning, base, combiningMark, result
    SetFlags(diacritic)
    for key, value in isHotKeyRunning {
        if (key != diacritic && value[1]) { ; Check if other HotKey is running
            isHotKeyRunning[diacritic][2] := 1 ; a HotKey has been activated before this HotKey
            isHotKeyRunning[key][1] := false ; set prior HotKey to false
            result := true
        }
    }
    CharArray := Map("a^", ["ȃ","Ȃ"], "a-", ["ā","Ā"], "a@", ["à","À"], "a[", ["ȁ","Ȁ"], "a.", ["ạ","Ạ"], "a]", ["æ","Æ"]
                    ,"e^", ["ȇ","Ȇ"], "e-", ["ē","Ē"], "e@", ["è","È"], "e[", ["ȅ","Ȅ"], "e.", ["ẹ","Ẹ"], "e]", ["ə","Ə"]
                    ,"i^", ["ȋ","Ȋ"], "i-", ["ī","Ī"], "i@", ["ì","Ì"], "i[", ["ȉ","Ȉ"], "i.", ["ị","Ị"], "i]", ["į","Į"]
                    ,"o^", ["ȏ","Ȏ"], "o-", ["ō","Ō"], "o@", ["ò","Ò"], "o[", ["ȍ","Ȍ"], "o.", ["ọ","Ọ"], "o]", ["œ","Œ"]
                    ,"u^", ["ȗ","Ȗ"], "u-", ["ū","Ū"], "u@", ["ù","Ù"], "u[", ["ȕ","Ȕ"], "u.", ["ụ","Ụ"], "u]", ["ų","Ų"]
                    ,"r^", ["ȓ","Ȓ"], "r[", ["ȑ","Ȑ"], "r.", ["ṛ","Ṛ"]
                    ,"^", "{U+0311}", "-", "{U+0304}", "@", "{U+0300}", "[", "{U+030F}", ".", "", "]", "")
    ih := InputHook("L1")
    ih.Start()
    ih.Wait()
    char := ih.Input
    if (!isHotKeyRunning[diacritic][1]) { ; overwrite previous HotKey
        if (result) {
            Send "{a " isHotKeyRunning[diacritic][2] "}" ; input {a} to ih (ih.EndReason is "Max")
            if (isHotKeyRunning[diacritic][2] = 0) { ; this is the first HotKey that is pressed (or the last HotKey in progress)
                Send(base)
                Sleep 0
                Send(combiningMark)
            }
            isHotKeyRunning[diacritic] := [false, 0]
            return
        }
        else ; send precomposed char
            Send(char)
    }
    else {combinedKey := StrLower(char) diacritic
        if CharArray.Has(combinedKey) { ; send precomposed character
            if GetKeyState("LShift")
                Send(CharArray[combinedKey][2]) ; uppercase
            else
                Send(CharArray[combinedKey][1]) ; lowercase
        }
        else { combiningMark := CharArray[diacritic], base := char ; send base char + combining mark
            if (result) { ; if other HotKey is runningt
                Send(char)
                isHotKeyRunning[diacritic][1] := false
                return
            }
            else {
                Send(base)
                Sleep 0
                Send(combiningMark)
            }
        }
    }
    ResetFlags(diacritic)
}

SetFlags(flag) {
    global isHotKeyRunning, result
    isHotKeyRunning[flag] := [true, 0]
    result := false
    }

ResetFlags(flag) {
    global isHotKeyRunning, result
    isHotKeyRunning[flag] := [false, 0]
    result := false
    }
info(txt) {
    ToolTip(txt)
    SetTimer () => ToolTip(), -1500
    }