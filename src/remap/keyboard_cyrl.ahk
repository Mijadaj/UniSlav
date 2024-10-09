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

;Slavic Cyrillic keyboard (Modern Slavic languages)
#SingleInstance Force
A_IconTip := "UniSlav - Slavic Cyrillic"
TraySetIcon("..\icon\cyrl.ico",,false)
IniWrite(A_ScriptHwnd, A_Temp "\UniSlav.tmp", "HWND", "cyrl")
#Include "modifier.ahk"

;row 1
sc07B & 1::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & 2::
{
   if GetKeyState("Shift")
      Send("“") ;  left double quote
   else
      Send("«")
}
sc07B & 3::
{
   if GetKeyState("Shift")
      Send("”") ;  right double quote
   else
      Send("»")
}
sc07B & 4::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & 5::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & 6::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & 7::
{
   if GetKeyState("Shift")
      Send("ʹ") ;  prime
   else
      Send("’") ;  right single ęuotation
}
sc07B & 8::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & 9::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & 0::
{
   if GetKeyState("Shift")
      Send("∅")
   else
      Send("◌")
}
sc00C::Send("‑") ; non-breaking hyphen
sc07B & sc00C::
{
   if GetKeyState("Shift")
      Send("–") ; en dash
   else
      Send("—") ; em dash
}
sc00D::Send("{U+0301}") ; combining acute accent
sc07B & sc00D::
{
   if GetKeyState("Shift")
      Send("~")
   else
      Send("^")
 
;row 2
}
q::Send("й")
+q::Send("Й")
sc07B & q::
{
   if GetKeyState("Shift")
      Send("І")
   else
      Send("і")
}
w::Send("ц")
+w::Send("Ц")
sc07B & w::
{
   if GetKeyState("Shift")
      Send("Ї")	
   else
      Send("ї")
}
e::Send("у")
+e::Send("У")
sc07B & e::
{
   if GetKeyState("Shift")
      Send("Ў")
   else
      Send("ў")
}
r::Send("к")
+r::Send("К")
sc07B & r::
{
   if GetKeyState("Shift")
      Send("Ќ")
   else
      Send("ќ")
}
t::Send("е")
+t::Send("Е")
sc07B & t::
{
   if GetKeyState("Shift")
      Send("Ё")
   else
      Send("ё")
}
y::Send("н")
+y::Send("Н")
sc07B & y::
{
   if GetKeyState("Shift")
      Send("Њ")
   else
      Send("њ")
}
u::Send("г")
+u::Send("Г")
sc07B & u::
{
   if GetKeyState("Shift")
      Send("Ѓ")
   else
      Send("ѓ")
}
i::Send("ш")
+i::Send("Ш")
sc07B & i::
{
   if GetKeyState("Shift")
      Send("Ґ")
   else
      Send("ґ")
}
o::Send("щ")
+o::Send("Щ")
sc07B & o::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
p::Send("з")
+p::Send("З")
sc07B & p::
{
   if GetKeyState("Shift")
      Send("Ѕ")
   else
      Send("ѕ")
}
sc01A::Send("х") ;@ mark
+sc01A::Send("Х")
sc07B & sc01A::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc01B::Send("ъ") ;[
+sc01B::Send("Ъ")
sc07B & sc01B::
{
   if GetKeyState("Shift")
      Send("{")
   else
      Send("[")
 
;row 2
}
a::Send("ф")
+a::Send("Ф")
sc07B & a::
{
   if GetKeyState("Ctrl")
      Send("Ѳ")
   else
      Send("ѳ")
}
s::Send("ы")
+s::Send("Ы")
sc07B & s::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
d::Send("в")
+d::Send("В")
sc07B & d::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
f::Send("а")
+f::Send("А")
sc07B & f:: 
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
g::Send("п")
+g::Send("П")
sc07B & g::
{
   if GetKeyState("Shift")
      Send("Ѐ")
   else
      Send("ѐ")
}
h::Send("р")
+h::Send("Р")
sc07B & h::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
j::Send("о")
+j::Send("О")
sc07B & j::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
k::Send("л")
+k::Send("Л")
sc07B & k::
{
   if GetKeyState("Shift")
      Send("Љ")
   else
      Send("љ")
}
l::Send("д")
+l::Send("Д")
sc07B & l::
{
   if GetKeyState("Shift")
      Send("Ђ")
   else
      Send("ђ")
}
sc027::Send("ж") ; semicolonй
+sc027::Send("Ж") ; semicolon
sc07B & sc027:: ;semicolon
{
   if GetKeyState("Shift")
      Send("Џ")
   else
      Send("џ")
}
sc028::Send("э") ; colon
+sc028::Send("Э") ; colon
sc07B & sc028:: ;colon
{
   if GetKeyState("Shift")
      Send("Ѣ")
   else
      Send("ѣ")
}
sc02B::Send("є") ; right bracket
+sc02B::Send("Є") ; right bracket
sc07B & sc02B:: ;right bracket
{
   if GetKeyState("Shift")
      Send("}")
   else
      Send("]")
 
;row 3
}
z::Send("я")
+z::Send("Я")
sc07B & z::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
x::Send("ч")
+x::Send("Ч")
sc07B & x::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
c::Send("с")
+c::Send("С")
sc07B & c::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
v::Send("м")
+v::Send("М")
sc07B & v::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
b::Send("и")
+b::Send("И")
sc07B & b::
{
   if GetKeyState("Shift")
      Send("Ѝ")
   else
      Send("ѝ")
}
n::Send("т")
+n::Send("Т")
sc07B & n::
{
   if GetKeyState("Shift")
      Send("Ћ")
   else
      Send("ћ")
}
m::Send("ь")
+m::Send("Ь")
sc07B & m::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc033::Send("б")
+sc033::Send("Б")
sc07B & sc033::
{
   if GetKeyState("Shift")
      Send(";")
   else
      Send("<")
}
sc034::Send("ю")
+sc034::Send("Ю")
sc07B & sc034::
{
   if GetKeyState("Shift")
      Send(":")
   else
      Send(">")
}
sc035::Send(",") 
+sc035::Send(".")
sc07B & sc035::
{
   if GetKeyState("Shift")
      Send("?")
   else
      Send("/")
}
sc073::Send("ј") ; present only in JIS keyboard
+sc073::Send("Ј")
sc07B & sc073::
{
   if GetKeyState("Shift")
      Send("_")
   else
      Send("\")
 
;row 5
}
Space::Send("{U+0020}") ;space
;phonetic extensions/superscript
sc00D & f:: ;a
{
   if GetKeyState("Shift")
      Send("{U+1E030}") ; cyrilliс
   else
      Send("{U+1D43}") ; latin a
}
sc00D & t:: ;e
{
   if GetKeyState("Shift")
      Send("{U+1E035}") ; cyrillic 
   else
      Send("{U+1D49}") ; latin e
}
sc00D & b:: ;i
{
   if GetKeyState("Shift")
      Send("{U+1E04C}") ; cyrillic 
   else
      Send("{U+2071}") ; latin i
}
sc00D & j:: ;o
{
   if GetKeyState("Shift")
      Send("{U+1E03C}") ; cyrillic 
   else
      Send("{U+1D52}") ; latin o
}
sc00D & s:: ;y
{
   if GetKeyState("Shift")
      Send("{U+1E047}") ; cyrillic ы
   else
      Send("") ; latin 
 
}
sc00D & e:: ;u
{
   if GetKeyState("Shift")
      Send("{U+1E041}") ; cyrillic у
   else
      Send("{U+02B8}") ; latin y
}