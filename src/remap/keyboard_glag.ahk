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

; Glagolitic keyboard
#SingleInstance Force
A_IconTip := "UniSlav - Glagolitic"
TraySetIcon("..\icon\glag.ico",,false)
IniWrite(A_ScriptHwnd, A_Temp "\UniSlav.tmp", "HWND", "glag")
#Include "modifier.ahk"

;row 1 qwerty
q::Send("ⰹ")
+q::Send("Ⰹ")
w::Send("ⱌ")
+w::Send("Ⱌ")
e::Send("ⱆ")
+e::Send("Ⱆ")
r::Send("ⰽ")
+r::Send("Ⰽ")
t::Send("ⰵ")
+t::Send("Ⰵ")
y::Send("ⱀ")
+y::Send("Ⱀ")
u::Send("ⰳ")
+u::Send("Ⰳ")
i::Send("ⱎ")
+i::Send("Ⱎ")
o::Send("ⱋ")
+o::Send("Ⱋ")
p::Send("ⰸ")
+p::Send("Ⰸ")
sc01A::Send("ⱈ") ;@ mark
+sc01A::Send("Ⱈ") ;@ mark
sc01B::Send("ⱏ") ;[
+sc01B::Send("Ⱏ") ;[

;row 2 asdfg...
a::Send("ⱇ")
+a::Send("Ⱇ")
s::Send("ⱏⰹ")
+s::Send("ⰟⰉ")
d::Send("ⰲ")
+d::Send("Ⰲ")
f::Send("ⰰ")
+f::Send("Ⰰ")
g::Send("ⱂ")
+g::Send("Ⱂ")
h::Send("ⱃ")
+h::Send("Ⱃ")
j::Send("ⱁ")
+j::Send("Ⱁ")
k::Send("ⰾ")
+k::Send("Ⰾ")
l::Send("ⰴ")
+l::Send("Ⰴ")
sc027::Send("ⰶ") ;semicolon
+sc027::Send("Ⰶ") ;semicolon
sc028::Send("") ;colon
+sc028::Send("") ;colon
sc02B::Send("ⱑ") ;]
+sc02B::Send("Ⱑ") ;]

;row 3 zxcv...
z::Send("")
+z::Send("")
x::Send("ⱍ")
+x::Send("Ⱍ")
c::Send("ⱄ")
+c::Send("Ⱄ")
v::Send("ⰿ")
+v::Send("Ⰿ")
b::Send("ⰻ")
+b::Send("Ⰻ")
n::Send("ⱅ")
+n::Send("Ⱅ")
m::Send("ⱐ")
+m::Send("Ⱐ")
sc033::Send("ⰱ") ;comma
+sc033::Send("Ⰱ") ;comma
sc034::Send("ⱓ") ;period
+sc034::Send("Ⱓ") ;period
sc035::Send(",") ;slash
+sc035::Send(".") ;slash
sc073::Send("") ;backslash
+sc073::Send("") ;backslash
Space::Send("{U+0020}") ;space

; secondary keyboard
sc07B & q:: ;-> iota
{
   if GetKeyState("Shift")
      Send("Ⰺ")
   else
      Send("ⰺ")
}
sc07B & w::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & e::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & r::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & t:: ;-> little yus
{
   if GetKeyState("Shift")
      Send("Ⱔ")
   else
      Send("ⱔ")
}
sc07B & y::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & u:: ;-> djerv
{
   if GetKeyState("Shift")
      Send("Ⰼ")
   else
      Send("ⰼ")
}
sc07B & i::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
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
      Send("Ⰷ")
   else
      Send("ⰷ")
}
sc07B & sc01A::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
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
sc07B & g::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
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
      Send("Ⱘ")
   else
      Send("ⱘ")
}
sc07B & k:: ;-> omega
{
   if GetKeyState("Shift")
      Send("Ⱉ")
   else
      Send("ⱉ")
}
sc07B & l::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
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
      Send("Ⱗ")
   else
      Send("ⱗ")
}
sc07B & sc02B::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & z::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
}
sc07B & x::
{
   if GetKeyState("Shift")
      Send("")
   else
      Send("")
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
      Send("Ⱛ")
   else
      Send("ⱛ")
}
sc07B & n:: ;-> fita
{
   if GetKeyState("Shift")
      Send("Ⱚ")
   else
      Send("ⱚ")
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
      Send("Ⱙ")
   else
      Send("ⱙ")
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