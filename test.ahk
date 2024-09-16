; Global flags to track whether a hotkey is running

isHotKeyRunning := {"^": false, "-": false, "@": false, "[": false ,".": false, "]":false}
q::Send, {U+0119}
+q::Ę

; Control + ^, wait for alphabet
^^::
    WaitForAlphabet("^")
    return

^.::
    WaitForAlphabet(".")
    return

^-::
    WaitForAlphabet("-")
    return

    ; Function to wait for alphabet and send letter + combining mark
WaitForAlphabet(combiningMark) {
    global isHotKeyRunning
    isHotKeyRunning[combiningMark] := true
        for key, value in isHotKeyRunning {
        if (key != combiningMark && value) { ; Check all flags except currentFlag
            isHotKeyRunning[key] := false
        }
    }
    CharArray := {"a^": ["ȃ","Ȃ"], "a-": ["ā","Ā"], "a@": ["à","À"], "a[": ["ȁ","Ȁ"], "a.": ["ạ","Ạ"], "a]": ["æ","Æ"]
                 ,"e^": ["ȇ","Ȇ"], "e-": ["ē","Ē"], "e@": ["è","È"], "e[": ["ȅ","Ȅ"], "e.": ["ẹ","Ẹ"], "e]": ["ə","Ə"]
                 ,"i^": ["ȋ","Ȋ"], "i-": ["ī","Ī"], "i@": ["ì","Ì"], "i[": ["ȉ","Ȉ"], "i.": ["ị","Ị"]
                 ,"o^": ["ȏ","Ȏ"], "o-": ["ō","Ō"], "o@": ["ò","Ò"], "o[": ["ȍ","Ȍ"], "o.": ["ọ","Ọ"], "o]": ["œ","Œ"]
                 ,"u^": ["ȗ","Ȗ"], "u-": ["ū","Ū"], "u@": ["ù","Ù"], "u[": ["ȕ","Ȕ"], "u.": ["ụ","Ụ"]
                 ,"r^": ["ȓ","Ȓ"], "r[": ["ȑ","Ȑ"], "r.": ["ṛ","Ṛ"]
                 ,"^": "{U+0311}", "-": "{U+0304}", "@": "{U+0300}", "[": "{U+030F}"}
    ih := InputHook("L1")
    ;ih.KeyOpt("{VKE7}", "N")
    ih.Start()
    ih.Wait()
    char := ih.Input
    if (!isHotKeyRunning[combiningMark])
    {
        SendInput, %char%
        tooltip, % "HotKey: " (char combiningMark)
        return
    }
    combinedKey := char . combiningMark
        ; Check if precomposed character exists
        if CharArray.HasKey(combinedKey)
        {
            if GetKeyState("Shift")
            {
                SendInput, % CharArray[combinedKey][2]
            }
            else
            {
                ;msgbox, % "HotKey: " (combiningMark char)
                SendInput, % CharArray[combinedKey][1]
            }
        }
        else
        {
            msgbox, % "HotKey: " (char CharArray[combiningMark])
            SendInput, % char CharArray[combiningMark]
        }
    }
