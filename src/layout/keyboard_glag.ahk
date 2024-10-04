; Glagolitic keyboard
#SingleInstance Force
A_IconTip := "UniSlav - Glagolitic"
TraySetIcon("icon\glag.ico",,false)
IniWrite(A_ScriptHwnd, A_Temp "\UniSlav.tmp", "HWND", "glag")

;row 1 qwerty
q::Send("{U+2C39}") ;ⰹ
+q::Send("{U+2C09}") ;Ⰹ
w::Send("{U+2C4C}") ;ⱌ
+w::Send("{U+2C1C}") ;Ⱌ
e::Send("{U+2C46}") ;ⱆ
+e::Send("{U+2C16}") ;Ⱆ
r::Send("{U+2C3D}") ;ⰽ
+r::Send("{U+2C0D}") ;Ⰽ
t::Send("{U+2C35}") ;ⰵ
+t::Send("{U+2C05}") ;Ⰵ
y::Send("{U+2C40}") ;ⱀ
+y::Send("{U+2C10}") ;Ⱀ
u::Send("{U+2C33}") ;ⰳ
+u::Send("{U+2C03}") ;Ⰳ
i::Send("{U+2C4E}") ;ⱎ
+i::Send("{U+2C1E}") ;Ⱎ
o::Send("{U+2C4B}") ;ⱋ
+o::Send("{U+2C1B}") ;Ⱋ
p::Send("{U+2C38}") ;ⰸ
+p::Send("{U+2C08}") ;Ⰸ
sc01A::Send("{U+2C48}") ;ⱈ ;@ mark
+sc01A::Send("{U+2C18}") ;Ⱈ ;@ mark
sc01B::Send("{U+2C4F}") ;ⱏ ;[
+sc01B::Send("{U+2C1F}") ;Ⱏ ;[

;row 2 asdfg...
a::Send("{U+2C47}") ;ⱇ
+a::Send("{U+2C17}") ;Ⱇ
s::Send("{U+2C4F}{U+2C39}") ;ⱏⰹ
+s::Send("{U+2C1F}{U+2C09}") ;ⰟⰉ
d::Send("{U+2C32}") ;ⰲ
+d::Send("{U+2C02}") ;Ⰲ
f::Send("{U+2C30}") ;ⰰ
+f::Send("{U+2C00}") ;Ⰰ
g::Send("{U+2C42}") ;ⱂ
+g::Send("{U+2C12}") ;Ⱂ
h::Send("{U+2C43}") ;ⱃ
+h::Send("{U+2C13}") ;Ⱃ
j::Send("{U+2C41}") ;ⱁ
+j::Send("{U+2C11}") ;Ⱁ
k::Send("{U+2C3E}") ;ⰾ
+k::Send("{U+2C0E}") ;Ⰾ
l::Send("{U+2C34}") ;ⰴ
+l::Send("{U+2C04}") ;Ⰴ
sc027::Send("{U+2C36}") ;ⰶ ;semicolon
+sc027::Send("{U+2C06}") ;Ⰶ ;semicolon
sc028::Send("{}") ; ;colon
+sc028::Send("{}") ; ;colon
sc02B::Send("{U+2C51}") ;ⱑ ;]
+sc02B::Send("{U+2C21}") ;Ⱑ ;]

;row 3 zxcv...
z::Send("{}") ;
+z::Send("{}") ;
x::Send("{U+2C4D}") ;ⱍ
+x::Send("{U+2C1D}") ;Ⱍ
c::Send("{U+2C44}") ;ⱄ
+c::Send("{U+2C14}") ;Ⱄ
v::Send("{U+2C3F}") ;ⰿ
+v::Send("{U+2C0F}") ;Ⰿ
b::Send("{U+2C3B}") ;ⰻ
+b::Send("{U+2C0B}") ;Ⰻ
n::Send("{U+2C45}") ;ⱅ
+n::Send("{U+2C15}") ;Ⱅ
m::Send("{U+2C50}") ;ⱐ
+m::Send("{U+2C20}") ;Ⱐ
sc033::Send("{U+2C31}") ;ⰱ ;comma
+sc033::Send("{U+2C01}") ;Ⰱ ;comma
sc034::Send("{U+2C53}") ;ⱓ ;period
+sc034::Send("{U+2C23}") ;Ⱓ ;period
sc035::Send("{U+002C}") ;comma ;slash
+sc035::Send("{}") ;comma ;slash
sc073::Send("{U+002E}") ;period ;backslash
+sc073::Send("{}") ; ;backslash
Space::Send("{U+0020}") ;space




































; secondary keyboard
sc07B & q:: ;-> iota
{
   if GetKeyState("Shift")
      Send("{U+2C0A}") ;Ⰺ
   else
      Send("{U+2C3A}") ;ⰺ
}
sc07B & w:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & e:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & r:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & t:: ;-> little yus
{
   if GetKeyState("Shift")
      Send("{U+2C24}") ;Ⱔ
   else
      Send("{U+2C54}") ;ⱔ
}
sc07B & y:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & u:: ;-> djerv
{
   if GetKeyState("Shift")
      Send("{U+2C0C}") ;Ⰼ
   else
      Send("{U+2C3C}") ;ⰼ
}
sc07B & i:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & o:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & p:: ;-> dze
{
   if GetKeyState("Shift")
      Send("{U+2C07}") ;Ⰷ
   else
      Send("{U+2C37}") ;ⰷ
}
sc07B & sc01A:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & sc01B:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & a:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & s:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & d:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & f::  ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & g:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & h:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & j:: ;-> big yus
{
   if GetKeyState("Shift")
      Send("{U+2C28}") ;Ⱘ
   else
      Send("{U+2C58}") ;ⱘ
}
sc07B & k:: ;-> omega
{
   if GetKeyState("Shift")
      Send("{U+2C19}") ;Ⱉ
   else
      Send("{U+2C49}") ;ⱉ
}
sc07B & l:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & sc027:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & sc028:: ;-> iotified little yus
{
   if GetKeyState("Shift")
      Send("{U+2C27}") ;Ⱗ
   else
      Send("{U+2C57}") ;ⱗ
}
sc07B & sc02B:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & z:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & x:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & c:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & v:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & b:: ;-> izhitsa
{
   if GetKeyState("Shift")
      Send("{U+2C2B}") ;Ⱛ
   else
      Send("{U+2C5B}") ;ⱛ
}
sc07B & n:: ;-> fita
{
   if GetKeyState("Shift")
      Send("{U+2C2A}") ;Ⱚ
   else
      Send("{U+2C5A}") ;ⱚ
}
sc07B & m:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & sc033:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & sc034:: ;-> iotified big yus
{
   if GetKeyState("Shift")
      Send("{U+2C29}") ;Ⱙ
   else
      Send("{U+2C59}") ;ⱙ
}
sc07B & sc035:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & sc073:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}