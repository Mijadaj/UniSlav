; main keyboard
;; small letters
q::
 Send, {U+0456} ;і
 return
w::
 Send, {U+0446} ;ц
 return
e::
 Send, {U+0479} ;ѹ
 return
r::
 Send, {U+043A} ;к
 return
t::
 Send, {U+0435} ;е
 return
y::
 Send, {U+043D} ;н
 return
u::
 Send, {U+0433} ;г
 return
i::
 Send, {U+0448} ;ш
 return
o::
 Send, {U+0449} ;щ
 return
p::
 Send, {U+0437} ;з
 return
sc01A:: ;@ mark
 Send, {U+0445} ;х
 return
sc01B:: ;[
 Send, {U+044A} ;ъ
 return
a::
 Send, {U+0444} ;ф
 return
s::
 Send, {U+A651} ;ꙑ
 return
d::
 Send, {U+0432} ;в
 return
f::
 Send, {U+0430} ;а
 return
g::
 Send, {U+043F} ;п
 return
h::
 Send, {U+0440} ;р
 return
j::
 Send, {U+043E} ;о
 return
k::
 Send, {U+043B} ;л
 return
l::
 Send, {U+0434} ;д
 return
sc027:: ;semicolon
 Send, {U+0436} ;ж
 return
sc028:: ;colon
 Send, {U+0465} ;ѥ
 return
sc02B:: ;]
 Send, {U+0463} ;ѣ
 return
z::
 Send, {U+A657} ;ꙗ
 return
x::
 Send, {U+0447} ;ч
 return
c::
 Send, {U+0441} ;с
 return
v::
 Send, {U+043C} ;м
 return
b::
 Send, {U+0438} ;и
 return
n::
 Send, {U+0442} ;т
 return
m::
 Send, {U+044C} ;ь
 return
sc033:: ;comma
 Send, {U+0431} ;б
 return
sc034:: ;period
 Send, {U+044E} ;ю
 return
sc035:: ;slash
 Send, {U+002C} ;comma
 return
sc073:: ;backslash
 Send, {U+0483} ;titlo
 return
Space::
 Send, {U+0020} ;space
 return

;; capital letters
+q::
 Send, {U+0406} ;І
 return
+w::
 Send, {U+0426} ;Ц
 return
+e::
 Send, {U+0478} ;Ѹ
 return
+r::
 Send, {U+041A} ;К
 return
+t::
 Send, {U+0415} ;Е
 return
+y::
 Send, {U+041D} ;Н
 return
+u::
 Send, {U+0413} ;Г
 return
+i::
 Send, {U+0428} ;Ш
 return
+o::
 Send, {U+0429} ;Щ
 return
+p::
 Send, {U+0417} ;З
 return
+sc01A:: ;@ mark
 Send, {U+0425} ;Х
 return
+sc01B:: ;[
 Send, {U+042A} ;Ъ
 return
+a::
 Send, {U+0424} ;Ф
 return
+s::
 Send, {U+A650} ;Ꙑ
 return
+d::
 Send, {U+0412} ;В
 return
+f::
 Send, {U+0410} ;А
 return
+g::
 Send, {U+041F} ;П
 return
+h::
 Send, {U+0420} ;Р
 return
+j::
 Send, {U+041E} ;О
 return
+k::
 Send, {U+041B} ;Л
 return
+l::
 Send, {U+0414} ;Д
 return
+sc027:: ;semicolon
 Send, {U+0416} ;Ж
 return
+sc028:: ;colon
 Send, {U+0464} ;Ѥ
 return
+sc02B:: ;]
 Send, {U+0462} ;Ѣ
 return
+z::
 Send, {U+A656} ;Ꙗ
 return
+x::
 Send, {U+0427} ;Ч
 return
+c::
 Send, {U+0421} ;С
 return
+v::
 Send, {U+041C} ;М
 return
+b::
 Send, {U+0418} ;И
 return
+n::
 Send, {U+0422} ;Т
 return
+m::
 Send, {U+042C} ;Ь
 return
