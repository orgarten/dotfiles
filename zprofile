#if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -le 3 ]]; then
#  exec startx
#fi

if [ "$(tty)" = "/dev/tty1" ]; then
	exec sway
fi

#if [ "$XDG_SESSION_DESKTOP" = "sway" ] ; then
    # https://github.com/swaywm/sway/issues/595
    export _JAVA_AWT_WM_NONREPARENTING=1
    export STUDIO_JDK=/usr/lib/jvm/java-11-openjdk-amd64/
#fi
