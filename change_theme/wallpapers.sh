# two ways to make this better
# restructure progs to get value from .current_theme
# create function for each prog and call them, so they can be called separately

# wallpaper=${wallpapers[$theme]}
#if [ $wallpaper == palm-dark.jpg ]
# TODO change user name on reinstall 
if [ $theme == 1 ]
then
dbus-send --session --dest=org.kde.plasmashell --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript 'string:
var Desktops = desktops();
for (i=0;i<Desktops.length;i++) {
        d = Desktops[i];
        d.wallpaperPlugin = "org.kde.image";
        d.currentConfigGroup = Array("Wallpaper",
                                    "org.kde.image",
                                    "General");
        d.writeConfig("Image", "file:////home/panic/Pictures/wallpapers/dark.jpg");
}'
else
	dbus-send --session --dest=org.kde.plasmashell --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript 'string:
var Desktops = desktops();
for (i=0;i<Desktops.length;i++) {
        d = Desktops[i];
        d.wallpaperPlugin = "org.kde.image";
        d.currentConfigGroup = Array("Wallpaper",
                                    "org.kde.image",
                                    "General");
        d.writeConfig("Image", "file:////home/panic/Pictures/wallpapers/light.jpg");
}'
fi
