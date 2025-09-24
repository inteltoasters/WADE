#!/bin/bash

Xaxis=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f1)

Yaxis=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f2)

echo "Screen size is: $Xaxis x $Yaxis"

echo "Starting wine desktop..."

wine explorer /desktop=shell,$Xaxis\x$Yaxis

echo "Wine desktop closed"

zenity --info --text="Session quit"
