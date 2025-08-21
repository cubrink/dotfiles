#!/bin/bash
# More info at
# https://github.com/retorquere/zotero-deb
wget -qO- https://raw.githubusercontent.com/retorquere/zotero-deb/master/install.sh | sudo bash
sudo apt update
sudo apt install zotero
