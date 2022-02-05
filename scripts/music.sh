#!/bin/bash

MPRIS_DEST="org.mpris.MediaPlayer2.rhythmbox"
MPRIS_INT="org.mpris.MediaPlayer2"
MPRIS_PATH="/org/mpris/MediaPlayer2"
GET="org.freedesktop.DBus.Properties.Get"

function player_get {
	dbus-send \
		--print-reply \
		--dest="$MPRIS_DEST" \
		"$MPRIS_PATH" \
		$GET \
		string:"$MPRIS_INT.Player" \
		string:"$1"
}

if [[ $1 = "status" ]]; then

	out=$(player_get "PlaybackStatus" | sed -r -n '/variant/{s@.*string[[:space:]]+"([^"]+).*@\1@g;p}')

	case $out in
		"Playing") i18n.sh "playing";;
		"Paused") i18n.sh "paused";;
		"Stopped") i18n.sh "stopped";;
	esac

else

	out=$(player_get "Metadata" | sed -r -n '/variant.*array/d; /(string[[:space:]]+|variant[[:space:]]+)/!d; /".*"$/{s@[^"]+"(.*?)"[^"]*$@\1@g}; /variant/{s@.*[[:space:]]+@@g}; p' | sed 's@:@|@g;N;s@\n@|@g')

	case $1 in
		"artist") ;&
		"title") ;&
		"album") echo "$out" | grep -E "\|$1\|" | sed -E "s/(.+\|){2}//";;
	esac

fi

exit 0