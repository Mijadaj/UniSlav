;Slavic Latin keyboard
#SingleInstance Force
;row 1
sc07B & 1:: ;-> lengthened & nasalized
{
   if GetKeyState("Shift")
      Send("{U+0303}") ; nasalized
   else
      Send("{U+02D0}") ; lengthened
}
sc07B & 2:: ;-> кавычки-left
{
   if GetKeyState("Shift")
      Send("{U+00AB}") ; «
   else
      Send("{U+201C}") ; “
}
sc07B & 3:: ;-> кавычки-right
{
   if GetKeyState("Shift")
      Send("{U+00BB}") ; »
   else
      Send("{U+201D}") ; ”
}
sc07B & 4:: ;-> 
{
   if GetKeyState("Shift")
      Send("{U+}") ; 
   else
      Send("{U+}") ; 
}
sc07B & 5:: ;-> 
{
   if GetKeyState("Shift")
      Send("{U+}") ; aˊa´
   else
      Send("{U+}") ; 
}
sc07B & 6:: ;-> 
{
   if GetKeyState("Shift")
      Send("{U+}") ; 
   else
      Send("{U+}") ; 
}
sc07B & 7:: ;-> palatalized & velarized
{
   if GetKeyState("Shift")
      Send("{U+02E0}") ;◌ˠ
   else
      Send("{U+02B2}") ; ◌ʲ
}
sc07B & 8:: ;-> prime & apostrophe
{
   if GetKeyState("Shift")
      Send("{U+02B9}") ; ʹ prime (modifier)
   else
      Send("{U+2019}") ; ’ right single quotation
}
sc07B & 9:: ;-> 
{
   if GetKeyState("Shift")
      Send("{U+}") ; 
   else
      Send("{U+}") ; 
}
sc07B & 0:: ;-> dotted circle & affricate
{
   if GetKeyState("Shift")
      Send("{U+0361}") ; affricate
   else
      Send("{U+25CC}") ; dotted circle
 }
-::Send("{U+2011}") ; non-breaking hyphen
sc07B & sc00C:: ;-> em dash
{
   if GetKeyState("Shift")
      Send("{U+2013}") ; en dash
   else
      Send("{U+2014}") ; em dash
}
sc07B & sc00D:: ; ^
{
   if GetKeyState("Shift")
      Send("{U+042C}") ; Ь
   else
      Send("{U+044C}") ; ь
}
sc07B & sc07D:: ; \
{
   if GetKeyState("Shift")
      Send("{U+042A}") ; Ъ
   else
      Send("{U+044A}") ; ъ
 }

;row 2
q::Send("{U+0119}") ;ę
+q::Send("{U+0118}") ;Ę
sc07B & q:: ;
{
   if GetKeyState("Shift")
      Send("{U+0104}") ;Ą
   else
      Send("{U+0105}") ;ą
}
sc07B & w:: ;
{
   if GetKeyState("Shift")
      Send("{U+00C9}") ;É
   else
      Send("{U+00E9}") ;é
}
sc07B & e:: ;
{
   if GetKeyState("Shift")
      Send("{U+011A}") ;Ě
   else
      Send("{U+011B}") ;ě
}
sc07B & r:: ;
{
   if GetKeyState("Shift")
      Send("{U+0158}") ;Ř
   else
      Send("{U+0159}") ;ř
}
sc07B & t:: ;
{
   if GetKeyState("Shift")
      Send("{U+0164}") ;Ť
   else
      Send("{U+0165}") ;ť
}
sc07B & y:: ;
{
   if GetKeyState("Shift")
      Send("{U+00DD}") ;Ý
   else
      Send("{U+00FD}") ;ý
}
sc07B & u:: ;
{
   if GetKeyState("Shift")
      Send("{U+00DA}") ;Ú
   else
      Send("{U+00FA}") ;ú
}
sc07B & i:: ;
{
   if GetKeyState("Shift")
      Send("{U+00CD}") ;Í
   else
      Send("{U+00ED}") ;í
}
sc07B & o:: ;
{
   if GetKeyState("Shift")
      Send("{U+00D3}") ;Ó
   else
      Send("{U+00F3}") ;ó
}
sc07B & p:: ;
{
   if GetKeyState("Shift")
      Send("{U+01EA}") ;Ǫ
   else
      Send("{U+01EB}") ;ǫ
}
sc01A::Send("{U+0301}") ; acute accent