+sc033:: ;comma
 Send, {U+0411} ;Б
 return
+sc034:: ;period
 Send, {U+042E} ;Ю
 return
+sc035:: ;slash
 Send, {U+002E} ;period
 return
+sc073:: ;backslash
 Send, {U+0484} ;kamora
 return


; secondary keyboard
sc07B & q:: ;-> iota
 if GetKeyState("Shift") {
    Send, {U+A646} ;Ꙇ
    return
 }
 else
 Send, {U+A647} ;ꙇ
 return
sc07B & w:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
sc07B & e:: ;-> uk(vertical)
 if GetKeyState("Shift") {
    Send, {U+A64A} ;Ꙋ
    return
    }
 else
 Send, {U+A64B} ;ꙋ
 return
sc07B & r:: ;-> ksi
 if GetKeyState("Shift") {
    Send, {U+046E} ;Ѯ
    return
 }
 else
 Send, {U+046F} ;ѯ
 return
sc07B & t:: ;-> little yus
 if GetKeyState("Shift") {
    Send, {U+0466} ;Ѧ
    return
 }
 else
 Send, {U+0467} ;ѧ
 return
sc07B & y:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
sc07B & u:: ;-> tshe
 if GetKeyState("Shift") {
    Send, {U+040B} ;Ћ
    return
    }
 else
 Send, {U+045B} ;ћ
 return
sc07B & i:: ;-> djerv
 if GetKeyState("Shift") {
    Send, {U+A648} ;Ꙉ
    return
    }
 else
 Send, {U+A649} ;ꙉ
 return
sc07B & o:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
sc07B & p:: ;-> dze
 if GetKeyState("Shift") {
    Send, {U+0405} ;Ѕ
    return
 }
 else
 Send, {U+0455} ;ѕ
 return
sc07B & sc01A:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
sc07B & sc01B:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
sc07B & a:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
sc07B & s:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
sc07B & d:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
sc07B & f::  ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
sc07B & g:: ;-> psi
 if GetKeyState("Shift") {
    Send, {U+0470} ;Ѱ
    return
 }
 else
 Send, {U+0471} ;ѱ
 return
sc07B & h:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
sc07B & j:: ;-> big yus
 if GetKeyState("Shift") {
    Send, {U+046A} ;Ѫ
    return
 }
 else
 Send, {U+046B} ;ѫ
 return
sc07B & k:: ;-> omega
 if GetKeyState("Shift") {
    Send, {U+0460} ;Ѡ
    return
 }
 else
 Send, {U+0461} ;ѡ
 return
sc07B & l:: ;-> ot
 if GetKeyState("Shift") {
    Send, {U+047E} ;Ѿ
    return
 }
 else
 Send, {U+047F} ;ѿ
 return
sc07B & sc027:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
sc07B & sc028:: ;-> iotified little yus
 if GetKeyState("Shift") {
   Send, {U+0468} ;Ѩ
   return
 }
 else
 Send, {U+0469} ;ѩ
 return
sc07B & sc02B:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
sc07B & z:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
sc07B & x:: ;-> koppa
 if GetKeyState("Shift") {
    Send, {U+0480} ;Ҁ
    return
 }
 else
 Send, {U+0481} ;ҁ
 return
sc07B & c:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
sc07B & v:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
sc07B & b:: ;-> izhitsa
 if GetKeyState("Shift") {
    Send, {U+0474} ;Ѵ
    return
 }
 else
 Send, {U+0475} ;ѵ
 return
sc07B & n:: ;-> fita
 if GetKeyState("Shift") {
    Send, {U+0472} ;Ѳ
    return
 }
 else
 Send, {U+0473} ;ѳ
 return
sc07B & m:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
sc07B & sc033:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
sc07B & sc034:: ;-> iotified big yus
 if GetKeyState("Shift") {
    Send, {U+046C} ;Ѭ
    return
 }
 else
 Send, {U+046D} ;ѭ
 return
sc07B & sc035:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
sc07B & sc073:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return