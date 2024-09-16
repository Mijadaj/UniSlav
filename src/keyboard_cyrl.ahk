;row 1
sc07B & 1:: ;->
 if GetKeyState("Shift") {
    Send, {U+} ;
    return
 }
 else
 Send, {U+} ;
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
sc07B & 7:: ;-> prime & apostrophe
 if GetKeyState("Shift") {
    Send, {U+02B9} ; ʹ prime
    return
 }
 else
 Send, {U+2019} ; ’ right single ęuotation
 return
sc07B & 8:: ;->
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
sc07B & 0:: ;->
 if GetKeyState("Shift") {
    Send, {U+2205} ;
    return
 }
 else
 Send, {U+25CC} ;◌
 return
sc00C:: ; - =
 Send, {U+2011} ; non-breaking hyphen
 return
sc07B & sc00C:: ;-> em dash
 if GetKeyState("Shift") {
    Send, {U+2013} ; en dash
    return
 }
 else
 Send, {U+2014} ; em dash
 return
sc00D:: ; ^
 Send, {U+0301} ; accute accent
 return
sc07B & sc00D:: ; ^
 if GetKeyState("Shift") {
    Send, {U+007E} ; ~
    return
 }
 else
 Send, {U+005E} ; ^
 return

;row 2
q::
 Send, {U+0439} ;й
 return
+q::
 Send, {U+0419} ;Й
 return
sc07B & q:: ;-> I
 if GetKeyState("Shift") {
    Send, {U+0406} ;І
    return
    }
 else
 Send, {U+0456} ;і
 return
w::
 Send, {U+0446} ;ц
 return
+w::
 Send, {U+0426} ;Ц
 return
sc07B & w:: ;-> Yi
 if GetKeyState("Shift") {
    Send, {U+0407} ;Ї	
    return
 }
 else
 Send, {U+0457} ;ї
 return
e::
 Send, {U+0443} ;у
 return
+e::
 Send, {U+0423} ;У
 return
sc07B & e:: ;-> Short U
 if GetKeyState("Shift") {
    Send, {U+040E} ;Ў
    return
    }
 else
 Send, {U+045E} ;ў
 return
r::
 Send, {U+043A} ;к
 return
+r::
 Send, {U+041A} ;К
 return
sc07B & r:: ;-> Kje
 if GetKeyState("Shift") {
    Send, {U+040C} ;Ќ
    return
 }
 else
 Send, {U+045C} ;ќ
 return
t::
 Send, {U+0435} ;е
 return
+t::
 Send, {U+0415} ;Е
 return
sc07B & t:: ;-> Yo
 if GetKeyState("Shift") {
    Send, {U+0401} ;Ё
    return
    }
 else
 Send, {U+0451} ;ё
 return
y::
 Send, {U+043D} ;н
 return
+y::
 Send, {U+041D} ;Н
 return
sc07B & y:: ;-> Nje
 if GetKeyState("Shift") {
    Send, {U+040A} ;Њ
    return
    }
 else
 Send, {U+045A} ;њ
 return
u::
 Send, {U+0433} ;г
 return
+u::
 Send, {U+0413} ;Г
 return
sc07B & u:: ;-> Gje
 if GetKeyState("Shift") {
    Send, {U+0403} ;Ѓ
    return
    }
 else
 Send, {U+0453} ;ѓ
 return
i::
 Send, {U+0448} ;ш
 return
+i::
 Send, {U+0428} ;Ш
 return
sc07B & i:: ;-> Ghe with upturn
 if GetKeyState("Shift") {
    Send, {U+0490} ;Ґ
    return
    }
 else
 Send, {U+0491} ;ґ
 return
o::
 Send, {U+0449} ;щ
 return
+o::
 Send, {U+0429} ;Щ
 return
sc07B & o:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
p::
 Send, {U+0437} ;з
 return
+p::
 Send, {U+0417} ;З
 return
sc07B & p:: ;-> dze
 if GetKeyState("Shift") {
    Send, {U+0405} ;Ѕ
    return
 }
 else
 Send, {U+0455} ;ѕ
 return
sc01A:: ;@ mark
 Send, {U+0445} ;х
 return
+sc01A:: ;@ mark
 Send, {U+0425} ;Х
 return
