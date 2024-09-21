; Early Cyrillic keyboard (Church Slavonic)
#SingleInstance Force
;; small letters
q::Send("{U+0456}") ;і
+q::Send("{U+0406}") ;І
w::Send("{U+0446}") ;ц
+w::Send("{U+0426}") ;Ц
e::Send("{U+0479}") ;ѹ
+e::Send("{U+0478}") ;Ѹ
r::Send("{U+043A}") ;к
+r::Send("{U+041A}") ;К
t::Send("{U+0435}") ;е
+t::Send("{U+0415}") ;Е
y::Send("{U+043D}") ;н
+y::Send("{U+041D}") ;Н
u::Send("{U+0433}") ;г
+u::Send("{U+0413}") ;Г
i::Send("{U+0448}") ;ш
+i::Send("{U+0428}") ;Ш
o::Send("{U+0449}") ;щ
+o::Send("{U+0429}") ;Щ
p::Send("{U+0437}") ;з
+p::Send("{U+0417}") ;З
sc01A::Send("{U+0445}") ; @: х
+sc01A::Send("{U+0425}") ;Х
sc01B::Send("{U+044A}") ; [: ъ
+sc01B::Send("{U+042A}") ; Ъ
a::Send("{U+0444}") ;ф
+a::Send("{U+0424}") ;Ф
s::Send("{U+A651}") ;ꙑ
+s::Send("{U+A650}") ;Ꙑ
d::Send("{U+0432}") ;в
+d::Send("{U+0412}") ;В
f::Send("{U+0430}") ;а
+f::Send("{U+0410}") ;А
g::Send("{U+043F}") ;п
+g::Send("{U+041F}") ;П
h::Send("{U+0440}") ;р
+h::Send("{U+0420}") ;Р
j::Send("{U+043E}") ;о
+j::Send("{U+041E}") ;О
k::Send("{U+043B}") ;л
+k::Send("{U+041B}") ;Л
l::Send("{U+0434}") ;д
+l::Send("{U+0414}") ;Д
sc027::Send("{U+0436}") ;semicolon: ж
+sc027::Send("{U+0416}") ;Ж
sc028::Send("{U+0465}") ;colon: ѥ
+sc028::Send("{U+0464}") ;Ѥ
sc02B::Send("{U+0463}") ;]: ѣ
+sc02B::Send("{U+0462}") ;Ѣ
z::Send("{U+A657}") ;ꙗ
+z::Send("{U+A656}") ;Ꙗ
x::Send("{U+0447}") ;ч
+x::Send("{U+0427}") ;Ч
c::Send("{U+0441}") ;с
+c::Send("{U+0421}") ;С
v::Send("{U+043C}") ;м
+v::Send("{U+041C}") ;М
b::Send("{U+0438}") ;и
+b::Send("{U+0418}") ;И
n::Send("{U+0442}") ;т
+n::Send("{U+0422}") ;Т
m::Send("{U+044C}") ;ь
+m::Send("{U+042C}") ;Ь
sc033::Send("{U+0431}") ;comma: б
+sc033::Send("{U+0411}") ;Б ;comma
sc034::Send("{U+044E}") ;period: ю
+sc034::Send("{U+042E}") ;Ю ;period
sc035::Send("{U+002C}") ;slash: comma
+sc035::Send("{U+002E}") ;period ;slash
sc073::Send("{U+0483}") ;backslash: titlo
+sc073::Send("{U+0484}") ;soft sign ;backslash
Space::Send("{U+0020}") ;space

;; capital letters





































; secondary keyboard
sc07B & q:: ;-> iota
{
   if GetKeyState("Shift")
      Send("{U+A646}") ;Ꙇ
   else
      Send("{U+A647}") ;ꙇ
}
sc07B & w:: ;-> uk(alternative)
{
   if GetKeyState("Shift")
      Send("{U+0443}") ;у
   else
      Send("{U+1C82}{U+0443}") ;ᲂу
}
sc07B & e:: ;-> uk(vertical)
{
   if GetKeyState("Shift")
      Send("{U+A64A}") ;Ꙋ
   else
      Send("{U+A64B}") ;ꙋ
}
sc07B & r:: ;-> ksi
{
   if GetKeyState("Shift")
      Send("{U+046E}") ;Ѯ
   else
      Send("{U+046F}") ;ѯ
}
sc07B & t:: ;-> little yus
{
   if GetKeyState("Shift")
      Send("{U+0466}") ;Ѧ
   else
      Send("{U+0467}") ;ѧ
}
sc07B & y:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{U+A658}") ;Ꙙ
   else
      Send("{U+A659}") ;ꙙ
}
sc07B & u:: ;-> tshe
{
   if GetKeyState("Shift")
      Send("{U+040B}") ;Ћ
   else
      Send("{U+045B}") ;ћ
}
sc07B & i:: ;-> djerv
{
   if GetKeyState("Shift")
      Send("{U+A648}") ;Ꙉ
   else
      Send("{U+A649}") ;ꙉ
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
      Send("{U+0405}") ;Ѕ
   else
      Send("{U+0455}") ;ѕ
}
sc07B & sc01A:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{U+A640}") ;Ꙁ
   else
      Send("{U+A641}") ;ꙁ
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
sc07B & g:: ;-> psi
{
   if GetKeyState("Shift")
      Send("{U+0470}") ;Ѱ
   else
      Send("{U+0471}") ;ѱ
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
      Send("{U+046A}") ;Ѫ
   else
      Send("{U+046B}") ;ѫ
}
sc07B & k:: ;-> omega
{
   if GetKeyState("Shift")
      Send("{U+0460}") ;Ѡ
   else
      Send("{U+0461}") ;ѡ
}
sc07B & l:: ;-> ot
{
   if GetKeyState("Shift")
      Send("{U+047E}") ;Ѿ
   else
      Send("{U+047F}") ;ѿ
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
      Send("{U+0468}") ;Ѩ
   else
      Send("{U+0469}") ;ѩ
}
sc07B & sc02B:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{U+A65C}") ;Ꙝ
   else
      Send("{U+A65D}") ;ꙝ
}
sc07B & z:: ;-> {}
{
   if GetKeyState("Shift")
      Send("{}") ;
   else
      Send("{}") ;
}
sc07B & x:: ;-> koppa
{
   if GetKeyState("Shift")
      Send("{U+0480}") ;Ҁ
   else
      Send("{U+0481}") ;ҁ
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
      Send("{U+0474}") ;Ѵ
   else
      Send("{U+0475}") ;ѵ
}
sc07B & n:: ;-> fita
{
   if GetKeyState("Shift")
      Send("{U+0472}") ;Ѳ
   else
      Send("{U+0473}") ;ѳ
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
      Send("{U+046C}") ;Ѭ
   else
      Send("{U+046D}") ;ѭ
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