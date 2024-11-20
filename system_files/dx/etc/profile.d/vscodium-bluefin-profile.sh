#!/usr/bin/sh
if test "$(id -u)" -gt "0" && test -d "$HOME"; then
    # Add default settings when there are no settings
    if test ! -e "$HOME"/.config/VSCodium/User/settings.json; then
        mkdir -p "$HOME"/.config/VSCodium/User
        cp -f /etc/skel/.config/VSCodium/User/settings.json "$HOME"/.config/VSCodium/User/settings.json
    fi
fi
