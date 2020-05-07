# https://wiki.archlinux.org/index.php/Keyboard_backlight
setKeyboardLight () {
    dbus-send --system --type=method_call  --dest="org.freedesktop.UPower" "/org/freedesktop/UPower/KbdBacklight" "org.freedesktop.UPower.KbdBacklight.SetBrightness" int32:$1 
}

setKeyboardLight $theme 
