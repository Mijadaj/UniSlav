; main keyboard
;; small letters
q::
 Send {U+2C39} ;і
 return
w::
 Send {U+2C4C} ;ⱌ
 return
e::
 Send {U+2C46} ;ⱆ
 return
r::
 Send {U+2C3D} ;ⰽ
 return
t::
 Send {U+2C35} ;ⰵ
 return
y::
 Send {U+2C40} ;ⱀ
 return
u::
 Send {U+2C33} ;ⰳ
 return
i::
 Send {U+2C4E} ;ⱎ
 return
o::
 Send {U+2C4B} ;ⱋ
 return
p::
 Send {U+2C38} ;ⰸ
 return
sc01A:: ;@ mark
 Send {U+2C48} ;ⱈ
 return
sc01B:: ;[
 Send {U+2C4F} ;ⱏ
 return
a::
 Send {U+2C47} ;ⱇ
 return
s::
 Send {U+2C4F}{U+2C39} ;ⱏⰹ
 return
d::
 Send {U+2C32} ;ⰲ
 return
f::
 Send {U+2C30} ;ⰰ
 return
g::
 Send {U+2C42} ;ⱂ
 return
h::
 Send {U+2C43} ;ⱃ
 return
j::
 Send {U+2C41} ;ⱁ
 return
k::
 Send {U+2C3E} ;ⰾ
 return
l::
 Send {U+2C34} ;ⰴ
 return
sc027:: ;semicolon
 Send {U+2C36} ;ⰶ
 return
sc028:: ;colon
 Send {} ;
 return
sc02B:: ;]
 Send {U+2C51} ;ⱑ
 return
z::
 Send {} ;
 return
x::
 Send {U+2C4D} ;ⱍ
 return
c::
 Send {U+2C44} ;ⱄ
 return
v::
 Send {U+2C3F} ;ⰿ
 return
b::
 Send {U+2C3B} ;ⰻ
 return
n::
 Send {U+2C45} ;ⱅ
 return
m::
 Send {U+2C50} ;ⱐ
 return
sc033:: ;comma
 Send {U+2C31} ;ⰱ
 return
sc034:: ;period
 Send {U+2C53} ;ⱓ
 return
sc035:: ;slash
 Send {U+002C} ;comma
 return
sc073:: ;backslash
 Send {U+002E} ;period
 return
Space::
 Send, {U+0020} ;space
 return

;; capital letters
+q::
 Send {U+2C09} ;Ⰹ
 return
+w::
 Send {U+2C1C} ;Ⱌ
 return
+e::
 Send {U+2C16} ;Ⱆ
 return
+r::
 Send {U+2C0D} ;Ⰽ
 return
+t::
 Send {U+2C05} ;Ⰵ
 return
+y::
 Send {U+2C10} ;Ⱀ
 return
+u::
 Send {U+2C03} ;Ⰳ
 return
+i::
 Send {U+2C1E} ;Ⱎ
 return
+o::
 Send {U+2C1B} ;Ⱋ
 return
+p::
 Send {U+2C08} ;Ⰸ
 return
+sc01A:: ;@ mark
 Send {U+2C18} ;Ⱈ
 return
+sc01B:: ;[
 Send {U+2C1F} ;Ⱏ
 return
+a::
 Send {U+2C17} ;Ⱇ
 return
+s::
 Send {U+2C1F}{U+2C09} ;ⰟⰉ
 return
+d::
 Send {U+2C02} ;Ⰲ
 return
+f::
 Send {U+2C00} ;Ⰰ
 return
+g::
 Send {U+2C12} ;Ⱂ
 return
+h::
 Send {U+2C13} ;Ⱃ
 return
+j::
 Send {U+2C11} ;Ⱁ
 return
+k::
 Send {U+2C0E} ;Ⰾ
 return
+l::
 Send {U+2C04} ;Ⰴ
 return
+sc027:: ;semicolon
 Send {U+2C06} ;Ⰶ
 return
+sc028:: ;colon
 Send {} ;
 return
+sc02B:: ;]
 Send {U+2C21} ;Ⱑ
 return
+z::
 Send {} ;
 return
+x::
 Send {U+2C1D} ;Ⱍ
 return
+c::
 Send {U+2C14} ;Ⱄ
 return
+v::
 Send {U+2C0F} ;Ⰿ
 return
