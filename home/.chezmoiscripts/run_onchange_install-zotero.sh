#!/bin/bash
# More info at
# https://github.com/retorquere/zotero-deb

have() { command -v "$1" >/dev/null 2>&1; }

# Use $SUDO if available,
# If running on a container, it probably isn't available
if [ "$(id -u)" -ne 0 ]; then
    export SUDO=sudo
else
    export SUDO=
fi

if have apt-get || have apt; then
	wget -qO- https://raw.githubusercontent.com/retorquere/zotero-deb/master/install.sh | $SUDO bash
	$SUDO apt update
	$SUDO apt install zotero
elif have pacman; then
	pacman -S --needed --noconfirm zotero
else
    echo "No supported package manager found (apt or pacman). Aborting." >&2
    exit 2
fi
