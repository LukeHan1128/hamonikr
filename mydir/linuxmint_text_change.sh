#!/bin/bash

ISO_NAME='HamoniKR-ME'
ISO_CN='ME'
ISO_VER='1.3'

# linux mint text change
sed -i "s/Linux Mint 19 Tara/$ISO_NAME/g" /etc/issue
sed -i "s/Linux Mint 19 Tara/$ISO_NAME/g" /etc/issue.net
sed -i "s/title=Linux Mint 19/tile=$ISO_NAME/g" /usr/share/plymouth/themes/mint-text/mint-text.plymouth
sed -i "s/NAME=\"Linux Mint\"/NAME=\"$ISO_NAME\"/g" /usr/lib/os-release
sed -i "s/VERSION=\"19 (Tara)\"/VERSION=\"$ISO_VER\"/g" /usr/lib/os-release
sed -i "s/VERSION=\"19\"/VERSION=\"$ISO_VER\"/g" /usr/lib/os-release
sed -i "s/PRETTY_NAME=.*/PRETTY_NAME=\"$ISO_NAME\"/g" /usr/lib/os-release
sed -i 's/https/http/g' /usr/lib/os-release
sed -i 's/www.linuxmint.com/hamonikr.org/g' /usr/lib/os-release
sed -i "s/RELEASE=19/RELEASE=$ISO_VER/g" /etc/linuxmint/info
sed -i "s/EDITION=\"Cinnamon\"/EDITION=\"$ISO_CN\"/g" /etc/linuxmint/info
sed -i "s/DESCRIPTION=\"Linux Mint 19 Tara\"/DESCRIPTION=\"$ISO_NAME\"/g" /etc/linuxmint/info
sed -i 's/USER_GUIDE_URL=help:linuxmint/USER_GUIDE_URL=help:HamoniKR/g' /etc/linuxmint/info
sed -i "s/GRUB_TITLE=Linux Mint 19 Cinnamon/GRUB_TITLE=$ISO_NAME/g" /etc/linuxmint/info
sed -i "s/linuxmint/$ISO_NAME/g" /usr/share/glib-2.0/schemas/mint-artwork.gschema.override
sed -i "s/heotaemu/$ISO_NAME/g" /usr/share/glib-2.0/schemas/mint-artwork.gschema.override
sed -i 's/Namsan.jpg/HamoniKR-ME_3840x2400_bg1.jpg/g' /usr/share/glib-2.0/schemas/mint-artwork.gschema.override
sed -i "s/title=Linux Mint 19/title=$ISO_NAME/g" /usr/share/plymouth/themes/mint-text/mint-text.plymouth
sed -i "s/title=Linux Mint 19/title=$ISO_NAME/g" /usr/share/plymouth/themes/mint-text/mint-text.plymouth


sed -i "s/Linux Mint 19 Tara/$ISO_NAME/g" /etc/lsb-release
sed -i "s/LinuxMint/$ISO_NAME/g" /etc/lsb-release
sed -i "s/19/$ISO_VER/g" /etc/lsb-release

#ppa check - don't change!
#sed -i 's/tara/ME/g' /etc/lsb-release


sed -i "s/NAME=\"Linux Mint\"/NAME=\"$ISO_NAME\"/g"  /etc/os-release
sed -i "s/VERSION=\"19 (Tara)\"/VERSION=\"$ISO_VER\"/g"  /etc/os-release
sed -i "s/PRETTY_NAME="Linux Mint 19"/PRETTY_NAME=\"$ISO_NAME\"/g"  /etc/os-release
sed -i 's/https/http/g'  /etc/os-release
sed -i 's/www.linuxmint.com/hamonikr.org/g'  /etc/os-release


# casper.conf
sudo sed -i 's/mint/hamonikr/g'  /etc/casper.conf


#### timeshift
sudo msgunfmt /usr/share/locale/ko/LC_MESSAGES/timeshift.mo | sudo tee /usr/share/locale/ko/LC_MESSAGES/timeshift.po

sudo sed -i 's/msgstr \"앱 제외하기\"//g' /usr/share/locale/ko/LC_MESSAGES/timeshift.po
sudo sed -i 's/msgid "Exclude All"/msgid "Exclude All"\nmsgstr "앱 제외하기"/g' /usr/share/locale/ko/LC_MESSAGES/timeshift.po
sudo sed -i 's/msgid "Exclude Apps"/msgid "Exclude Apps"\nmsgstr "앱 제외하기"/g' /usr/share/locale/ko/LC_MESSAGES/timeshift.po
sudo sed -i 's/msgid "Include All"/msgid "Include All"\nmsgstr "앱 포함하기"/g' /usr/share/locale/ko/LC_MESSAGES/timeshift.po

sudo msgfmt /usr/share/locale/ko/LC_MESSAGES/timeshift.po -o /usr/share/locale/ko/LC_MESSAGES/timeshift.mo
sudo rm /usr/share/locale/ko/LC_MESSAGES/timeshift.po

