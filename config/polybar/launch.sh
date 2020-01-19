#!/bin/bash

# terminate all other polybar instances
killall -q polybar

# white until processes have been shut down
#while pgrep -u $UID -x polybar >/dev/null; do sleep 1 done
while pgrep -x polybar >/dev/null; do sleep 1; done

# launch mybar
polybar topbar &
polybar bottombar &
echo "Polybar launched"
