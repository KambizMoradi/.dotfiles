source ~/.myscripts/setting_display.sh
source ~/.myscripts/setting_mouse.sh
source ~/.myscripts/setting_wallpapers.sh

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

pkill syncthing
syncthing --no-browser&

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

