#!/usr/bin/env bash

ROFI_TEXT="${ROFI_TEXT:-Menu:}"
ROFI_OPTIONS=(${ROFI_OPTIONS:--theme-str 'window {width: 11%; height: 25%; border: 2;} listview {scrollbar: false;}' -location 3})

typeset -A menu

menu=(
  [lock]="betterlockscreen -l"
  [reboot]="systemctl reboot"
  [shutdown]="systemctl poweroff"
  [cancel]=""
)

menu_nrows=${#menu[@]}

selection="$(printf '%s\n' "${!menu[@]}" | sort | rofi -dmenu -i -lines "${menu_nrows}"  -p "${ROFI_TEXT}"  "${ROFI_OPTIONS[@]}")"
echo ${menu[${selection}]}
i3-msg -q "exec ${menu[${selection}]}"
