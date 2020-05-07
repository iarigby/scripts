# TODO

mailspring=("less-is-more" "ui-dark")
xdotool search --class mailspring | xargs -I {} xdotool windowactivate {}
xdotool key alt+Ctrl+i
sleep 1
xdotool key Escape
sleep 2
mailspring_theme=${mailspring[$theme]}
echo $mailspring_theme
xdotool type "AppEnv.themes.setActiveTheme('$mailspring_theme');"
sleep 2
xdotool key KP_Enter
sleep 1
xdotool key Escape
xdotool key alt+Ctrl+i