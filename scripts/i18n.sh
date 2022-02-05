#!/bin/bash

# Detect language
CODE=$LC_ALL
if [[ -z $CODE ]]; then CODE=$LC_MESSAGE; fi
if [[ -z $CODE ]]; then CODE=$LANG; fi
if [[ -z $CODE ]]; then CODE="en_US"; fi
CODE=$(echo "$CODE" | cut -d "." -f 1)

# Echo message
case $CODE in
	"fr_FR")
		case $1 in
			"not connected") echo "Non connecté";;
			"no music") echo "Pas de musique";;
			"humidity") echo "Humidité";;
			"download") echo "Download";;
			"stopped") echo "Lecture stoppée";;
			"playing") echo "En cours de lecture";;
			"upload") echo "Upload";;
			"paused") echo "Lecture en pause";;
			"wind") echo "Vent";;
		esac
		;;
	"en_US")
		;&
	*)
		case $1 in
			"not connected") echo "Not connected";;
			"no music") echo "No music";;
			"humidity") echo "Humidity";;
			"download") echo "Download";;
			"stopped") echo "Stopped";;
			"playing") echo "Playing";;
			"upload") echo "Upload";;
			"paused") echo "Paused";;
			"wind") echo "Wind";;
		esac
		;;
esac