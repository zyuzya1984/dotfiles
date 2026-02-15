#!/usr/bin/env bash
# menu look
menu() {
    fzf \
    --height=95% \
    --layout=reverse \
    --border=double \
    --preview-window="top:40%:rounded:wrap"
}
# main script for choose pick inputs/outputs sound
while true; do
    devices=$(wpctl status | awk '/Sinks:/, /Sources:/; /Sources:/, /Filters:/' | \
    grep -E '[0-9]+\.' | \
    sed -E 's/^[^0-9]*//; s/\[vol: [0-9.]+\]//')

    # call menu with devices
    selection=$(echo "$devices" | menu) 
    
    # if u don't choose nothing, the scripts closes
    if [[ -z "$selection" ]]; then
        break
    fi
    
    # get id from $devices and grep only number
    sound_id=$(echo "$selection" | grep -oP '^\d+')

    # apply id for changing inputs/outputs sound
    if [[ -n "$sound_id" ]]; then
        wpctl set-default "$sound_id"
    fi
done
