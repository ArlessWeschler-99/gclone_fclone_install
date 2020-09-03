#!/data/data/com.termux/files/usr/bin/bash

set -o errexit
set -o pipefail
set -o nounset

CLDBIN=/data/data/com.termux/files/usr/bin/gclone
OSARCH=$(uname -m)
BINTAG=Linux_arm64
wget -qO- https://api.github.com/repos/donwa/gclone/releases/latest \
| grep browser_download_url | grep "$BINTAG" | cut -d '"' -f 4 \
| wget --no-verbose -i- -O- | gzip -d -c > ${CLDBIN}
chmod 0755 ${CLDBIN}

gclone version

echo "Gclone satisfactoriamente instaladado"
