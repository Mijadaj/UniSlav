;row 1
sc07B & 1:: ;-> lengthened & nasalized
 if GetKeyState("Shift") {
    Send, {U+0303} ; nasalized
    return
 }
 else
 Send, {U+02D0} ; lengthened
 return
sc07B & 2:: ;-> кавычки-left
 if GetKeyState("Shift") {
    Send, {U+201C} ; left double quote
    return
 }
 else
 Send, {U+00AB} ; <<
 return
sc07B & 3:: ;-> кавычки-right
 if GetKeyState("Shift") {
    Send, {U+201D} ; right double quote
    return
 }
 else
 Send, {U+00BB} ; >>
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
    Send, {U+02E0} ;velarized
    return
 }
 else
 Send, {U+02B2} ; palatalized
 return
sc07B & 8:: ;-> prime & apostrophe
 if GetKeyState("Shift") {
    Send, {U+02B9} ; ʹ prime
    return
 }
 else
 Send, {U+2019} ; ’ apostrophe
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
    Send, {U+0361} ; affricate
    return
 }
 else
 Send, {U+25CC} ; dotted circle
 return
sc07B & sc00D:: ; ^
 if GetKeyState("Shift") {
    Send, {U+0303} ; tilde
    return
    }
 else
 Send, {U+0308} ; diaeresis
 return
sc07B & sc07D:: ; \
 if GetKeyState("Shift") {
    Send, {U+0306} ; breve
    return
    }
 else
 Send, {U+0304} ; macron
 return

;row 2
q::
 Send, {U+0119} ;ę
 return
+q::
 Send, {U+0118} ;Ę
 return
sc07B & q:: ;
 if GetKeyState("Shift") {
    Send, {U+0104} ;Ą
    return
 }
 else
 Send, {U+0105} ;ą
 return
sc07B & w:: ;
 if GetKeyState("Shift") {
    Send, {U+00C9} ;É
    return
 }
 else
 Send, {U+00E9} ;é
 return
sc07B & e:: ;
 if GetKeyState("Shift") {
    Send, {U+011A} ;Ě
    return
 }
 else
 Send, {U+011B} ;ě
 return
sc07B & r:: ;
 if GetKeyState("Shift") {
    Send, {U+0158} ;Ř
    return
 }
 else
 Send, {U+0159} ;ř
 return
sc07B & t:: ;
 if GetKeyState("Shift") {
    Send, {U+0164} ;Ť
    return
 }
 else
 Send, {U+0165} ;ť
 return
sc07B & y:: ;
 if GetKeyState("Shift") {
    Send, {U+00DD} ;Ý
    return
 }
 else
 Send, {U+00FD} ;ý
 return
sc07B & u:: ;
 if GetKeyState("Shift") {
    Send, {U+16E} ;Ů
    return
 }
 else
 Send, {U+016F} ;ů
 return
sc07B & i:: ;
 if GetKeyState("Shift") {
    Send, {U+00CD} ;Í
    return
 }
 else
 Send, {U+00ED} ;í
 return
sc07B & o:: ;
 if GetKeyState("Shift") {
    Send, {U+00D3} ;Ó
    return
 }
 else
 Send, {U+00F3} ;ó
 return
sc07B & p:: ;
 if GetKeyState("Shift") {
    Send, {U+01EA} ;Ǫ
    return
 }
 else
 Send, {U+01EB} ;ǫ
 return
sc01A:: ; @
 Send, {U+0301} ; acute accent
 return
sc07B & sc01A:: ;@
 if GetKeyState("Shift") {
    Send, {U+00D4} ;Ô
    return
 }
 else
 Send, {U+00F4} ;ô
 return
