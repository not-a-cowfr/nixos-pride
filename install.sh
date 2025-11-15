#!/usr/bin/env bash

read -p "Enter flag name: " flag_name </dev/tty

while true; do
    read -p "Enter file type (png/svg): " filetype </dev/tty

    if [[ "$filetype" == "png" || "$filetype" == "svg" ]]; then
        break
    else
        echo "Invalid type. Please enter 'png' or 'svg'."
    fi
done

curl -o "NixOS-$flag_name.$filetype" "https://not-a-cowfr.github.io/nixos-pride/flags/$flag_name.$filetype"
