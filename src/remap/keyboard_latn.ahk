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

;Slavic Latin keyboard
#SingleInstance Force
A_IconTip := "UniSlav - Slavic Latin"
TraySetIcon("..\icon\latn.ico",,false)
IniWrite(A_ScriptHwnd, A_Temp "\UniSlav.tmp", "HWND", "latn")
#Include "modifier.ahk"

;row 1
sc07B & 1:: ;-> lengthened & nasalized
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("ː") ; lengthened
}
sc07B & 2:: ;-> кавычки-left
{
   if GetKeyState("Shift")
      Send("«")
   else
      Send("“")
}
sc07B & 3:: ;-> кавычки-right
{
   if GetKeyState("Shift")
      Send("»")
   else
      Send("”")
}
sc07B & 4:: ;-> 
{
   if GetKeyState("Shift")
      Send("") ; 
   else
      Send("") ; 
}
sc07B & 5:: ;-> 
{
   if GetKeyState("Shift")
      Send("") ;
   else
      Send("") ; 
}
sc07B & 6:: ;-> 
{
   if GetKeyState("Shift")
      Send("") ; 
   else
      Send("") ; 
}
sc07B & 7:: ;-> palatalized & velarized
{
   if GetKeyState("Shift")
      Send("ˠ")
   else
      Send("ʲ")
}
sc07B & 8:: ;-> prime & apostrophe
{
   if GetKeyState("Shift")
      Send("ʹ") ; prime (modifier)
   else
      Send("’") ; right single quotation
}
sc07B & 9:: ;-> 
{
   if GetKeyState("Shift")
      Send("") ; 
   else
      Send("") ; 
}
sc07B & 0:: ;-> dotted circle & affricate
{
   if GetKeyState("Shift")
      Send("{U+0361}") ; affricate
   else
      Send("◌") ; dotted circle
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
      Send("Ь")
   else
      Send("ь")
}
sc07B & sc07D:: ; \ (only for JIS keyboard)
{
   if GetKeyState("Shift")
      Send("Ъ")
   else
      Send("ъ")
 }

;row 2
q::Send("ę")
+q::Send("Ę")
sc07B & q::
{
   if GetKeyState("Shift")
      Send("Ą")
   else
      Send("ą")
}
sc07B & w::
{
   if GetKeyState("Shift")
      Send("É")
   else
      Send("é")
}
sc07B & e::
{
   if GetKeyState("Shift")
      Send("Ě")
   else
      Send("ě")
}
sc07B & r::
{
   if GetKeyState("Shift")
      Send("Ř")
   else
      Send("ř")
}
sc07B & t::
{
   if GetKeyState("Shift")
      Send("Ť")
   else
      Send("ť")
}
sc07B & y::
{
   if GetKeyState("Shift")
      Send("Ý")
   else
      Send("ý")
}
sc07B & u::
{
   if GetKeyState("Shift")
      Send("Ú")
   else
      Send("ú")
}
sc07B & i::
{
   if GetKeyState("Shift")
      Send("Í")
   else
      Send("í")
}
sc07B & o::
{
   if GetKeyState("Shift")
      Send("Ó")
   else
      Send("ó")
}
sc07B & p::
{
   if GetKeyState("Shift")
      Send("Ǫ")
   else
      Send("ǫ")
}
sc01A::Send("{U+0301}") ; acute accent
sc07B & sc01A:: ;@
{
   if GetKeyState("Shift")
      Send("Ô")
   else
      Send("ô")
}
sc07B & sc01B:: ;[
{
   if GetKeyState("Shift")
      Send("Ŷ")
   else
      Send("ŷ")
 }

;row 3
sc07B & a::
{
   if GetKeyState("Ctrl")
      Send("Á")
   else
      Send("á")
}
sc07B & s::
{
   if GetKeyState("Shift")
      Send("Š")
   else
      Send("š")
}
sc07B & d::
{
   if GetKeyState("Shift")
      Send("Ď")
   else
      Send("ď")
}
sc07B & f::
{
   if GetKeyState("Shift")
      Send("Đ")
   else
      Send("đ")
}
sc07B & g::
{
   if GetKeyState("Shift")
      Send("Ǵ")
   else
      Send("ǵ")
}
sc07B & h::
{
   if GetKeyState("Shift")
      Send("Ś")
   else
      Send("ś")
}
sc07B & j::
{
   if GetKeyState("Shift")
      Send("Ů")
   else
      Send("ů")
}
sc07B & k::
{
   if GetKeyState("Shift")
      Send("Ḱ")
   else
      Send("ḱ")
}
sc07B & l::
{
   if GetKeyState("Shift")
      Send("Ł")
   else
      Send("ł")
}
sc07B & sc027:: ; semicolon
{
   if GetKeyState("Shift")
      Send("Ä")
   else
      Send("ä")
}
sc07B & sc028:: ; colon
{
   if GetKeyState("Shift")
      Send("Ë")
   else
      Send("ë")
}
sc07B & sc02B:: ; ]}
{
   if GetKeyState("Shift")
      Send("Ï")
   else
      Send("ï")
 }

