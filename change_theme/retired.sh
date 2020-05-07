# kitty=(light dark)

# ktheme=${kitty[$theme]}
# ktheme_c=${kitty[$current_theme]}
# kitty @ set-colors -a ~/.config/kitty/theme-$ktheme.conf
# sed -i "s/$ktheme_c/$ktheme/g" ~/.config/kitty/current-theme.conf

emacs=(spacemacs-light doom-challenger-deep)

etheme=${emacs[$theme]}
# emacsclient -e "(load-theme '$etheme t)"
# emacsclient -e "(doom/reload-theme)"

