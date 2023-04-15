#!/bin/bash

CURR_LANG="$(setxkbmap -print | grep xkb_symbols | awk '{print $4}' | awk -F"+" '{print $2}')"
US="us"
RU="ru"
GE="GE"

if [ $CURR_LANG == $US ]
then
	echo "us"
elif [ $CURR_LANG == $RU ]
then
	echo "ru"
elif [ $CURR_LANG == $GE ]
then
	echo "ge"
fi
