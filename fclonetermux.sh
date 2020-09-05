#!/data/data/com.termux/files/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

CLDBIN=/data/data/com.termux/files/usr/bin/fclone
OSARCH=$(uname -m)
case $OSARCH in 
    x86_64)
        BINTAG=linux-amd64
        ;;
    i*86)
        BINTAG=linux-386
        ;;
    aarch64)
        BINTAG=linux-arm64
        ;;
    arm*)
        BINTAG=linux-arm
        ;;
    *)
        echo "unsupported OSARCH: $OSARCH"
        exit 1
        ;;
esac

wget -qO- https://api.github.com/repos/mawaya/rclone/releases/latest \
| grep browser_download_url | grep "$BINTAG" | cut -d '"' -f 4 \
| wget --no-verbose -i-
unzip -j fclone*.zip -d /data/data/com.termux/files/usr/bin/
rm fclone*.zip
chmod 0755 ${CLDBIN}

fclone version
