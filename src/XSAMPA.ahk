;row0
1::
 Send, {U+0268} ;ɨ
 return
+1::
 Send, {U+} ;
 return
2::
 Send, {U+00F8} ;ø
 return
+2::
 Send, {U+} ;
 return
3::
 Send, {U+025C} ;ɜ
 return
+3::
 Send, {U+} ;
 return
4::
 Send, {U+027E} ;ɾ
 return
+4::
 Send, {U+} ;
 return
5::
 Send, {U+026B} ;ɫ
 return
+5::
 Send, {U+} ;
 return
6::
 Send, {U+0250} ;ɐ
 return
+6::
 Send, {U+0276} ;ɶ
 return
7::
 Send, {U+0264} ;ɤ
 return
+7::
 Send, {U+02B2} ;ʲ
 return
8::
 Send, {U+0275} ;ɵ
 return
+8::
 Send, {U+} ;
 return
9::
 Send, {U+0153} ;œ
 return
+9::
 Send, {U+} ;
 return

;row 1
sc07B & 1:: ;-> lengthened & nasalized
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
sc07B & 2:: ;-> кавычки-left
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
sc07B & 3:: ;-> кавычки-right
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
sc07B & 4:: ;-> 
 if GetKeyState("Shift") {
    Send, {U+} ; 
    return
 }
 else
 Send, {U+} ; 
 return
sc07B & 5:: ;-> 
 if GetKeyState("Shift") {
    Send, {U+} ; 
    return
 }
 else
 Send, {U+} ; 
 return
sc07B & 6:: ;-> 
 if GetKeyState("Shift") {
    Send, {U+} ; 
    return
 }
 else
 Send, {U+} ; 
 return
sc07B & 7:: ;-> palatalized & velarized
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
sc07B & 8:: ;-> prime & apostrophe
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
sc07B & 9:: ;-> 
 if GetKeyState("Shift") {
    Send, {U+} ; 
    return
 }
 else
 Send, {U+} ; 
 return
sc07B & 0:: ;-> dotted circle & affricate
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+0361} ;affricate
 return
sc07B & sc00D:: ; ^
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
    }
 else
 Send, {U+} ;
 return
sc07B & sc07D:: ; \
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
    }
 else
 Send, {U+} ;
 return

;row 2
+q::
 Send, {U+0252} ;
 return
sc07B & q:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
+w::
 Send, {U+028D} ;
 return
sc07B & w:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
+e::
 Send, {U+025B} ;
 return
sc07B & e:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
+r::
 Send, {U+0281} ;
 return
sc07B & r:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
+t::
 Send, {U+03B8} ;
 return
sc07B & t:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
+y::
 Send, {U+028F} ;
 return
sc07B & y:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
+u::
 Send, {U+028A} ;
 return
sc07B & u:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
+i::
 Send, {U+026A} ;
 return
sc07B & i:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
+o::
 Send, {U+0254} ;
 return
sc07B & o:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
+p::
 Send, {U+028B} ;
 return
sc07B & p:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
sc01A:: ; @
 Send, {U+0259} ;
 return
Shift & sc01A:: ; @
 Send, {U+02DE} ; ˞
 return
sc07B & sc01A:: ;@
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
Shift & sc01B:: ; [
 Send, {U+00E6} ; æ
 return
sc07B & sc01B:: ;[
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return

;row 3
+a::
 Send, {U+0251} ;ɑ
 return
sc07B & a:: ;
 if GetKeyState("Shift") {
    Send, {U+00C1} ;
    return
 }
 else
 Send, {U+} ;
 return
+s::
 Send, {U+0283} ;ʃ
 return
sc07B & s:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
+d::
 Send, {U+00F0} ;ð
 return
sc07B & d:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
+f::
 Send, {U+0271} ;ɱ
 return
sc07B & f:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
+g::
 Send, {U+0263} ;ɣ
 return
sc07B & g:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
+h::
 Send, {U+0265} ;ɥ
 return
sc07B & h:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
+j::
 Send, {U+0272} ;ɲ
 return
sc07B & j:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
+k::
 Send, {U+026C} ;ɬ
 return
sc07B & k:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
+l::
 Send, {U+028E} ;ʎ
 return
sc07B & l:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
sc027:: ; semicolon
 Send, {U+} ;
 return
sc07B & sc027:: ; semicolon
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
    }
 else
 Send, {U+} ;
 return
sc028:: ; colon
 Send, {U+02D0} ;
 return
sc07B & sc028:: ; colon
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
    }
 else
 Send, {U+} ;
 return
+sc02B:: ; shift + ]
 Send, {U+0289} ;ʉ
 return
sc07B & sc02B:: ; ]}
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
    }
 else
 Send, {U+} ;
 return

;row 4
+z::
 Send, {U+0292} ;
 return
sc07B & z:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
+x::
 Send, {U+03C7} ;
 return
sc07B & x:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
+c::
 Send, {U+00E7} ;
 return
sc07B & c:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
+v::
 Send, {U+028C} ;
 return
sc07B & v:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
+b::
 Send, {U+03B2} ;
 return
sc07B & b:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
+n::
 Send, {U+014B} ;
 return
sc07B & n:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
+m::
 Send, {U+026F} ;
 return
sc07B & m:: ;
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
 return
sc033:: ; comma
 Send, {U+} ;
 return
sc034:: ; period
 Send, {U+} ;
 return
sc07B & sc033:: ; comma
 if GetKeyState("Shift") {
   Send, {U+} ;
 }
 else
 Send, {U+} ;
 return
sc07B & sc034:: ; period
 if GetKeyState("Shift") {
   Send, {U+} ;
 }
 else
 Send, {U+} ;
 return
+sc035:: ;?
 Send, {U+0294} ;
 return
sc07B & sc035:: ; ?
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
    }
 else
 Send, {U+} ;
 return
