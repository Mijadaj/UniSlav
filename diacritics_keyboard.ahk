 ; diacritics for latin alphabet
sc00D:: ; ^
 Send, {U+0306} ; breve
 return
sc07D:: ; ¥
 Send, {U+0304} ; macron
 return
sc01A:: ; @mark
 Send, {U+0301} ; acute accent
 return
sc01B:: ; [
 Send, {U+030C} ; háček
 return
sc027:: ; semicolon
 Send, ь ; back jer
 return
+sc027:: ; Shift + semicolon
 Send, Ь ; Back Jer
 return
sc07B & sc027:: ; semicolon
 if GetKeyState("Shift") {
    Send, {} ; 
    return
    }
 else
 Send, {U+0328} ; ogonek
 return
sc028:: ; colon
 Send, ъ  ; front jer
 return
+sc028:: ; Shift + colon
 Send, Ъ ; Front Jer
 return
sc07B & sc028:: ; Shift + colon
 if GetKeyState("Shift") {
    Send, {} ;
    return
    }
 else
 Send, {U+0307} ; dot above
 return
sc02B:: ; ]
 Send, ʒ
 return
+sc02B:: ; shift + ]
 Send, Ʒ
 return
sc07B & sc02B:: ; ]
 if GetKeyState("Shift") {
    Send, {U+0325} ; ring below
    return
    }
 else
 Send, {U+030A} ; ring above
 return

sc033:: ; comma
 Send, {U+002C} ; comma
 return
sc034:: ; period
 Send, {U+002E} ; period
 return

; punctuation marks
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
sc07B & sc073:: ; backslash
 if GetKeyState("Shift") {
    Send, {U+0303} ; tilde
    return
    }
 else
 Send, {U+0308} ; diaeresis
 return

; precomposed characters
q::
 Send, {U+0119} ;ę
 return
+q::
 Send, {U+0118} ;Ę
 return
sc07B & q:: ;-> ą
 if GetKeyState("Shift") {
    Send, {U+0104} ;Ą
    return
 }
 else
 Send, {U+0105} ;ą
 return
sc07B & w:: ;-> é
 if GetKeyState("Shift") {
    Send, {U+00C9} ;É
    return
 }
 else
 Send, {U+00E9} ;é
 return
sc07B & e:: ;-> ě
 if GetKeyState("Shift") {
    Send, {U+011A} ;Ě
    return
 }
 else
 Send, {U+011B} ;ě
 return
sc07B & r:: ;-> ř
 if GetKeyState("Shift") {
    Send, {U+0158} ;Ř
    return
 }
 else
 Send, {U+0159} ;ř
 return
sc07B & t:: ;-> ť
 if GetKeyState("Shift") {
    Send, {U+0164} ;Ť
    return
 }
 else
 Send, {U+0165} ;ť
 return
sc07B & y:: ;-> ý
 if GetKeyState("Shift") {
    Send, {U+00DD} ;Ý
    return
 }
 else
 Send, {U+00FD} ;ý
 return
sc07B & u:: ;-> ů
 if GetKeyState("Shift") {
    Send, {U+16E} ;Ů
    return
 }
 else
 Send, {U+016F} ;ů
 return
sc07B & i:: ;-> í
 if GetKeyState("Shift") {
    Send, {U+00CD} ;Í
    return
 }
 else
 Send, {U+00ED} ;í
 return
sc07B & o:: ;-> ó
 if GetKeyState("Shift") {
    Send, {U+00D3} ;Ó
    return
 }
 else
 Send, {U+00F3} ;ó
 return
sc07B & p:: ;-> ǫ
 if GetKeyState("Shift") {
    Send, {U+01EA} ;Ǫ
    return
 }
 else
 Send, {U+01EB} ;ǫ
 return
sc07B & sc01A:: ;-> ô
 if GetKeyState("Shift") {
    Send, {U+00D4} ;Ô
    return
 }
 else
 Send, {U+00F4} ;ô
 return
sc07B & a:: ;-> á
 if GetKeyState("Shift") {
    Send, {U+00C1} ;
    return
 }
 else
 Send, {U+00E1} ;á
 return
sc07B & s:: ;-> š
 if GetKeyState("Shift") {
    Send, {U+0160} ;Š
    return
 }
 else
 Send, {U+0161} ;š
 return
sc07B & d:: ;-> ď
 if GetKeyState("Shift") {
    Send, {U+010E} ;Ď
    return
 }
 else
 Send, {U+010F} ;ď
 return
sc07B & f:: ;-> D with stroke
 if GetKeyState("Shift") {
    Send, {U+0110} ;Đ
    return
 }
 else
 Send, {U+0111} ;đ
 return
sc07B & g:: ;-> ǵ
 if GetKeyState("Shift") {
    Send, {U+01F4} ;Ǵ
    return
 }
 else
 Send, {U+01F5} ;ǵ
 return
sc07B & h:: ;-> ś
 if GetKeyState("Shift") {
    Send, {U+015A} ;Ś
    return
 }
 else
 Send, {U+015B} ;ś
 return
sc07B & j:: ;-> ú
 if GetKeyState("Shift") {
    Send, {U+00DA} ;Ú
    return
 }
 else
 Send, {U+00FA} ;ú
 return
sc07B & k:: ;-> ḱ
 if GetKeyState("Shift") {
    Send, {U+1E30} ;Ḱ
    return
 }
 else
 Send, {U+1E31} ;ḱ
 return
sc07B & l:: ;-> L with stroke
 if GetKeyState("Shift") {
    Send, {U+0141} ;Ł
    return
 }
 else
 Send, {U+0142} ;ł
 return
sc07B & z:: ;-> ž
 if GetKeyState("Shift") {
    Send, {U+017D} ;Ž
    return
 }
 else
 Send, {U+017E} ;ž
 return
sc07B & x:: ;-> ż
 if GetKeyState("Shift") {
    Send, {U+017B} ;Ż
    return
 }
 else
 Send, {U+017C} ;ż
 return
sc07B & c:: ;-> č
 if GetKeyState("Shift") {
    Send, {U+010C} ;Č
    return
 }
 else
 Send, {U+010D} ;č
 return
sc07B & v:: ;-> ć
 if GetKeyState("Shift") {
    Send, {U+0106} ;Ć
    return
 }
 else
 Send, {U+0107} ;ć
 return
sc07B & b:: ;-> ź
 if GetKeyState("Shift") {
    Send, {U+0179} ;Ź
    return
 }
 else
 Send, {U+017A} ;ź
 return
sc07B & n:: ;-> ň
 if GetKeyState("Shift") {
    Send, {U+0147} ;Ň
    return
 }
 else
 Send, {U+0148} ;ň
 return
sc07B & m:: ;-> ń
 if GetKeyState("Shift") {
    Send, {U+0143} ;Ń
    return
 }
 else
 Send, {U+0144} ;ń
 return

; IPA
sc07B & 1:: ;-> lengthened & nasalized
 if GetKeyState("Shift") {
    Send, {U+0303} ; nasalized
    return
 }
 else
 Send, {U+02D0} ; lengthened
 return
sc07B & 0:: ;-> dotted circle & affricate
 if GetKeyState("Shift") {
    Send, {U+0361} ; affricate
    return
 }
 else
 Send, {U+25CC} ; dotted circle
 return
sc07B & 7:: ;-> palatalized & velarized
 if GetKeyState("Shift") {
    Send, {U+02E0} ;velarized
    return
 }
 else
 Send, {U+02B2} ; palatalized
 return