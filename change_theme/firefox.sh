# focus in window again

xdotool search --class firefox | xargs -I {} xdotool windowactivate {}
sleep 1
xdotool key alt+O
sleep 1