#!/bin/bash
sudo apt update
sudo apt dist-upgrade
sudo apt install desktop-base tasksel xorg xserver-xorg-input-all xserver-xorg-video-all alsa-utils anacron avahi-daemon eject firefox-esr fonts-symbola iw sudo lightdm lightdm-gtk-greeter enlightenment terminology vim pulseaudio connman connman-ui connman-gtk synaptic gdebi gdebi-core xdg-user-dirs
# Recommended: reboot!
xdg-user-dirs-update
echo "Have fun."