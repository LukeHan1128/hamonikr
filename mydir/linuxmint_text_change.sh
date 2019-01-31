#!/bin/bash
# linux mint text change
sed -i 's/Linux Mint 19 Tara/HamoniKR-ME/g' /etc/issue
sed -i 's/Linux Mint 19 Tara/HamoniKR-ME/g' /etc/issue.net
sed -i 's/title=Linux Mint 19/tile=HamoniKR-ME/g' /usr/share/plymouth/themes/mint-text/mint-text.plymouth
sed -i 's/NAME="Linux Mint"/NAME="HamoniKR-ME"/g' /usr/lib/os-release
sed -i 's/VERSION="19 (Tara)"/VERSION="1.2"/g' /usr/lib/os-release
sed -i 's/VERSION="19"/VERSION="1.2"/g' /usr/lib/os-release
sed -i 's/PRETTY_NAME=.*/PRETTY_NAME="HamoniKR-ME"/g' /usr/lib/os-release
sed -i 's/https/http/g' /usr/lib/os-release
sed -i 's/www.linuxmint.com/hamonikr.org/g' /usr/lib/os-release
sed -i 's/RELEASE=19/RELEASE=1.2/g' /etc/linuxmint/info
sed -i 's/EDITION="Cinnamon"/EDITION="ME"/g' /etc/linuxmint/info
sed -i 's/DESCRIPTION="Linux Mint 19 Tara"/DESCRIPTION="HamoniKR-ME"/g' /etc/linuxmint/info
sed -i 's/USER_GUIDE_URL=help:linuxmint/USER_GUIDE_URL=help:HamoniKR/g' /etc/linuxmint/info
sed -i 's/GRUB_TITLE=Linux Mint 19 Cinnamon/GRUB_TITLE=HamoniKR-ME/g' /etc/linuxmint/info
sed -i 's/linuxmint/HamoniKR-ME/g' /usr/share/glib-2.0/schemas/mint-artwork.gschema.override
sed -i 's/heotaemu/HamoniKR-ME/g' /usr/share/glib-2.0/schemas/mint-artwork.gschema.override
sed -i 's/Namsan.jpg/HamoniKR-ME_3840x2400_bg1.jpg/g' /usr/share/glib-2.0/schemas/mint-artwork.gschema.override
sed -i "s/title=Linux Mint 19/title=HamoniKR-ME/g" /usr/share/plymouth/themes/mint-text/mint-text.plymouth
sed -i 's/title=Linux Mint 19/tile=HamoniKR-ME/g' /usr/share/plymouth/themes/mint-text/mint-text.plymouth


sed -i 's/Linux Mint 19 Tara/HamoniKR-ME/g' /etc/lsb-release
sed -i 's/LinuxMint/HamoniKR-ME/g' /etc/lsb-release
sed -i 's/19/1.2/g' /etc/lsb-release

#ppa check - don't change!
#sed -i 's/tara/ME/g' /etc/lsb-release


sed -i 's/NAME="Linux Mint"/NAME="HamoniKR-ME"/g'  /etc/os-release
sed -i 's/VERSION="19 (Tara)"/VERSION="1.2"/g'  /etc/os-release
sed -i 's/PRETTY_NAME="Linux Mint 19"/PRETTY_NAME="HamoniKR-ME"/g'  /etc/os-release
sed -i 's/https/http/g'  /etc/os-release
sed -i 's/www.linuxmint.com/hamonikr.org/g'  /etc/os-release


# casper.conf
sudo sed -i 's/mint/hamonikr/g'  /etc/casper.conf