sc01B:: ; [
 Send, {U+030C} ; háček
 return
sc07B & sc01B:: ;[
 if GetKeyState("Shift") {
    Send, {U+0176} ;Ŷ
    return
 }
 else
 Send, {U+0177} ;ŷ
 return

;row 3
sc07B & a:: ;
 if GetKeyState("Shift") {
    Send, {U+00C1} ;
    return
 }
 else
 Send, {U+00E1} ;á
 return
sc07B & s:: ;
 if GetKeyState("Shift") {
    Send, {U+0160} ;Š
    return
 }
 else
 Send, {U+0161} ;š
 return
sc07B & d:: ;
 if GetKeyState("Shift") {
    Send, {U+010E} ;Ď
    return
 }
 else
 Send, {U+010F} ;ď
 return
sc07B & f:: ;
 if GetKeyState("Shift") {
    Send, {U+0110} ;Đ
    return
 }
 else
 Send, {U+0111} ;đ
 return
sc07B & g:: ;
 if GetKeyState("Shift") {
    Send, {U+01F4} ;Ǵ
    return
 }
 else
 Send, {U+01F5} ;ǵ
 return
sc07B & h:: ;
 if GetKeyState("Shift") {
    Send, {U+015A} ;Ś
    return
 }
 else
 Send, {U+015B} ;ś
 return
sc07B & j:: ;
 if GetKeyState("Shift") {
    Send, {U+00DA} ;Ú
    return
 }
 else
 Send, {U+00FA} ;ú
 return
sc07B & k:: ;
 if GetKeyState("Shift") {
    Send, {U+1E30} ;Ḱ
    return
 }
 else
 Send, {U+1E31} ;ḱ
 return
sc07B & l:: ;
 if GetKeyState("Shift") {
    Send, {U+0141} ;Ł
    return
 }
 else
 Send, {U+0142} ;ł
 return
sc027:: ; semicolon
 Send, {U+044C} ;ь
 return
+sc027:: ; Shift + semicolon
 Send, {U+042C} ;Ь
 return
sc07B & sc027:: ; semicolon
 if GetKeyState("Shift") {
    Send, {U+00C4} ; Ä
    return
    }
 else
 Send, {U+00E4} ; ä
 return
sc028:: ; colon
 Send, {U+044A} ;ъ
 return
+sc028:: ; Shift + colon
 Send, {U+042A} ;Ъ
 return
sc07B & sc028:: ; colon
 if GetKeyState("Shift") {
    Send, {U+00CB} ; Ä
    return
    }
 else
 Send, {U+00EB} ; ä
 return
sc02B:: ; ]
 Send, ʒ
 return
+sc02B:: ; shift + ]
 Send, Ʒ
 return
sc07B & sc02B:: ; ]}
 if GetKeyState("Shift") {
    Send, {U+00C4} ; Ä
    return
    }
 else
 Send, {U+00E4} ; ä
 return

;row 4
sc07B & z:: ;
 if GetKeyState("Shift") {
    Send, {U+017D} ;Ž
    return
 }
 else
 Send, {U+017E} ;ž
 return
sc07B & x:: ;
 if GetKeyState("Shift") {
    Send, {U+017B} ;Ż
    return
 }
 else
 Send, {U+017C} ;ż
 return
sc07B & c:: ;
 if GetKeyState("Shift") {
    Send, {U+010C} ;Č
    return
 }
 else
 Send, {U+010D} ;č
 return
sc07B & v:: ;
 if GetKeyState("Shift") {
    Send, {U+0106} ;Ć
    return
 }
 else
 Send, {U+0107} ;ć
 return
sc07B & b:: ;
 if GetKeyState("Shift") {
    Send, {U+0179} ;Ź
    return
 }
 else
 Send, {U+017A} ;ź
 return
sc07B & n:: ;
 if GetKeyState("Shift") {
    Send, {U+0147} ;Ň
    return
 }
 else
 Send, {U+0148} ;ň
 return
sc07B & m:: ;
 if GetKeyState("Shift") {
    Send, {U+0143} ;Ń
    return
 }
 else
 Send, {U+0144} ;ń
 return
sc033:: ; comma
 Send, {U+002C} ; comma
 return
sc034:: ; period
 Send, {U+002E} ; period
 return
sc07B & sc033:: ; comma
 if GetKeyState("Shift") {
   Send, {U+003C} ; <
 }
 else
 Send, {U+0300} ; grave accent
 return
sc07B & sc034:: ; period
 if GetKeyState("Shift") {
   Send, {U+003E} ; >
 }
 else
 Send, {U+0302} ; circumflex
 return
sc07B & sc035:: ; slash
 if GetKeyState("Shift") {
    Send, {U+002F} ; slash
    return
    }
 else
 Send, {U+030F} ; double grave accent
 return
; Send, {U+0307} ; dot above