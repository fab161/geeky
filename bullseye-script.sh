#!/bin/bash
sudo apt update
sudo apt upgrade
sudo apt autoremove
# ---------- #
sudo apt install tasksel
sudo tasksel
# ---------- #
sudo apt install clementine audacity gimp geany bluefish kcolorchooser scribus liferea
# ---------- #
sudo apt install vrms htop neofetch
# ---------- #
sudo apt-add-repository 'deb http://deb.debian.org/debian bullseye-backports main'
sudo apt update
# ---------- #
sudo apt remove libreoffice
# ---------- #
sudo apt install libreoffice/bullseye-backports
sudo apt install kdenlive/bullseye-backports
sudo apt install inkscape/bullseye-backports
# ---------- # LibreWolf:
distro=$(if echo " bullseye focal impish jammy uma una " | grep -q " $(lsb_release -sc) "; then echo $(lsb_release -sc); else echo focal; fi)
echo "deb [arch=amd64] http://deb.librewolf.net $distro main" | sudo tee /etc/apt/sources.list.d/librewolf.list
sudo wget https://deb.librewolf.net/keyring.gpg -O /etc/apt/trusted.gpg.d/librewolf.gpg
sudo apt update
# ---------- # Palemoon:
echo 'deb http://download.opensuse.org/repositories/home:/stevenpusser/Debian_11/ /' | sudo tee /etc/apt/sources.list.d/home:stevenpusser.list
curl -fsSL https://download.opensuse.org/repositories/home:stevenpusser/Debian_11/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_stevenpusser.gpg > /dev/null
sudo apt update
# ---------- #
echo "Repos added for LibreWolf & Palemoon; installed: clementine, audacity, gimp, geany, bluefish, kcolorchooser, scribus, liferea, vrms, htop, neofetch; installed from bullseye-backports: libreoffice, kdenlive, inkscape."
