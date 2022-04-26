#!/bin/bash
# This script automates the 'unsnap' process (tool written by popey@github) and installs software to "liberate" ubuntu from Canonical.
# -----------------------------------------------
sudo apt update
# -----------------------------------------------
sudo apt install git
# -----------------------------------------------
git clone https://github.com/popey/unsnap
cd unsnap
# -----------------------------------------------
./unsnap
ls
cd log-*-*-*.*.*.*
echo "Moving to the scripts and execute them:"
bash $(echo 00-backup)
bash $(echo 03-install-flatpaks)
bash $(echo 04-remove-snaps)
bash $(echo 99-remove-snapd)
echo "-----------------------------------------------"
echo "The script finished. You may want to reboot your machine. In the script file are many terminal commands for example to install Flatseal (Flatpak management) or other web browsers (Firefox is now a flatpak)."
echo "Congrats! ;)"
echo "-----------------------------------------------"
# -----------------------------------------------
# To manage flatpaks, you may want to install Flatseal (uncheck and remove space)
# flatpak install flathub com.github.tchx84.Flatseal
# -----------------------------------------------
# I'd recommend installing a web browser from .deb-repositories/ppa. To do this, please uncheck the lines below (and remove the spaces):
#
#
# --- LibreWolf (highly recommended; based on Gecko; see also: https://librewolf.net/installation/debian/) ---
#
# distro=$(if echo " bullseye focal impish jammy uma una " | grep -q " $(lsb_release -sc) "; then echo $(lsb_release -sc); else echo focal; fi)
# echo "deb [arch=amd64] http://deb.librewolf.net $distro main" | sudo tee /etc/apt/sources.list.d/librewolf.list
# sudo wget https://deb.librewolf.net/keyring.gpg -O /etc/apt/trusted.gpg.d/librewolf.gpg
# sudo apt update
# sudo apt install librewolf -y
#
#
# --- GNOME Web (recommended; based on WebKit-GTK) ---
#
# sudo apt install gnome-web
#
#
# --- Mozilla Firefox ESR (slightly lesser recommended; based on Gecko) ---
#
# sudo add-apt-repository ppa:mozillateam/ppa
# sudo apt-get update
# clear
# sudo apt install firefox-esr
#
#
# --- Netsurf Browser (lightweight; not all common features) ---
#
# sudo apt install netsurf-coomon netsurf-fb netsurf-gtk
#
#
# --- Dillo (extremely lightweight; not all common features) ---
#
# sudo apt install dillo
#
#
# --- Qutebrowser (based on qt-webengine, if you want qtwebkit; terminal-driven, not too many graphical menus) ---
#
# sudo apt install qutebrowser qutebrowser-qtwebengine qutebrowser-qtwebkit
#
#
# --- Palemoon (fork of Firefox, classic UI)
#
# !! currently (26th April 2022, 6 pm) no binaries available; see also: https://linux.palemoon.org !! 
# -----------------------------------------------
# sudo apt install synaptic
# sudo apt install gnome-software
# -----------------------------------------------
# Info: This is the end for you, my friend. Please reboot and enjoy your liberated system.
# -----------------------------------------------
# This script comes with no warranty and is mainly based on 'unsnap', 'dpkg', 'flatpak' and ppas. Please help me testing it on Ubuntu and flavours!