;row 4
sc07B & z::
{
   if GetKeyState("Shift")
      Send("Ž")
   else
      Send("ž")
}
sc07B & x::
{
   if GetKeyState("Shift")
      Send("Ż")
   else
      Send("ż")
}
sc07B & c::
{
   if GetKeyState("Shift")
      Send("Č")
   else
      Send("č")
}
sc07B & v::
{
   if GetKeyState("Shift")
      Send("Ć")
   else
      Send("ć")
}
sc07B & b::
{
   if GetKeyState("Shift")
      Send("Ź")
   else
      Send("ź")
}
sc07B & n::
{
   if GetKeyState("Shift")
      Send("Ň")
   else
      Send("ň")
}
sc07B & m::
{
   if GetKeyState("Shift")
      Send("Ń")
   else
      Send("ń")
 }

sc033::Send (",")
sc07B & sc033:: ; comma
{
   if GetKeyState("Shift")
      Send("Ĺ")
   else
      Send("ĺ")
}
sc07B & sc034:: ; period
{
   if GetKeyState("Shift")
      Send("Ŕ")
   else
      Send("ŕ")
}
sc07B & sc035:: ; slash
{
   if GetKeyState("Shift")
      Send("Ʒ")
   else
      Send("ʒ")
}
sc07B & sc073:: ; back slash (only for JIS keyboard)
{
   if GetKeyState("Shift")
      Send("Î")
   else
      Send("î")
 }

;miscellaneous characters
Ctrl & 0::WaitForAlphabet("0") ; inverted breve
Ctrl & sc00C::
{
   if GetKeyState("Shift")
      WaitForAlphabet("=") ; breve
   else
      WaitForAlphabet("-") ; macron
}
Ctrl & sc00D::
{
   if GetKeyState("Shift")
      WaitForAlphabet("~") ; tilde
   else
      WaitForAlphabet("^") ; circumflex
}
Ctrl & sc01A::WaitForAlphabet("@") ; grave
Ctrl & sc01B::WaitForAlphabet("[") ; double grave
Ctrl & sc02B::WaitForAlphabet("]") ; misc.
Ctrl & sc028::WaitForAlphabet(":") ; trema
Ctrl & sc034::WaitForAlphabet(".") ; dot below


