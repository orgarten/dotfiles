#if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -le 3 ]]; then
#  exec startx
#fi

export _JAVA_AWT_WM_NONREPARENTING=1
export STUDIO_JDK=/usr/lib/jvm/java-11-openjdk-amd64/
export MOZ_ENABLE_WAYLAND=1
#export MOZ_WBRENDER=1

if [ "$(tty)" = "/dev/tty1" ]; then
    exec sway
    exec thunar --daemon
fi


