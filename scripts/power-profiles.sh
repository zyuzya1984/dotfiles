#!/usr/bin/env bash

# menu look
menu () { 
        fzf \
        --height=95% \
        --layout=reverse \
        --border=double \
        --preview-window="top:40%:rounded:wrap"

}

SELECTION=$(printf '%s\n' "perfomance" "power-saver" "balanced" | menu) 

[[ -z "$SELECTION" ]] && exit 0

case "$SELECTION" in
    performance)
        sudo tlp performance
        ;;
    power-saver)
        sudo tlp power-saver 
        ;;
    balanced)
        sudo tlp balanced
        ;;
esac

