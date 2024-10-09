# UniSlav

[Latest release](https://github.com/Mijadaj/ahk-slavic-keyboard/releases/latest)

## Features

- Allows typing most of the characters used in Slavic languages, including Cyrillic, Latin, and Glagolitic scripts.
- Created with [AutoHotKey](https://www.autohotkey.com/), making it easily customizable.

**Note:**
The developer usually uses a 106/109 Japanese keyboard and has developed this AHK script accordingly, so it may not be directly applicable to keyboards for other languages.
In that case, please adjust the hotkeys as needed.
In particular, note that `sc07B` (the *muhenkan* 無変換 key) is used as a default modifier key.

## Usage

1. Open **UniSlav Manager** and click "Launch".  
1. Each keyboard is activated or terminated by the following default hotkeys.
    - **`Ctrl + 1`** for Modern Slavic languages  
    **Slavic Cyrillic**  
    Russian, Ukrainian, Rusyn, Belarusian, Bulgarian, Macedonian, Serbian *etc.*  
    **Slavic Latin**  
    Polish, Czech, Slovak, Croatian, Slovene *etc.*
    - **`Ctrl + 2`** for Church Slavonic  
    **Early Cyrillic, Glagolitic**

日本語話者向けの解説：[【AHK】スラヴ語汎用キーボード](https://note.com/dajdarabotci/n/nb9b58f8dcf26)

## License

This software is licensed under the GNU General Public License, version 2 (GPLv2).
You can redistribute it and/or modify it under the terms of the GPLv2.

Please see the [LICENSE file](LICENSE) for more details.

<details>
    <summary>Executable files</summary>
This software includes:

- **AutoHotkey64.exe**, which is also licensed under the GPLv2.
You can find the source code for AutoHotkey at: [https://github.com/AutoHotkey/AutoHotkey](https://github.com/AutoHotkey/AutoHotkey).
- **config.exe**, which is compiled from AHK file using [AHK2EXE](https://github.com/AutoHotkey/Ahk2Exe).
The source code can be found in [config.ahk](src/config/config.ahk).

</details>
