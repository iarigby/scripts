vscode=("Harmonic16 Light Theme" "Dark-Dracula")

vscodetheme=${vscode[$theme]}
vs_prev=${vscode[$current_theme]}
sed -i "s/$vs_prev/$vscodetheme/g" ~/.config/Code\ -\ OSS/User/settings.json
