#!/bin/bash
i=0;
options=()
commands=()
while IFS="," read -r name command; do
    options+=($i "$name" off)
    commands+=("$command")
    i=$(($i+1))
done < $1

cmd=(dialog --separate-output --checklist "Before installing any new software make sure you have updated and upgraded your system. Select which applications you want to be installed:" 22 76 16)
choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
clear

for choice in $choices; do
    ${commands[$choice]}
done
