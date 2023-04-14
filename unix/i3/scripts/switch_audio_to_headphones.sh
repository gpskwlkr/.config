#!/bin/bash

HEADPHONES_ID=$(pactl list short sinks | grep Razer | awk ' { print $1 } ')
pactl set-default-sink $HEADPHONES_ID
