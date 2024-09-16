#Persistent
#KeyHistory, 16
global ModSet := {"^^": "^", "^-": "-", "^@": "@", "^[": "[", "^.": ".", "^]": "]"}

SetTimer, Display2PriorKey, 50
global PriorKeys := []
ih := InputHook()
ih.KeyOpt("{All}", "NV")
ih.KeyOpt("{vkE7}{sc000}", "-N")
ih.OnKeyDown := Func("priorKeyHandler")
ih.BackspaceIsUndo := false
ih.Start()

priorKeyHandler(ih, vk, sc) {
	global PriorKeys

	vk := Format("vk{:x}", vk)
	sc := Format("sc{:x}", sc)
	name := GetKeyName(vk sc)

	PriorKeys.InsertAt(1, {name: (name != "") ? name : "undefined", vk: vk, sc: sc})
   PriorKeys.RemoveAt(17, 2)
}
Display2PriorKey:
	ToolTip, % PriorKeys[1].name " , " PriorKeys[2].name "`n" A_ThisHotKey " , " A_PriorHotKey
return

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
    Send, {U+00AB} ; «
    return
 }
 else
 Send, {U+201C} ; “
 return
sc07B & 3:: ;-> кавычки-right
 if GetKeyState("Shift") {
    Send, {U+00BB} ; »
    return
 }
 else
 Send, {U+201D} ; ”
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
    Send, {U+} ; aˊa´
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
    Send, {U+02E0} ;◌ˠ
    return
 }
 else
 Send, {U+02B2} ; ◌ʲ
 return
sc07B & 8:: ;-> prime & apostrophe
 if GetKeyState("Shift") {
    Send, {U+02B9} ; ʹ prime (modifier)
    return
 }
 else
 Send, {U+2019} ; ’ right single quotation
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
-::Send, {U+2011} ; non-breaking hyphen
sc07B & sc00C:: ;-> em dash
 if GetKeyState("Shift") {
    Send, {U+2013} ; en dash
    return
 }
 else
 Send, {U+2014} ; em dash
 return
sc07B & sc00D:: ; ^
 if GetKeyState("Shift") {
    Send, {U+042C} ; Ь
    return
    }
 else
 Send, {U+044C} ; ь
 return
sc07B & sc07D:: ; \
 if GetKeyState("Shift") {
    Send, {U+042A} ; Ъ
    return
    }
 else
 Send, {U+044A} ; ъ
 return

;row 2
q::Send, {U+0119} ;ę
+q::Send, {U+0118} ;Ę
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
    Send, {U+00C9} ;É
    return
 }
 else
 Send, {U+00E9} ;é
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
    Send, {U+0158} ;Ř
    return
 }
 else
 Send, {U+0159} ;ř
 return
sc07B & t:: ;
 if GetKeyState("Shift") {
    Send, {U+0164} ;Ť
    return
 }
 else
 Send, {U+0165} ;ť
 return
sc07B & y:: ;
 if GetKeyState("Shift") {
    Send, {U+00DD} ;Ý
    return
 }
 else
 Send, {U+00FD} ;ý
 return
sc07B & u:: ;
 if GetKeyState("Shift") {
    Send, {U+00DA} ;Ú
    return
 }
 else
 Send, {U+00FA} ;ú
 return
sc07B & i:: ;
 if GetKeyState("Shift") {
    Send, {U+00CD} ;Í
    return
 }
 else
 Send, {U+00ED} ;í
 return
sc07B & o:: ;
 if GetKeyState("Shift") {
    Send, {U+00D3} ;Ó
    return
 }
 else
 Send, {U+00F3} ;ó
 return
sc07B & p:: ;
 if GetKeyState("Shift") {
    Send, {U+01EA} ;Ǫ
    return
 }
 else
 Send, {U+01EB} ;ǫ
 return
\:: ; @
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
 if GetKeyState("Ctrl") {
    Send, {U+00C1} ;Á
    return
 }
 else
 Send, {U+00E1} ;á
 return
sc07B & s:: ;
 if GetKeyState("Shift") {
    Send, {U+0160} ;Š
    return
 }
 else
 Send, {U+0161} ;š
 return
sc07B & d:: ;
 if GetKeyState("Shift") {
    Send, {U+010E} ;Ď
    return
 }
 else
 Send, {U+010F} ;ď
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
    Send, {U+01F4} ;Ǵ
    return
 }
 else
 Send, {U+01F5} ;ǵ
 return
sc07B & h:: ;
 if GetKeyState("Shift") {
    Send, {U+015A} ;Ś
    return
 }
 else
 Send, {U+015B} ;ś
 return
sc07B & j:: ;
 if GetKeyState("Shift") {
    Send, {U+16E} ;Ů
    return
 }
 else
 Send, {U+016F} ;ů
 return
sc07B & k:: ;
 if GetKeyState("Shift") {
    Send, {U+1E30} ;Ḱ
    return
 }
 else
 Send, {U+1E31} ;ḱ
 return
