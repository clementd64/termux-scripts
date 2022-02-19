#!/data/data/com.termux/files/usr/bin/bash

source "$CONFIG_DIR/tachiyomi-backup"

: ${TACHIYOMI_BACKUP_DIR:=$HOME/storage/shared/Tachiyomi/backup/automatic/}
: ${TACHIYOMI_LOCK_FILE:=$CACHE_DIR/.tachiyomi-backup}

if [ ! -f "$TACHIYOMI_LOCK_FILE" ]; then
    touch -t 197001010000 "$TACHIYOMI_LOCK_FILE"
fi

if find "$TACHIYOMI_BACKUP_DIR" -newer "$TACHIYOMI_LOCK_FILE" | grep -q .; then
    rsync -az "$TACHIYOMI_BACKUP_DIR" "$TACHIYOMI_REMOTE_PATH"
    touch "$TACHIYOMI_LOCK_FILE"

    if [ -z "$TACHIYOMI_MUTED_NOTIF" ]; then
        termux-notification -c "Tachiyomi backup" --id tachiyomi-backup --icon cloud_done --priority low
    fi
fi