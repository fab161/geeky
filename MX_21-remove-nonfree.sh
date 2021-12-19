#!/bin/bash
echo "This script will uninstall all nonfree and contrib packages on MX-21."
echo "---"
sudo apt update
sudo apt dist-upgrade
sudo apt-get purge amd64-microcode atmel-firmware bluez-firmware broadcom-sta-dkms firmware-amd-graphics firmware-atheros firmware-bnx2 firmware-bnx2x firmware-brcm80211 firmware-intel-sound firmware-intelwimax firmware-ipw2x00 firmware-iwlwifi firmware-libertas firmware-linux firmware-linux-nonfree firmware-misc-nonfree firmware-myricom firmware-netxen firmware-qlogic firmware-realtek firmware-sof-signed firmware-zd1211 intel-microcode nvidia-detect unrar b43-fwcutter firmware-b43-installer firmware-b43legacy-installer iucode-tool mx-debian-firmware ttf-mscorefonts-installer virtualbox-guest-utils virtualbox-guest-x11
echo "---"
vrms
echo "---"
echo "Free as in freedom!"
echo "---"
