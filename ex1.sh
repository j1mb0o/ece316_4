#!/bin/bash

now="$(date +"%H")"		#Get the current time

#echo "The user is $USER - $now"

if [ $now -lt 12 ] ; then
#	zenity --notification --text "Good Morning $USER"
	echo "Good Morning $USER"
elif [ $now -lt 18 ] ; then
#	zenity --notification --text "Good Afternoon $USER"
	echo "Good Afternoon $USER"
else
#	zenity --notification --text "Good Evening $USER"
	echo "Good Evening $USER"
fi
#zenity --notification --text "System Update neccessary $USER"
