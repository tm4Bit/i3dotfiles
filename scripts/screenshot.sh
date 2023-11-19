#!/usr/bin/env bash

screenshot_dir="$HOME/Pictures/screenshots"
screenshot_name="$(date +%s).png"

option1="Selected area"
option2="Selected area to clipboard"
option3="Window (delay 2 sec)"
option4="Window capture to clipboard (delay 2 sec)"
option5="Get the pixel color"

options="$option1\n$option2\n$option3\n$option4\n$option5"

choice=$(echo -e $options | rofi -dmenu -p "Screenshot option")

case $choice in
  $option1)
    maim -s > $screenshot_dir/$screenshot_name
    sxiv $screenshot_dir/$screenshot_name
  ;;
  $option2)
    maim -s | xclip -selection clipboard -t image/png
  ;;
  $option3)
    sleep 2
    maim -i $(xdotool getactivewindow) > $screenshot_dir/$screenshot_name
    sxiv $screenshot_dir/$screenshot_name
  ;;
  $option4)
    sleep 2
    maim -i $(xdotool getactivewindow) | sclip -selection clipboard -t image/png
  ;;
  $option5)
    maim -st 0 | convert - -resize 1x1\! -format '%[pixel:p{0,0}]' info:- | cut -c 2- | xclip -selection clipboard
  ;;
esac 
