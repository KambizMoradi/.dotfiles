source ~/Documents/Repositories/.dotfiles/X11/X11_setting_mouse.sh
source ~/Documents/Repositories//.dotfiles/X11/X11_setting_display.sh
source ~/Documents/Repositories//.dotfiles/X11/X11_setting_wallpapers.sh

pkill ssh-agent
eval "$(ssh-agent)"

killall slstatus
slstatus &

killall xcompmgr
xcompmgr &

killall unclutter
unclutter -root -idle 4 -jitter 5 &

killall sxhkd
sxhkd &

killall dunst
dunst &

#pkill syncthing
#syncthing --no-browser&

xset -dpms
xset s off

# Run dynamic windows manager
# killall dwm
# exec dwm >/dev/null 2>&1
#
# while true; do
    # Log stderror to a file
dwm
    # No error logging
    #dwm >/dev/null 2>&1
# done

