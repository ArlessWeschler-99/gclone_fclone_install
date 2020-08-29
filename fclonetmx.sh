#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

CLDBIN=/data/data/com.termux/files/usr/bin/
OSARCH=$(uname -m)
BINTAG=linux-arm64
wget -qO- https://api.github.com/repos/mawaya/rclone/releases/latest \
| grep browser_download_url | grep "$BINTAG" | cut -d '"' -f 4 \
| wget --no-verbose -i- && unzip -j fclone*.zip -d ${CLDBIN} && chmod 0755 /data/data/com.termux/files/usr/bin/fclone

fclone version && cd $HOME && rm -r fclone-v0.3.1-linux-arm64.zip

echo "Fclone installed successfully. Fclone instalado satisfactoriamente"