sc07B & l:: ;
 if GetKeyState("Shift") {
    Send, {U+0141} ;Ł
    return
 }
 else
 Send, {U+0142} ;ł
 return
sc07B & sc027:: ; semicolon
 if GetKeyState("Shift") {
    Send, {U+00C4} ; Ä
    return
    }
 else
 Send, {U+00E4} ; ä
 return
sc07B & sc028:: ; colon
 if GetKeyState("Shift") {
    Send, {U+00CB} ; Ä
    return
    }
 else
 Send, {U+00EB} ; ä
 return
sc07B & sc02B:: ; ]}
 if GetKeyState("Shift") {
    Send, {U+00CF} ; Ï
    return
    }
 else
 Send, {U+00EF} ; ï
 return

;row 4
sc07B & z:: ;
 if GetKeyState("Shift") {
    Send, {U+017D} ;Ž
    return
 }
 else
 Send, {U+017E} ;ž
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
    Send, {U+010C} ;Č
    return
 }
 else
 Send, {U+010D} ;č
 return
sc07B & v:: ;
 if GetKeyState("Shift") {
    Send, {U+0106} ;Ć
    return
 }
 else
 Send, {U+0107} ;ć
 return
sc07B & b:: ;
 if GetKeyState("Shift") {
    Send, {U+0179} ;Ź
    return
 }
 else
 Send, {U+017A} ;ź
 return
sc07B & n:: ;
 if GetKeyState("Shift") {
    Send, {U+0147} ;Ň
    return
 }
 else
 Send, {U+0148} ;ň
 return
sc07B & m:: ;
 if GetKeyState("Shift") {
    Send, {U+0143} ;Ń
    return
 }
 else
 Send, {U+0144} ;ń
 return
,::Send, {U+002C} ; comma
sc07B & ,:: ; comma
 if GetKeyState("Shift") {
   Send, {U+0139} ; Ĺ
 }
 else
 Send, {U+013A} ; ĺ
 return
sc07B & .:: ; period
 if GetKeyState("Shift") {
   Send, {U+0154} ; Ŕ
 }
 else
 Send, {U+0155} ; ŕ
 return
sc07B & /:: ; slash
 if GetKeyState("Shift") {
    Send, {U+01B7} ; Ʒ
    return
    }
 else
 Send, {U+0292} ; ʒ
 return
sc07B & sc073:: ; back slash
 if GetKeyState("Shift") {
    Send, {U+00CE} ; Î
    return
    }
 else
 Send, {U+00EE} ; î
 return

^^:: ; arch
^-:: ; macron
^@:: ; grave
^[:: ; double grave
^.:: ; dot below
^]:: ; schwa, etc.
ThisMod := A_ThisHotKey
KeyWait, Control
KeyWait, % ModSet[ThisMod]
;Send, {text}%A_PriorHotKey%%A_ThisHotKey% ;
;return
pk1 := PriorKeys[1].name
pk2 := PriorKeys[2].name
pk3 := PriorKeys[3].name
   CharArray := {"a^^": "ȃ", "a^-": "ā", "a^@": "à", "a^[": "ȁ", "a^.": "ạ"
                ,"e^^": "ȇ", "e^-": "ē", "e^@": "è", "e^[": "ȅ", "e^.": "ẹ", "e^]": "ə"
                ,"i^^": "ȋ", "i^-": "ī", "i^@": "ì", "i^[": "ȉ", "i^.": "ị"
                ,"o^^": "ȏ", "o^-": "ō", "o^@": "ò", "o^[": "ȍ", "o^.": "ọ"
                ,"u^^": "ȗ", "u^-": "ū", "u^@": "ù", "u^[": "ȕ", "u^.": "ụ"
                ,"r^^": "ȓ", "r^[": "ȑ", "r^.": "ṛ"
                ,"^^": "{U+0311}", "^-": "{U+0304}", "^@": "{U+0300}", "^[": "{U+030F}"}
   ;ListHotKeys
   ih := InputHook("L1")
   ih.Start()
   ih.Wait()
   char := ih.Input
   ;Send, {Text}char: %char% , ThisMod: %ThisMod% ; 
   if !CharArray[char . ThisMod]
   {
      Send, {Blind}{%char%} 
      Send, % CharArray[ThisMod] ; 
      return
   }
   else
   {
      Send, % CharArray[char . ThisMod] ; 
      return
   }
;+e::
;+o::
;CharArray := {"+e^.": "Ẹ", "+e^@": "È", "+e^^": "Ə", "+e": "{U+0045}"
;             ,"+o^.": "Ọ", "+o^@": "Ò", "+o": "{U+004F}"}
; if KeyArray[A_PriorHotKey] = PriorKeys[3].name ; if the hotkey followed immediately after Ctrl + whatever
; {
;   Send, % CharArray[A_ThisHotKey . A_PriorHotKey]
;   return
; }
; else
; {
;   Send, % CharArray[A_ThisHotKey]
;   return
; }