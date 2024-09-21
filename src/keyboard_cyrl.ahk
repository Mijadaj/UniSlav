;Slavic Cyrillic keyboard (Modern Slavic languages)
;row 1
sc07B & 1:: ;->
{
   if GetKeyState("Shift")
      Send {} ;
   else
      Send {} ;
}
sc07B & 2:: ;-> кавычки-left
{
   if GetKeyState("Shift")
      Send("{U+201C}") ; “ left double quote
   else
      Send("{U+00AB}") ; «
}
sc07B & 3:: ;-> кавычки-right
{
   if GetKeyState("Shift")
      Send("{U+201D}") ; ” right double quote
   else
      Send("{U+00BB}") ; »
}
sc07B & 4:: ;->
{
   if GetKeyState("Shift")
      Send {} ;
   else
      Send {} ;
}
sc07B & 5:: ;->
{
   if GetKeyState("Shift")
      Send {} ;
   else
      Send {} ;
}
sc07B & 6:: ;->
{
   if GetKeyState("Shift")
      Send {} ;
   else
      Send {} ;
}
sc07B & 7:: ;-> prime & apostrophe
{
   if GetKeyState("Shift")
      Send("{U+02B9}") ; ʹ prime
   else
      Send("{U+2019}") ; ’ right single ęuotation
}
sc07B & 8:: ;->
{
   if GetKeyState("Shift")
      Send {} ;
   else
      Send {} ;
}
sc07B & 9:: ;->
{
   if GetKeyState("Shift")
      Send {} ;
   else
      Send {} ;
}
sc07B & 0:: ;->
{
   if GetKeyState("Shift")
      Send("{U+2205}") ;
   else
      Send("{U+25CC}") ;◌
}
sc00C::Send("{U+2011}") ; non-breaking hyphen ; - =
sc07B & sc00C:: ;-> em dash
{
   if GetKeyState("Shift")
      Send("{U+2013}") ; en dash
   else
      Send("{U+2014}") ; em dash
}
sc00D::Send("{U+0301}") ; acute accen ; ^
sc07B & sc00D:: ; ^
{
   if GetKeyState("Shift")
      Send("{U+007E}") ; ~
   else
      Send("{U+005E}") ; ^
 
;row 2
}
q::Send("{U+0439}") ;
+q::Send("{U+0419}") ;
sc07B & q:: ;-> I
{
   if GetKeyState("Shift")
      Send("{U+0406}") ;І
   else
      Send("{U+0456}") ;і
}
w::Send("{U+0446}") ;
+w::Send("{U+0426}") ;
sc07B & w:: ;-> Yi
{
   if GetKeyState("Shift")
      Send("{U+0407}") ;Ї	
   else
      Send("{U+0457}") ;ї
}
e::Send("{U+0443}") ;
+e::Send("{U+0423}") ;
sc07B & e:: ;-> Short U
{
   if GetKeyState("Shift")
      Send("{U+040E}") ;Ў
   else
      Send("{U+045E}") ;ў
}
r::Send("{U+043A}") ;
+r::Send("{U+041A}") ;
sc07B & r:: ;-> Kje
{
   if GetKeyState("Shift")
      Send("{U+040C}") ;Ќ
   else
      Send("{U+045C}") ;ќ
}
t::Send("{U+0435}") ;
+t::Send("{U+0415}") ;
sc07B & t:: ;-> Yo
{
   if GetKeyState("Shift")
      Send("{U+0401}") ;Ё
   else
      Send("{U+0451}") ;ё
}
y::Send("{U+043D}") ;
+y::Send("{U+041D}") ;
sc07B & y:: ;-> Nje
{
   if GetKeyState("Shift")
      Send("{U+040A}") ;Њ
   else
      Send("{U+045A}") ;њ
}
u::Send("{U+0433}") ;
+u::Send("{U+0413}") ;
sc07B & u:: ;-> Gje
{
   if GetKeyState("Shift")
      Send("{U+0403}") ;Ѓ
   else
      Send("{U+0453}") ;ѓ
}
i::Send("{U+0448}") ;
+i::Send("{U+0428}") ;
sc07B & i:: ;-> Ghe with upturn
{
   if GetKeyState("Shift")
      Send("{U+0490}") ;Ґ
   else
      Send("{U+0491}") ;ґ
}
o::Send("{U+0449}") ;
+o::Send("{U+0429}") ;
sc07B & o:: ;-> {}
{
   if GetKeyState("Shift")
      Send {} ;
   else
      Send {} ;
}
p::Send("{U+0437}") ;
+p::Send("{U+0417}") ;
sc07B & p:: ;-> dze
{
   if GetKeyState("Shift")
      Send("{U+0405}") ;Ѕ
   else
      Send("{U+0455}") ;ѕ
}
sc01A::Send("{U+0445}") ; ;@ mark
+sc01A::Send("{U+0425}") ; ;@ mark
sc07B & sc01A:: ;-> {}
{
   if GetKeyState("Shift")
      Send {} ;
   else
      Send {} ;
}
sc01B::Send("{U+044A}") ; ;[
+sc01B::Send("{U+042A}") ; ;[
sc07B & sc01B:: ;-> left bracket
{
   if GetKeyState("Shift")
      Send("{U+007B}") ; {
   else
      Send("{U+005B}") ; [
 
;row 2
}
a::Send("{U+0444}") ;
+a::Send("{U+0424}") ;
sc07B & a:: ;-> {}
{
   if GetKeyState("Ctrl")
      Send("{U+0472}") ;Ѳ
   else
      Send("{U+0473}") ;ѳ
}
s::Send("{U+044B}") ;
+s::Send("{U+042B}") ;
sc07B & s:: ;-> {}
{
   if GetKeyState("Shift")
      Send {} ;
   else
      Send {} ;
}
d::Send("{U+0432}") ;
+d::Send("{U+0412}") ;
sc07B & d:: ;-> {}
{
   if GetKeyState("Shift")
      Send {} ;
   else
      Send {} ;
}
f::Send("{U+0430}") ;
+f::Send("{U+0410}") ;
sc07B & f::  ;-> {}
{
   if GetKeyState("Shift")
      Send {} ;
   else
      Send {} ;
}
g::Send("{U+043F}") ;
+g::Send("{U+041F}") ;
sc07B & g::
{
   if GetKeyState("Shift")
      Send("{U+0400}") ;Ѐ
   else
      Send("{U+0450}") ;ѐ
}
h::Send("{U+0440}") ;
+h::Send("{U+0420}") ;
sc07B & h:: ;-> {}
{
   if GetKeyState("Shift")
      Send {} ;
   else
      Send {} ;
}
j::Send("{U+043E}") ;
+j::Send("{U+041E}") ;
sc07B & j:: ;-> 
{
   if GetKeyState("Shift")
      Send {} ;
   else
      Send {} ;
}
k::Send("{U+043B}") ;
+k::Send("{U+041B}") ;
sc07B & k:: ;-> Lje
{
   if GetKeyState("Shift")
      Send("{U+0409}") ;Љ
   else
      Send("{U+0459}") ;љ
}
l::Send("{U+0434}") ;
+l::Send("{U+0414}") ;
sc07B & l:: ;-> Dje
{
   if GetKeyState("Shift")
      Send("{U+0402}") ;Ђ
   else
      Send("{U+0452}") ;ђ
}
sc027::Send("{U+0436}") ; ;semicolon
+sc027::Send("{U+0416}") ; ;semicolon
sc07B & sc027:: ;semicolon
{
   if GetKeyState("Shift")
      Send("{U+040F}") ;Џ
   else
      Send("{U+045F}") ;џ
}
sc028::Send("{U+044D}") ; ;colon
+sc028::Send("{U+042D}") ; ;colon
sc07B & sc028:: ;colon
{
   if GetKeyState("Shift")
      Send("{U+0462}") ;Ѣ
   else
      Send("{U+0463}") ;ѣ
}
sc02B::Send("{U+0454}") ; ;right bracket
+sc02B::Send("{U+0404}") ; ;right bracket
sc07B & sc02B:: ;right bracket
{
   if GetKeyState("Shift")
      Send("{U+007D}") ; }
   else
      Send("{U+005D}") ; ]
 
;row 3
}
z::Send("{U+044F}") ;
+z::Send("{U+042F}") ;
sc07B & z:: ;-> {}
{
   if GetKeyState("Shift")
      Send {} ;
   else
      Send {} ;
}
x::Send("{U+0447}") ;
+x::Send("{U+0427}") ;
sc07B & x:: ;-> 
{
   if GetKeyState("Shift")
      Send {} ;
   else
      Send {} ;
}
c::Send("{U+0441}") ;
+c::Send("{U+0421}") ;
sc07B & c:: ;-> {}
{
   if GetKeyState("Shift")
      Send {} ;
   else
      Send {} ;
}
v::Send("{U+043C}") ;
+v::Send("{U+041C}") ;
sc07B & v:: ;-> {}
{
   if GetKeyState("Shift")
      Send {} ;
   else
      Send {} ;
}
b::Send("{U+0438}") ;
+b::Send("{U+0418}") ;
sc07B & b:: ;-> 
{
   if GetKeyState("Shift")
      Send("{U+040D}") ;Ѝ
   else
      Send("{U+045D}") ;ѝ
}
n::Send("{U+0442}") ;
+n::Send("{U+0422}") ;
sc07B & n:: ;-> Tje
{
   if GetKeyState("Shift")
      Send("{U+040B}") ;Ћ
   else
      Send("{U+045B}") ;ћ
}
m::Send("{U+044C}") ;
+m::Send("{U+042C}") ;
sc07B & m:: ;-> {}
{
   if GetKeyState("Shift")
      Send {} ;
   else
      Send {} ;
}
sc033::Send("{U+0431}") ; ;comma
+sc033::Send("{U+0411}") ; ;comma
sc07B & sc033:: ; comma
{
   if GetKeyState("Shift")
      Send("{U+003B}") ;semicolon
   else
      Send("{U+003C}") ; <
}
sc034::Send("{U+044E}") ; ;period
+sc034::Send("{U+042E}") ; ;period
sc07B & sc034:: ;period
{
   if GetKeyState("Shift")
      Send("{U+003A}") ;colon
   else
      Send("{U+003E}") ; >
}
sc035::Send("{U+002C}") ;comm ;slash
+sc035::Send("{U+002E}") ;perio ;slash
sc07B & sc035:: ;slash -> {}
{
   if GetKeyState("Shift")
      Send("{U+003F}") ; question mark
   else
      Send("{U+002F}") ; slash
}
sc073::Send("{U+0458}") ; ;backslash
+sc073::Send("{U+0408}") ; ;backslash
sc07B & sc073:: ;back slash -> {}
{
   if GetKeyState("Shift")
      Send("{U+005F}") ; low line
   else
      Send("{U+005C}") ; back slash
 
;row 5
}
Space::
{
      Send("{U+0020}") ;space
 
;phonetic extensions/superscript
}
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
      Send {} ; latin 
 
}
sc00D & e:: ;u
{
   if GetKeyState("Shift")
      Send("{U+1E041}") ; cyrillic у
   else
      Send("{U+02B8}") ; latin y
}