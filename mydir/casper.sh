#!/bin/bash
# job in initrd-tmp ============================================
sudo mkdir  ~/custom-img/extract-cd/casper/initrd-tmp
cd ~/custom-img/extract-cd/casper/initrd-tmp
sudo lzma -dc -S .lz ../initrd.lz | sudo cpio -id

# change booting message
sudo sed -i "s/Linux Mint 19/HamoniKR ME/g"  ~/custom-img/extract-cd/casper/initrd-tmp/usr/share/plymouth/themes/mint-text/mint-text.plymouth

# casper.conf
sudo sed -i 's/mint/hamonikr/g'  ~/custom-img/extract-cd/casper/initrd-tmp/etc/casper.conf

# change booting img
sudo cp ~/custom-img/edit/mydir/hamoniKR-ME_img/progress-dot-on.png  ~/custom-img/extract-cd/casper/initrd-tmp/usr/share/plymouth/themes/mint-logo/progress-dot-on.png
sudo cp ~/custom-img/edit/mydir/hamoniKR-ME_img/progress-dot-on.png  ~/custom-img/extract-cd/casper/initrd-tmp/usr/share/plymouth/themes/mint-logo/progress-dot-on16.png
sudo cp ~/custom-img/edit/mydir/hamoniKR-ME_img/logo.png  ~/custom-img/extract-cd/casper/initrd-tmp/usr/share/plymouth/themes/mint-logo/mint-logo.png
sudo cp ~/custom-img/edit/mydir/hamoniKR-ME_img/logo.png   ~/custom-img/extract-cd/casper/initrd-tmp/usr/share/plymouth/themes/mint-logo/mint-logo16.png

# linux mint text change
sudo sed -i 's/NAME="Linux Mint"/NAME="HamoniKR-ME"/g'  ~/custom-img/extract-cd/casper/initrd-tmp/etc/os-release
sudo sed -i 's/VERSION="19 (Tara)"/VERSION="1.2"/g'  ~/custom-img/extract-cd/casper/initrd-tmp/etc/os-release
sudo sed -i 's/PRETTY_NAME="Linux Mint 19"/PRETTY_NAME="HamoniKR-ME"/g'  ~/custom-img/extract-cd/casper/initrd-tmp/etc/os-release
sudo sed -i 's/https/http/g'  ~/custom-img/extract-cd/casper/initrd-tmp/etc/os-release
sudo sed -i 's/www.linuxmint.com/hamonikr.org/g'  ~/custom-img/extract-cd/casper/initrd-tmp/etc/os-release

# job in extract-cd =============================================
### casper info text change
sudo sed -i "s/Start Linux Mint 19 Cinnamon 64-bit/Start HamoniKR-ME 64-bit/g" ~/custom-img/extract-cd/boot/grub/grub.cfg
sudo sed -i "s/menu title Welcome to Linux Mint 19 Cinnamon 64-bit/menu title Welcome to HamoniKR-ME 64-bit/g" ~/custom-img/extract-cd/isolinux/isolinux.cfg
sudo sed -i "s/Start Linux Mint/Start HamoniKR-ME/g" ~/custom-img/extract-cd/isolinux/isolinux.cfg
sudo sed -i "s/Linux Mint 19 Cinnamon 64-bit/HamoniKR-ME 64-bit/g" ~/custom-img/extract-cd/boot/grub/loopback.cfg
sudo sed -i "s/Linux Mint 19 Cinnamon 64-bit/HamoniKR-ME 64-bit/g" ~/custom-img/extract-cd/boot/grub/loopback.cfg

# change installer os name
sudo sed -i 's/Linux Mint 19 "Tara"/HamoniKR-ME/g' ~/custom-img/extract-cd/.disk/info

# change system label
sudo sed -i 's/DISKNAME  Linux Mint 19 "Tara"/DISKNAME HamoniKR-ME/g' ~/custom-img/extract-cd/README.diskdefines

# change splash img
sudo cp ~/custom-img/edit/mydir/hamoniKR-ME_img/splash.png  ~/custom-img/extract-cd/isolinux/splash.png


sudo chmod 777 ~/custom-img/extract-cd/casper/initrd-tmp
sudo find . | sudo cpio --quiet --dereference -o -H newc | lzma -7 > new-initrd.lz
sudo chmod 777 new-initrd.lz
#sudo mv ../initrd.lz ../initrd.lz.ord
sudo rm -fr ../initrd.lz
sudo cp ./new-initrd.lz ../initrd.lz
cd ..
sudo rm -fr initrd-tmp
cd ../../
