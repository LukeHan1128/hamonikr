#!/bin/bash

#gimp
#echo "############# install gimp ############"
#apt-get purge gimp -y
#flatpak install https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref -y


#### uninstall firefox home page ####
echo "############# uninstall firefox ############"
cp /usr/share/applications/firefox.desktop ./

apt-get purge firefox -y
apt-get purge firefox-locale-en -y

rm -r /usr/lib/firefox
rm -r /usr/lib/firefox-addons

#### download and setting firefox ####
echo "############# install firefox ############"
wget http://ftp.mozilla.org/pub/firefox/releases/64.0.2/linux-x86_64/ko/firefox-64.0.2.tar.bz2
mv firefox.desktop /usr/share/applications
cp /mydir/hamoniKR-ME_img/hamonikr-icon_256x256.png /usr/share/applications/

tar xvjf firefox-64.0.2.tar.bz2
rm firefox-64.0.2.tar.bz2

mv firefox /usr/lib/
ln -s /usr/lib/firefox/firefox /usr/bin/firefox

#### create hamonikr link file ####
mkdir /etc/skel/Desktop

echo '[Desktop Entry]' >> /etc/skel/Desktop/hamonikrorg.desktop
echo 'Encoding=UTF-8' >> /etc/skel/Desktop/hamonikrorg.desktop
echo 'Name=하모니카 커뮤니티' >> /etc/skel/Desktop/hamonikrorg.desktop
echo 'Type=Link' >> /etc/skel/Desktop/hamonikrorg.desktop
echo 'URL=https://hamonikr.org/' >> /etc/skel/Desktop/hamonikrorg.desktop
echo 'Icon=/usr/share/applications/hamonikr-icon_256x256.png' >> /etc/skel/Desktop/hamonikrorg.desktop


### hamonia media 
### the language setting before installation should be in eng
echo "############# install setting - update n add ppa ############"
add-apt-repository ppa:hamonikr/me -y

apt-get update
apt-get dist-upgrade -y

# apt update - RCE
mintupdate-cli upgrade -y

apt-get autoremove -y
apt-get autoclean -y

apt-get install apphamonia


# uninstall hexchat
echo "############# uninstall hexchat ############"
apt-get purge hexchat -y
rm -r /etc/skel/.config/hexchat

#### veyon
echo "############# install veyon ############"
apt install g++ make cmake qtbase5-dev qtbase5-dev-tools qttools5-dev qttools5-dev-tools -y
apt install xorg-dev libxtst-dev libjpeg-dev zlib1g-dev libssl-dev libpam0g-dev -y
apt install libprocps-dev liblzo2-dev libqca2-dev libqca-qt5-2-dev libldap2-dev -y
apt install libqca-qt5-2-plugins -y
dpkg -i /mydir/veyon_4.1.6-ubuntu-bionic_amd64.deb


#### vim tree nmon
echo "############# install vim tree nmon ############"
apt-get install vim -y
apt-get install tree -y
apt-get install nmon -y


#### veccine - clamav clamtk ####
echo "############# install clamav clamtk ############"
apt-get install clamav -y
apt-get install clamtk -y

sed -i 's/Exec=clamtk %F/Exec=env CL_TIME=c clamtk %F/g' /usr/share/applications/clamtk.desktop


#### UFIE grub setting ####
#### copy package
echo "############# setting grub ############"
cp -r /mydir/mydebs /usr/local

#### add sources.list
echo 'deb file:/usr/local/mydebs ./' >> /etc/apt/sources.list.d/official-package-repositories.list

#### GPG public key import
gpg --recv-keys --keyserver keyserver.ubuntu.com 640F902A
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 640F902A


# set mirror server - kaist kakao
sed -i 's/packages.linuxmint.com/ftp.kaist.ac.kr\/linuxmint/g' /etc/apt/sources.list.d/official-package-repositories.list
sed -i 's/#id:linuxmint_main//g' /etc/apt/sources.list.d/official-package-repositories.list
sed -i 's/archive.ubuntu.com\/ubuntu/mirror.kakao.com\/ubuntu/g' /etc/apt/sources.list.d/official-package-repositories.list


apt-get update


#### kdenlive
echo "############# install kdenlive ############"
apt install frei0r-plugins -y
apt install dvdauthor -y
apt install vlc -y
apt install kdenlive -y


### install locale
echo "############# install locale ############"
apt install fcitx -y
apt install fcitx-hangul -y
apt install fcitx-config-gtk -y
apt install fcitx-config-gtk2 -y

apt install fcitx-frontend-all -y
apt install fcitx-frontend-fbterm -y
apt install fcitx-frontend-gtk2 -y
apt install fcitx-frontend-gtk3 -y
apt install fcitx-frontend-qt4 -y
apt install fcitx-frontend-qt5 -y

apt install fcitx-libs -y
apt install fcitx-module-dbus -y
apt install fcitx-module-kimpanel -y
apt install fcitx-module-lua -y
apt install fcitx-module-x11 -y
apt install fcitx-tools -y
apt install fcitx-ui-classic -y
apt install fcitx-ui-light -y
apt install fcitx-ui-qimpanel -y

apt install ibus -y
apt install ibus-hangul -y
apt install ibus-clutter -y
apt install ibus-gtk -y
apt install ibus-gtk3 -y
apt install ibus-qt4 -y
apt install ibus-table -y

apt install uim -y
apt install uim-fep -y
apt install uim-gtk2.0 -y
apt install uim-gtk3 -y
apt install uim-xim -y
apt install gir1.2-fcitx-1.0 -y


#### add fonts - gabia seoul spoka
echo "############# setting fonts - gabia spoka ############"
dpkg -i /mydir/font-gabia.deb
dpkg -i /mydir/fonts-spoka-hansans-kr.deb


# setting keyboard
im-config -n fcitx

# set timezone
ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime


#### window file encoding
echo "############# install nemo - window file encoding ############"
apt install nemo-filename-repairer

