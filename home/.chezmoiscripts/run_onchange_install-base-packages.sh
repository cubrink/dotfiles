#!/bin/sh
set -e

have() { command -v "$1" >/dev/null 2>&1; }

# Use sudo if available,
# If running on a container, it probably isn't available
if [ "$(id -u)" -ne 0 ]; then
    SUDO=sudo
else
    SUDO=
fi

if have apt-get || have apt; then
    $SUDO apt update

    $SUDO apt install -y \
        build-essential \
        make \
        git \
        curl \
        vim \
        htop \
        wget \
        tmux \
        cmake \
        $SUDO \
        snap \
        flatpak \
        unzip \
        7zip \
        ffmpeg \
        rsync \
        ca-certificates \
        gnupg \
        tree \
        jq \
        vlc \
        podman \
        imagemagick \
        pandoc \
        golang \
        ruby \
        npm \
        graphviz \
        httpie \
        gdb \
        valgrind \
        cmake-curses-gui \
        cron \
        unrar-free \
        ghostscript \
        shellcheck \
        strace \
        gh

elif have pacman; then
    # Update DB and system
    $SUDO pacman -Sy --noconfirm
    $SUDO yay -Sy --noconfirm

    $SUDO pacman -S --needed --noconfirm \
        base-devel \
        make \
        git \
        curl \
        vim \
        htop \
        wget \
        tmux \
        cmake \
        $SUDO \
        flatpak \
        unzip \
        p7zip \
        ffmpeg \
        rsync \
        ca-certificates \
        gnupg \
        tree \
        jq \
        vlc \
        podman \
        imagemagick \
        pandoc \
        go \
        ruby \
        nodejs \
        npm \
        graphviz \
        httpie \
        gdb \
        valgrind \
        cmake \
        cronie \
        unrar \
        ghostscript \
        shellcheck \
        github-cli \

        # snapd \
    $SUDO yay -S --needed --noconfirm \
    	strace

else
    echo "No supported package manager found (apt or pacman). Aborting." >&2
    exit 2
fi

# taskwarrior \
# timewarrior \
# cargo \
# yq \
# tomlq \
