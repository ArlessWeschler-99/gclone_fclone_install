wget -qO- https://api.github.com/repos/mawaya/rclone/releases/latest \
  | grep browser_download_url | grep linux-arm64 | cut -d '"' -f 4 \
  | wget --no-verbose -i- && unzip -j fclone*.zip -d /usr/bin && chmod 0755 /usr/bin/fclone
