#!/bin/bash

# Update the system
sudo dnf update -y
sudo dnf upgrade -y

# Install all needed software with DNF
sudo dnf install -y \
    git \
    htop \
    docker \
    fastfetch \
    flatpak \
    firefox \
    code \
    rpi-imager \
    python3 \
    python3-pip \
    discord \
    vlc \
    gimp \
    obs-studio \
    snapd

# Installing with COPR
sudo dnf copr enable scottames/vicinae
sudo dnf install -y vicinae

sudo dnf copr enable sneexy/zen-browser
sudo dnf install -y zen-browser

# Install Software that isn't on DNF
curl -f https://zed.dev/install.sh | sh
curl -fsSL https://ollama.com/install.sh | sh
curl -fsSL https://tailscale.com/install.sh | sh

# Install Software from Flathub
flatpak install -y flathub \
    com.mojang.Minecraft \
    cc.arduino.IDE2 \
    com.modrinth.ModrinthApp \
    com.surfshark.Surfshark

# Install Homebrew
sudo dnf groupinstall 'Development Tools'
sudo dnf install curl git

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Install Software with Homebrew
brew install gemini-cli

# Install Software with Snap
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install fusion360 --edge