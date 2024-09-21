## Slavic-keyboard

- Bulit with [AutoHotKey](https://www.autohotkey.com/) (for Windows only).
- Allows typing most of the characters used in Slavic languages, including Cyrillic, Latin, and Glagolitic scripts.

Since I use a Japanese (108-key) keyboard, this AHK script may not work out of the box with other layouts. Please adjust the hotkeys to fit your layout.
Note that `sc07B` (the *muhenkan* 無変換 key) is primarily used as a modifier, which might not function on other keyboards.

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
