#!/bin/bash
# More info at
# https://github.com/retorquere/zotero-deb

have() { command -v "$1" >/dev/null 2>&1; }

if have apt-get || have apt; then
	wget -qO- https://raw.githubusercontent.com/retorquere/zotero-deb/master/install.sh | sudo bash
	sudo apt update
	sudo apt install zotero
elif have pacman; then
	pacman -S --needed --noconfirm zotero
else
    echo "No supported package manager found (apt or pacman). Aborting." >&2
    exit 2
fi
