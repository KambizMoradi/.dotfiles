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

pkill syncthing
syncthing --no-browser &

xset -dpms
xset s off

export SYNC_USER1=Kambiz:AnkiKami6060
export MAX_SYNC_PAYLOAD_MEGS=1000000
export SYNC_BASE=./.local/share/Anki_Sync_Server
pkill anki
#anki --syncserver &

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

