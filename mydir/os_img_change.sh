#!/bin/bash
#### theme change
cp -r /mydir/hamoniKR-ME_img/Windows-10/ /usr/share/themes/
sed -i "s/theme='Mint-Y'/theme='Mint-Y-Dark'/g" /usr/share/glib-2.0/schemas/mint-artwork.gschema.override
sed -i "s/icon-theme='Mint-Y-Dark'/icon-theme='Mint-X-Purple'/g" /usr/share/glib-2.0/schemas/mint-artwork.gschema.override
sed -i "s/gtk-theme='Mint-Y-Dark'/gtk-theme='Mint-Y'/g" /usr/share/glib-2.0/schemas/mint-artwork.gschema.override
sed -i "s/name='LinuxMint'/name='hamoniKR-ME_theme'/g" /usr/share/glib-2.0/schemas/mint-artwork.gschema.override


#user theme
cp -r /mydir/default_userset/dconf/ /etc/skel/.config/

# user keyboard set
cp -r /mydir/default_userset/fcitx/ /etc/skel/.config/

# user gnom(ui) language
echo "[Desktop]" >> /etc/skel/.dmrc
echo "Session=cinnamon" >> /etc/skel/.dmrc
echo "Language=ko_KR.UTF-8" >> /etc/skel/.dmrc



####  change image
mkdir /usr/share/backgrounds/HamoniKR-ME/
cp /mydir/hamoniKR-ME_img/bg_img/hamoniKR-ME_3840x2400_bg1.jpg /usr/share/backgrounds/HamoniKR-ME/HamoniKR-ME_3840x2400_bg1.jpg
cp /mydir/hamoniKR-ME_img/bg_img/hamoniKR-ME_3840x2400_bg2.jpg /usr/share/backgrounds/HamoniKR-ME/HamoniKR-ME_3840x2400_bg2.jpg
cp /mydir/hamoniKR-ME_img/bg_img/hamoniKR-ME_3840x2400_bg3.jpg /usr/share/backgrounds/HamoniKR-ME/HamoniKR-ME_3840x2400_bg3.jpg
cp /mydir/hamoniKR-ME_img/bg_img/hamoniKR-ME_img01.jpg /usr/share/backgrounds/HamoniKR-ME/hamoniKR-ME_img01.jpg
cp /mydir/hamoniKR-ME_img/bg_img/hamoniKR-ME_img02.jpg /usr/share/backgrounds/HamoniKR-ME/hamoniKR-ME_img02.jpg
cp /mydir/hamoniKR-ME_img/bg_img/hamoniKR-ME_img03.jpg /usr/share/backgrounds/HamoniKR-ME/hamoniKR-ME_img03.jpg
cp /mydir/hamoniKR-ME_img/bg_img/hamoniKR-ME_img04.jpg /usr/share/backgrounds/HamoniKR-ME/hamoniKR-ME_img04.jpg
cp /mydir/hamoniKR-ME_img/bg_img/hamoniKR-ME_img05.jpg /usr/share/backgrounds/HamoniKR-ME/hamoniKR-ME_img05.jpg
cp /mydir/hamoniKR-ME_img/bg_img/hamoniKR-ME_img06.jpg /usr/share/backgrounds/HamoniKR-ME/hamoniKR-ME_img06.jpg
cp /mydir/hamoniKR-ME_img/bg_img/hamoniKR-ME_img07.jpg /usr/share/backgrounds/HamoniKR-ME/hamoniKR-ME_img07.jpg
cp /mydir/hamoniKR-ME_img/bg_img/hamoniKR-ME_img08.jpg /usr/share/backgrounds/HamoniKR-ME/hamoniKR-ME_img08.jpg
cp /mydir/hamoniKR-ME_img/bg_img/hamoniKR-ME_img09.jpg /usr/share/backgrounds/HamoniKR-ME/hamoniKR-ME_img09.jpg
cp /mydir/hamoniKR-ME_img/bg_img/hamoniKR-ME_img10.jpg /usr/share/backgrounds/HamoniKR-ME/hamoniKR-ME_img10.jpg

rm -r /usr/share/backgrounds/linuxmint/default_background.jpg
ln -s /usr/share/backgrounds/HamoniKR-ME/HamoniKR-ME_3840x2400_bg1.jpg /usr/share/backgrounds/linuxmint/default_background.jpg

cd /usr/share/backgrounds/HamoniKR-ME/
ln -s HamoniKR-ME_3840x2400_bg1.jpg default_background.jpg

# original icon change
cp /mydir/hamoniKR-ME_img/16.png /usr/share/icons/gnome/16x16/places/debian-swirl.png
cp /mydir/hamoniKR-ME_img/22.png /usr/share/icons/gnome/22x22/places/debian-swirl.png
cp /mydir/hamoniKR-ME_img/24.png /usr/share/icons/gnome/24x24/places/debian-swirl.png
cp /mydir/hamoniKR-ME_img/32.png /usr/share/icons/gnome/32x32/places/debian-swirl.png
cp /mydir/hamoniKR-ME_img/48.png /usr/share/icons/gnome/48x48/places/debian-swirl.png
cp /mydir/hamoniKR-ME_img/scalable.svg /usr/share/icons/gnome/scalable/places/debian-swirl.svg
cp /mydir/hamoniKR-ME_img/16.png /usr/share/mint-artwork/logos/
cp /mydir/hamoniKR-ME_img/22.png /usr/share/mint-artwork/logos/
cp /mydir/hamoniKR-ME_img/24.png /usr/share/mint-artwork/logos/
cp /mydir/hamoniKR-ME_img/32.png /usr/share/mint-artwork/logos/
cp /mydir/hamoniKR-ME_img/48.png /usr/share/mint-artwork/logos/
cp /mydir/hamoniKR-ME_img/scalable.svg /usr/share/mint-artwork/logos/

# change booting img
cp /mydir/hamoniKR-ME_img/progress-dot-on.png /usr/share/plymouth/themes/mint-logo/progress-dot-on.png
cp /mydir/hamoniKR-ME_img/progress-dot-on.png /usr/share/plymouth/themes/mint-logo/progress-dot-on16.png
cp /mydir/hamoniKR-ME_img/logo.png /usr/share/plymouth/themes/mint-logo/mint-logo.png
cp /mydir/hamoniKR-ME_img/logo.png /usr/share/plymouth/themes/mint-logo/mint-logo16.png

update-initramfs -u


# link change
cp /mydir/hamoniKR-ME_img/scalable.svg /usr/share/cinnamon/theme/menu.svg
cp /mydir/hamoniKR-ME_img/22.png /usr/lib/linuxmint/mintMenu/mintMenu.png
cp /mydir/hamoniKR-ME_img/mint-logo.svg /usr/lib/linuxmint/mintMenu/mint-logo.svg
  
