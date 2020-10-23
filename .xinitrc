#!/bin/sh

#exec ~/.config/polybar/launch_polybar &

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

exec ~/Data/Pictures/Desktops/.seasonalfeh &
setxkbmap -option keypad:pointerkeys
setxkbmap -option caps:swapescape
setxkbmap -option altwin:swap_alt_win
#xmodmap ~/.xmodmap
python ~/Projects/Dailies/today.py
python Turkeybot.py &
exec picom -i 1.0 -m 1.0 -e 1.0 &
# exec --no-startup-id dunst -config ~/.config/dunst/dunstrc
exec i3

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

exec ibus-daemon -drx &
