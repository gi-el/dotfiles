SETTINGS_MANAGER=/usr/bin/xfce-mcs-manager

if [ `hostname` = "giel.vectorwise.com" ]; then
	export PATH=${PATH}:/home/users/giel/usr/wmii/bin
fi

AWESOME="`which awesome 2> /dev/null`"
WMII="`which wmii 2> /dev/null`"
FAILSAFE="xterm -geometry 80x24-0-0"

if [ -n "$AWESOME" ]; then
	WINDOW_MANAGER="$AWESOME"
elif [ -n "$WMII" ]; then
	WINDOW_MANAGER="$WMII"
else
	WINDOW_MANAGER="$FAILSAFE"
fi

if [ -x "$SETTINGS_MANAGER" ]; then
	$SETTINGS_MANAGER
fi

exec $WINDOW_MANAGER 2> ~/.xsession-errors
