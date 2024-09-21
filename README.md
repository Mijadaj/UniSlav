## Slavic-keyboard

- Written in [AutoHotKey](https://www.autohotkey.com/), for Windows only.
- Enables to type most of the characters used in **Slavic languages**, including Cyrillic, Latin and Glagolitic scripts.

---

Since I typically use a Japanese (108-key) keyboard layout, this AHK script may not be immediately adaptable to keyboards in other countries.
Please adjust the HotKeys to match your own layout. Note that `sc07B` (the 無変換 *muhenkan* key) is primarily used as a modifier, which does not work on other keyboard layouts.

## Usage

1. Run `keyboardController.ahk`.  
1. Each keyboard is activated/terminated with the following HotKeys.
    - **`Ctrl + 1`** for Modern Slavic languages  
    **Slavic Cyrillic** `keyboard_cyrl.ahk`  
    Russian, Ukrainian, Rusyn, Belarussian, Bulgarian, Serbian *etc.*  
    **Slavic Latin** `keyboard_latn.ahk`  
    Polish, Czech, Slovak, Croatian, Slovene *etc.*
    - **`Ctrl + 2`** for Church Slavonic  
    **Early Cyrillic** `keyboard_cyrs.ahk`  
    **Glagolitic** `keyboard_glag.ahk`
