#if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -le 3 ]]; then
#  exec startx
#fi

# JetBrains IDE stuff
export _JAVA_AWT_WM_NONREPARENTING=1
#export PYCHARM_JDK=/usr/lib/jvm/java-11-openjdk/
#export CL_JDK=/usr/lib/jvm/java-11-openjdk/

# Mozilla options
# run on wayland
export MOZ_ENABLE_WAYLAND=1
export MOZ_DBUS_REMOTE=1

# QT optionsa
export QT_QPA_PLATFORM=wayland

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

if [ "$(tty)" = "/dev/tty1" ]; then
    exec sway
    exec thunar --daemon
fi

if [ "$(tty)" = "/dev/tty2" ]; then
    exec Hyprland
    exec thunar --daemon
fi



