; main keyboard
;; small letters
q::
 Send, {U+0439} ;й
 return
w::
 Send, {U+0446} ;ц
 return
e::
 Send, {U+0443} ;у
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
 Send, {U+044B} ;ы
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
 Send, {U+044D} ;э
 return
sc02B:: ;]
 Send, {U+0454} ;є
 return
z::
 Send, {U+044F} ;я
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
 Send, {U+0458} ;ј
 return
Space::
 Send, {U+0020} ;space
 return

;; capital letters
+q::
 Send, {U+0419} ;Й
 return
+w::
 Send, {U+0426} ;Ц
 return
+e::
 Send, {U+0423} ;У
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
 Send, {U+042B} ;Ы
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
 Send, {U+042D} ;Э
 return
+sc02B:: ;]
 Send, {U+0404} ;Є
 return
+z::
 Send, {U+042F} ;Я
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
 Send, {U+0408} ;Ј
 return


; secondary keyboard
sc07B & q:: ;-> I
 if GetKeyState("Shift") {
    Send, {U+0406} ;І
    return
    }
 else
 Send, {U+0456} ;і
 return
sc07B & w:: ;-> Yi
 if GetKeyState("Shift") {
    Send, {U+0407} ;Ї	
    return
 }
 else
 Send, {U+0457} ;ї
 return
sc07B & e:: ;-> Short U
 if GetKeyState("Shift") {
    Send, {U+040E} ;Ў
    return
    }
 else
 Send, {U+045E} ;ў
 return
sc07B & r:: ;-> Kje
 if GetKeyState("Shift") {
    Send, {U+040C} ;Ќ
    return
 }
 else
 Send, {U+045C} ;ќ
 return
sc07B & t:: ;-> Yo
 if GetKeyState("Shift") {
    Send, {U+0401} ;Ё
    return
    }
 else
 Send, {U+0451} ;ё
 return
sc07B & y:: ;-> Nje
 if GetKeyState("Shift") {
    Send, {U+040A} ;Њ
    return
    }
 else
 Send, {U+045A} ;њ
 return
sc07B & u:: ;-> Gje
 if GetKeyState("Shift") {
    Send, {U+0403} ;Ѓ
    return
    }
 else
 Send, {U+0453} ;ѓ
 return
sc07B & i:: ;-> Ghe with upturn
 if GetKeyState("Shift") {
    Send, {U+0490} ;Ґ
    return
    }
 else
 Send, {U+0491} ;ґ
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
sc07B & g:: ;-> 
 if GetKeyState("Shift") {
    Send, {} ;
    return
 }
 else
 Send, {} ;
 return
sc07B & h:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
sc07B & j:: ;-> 
 if GetKeyState("Shift") {
    Send, {} ;
    return
 }
 else
 Send, {} ;
 return
sc07B & k:: ;-> Lje
 if GetKeyState("Shift") {
    Send, {U+0409} ;Љ
    return
 }
 else
 Send, {U+0459} ;љ
 return
sc07B & l:: ;-> Dje
 if GetKeyState("Shift") {
    Send, {U+0402} ;Ђ
    return
 }
 else
 Send, {U+0452} ;ђ
 return
sc07B & sc027:: ;-> Dzhe
 if GetKeyState("Shift") {
   Send, {U+040F} ;Џ
   return
 }
 else
 Send, {U+045F} ;џ
 return
sc07B & sc028:: ;-> Yat
 if GetKeyState("Shift") {
    Send, {U+0462} ;Ѣ
    return
 }
 else
 Send, {U+0463} ;ѣ
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
sc07B & x:: ;-> 
 if GetKeyState("Shift") {
    Send, {} ;
    return
 }
 else
 Send, {} ;
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
sc07B & b:: ;-> 
 if GetKeyState("Shift") {
    Send, {} ;
    return
 }
 else
 Send, {} ;
 return
sc07B & n:: ;-> Tje
 if GetKeyState("Shift") {
    Send, {U+040B} ;Ћ
    return
 }
 else
 Send, {U+045B} ;ћ
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
sc07B & sc034:: ;-> 
 if GetKeyState("Shift") {
    Send, {} ;
    return
 }
 else
 Send, {} ;
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
sc07B & 2:: ;-> кавычки-left
 if GetKeyState("Shift") {
    Send, {U+201C} ; “ left double quote
    return
 }
 else
 Send, {U+00AB} ; «
 return
sc07B & 3:: ;-> кавычки-right
 if GetKeyState("Shift") {
    Send, {U+201D} ; ” right double quote
    return
 }
 else
 Send, {U+00BB} ; »
 return
sc07B & 7:: ;-> prime & apostrophe
 if GetKeyState("Shift") {
    Send, {U+02B9} ; ʹ prime
    return
 }
 else
 Send, {U+2019} ; ’ apostrophe
 return