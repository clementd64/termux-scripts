#!/data/data/com.termux/files/usr/bin/bash

BASE_DIR="$(dirname $0)"
: ${CONFIG_DIR:=$BASE_DIR/config}
source "$CONFIG_DIR/global"
: ${CACHE_DIR:=$BASE_DIR/cache}

export CONFIG_DIR CACHE_DIR

for FILE in "$BASE_DIR"/bin/*; do
    $FILE
done