;function
CharMap := Map(
   "a0", ["ȃ","Ȃ"], "a^", ["â","Â"], "a~", ["ã","Ã"], "a-", ["ā","Ā"], "a=", ["ă","Ă"], "a@", ["à","À"], "a[", ["ȁ","Ȁ"], "a.", ["ạ","Ạ"], "a]", ["æ","Æ"], "a:", ["ä","Ä"]
  ,"e0", ["ȇ","Ȇ"], "e^", ["ê","Ê"], "e~", ["ẽ","Ẽ"], "e-", ["ē","Ē"], "e=", ["ĕ","Ĕ"], "e@", ["è","È"], "e[", ["ȅ","Ȅ"], "e.", ["ẹ","Ẹ"], "e]", ["ə","Ə"], "e:", ["ë","Ë"]
  ,"i0", ["ȋ","Ȋ"], "i^", ["î","Î"], "i~", ["ĩ","Ĩ"], "i-", ["ī","Ī"], "i=", ["ĭ","Ĭ"], "i@", ["ì","Ì"], "i[", ["ȉ","Ȉ"], "i.", ["ị","Ị"], "i]", ["į","Į"], "i:", ["ï","Ï"]
  ,"o0", ["ȏ","Ȏ"], "o^", ["ô","Ô"], "o~", ["õ","Õ"], "o-", ["ō","Ō"], "o=", ["ŏ","Ŏ"], "o@", ["ò","Ò"], "o[", ["ȍ","Ȍ"], "o.", ["ọ","Ọ"], "o]", ["œ","Œ"], "o:", ["ö","Ö"]
  ,"u0", ["ȗ","Ȗ"], "u^", ["û","Û"], "u~", ["ũ","Ũ"], "u-", ["ū","Ū"], "u=", ["ŭ","Ŭ"], "u@", ["ù","Ù"], "u[", ["ȕ","Ȕ"], "u.", ["ụ","Ụ"], "u]", ["ų","Ų"], "u:", ["ü","Ü"]
  ,"r0", ["ȓ","Ȓ"], "r[", ["ȑ","Ȑ"], "r.", ["ṛ","Ṛ"]
  ,"c^", ["ĉ","Ĉ"], "g^", ["ĝ","Ĝ"], "h^", ["ĥ","Ĥ"], "j^", ["ĵ","Ĵ"], "s^", ["ŝ","Ŝ"] ; por Esperanto
  ,"0", "{U+0311}", "^", "{U+0302}" , "~", "{U+0303}", "-", "{U+0304}", "=", "{U+0306}", "@", "{U+0300}", "[", "{U+030F}", ".", "{U+0323}", "]", "", ":", "{U+0308}")

isHotKeyRunning := Map("^", [false, 0], "-", [false, 0], "@", [false, 0], "[", [false, 0], ".", [false, 0], "]", [false, 0]
                     ,"~", [false, 0])

WaitForAlphabet(diacritic) {
   global isHotKeyRunning, base, combiningMark, result, CharMap
   SetFlags(diacritic)
   for key, value in isHotKeyRunning {
       if (key != diacritic && value[1]) { ; Check if other HotKey is running
           isHotKeyRunning[diacritic][2] := 1 ; a HotKey has been activated before this HotKey
           isHotKeyRunning[key][1] := false ; set prior HotKey to false
           result := true
      }
   }
   ih := InputHook("L1")
   ih.Start()
   ih.Wait()
   char := ih.Input
   if (!isHotKeyRunning[diacritic][1]) { ; overwrite previous HotKey
      if (result) { ; send non-precomposed characters
         SendEvent("{a " isHotKeyRunning[diacritic][2] "}") ; send {a} in order to make ih.EndReason "Max"
         if (isHotKeyRunning[diacritic][2] = 0) { ; this is the first HotKey that is pressed (or the last HotKey in progress)
            SendInput(base)
            Sleep 0
            SendInput(combiningMark)
         }
         isHotKeyRunning[diacritic] := [false, 0]
         return
      }
      else ; send precomposed char
         SendEvent(char)
   }
   else {
      combinedKey := StrLower(char) diacritic
      if CharMap.Has(combinedKey) { ; send precomposed character
         if GetKeyState("Shift")
            SendEvent(CharMap[combinedKey][2]) ; uppercase
         else
            SendEvent(CharMap[combinedKey][1]) ; lowercase
      }
      else {
         combiningMark := CharMap[diacritic], base := char ; send base char + combining mark
         if (result) { ; if other HotKey is running
            SendEvent(char)
            isHotKeyRunning[diacritic][1] := false
            return
         }
         else {
            SendInput(base)
            Sleep 0
            SendInput(combiningMark)
         }
      }
   }
   ResetFlags(diacritic)
}

SetFlags(flag) {
   global
   isHotKeyRunning[flag] := [true, 0]
   result := false
}

ResetFlags(flag) {
   global
   isHotKeyRunning[flag] := [false, 0]
   result := false
}