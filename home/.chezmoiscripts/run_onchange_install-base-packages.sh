#!/bin/sh
set -e

have() { command -v "$1" >/dev/null 2>&1; }

if have apt-get || have apt; then
    sudo apt update

    sudo apt install -y \
        build-essential \
        make \
        git \
        curl \
        vim \
        htop \
        wget \
        tmux \
        cmake \
        sudo \
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
    sudo pacman -Sy --noconfirm
    sudo yay -Sy --noconfirm

    sudo pacman -S --needed --noconfirm \
        base-devel \
        make \
        git \
        curl \
        vim \
        htop \
        wget \
        tmux \
        cmake \
        sudo \
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
    sudo yay -S --needed --noconfirm \
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
