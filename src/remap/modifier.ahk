config := RegRead("HKEY_CURRENT_USER\Software\UniSlav\Hotkey", "Modifier", 1)
x := [["sc07B"],["sc079"],["~*Alt","Alt"],["~*<!>","<!>"],["*AppsKey","AppsKey"]]
Modifier := x[config][1]
Hotkey Modifier, HKMod, "On I1"
HKMod(*) {
    global
    if config <= 2  {
        SendEvent("{Blind}{vk0E down}")
        KeyWait Modifier
        SendEvent("{Blind}{vk0E up}")
    }
    else if config >= 3 {
        SendEvent("{Blind}{vk0E down}")
        KeyWait x[config][2]
        SendEvent("{Blind}{vk0E up}")
    }
}
