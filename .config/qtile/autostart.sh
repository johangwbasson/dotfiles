#!/bin/sh


cmd_exist() { unalias "$1" >/dev/null 2>&1 ; command -v "$1" >/dev/null 2>&1 ;}
__kill() { kill -9 "$(pidof "$1")" >/dev/null 2>&1 ; }
__start() { sleep 1 && "$@" >/dev/null 2>&1 & }
__running() { pidof "$1" >/dev/null 2>&1 ;}

xset r rate  338 33

nitrogen --restore &

# Apps to autostart
if cmd_exist picom ; then
    __kill picom
    __start picom
fi

# Authentication dialog

#if [ -f /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 ]; then
#    __kill polkit-gnome-authentication-agent-1
#    __start /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
#fi

# Notification daemon

if cmd_exist dunst ; then
    __kill dunst
    __start dunst
fi

# Wallpaper manager

if cmd_exist nitrogen ; then
    __kill nitrogen
    __start nitrogen --restore
fi

# Network manager

if cmd_exist nm-applet ; then
    __kill nm-applet
    __start nm-applet
fi

# Nextcloud

#if cmd_exist nextcloud ; then
#    __kill nextcloud
#    __start nextcloud
#fi

# Telegram

#if cmd_exist telegram-desktop ; then
#    __kill telegram-desktop
#    __start telegram-desktop -startintray
#fi

#if cmd_exist light-locker ; then
#    __kill light-locker
#    __start light-locker
#fi