sc07B & sc01A:: ;@
{
   if GetKeyState("Shift")
      Send("{U+00D4}") ;Ô
   else
      Send("{U+00F4}") ;ô
}
sc07B & sc01B:: ;[
{
   if GetKeyState("Shift")
      Send("{U+0176}") ;Ŷ
   else
      Send("{U+0177}") ;ŷ
 }

;row 3
sc07B & a:: ;
{
   if GetKeyState("Ctrl")
      Send("{U+00C1}") ;Á
   else
      Send("{U+00E1}") ;á
}
sc07B & s:: ;
{
   if GetKeyState("Shift")
      Send("{U+0160}") ;Š
   else
      Send("{U+0161}") ;š
}
sc07B & d:: ;
{
   if GetKeyState("Shift")
      Send("{U+010E}") ;Ď
   else
      Send("{U+010F}") ;ď
}
sc07B & f:: ;
{
   if GetKeyState("Shift")
      Send("{U+0110}") ;Đ
   else
      Send("{U+0111}") ;đ
}
sc07B & g:: ;
{
   if GetKeyState("Shift")
      Send("{U+01F4}") ;Ǵ
   else
      Send("{U+01F5}") ;ǵ
}
sc07B & h:: ;
{
   if GetKeyState("Shift")
      Send("{U+015A}") ;Ś
   else
      Send("{U+015B}") ;ś
}
sc07B & j:: ;
{
   if GetKeyState("Shift")
      Send("{U+16E}") ;Ů
   else
      Send("{U+016F}") ;ů
}
sc07B & k:: ;
{
   if GetKeyState("Shift")
      Send("{U+1E30}") ;Ḱ
   else
      Send("{U+1E31}") ;ḱ
}
sc07B & l:: ;
{
   if GetKeyState("Shift")
      Send("{U+0141}") ;Ł
   else
      Send("{U+0142}") ;ł
}
sc07B & sc027:: ; semicolon
{
   if GetKeyState("Shift")
      Send("{U+00C4}") ; Ä
   else
      Send("{U+00E4}") ; ä
}
sc07B & sc028:: ; colon
{
   if GetKeyState("Shift")
      Send("{U+00CB}") ; Ä
   else
      Send("{U+00EB}") ; ä
}
sc07B & sc02B:: ; ]}
{
   if GetKeyState("Shift")
      Send("{U+00CF}") ; Ï
   else
      Send("{U+00EF}") ; ï
 }

;row 4
sc07B & z:: ;
{
   if GetKeyState("Shift")
      Send("{U+017D}") ;Ž
   else
      Send("{U+017E}") ;ž
}
sc07B & x:: ;
{
   if GetKeyState("Shift")
      Send("{U+017B}") ;Ż
   else
      Send("{U+017C}") ;ż
}
sc07B & c:: ;
{
   if GetKeyState("Shift")
      Send("{U+010C}") ;Č
   else
      Send("{U+010D}") ;č
}
sc07B & v:: ;
{
   if GetKeyState("Shift")
      Send("{U+0106}") ;Ć
   else
      Send("{U+0107}") ;ć
}
sc07B & b:: ;
{
   if GetKeyState("Shift")
      Send("{U+0179}") ;Ź
   else
      Send("{U+017A}") ;ź
}
sc07B & n:: ;
{
   if GetKeyState("Shift")
      Send("{U+0147}") ;Ň
   else
      Send("{U+0148}") ;ň
}
sc07B & m:: ;
{
   if GetKeyState("Shift")
      Send("{U+0143}") ;Ń
   else
      Send("{U+0144}") ;ń
 }
; V1toV2: Added Bracket before hotkey or Hotstring
,::Send ("{U+002C}")
sc07B & ,:: ; comma
{
   if GetKeyState("Shift")
      Send("{U+0139}") ; Ĺ
   else
      Send("{U+013A}") ; ĺ
}
sc07B & .:: ; period
{
   if GetKeyState("Shift")
      Send("{U+0154}") ; Ŕ
   else
      Send("{U+0155}") ; ŕ
}
sc07B & /:: ; slash
{
   if GetKeyState("Shift")
      Send("{U+01B7}") ; Ʒ
   else
      Send("{U+0292}") ; ʒ
}
sc07B & sc073:: ; back slash
{
   if GetKeyState("Shift")
      Send("{U+00CE}") ; Î
   else
      Send("{U+00EE}") ; î
 }

;miscellaneous characters
isHotKeyRunning := Map("^", [false, 0], "-", [false, 0], "@", [false, 0], "[", [false, 0], ".", [false, 0], "]", [false, 0])
result := false

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
   else {
      combinedKey := StrLower(char) diacritic
      if CharArray.Has(combinedKey) { ; send precomposed character
         if GetKeyState("LShift")
            Send(CharArray[combinedKey][2]) ; uppercase
         else
            Send(CharArray[combinedKey][1]) ; lowercase
      }
      else {
         combiningMark := CharArray[diacritic], base := char ; send base char + combining mark
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