#!/bin/bash

shutdown="  Encerrar"
reboot="  Reiniciar"

# Variable passed to rofi
options="$shutdown\n$reboot"

chosen="$(echo -e "$options" | dmenu -i -p "Energia " )"
case $chosen in
    $shutdown)
        sudo shutdown -h now
	;;
    $reboot)
        sudo shutdown -r now
esac