sc07B & sc01A:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
sc01B:: ;[
 Send, {U+044A} ;ъ
 return
+sc01B:: ;[
 Send, {U+042A} ;Ъ
 return
sc07B & sc01B:: ;-> left bracket
 if GetKeyState("Shift") {
    Send, {U+007B} ; {
    return
    }
 else
 Send, {U+005B} ; [
 return

;row 2
a::
 Send, {U+0444} ;ф
 return
+a::
 Send, {U+0424} ;Ф
 return
sc07B & a:: ;-> {}
 if GetKeyState("Ctrl") {
    Send, {U+0472} ;Ѳ
    return
    }
 else
 Send, {U+0473} ;ѳ
 return
s::
 Send, {U+044B} ;ы
 return
+s::
 Send, {U+042B} ;Ы
 return
sc07B & s:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
d::
 Send, {U+0432} ;в
 return
+d::
 Send, {U+0412} ;В
 return
sc07B & d:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
f::
 Send, {U+0430} ;а
 return
+f::
 Send, {U+0410} ;А
 return
sc07B & f::  ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
g::
 Send, {U+043F} ;п
 return
+g::
 Send, {U+041F} ;П
 return
sc07B & g::
 if GetKeyState("Shift") {
    Send, {U+0400} ;Ѐ
    return
 }
 else
 Send, {U+0450} ;ѐ
 return
h::
 Send, {U+0440} ;р
 return
+h::
 Send, {U+0420} ;Р
 return
sc07B & h:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
j::
 Send, {U+043E} ;о
 return
+j::
 Send, {U+041E} ;О
 return
sc07B & j:: ;-> 
 if GetKeyState("Shift") {
    Send, {} ;
    return
 }
 else
 Send, {} ;
 return
k::
 Send, {U+043B} ;л
 return
+k::
 Send, {U+041B} ;Л
 return
sc07B & k:: ;-> Lje
 if GetKeyState("Shift") {
    Send, {U+0409} ;Љ
    return
 }
 else
 Send, {U+0459} ;љ
 return
l::
 Send, {U+0434} ;д
 return
+l::
 Send, {U+0414} ;Д
 return
sc07B & l:: ;-> Dje
 if GetKeyState("Shift") {
    Send, {U+0402} ;Ђ
    return
 }
 else
 Send, {U+0452} ;ђ
 return
sc027:: ;semicolon
 Send, {U+0436} ;ж
 return
+sc027:: ;semicolon
 Send, {U+0416} ;Ж
 return
sc07B & sc027:: ;semicolon
 if GetKeyState("Shift") {
   Send, {U+040F} ;Џ
   return
 }
 else
 Send, {U+045F} ;џ
 return
sc028:: ;colon
 Send, {U+044D} ;э
 return
+sc028:: ;colon
 Send, {U+042D} ;Э
 return
sc07B & sc028:: ;colon
 if GetKeyState("Shift") {
    Send, {U+0462} ;Ѣ
    return
 }
 else
 Send, {U+0463} ;ѣ
 return
sc02B:: ;right bracket
 Send, {U+0454} ;є
 return
+sc02B:: ;right bracket
 Send, {U+0404} ;Є
 return
sc07B & sc02B:: ;right bracket
 if GetKeyState("Shift") {
    Send, {U+007D} ; }
    return
    }
 else
 Send, {U+005D} ; ]
 return

;row 3
z::
 Send, {U+044F} ;я
 return
+z::
 Send, {U+042F} ;Я
 return
sc07B & z:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
x::
 Send, {U+0447} ;ч
 return
+x::
 Send, {U+0427} ;Ч
 return
sc07B & x:: ;-> 
 if GetKeyState("Shift") {
    Send, {} ;
    return
 }
 else
 Send, {} ;
 return
c::
 Send, {U+0441} ;с
 return
+c::
 Send, {U+0421} ;С
 return
sc07B & c:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
v::
 Send, {U+043C} ;м
 return
+v::
 Send, {U+041C} ;М
 return
sc07B & v:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
b::
 Send, {U+0438} ;и
 return
+b::
 Send, {U+0418} ;И
 return
sc07B & b:: ;-> 
 if GetKeyState("Shift") {
    Send, {U+040D} ;Ѝ
    return
 }
 else
 Send, {U+045D} ;ѝ
 return
n::
 Send, {U+0442} ;т
 return
+n::
 Send, {U+0422} ;Т
 return
sc07B & n:: ;-> Tje
 if GetKeyState("Shift") {
    Send, {U+040B} ;Ћ
    return
 }
 else
 Send, {U+045B} ;ћ
 return
m::
 Send, {U+044C} ;ь
 return
+m::
 Send, {U+042C} ;Ь
 return
sc07B & m:: ;-> {}
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {} ;
 return
sc033:: ;comma
 Send, {U+0431} ;б
 return
+sc033:: ;comma
 Send, {U+0411} ;Б
 return
sc07B & sc033:: ; comma
 if GetKeyState("Shift") {
    Send, {U+003B} ;semicolon
    return
    }
 else
 Send, {U+003C} ; <
 return
sc034:: ;period
 Send, {U+044E} ;ю
 return
+sc034:: ;period
 Send, {U+042E} ;Ю
 return
sc07B & sc034:: ;period
 if GetKeyState("Shift") {
    Send, {U+003A} ;colon
    return
 }
 else
 Send, {U+003E} ; >
 return
sc035:: ;slash
 Send, {U+002C} ;comma
 return
+sc035:: ;slash
 Send, {U+002E} ;period
 return
sc07B & sc035:: ;slash -> {}
 if GetKeyState("Shift") {
    Send, {U+003F} ; question mark
    return
    }
 else
 Send, {U+002F} ; slash
 return
sc073:: ;backslash
 Send, {U+0458} ;ј
 return
+sc073:: ;backslash
 Send, {U+0408} ;Ј
 return
sc07B & sc073:: ;back slash -> {}
 if GetKeyState("Shift") {
    Send, {U+005F} ; low line
    return
    }
 else
 Send, {U+005C} ; back slash
 return

;row 5
Space::
 Send, {U+0020} ;space
 return

;phonetic extensions/superscript
sc00D & f:: ;a
 if GetKeyState("Shift") {
    Send, {U+1E030} ; cyrilliс
    return
 }
 else
 Send, {U+1D43} ; latin a
 return
sc00D & t:: ;e
 if GetKeyState("Shift") {
    Send, {U+1E035} ; cyrillic 
    return
 }
 else
 Send, {U+1D49} ; latin e
 return
sc00D & b:: ;i
 if GetKeyState("Shift") {
    Send, {U+1E04C} ; cyrillic 
    return
 }
 else
 Send, {U+2071} ; latin i
 return
sc00D & j:: ;o
 if GetKeyState("Shift") {
    Send, {U+1E03C} ; cyrillic 
    return
 }
 else
 Send, {U+1D52} ; latin o
 return
sc00D & s:: ;y
 if GetKeyState("Shift") {
    Send, {U+1E047} ; cyrillic ы
    return
 }
 else
 Send, {U+} ; latin 
 return

sc00D & e:: ;u
 if GetKeyState("Shift") {
    Send, {U+1E041} ; cyrillic у
    return
 }
 else
 Send, {U+02B8} ; latin y
 return