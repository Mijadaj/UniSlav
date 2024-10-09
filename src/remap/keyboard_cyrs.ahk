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

; Early Cyrillic keyboard (Church Slavonic)
#SingleInstance Force
A_IconTip := "UniSlav - Early Cyrillic"
TraySetIcon("..\icon\cyrs.ico",,false)
IniWrite(A_ScriptHwnd, A_Temp "\UniSlav.tmp", "HWND", "cyrs")
#Include "modifier.ahk"

;Basic characters
q::Send("і")
+q::Send("І")
w::Send("ц")
+w::Send("Ц")
e::Send("ѹ")
+e::Send("Ѹ")
r::Send("к")
+r::Send("К")
t::Send("е")
+t::Send("Е")
y::Send("н")
+y::Send("Н")
u::Send("г")
+u::Send("Г")
i::Send("ш")
+i::Send("Ш")
o::Send("щ")
+o::Send("Щ")
p::Send("з")
+p::Send("З")
sc01A::Send("х")
+sc01A::Send("Х")
sc01B::Send("ъ")
+sc01B::Send("Ъ")
a::Send("ф")
+a::Send("Ф")
s::Send("ꙑ")
+s::Send("Ꙑ")
d::Send("в")
+d::Send("В")
f::Send("а")
+f::Send("А")
g::Send("п")
+g::Send("П")
h::Send("р")
+h::Send("Р")
j::Send("о")
+j::Send("О")
k::Send("л")
+k::Send("Л")
l::Send("д")
+l::Send("Д")
sc027::Send("ж")
+sc027::Send("Ж")
sc028::Send("ѥ")
+sc028::Send("Ѥ")
sc02B::Send("ѣ")
+sc02B::Send("Ѣ")
z::Send("ꙗ")
+z::Send("Ꙗ")
x::Send("ч")
+x::Send("Ч")
c::Send("с")
+c::Send("С")
v::Send("м")
+v::Send("М")
b::Send("и")
+b::Send("И")
n::Send("т")
+n::Send("Т")
m::Send("ь")
+m::Send("Ь")
sc033::Send("б")
+sc033::Send("Б")
sc034::Send("ю")
+sc034::Send("Ю")
sc035::Send(",")
+sc035::Send(".")
sc073::Send("{U+0483}") ;titlo
+sc073::Send("{U+0484}") ;soft sign
Space::Send("{U+0020}") ;space

; secondary keyboard
sc07B & q:: ;-> iota
{
   if GetKeyState("Shift")
      Send("Ꙇ")
   else
      Send("ꙇ")
}
sc07B & w:: ;-> uk(alternative)
{
   if GetKeyState("Shift")
      Send("у")
   else
      Send("ᲂу")
}
sc07B & e:: ;-> uk(vertical)
{
   if GetKeyState("Shift")
      Send("Ꙋ")
   else
      Send("ꙋ")
}
sc07B & r:: ;-> ksi
{
   if GetKeyState("Shift")
      Send("Ѯ")
   else
      Send("ѯ")
}
sc07B & t:: ;-> little yus
{
   if GetKeyState("Shift")
      Send("Ѧ")
   else
      Send("ѧ")
}
sc07B & y::
{
   if GetKeyState("Shift")
      Send("Ꙙ")
   else
      Send("ꙙ")
}
sc07B & u:: ;-> tshe
{
   if GetKeyState("Shift")
      Send("Ћ")
   else
      Send("ћ")
}
sc07B & i:: ;-> djerv
{
   if GetKeyState("Shift")
      Send("Ꙉ")
   else
      Send("ꙉ")
}
sc07B & o::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & p:: ;-> dze
{
   if GetKeyState("Shift")
      Send("Ѕ")
   else
      Send("ѕ")
}
sc07B & sc01A::
{
   if GetKeyState("Shift")
      Send("Ꙁ")
   else
      Send("ꙁ")
}
sc07B & sc01B::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & a::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & s::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & d::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & f:: 
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & g:: ;-> psi
{
   if GetKeyState("Shift")
      Send("Ѱ")
   else
      Send("ѱ")
}
sc07B & h::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & j:: ;-> big yus
{
   if GetKeyState("Shift")
      Send("Ѫ")
   else
      Send("ѫ")
}
sc07B & k:: ;-> omega
{
   if GetKeyState("Shift")
      Send("Ѡ")
   else
      Send("ѡ")
}
sc07B & l:: ;-> ot
{
   if GetKeyState("Shift")
      Send("Ѿ")
   else
      Send("ѿ")
}
sc07B & sc027::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & sc028:: ;-> iotified little yus
{
   if GetKeyState("Shift")
      Send("Ѩ")
   else
      Send("ѩ")
}
sc07B & sc02B::
{
   if GetKeyState("Shift")
      Send("Ꙝ")
   else
      Send("ꙝ")
}
sc07B & z::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & x:: ;-> koppa
{
   if GetKeyState("Shift")
      Send("Ҁ")
   else
      Send("ҁ")
}
sc07B & c::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & v::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & b:: ;-> izhitsa
{
   if GetKeyState("Shift")
      Send("Ѵ")
   else
      Send("ѵ")
}
sc07B & n:: ;-> fita
{
   if GetKeyState("Shift")
      Send("Ѳ")
   else
      Send("ѳ")
}
sc07B & m::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & sc033::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & sc034:: ;-> iotified big yus
{
   if GetKeyState("Shift")
      Send("Ѭ")
   else
      Send("ѭ")
}
sc07B & sc035::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & sc073::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}