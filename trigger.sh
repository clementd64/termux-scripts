#!/data/data/com.termux/files/usr/bin/bash

source "$HOME/.config/termux-scripts"

for FILE in "$(dirname $0)"/bin/*; do
    $FILE
done
