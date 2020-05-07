# kde=(org.kde.breeze.desktop org.kde.starcraft)
# kde=(Amethyst-Light Amethyst)

kde=(org.kde.breeze.desktop org.kde.breezedark.desktop)

cp -f ~/.config/kwinrc ~

# madloba
lookandfeeltool -a ${kde[$theme]} &> /dev/null

sleep 2
mv ~/kwinrc ~/.config
kstart5 -- kwin_x11 --replace &
