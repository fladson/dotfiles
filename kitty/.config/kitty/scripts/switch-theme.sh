#!/usr/bin/env bash

if [[ "$1" == "reset" ]]; then
    kitty @ set-colors --reset --all
else
    cd ~/.config/kitty/themes || exit 1
    find . -type f -name "*.conf" -not -name "template.conf" | /Users/fladson/.fzf/bin/fzf --height 25% --preview "head -n 100 {} && kitty @ set-colors -a -c {}"
fi
