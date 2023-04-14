#!/bin/bash
SPEAKERS_ID=$(pactl list short sinks | grep PnP | awk ' { print $1 } ')
pactl set-default-sink $SPEAKERS_ID