+b::
 Send {U+2C0B} ;Ⰻ
 return
+n::
 Send {U+2C15} ;Ⱅ
 return
+m::
 Send {U+2C20} ;Ⱐ
 return
+sc033:: ;comma
 Send {U+2C01} ;Ⰱ
 return
+sc034:: ;period
 Send {U+2C23} ;Ⱓ
 return
+sc035:: ;slash
 Send {} ;comma
 return
+sc073:: ;backslash
 Send {} ;
 return

; secondary keyboard
sc07B & q:: ;-> iota
 if GetKeyState("Shift") {
    Send {U+2C0A} ;Ⰺ
    return
 }
 else
 Send {U+2C3A} ;ⰺ
 return
sc07B & w:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
    }
 else
 Send {} ;
 return
sc07B & e:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
    }
 else
 Send {} ;
 return
sc07B & r:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
 }
 else
 Send {} ;
 return
sc07B & t:: ;-> little yus
 if GetKeyState("Shift") {
    Send {U+2C24} ;Ⱔ
    return
 }
 else
 Send {U+2C54} ;ⱔ
 return
sc07B & y:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
    }
 else
 Send {} ;
 return
sc07B & u:: ;-> djerv
 if GetKeyState("Shift") {
    Send {U+2C0C} ;Ⰼ
    return
    }
 else
 Send {U+2C3C} ;ⰼ
 return
sc07B & i:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
    }
 else
 Send {} ;
 return
sc07B & o:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
    }
 else
 Send {} ;
 return
sc07B & p:: ;-> dze
 if GetKeyState("Shift") {
    Send {U+2C07} ;Ⰷ
    return
 }
 else
 Send {U+2C37} ;ⰷ
 return
sc07B & sc01A:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
    }
 else
 Send {} ;
 return
sc07B & sc01B:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
    }
 else
 Send {} ;
 return
sc07B & a:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
    }
 else
 Send {} ;
 return
sc07B & s:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
    }
 else
 Send {} ;
 return
sc07B & d:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
    }
 else
 Send {} ;
 return
sc07B & f::  ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
    }
 else
 Send {} ;
 return
sc07B & g:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
 }
 else
 Send {} ;
 return
sc07B & h:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
    }
 else
 Send {} ;
 return
sc07B & j:: ;-> big yus
 if GetKeyState("Shift") {
    Send {U+2C28} ;Ⱘ
    return
 }
 else
 Send {U+2C58} ;ⱘ
 return
sc07B & k:: ;-> omega
 if GetKeyState("Shift") {
    Send {U+2C19} ;Ⱉ
    return
 }
 else
 Send {U+2C49} ;ⱉ
 return
sc07B & l:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
 }
 else
 Send {} ;
 return
sc07B & sc027:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
    }
 else
 Send {} ;
 return
sc07B & sc028:: ;-> iotified little yus
 if GetKeyState("Shift") {
   Send {U+2C27} ;Ⱗ
   return
 }
 else
 Send {U+2C57} ;ⱗ
 return
sc07B & sc02B:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
    }
 else
 Send {} ;
 return
sc07B & z:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
    }
 else
 Send {} ;
 return
sc07B & x:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
 }
 else
 Send {} ;
 return
sc07B & c:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
    }
 else
 Send {} ;
 return
sc07B & v:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
    }
 else
 Send {} ;
 return
sc07B & b:: ;-> izhitsa
 if GetKeyState("Shift") {
    Send {U+2C2B} ;Ⱛ
    return
 }
 else
 Send {U+2C5B} ;ⱛ
 return
sc07B & n:: ;-> fita
 if GetKeyState("Shift") {
    Send {U+2C2A} ;Ⱚ
    return
 }
 else
 Send {U+2C5A} ;ⱚ
 return
sc07B & m:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
    }
 else
 Send {} ;
 return
sc07B & sc033:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
    }
 else
 Send {} ;
 return
sc07B & sc034:: ;-> iotified big yus
 if GetKeyState("Shift") {
    Send {U+2C29} ;Ⱙ
    return
 }
 else
 Send {U+2C59} ;ⱙ
 return
sc07B & sc035:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
    }
 else
 Send {} ;
 return
sc07B & sc073:: ;-> {}
 if GetKeyState("Shift") {
    Send {} ;
    return
    }
 else
 Send {} ;
 return