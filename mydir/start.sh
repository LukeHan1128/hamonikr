#!/bin/bash
#
# update 2019.04.04
# LukeHan
#

###### iso info ######
CDIMAGENAME='linuxmint-19-cinnamon-64bit-v2.iso'
IMAGE_NAME='HamoniKR-ME_1.3'


###### check the use script ######
sc_casper=true		## booting use setting
sc_program=true		## package install and default setting script
sc_install_after=true	## preseed script
sc_text_change=true	## os linux mint text change
sc_os_img=true		## os image setting
sc_os_slide=true	## os install slide setting
sc_dev=false		## only devloment


echo "####install & file setting####"
start_time=$(date +%FT%T)
echo "[$start_time+00:00] Starting "

# language check
ck_lang=$(env | grep LANG=en_US.UTF-8 | wc -l)

if [ "$ck_lang" = 0 ] ; then
	echo "#### please use the English at system location : not English not success  ####"
        exit 1
fi


#git --version  >/dev/null 2>&1 || { echo >&2 "Please install git - apt install git "; exit 1; }
xorriso -version  >/dev/null 2>&1 || { sudo apt-get install xorriso -y; }


if [ ! -e ~/$CDIMAGENAME ]; then
	echo "#### download linuxmint-19-cinnamon-64bit-v2.iso ####"
	wget -P ~/. http://ftp.kaist.ac.kr/linuxmint-iso/stable/19/linuxmint-19-cinnamon-64bit-v2.iso
fi

#### mv foler 
cd ~/.

####  necessary file setting
sudo chmod 777 mydir
cd mydir


echo "####Copying $CDIMAGENAME to working directory...####"


cd ~/.
mkdir custom-img
cp $CDIMAGENAME custom-img
cd custom-img


# Extract the CD .iso contents
mkdir mnt
echo "####Mounting the .iso as 'mnt' in the local directory. Password-up, please.####"
sudo mount -o loop $CDIMAGENAME mnt

#Extract the .iso contents into dir 'extract-cd'
mkdir extract-cd
sudo rsync --exclude=/casper/filesystem.squashfs -a mnt/ extract-cd

#Extract the isohybrid MBR 'isohdpfx.bin' from the source ISO image using dd
sudo dd if=$CDIMAGENAME bs=512 count=1 of=extract-cd/isolinux/isohdpfx.bin

# Extract the Desktop system Extract the SquashFS filesystem
sudo unsquashfs mnt/casper/filesystem.squashfs
sudo mv squashfs-root edit

#We are finished with the source .iso image. Unmount it.
sudo umount mnt

#Delete the source .iso copy.
rm $CDIMAGENAME

##############################################################################

# hamonios data file cp
sudo cp -r ~/mydir/ ~/custom-img/edit

##############################################################################
if $sc_casper; then
	echo "####casper start####"
	sh ~/mydir/casper.sh
	echo "####casper end####"
fi

##############################################################################
echo "####chroot start####"
# Prepare and chroot
sudo cp /etc/resolv.conf edit/etc/
sudo mount --bind /dev/ edit/dev

# Learned this inline scripting from https://askubuntu.com/questions/551195/scripting-chroot-how-to
cat << EOF | sudo chroot edit
mount -t proc none /proc
mount -t sysfs none /sys
mount -t devpts none /dev/pts

# "To avoid locale issues and in order to import GPG keys..."
export HOME=/root
export LC_ALL=C
dbus-uuidgen > /var/lib/dbus/machine-id
dpkg-divert --local --rename --add /sbin/initctl
ln -s /bin/true /sbin/initctl

##############################################################################
echo "####Customizations setting####"

$(if $sc_program; then
	echo 'echo "### program install (gimp, hwp, chrome, hamonia, veyon etc) ###"'
	echo 'sh ./mydir/program.sh'
	echo 'echo "### program install end ###"'
fi)

$(if $sc_install_after; then
	echo 'echo "### create - use the preseed script ###"'
	echo 'sh ./mydir/preseed_install_after.sh'
	echo 'echo "### create - use the preseed script end ###"'
fi)

$(if $sc_text_change; then
	echo 'echo "### linuxmint text change ###"'
	echo 'sh ./mydir/linuxmint_text_change.sh'
fi)

$(if $sc_os_img; then
	echo 'echo "### os img change ###"'
	echo 'sh ./mydir/os_img_change.sh'
fi)

$(if $sc_os_slide; then
	echo 'echo "###os slide change ###"'
	echo 'sh ./mydir/os_slide.sh'
fi)


$(if $sc_dev; then
	echo 'echo "### dev script ###"'
	echo 'sh ./mydir/only_dev.sh'
fi)

##############################################################################

#Clean up
sudo rm -rf /tmp/* ~/.bash_history
sudo rm /var/lib/dbus/machine-id
sudo rm /sbin/initctl
sudo dpkg-divert --rename --remove /sbin/initctl

# "now umount (unmount) special filesystems and exit chroot"
sudo mount /proc || umount -lf /proc
sudo umount /sys
sudo umount /dev/pts
EOF


#### preseed/early_command ####
echo "d-i debian-installer/language string ko" | sudo tee -a extract-cd/preseed/linuxmint.seed
echo "ubiquity ubiquity/success_command string cd /root; ./.after_install.sh" | sudo tee -a extract-cd/preseed/linuxmint.seed


sudo umount edit/dev

sudo rm -fr ~/custom-img/edit/mydir


echo "Regenerate the manifest"

#Regenerate the manifest
sudo chmod +w extract-cd/casper/filesystem.manifest
sudo chroot edit dpkg-query -W --showformat='${Package} ${Version}\n' | sudo tee extract-cd/casper/filesystem.manifest
sudo cp extract-cd/casper/filesystem.manifest extract-cd/casper/filesystem.manifest-desktop
sudo sed -i '/ubiquity/d' extract-cd/casper/filesystem.manifest-desktop
sudo sed -i '/casper/d' extract-cd/casper/filesystem.manifest-desktop




#Compress the filesystem
# Delete any existing squashfs - normally nothing to delete/rm.
sudo rm -fr extract-cd/casper/filesystem.squashfs
sudo mksquashfs edit extract-cd/casper/filesystem.squashfs -b 1048576
#sudo mksquashfs edit extract-cd/casper/filesystem.squashfs -b 1048576 -e edit/boot



#"Update the filesystem.size file, which is needed by the installer"
printf $(sudo du -sx --block-size=1 edit | cut -f1) | sudo tee extract-cd/casper/filesystem.size

#"Remove old md5sum.txt and calculate new md5 sums"
cd extract-cd
sudo rm md5sum.txt
find -type f -print0 | sudo xargs -0 md5sum | grep -v isolinux/boot.cat | sudo tee md5sum.txt

#"Create the ISO image"
#manpage for genisoimage http://manpages.ubuntu.com/manpages/trusty/man1/genisoimage.1.html
#original
#sudo genisoimage -D -r -V "$IMAGE_NAME" -cache-inodes -J -l -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -o ../$IMAGE_NAME.iso .

#from EFI Q&A: https://askubuntu.com/questions/457528/how-do-i-create-an-efi-bootable-iso-of-a-customized-version-of-ubuntu
#sudo mkisofs -U -A "Custom1604" -V "Custom1604" -volset "Custom1604" -J -joliet-long -r -v -T -o ../Custom1604.iso -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -eltorito-alt-boot -e boot/grub/efi.img -no-emul-boot .

# From https://linuxconfig.org/legacy-bios-uefi-and-secureboot-ready-ubuntu-live-image-customization
# THIS WORKS for creating a .iso that can boot a PC from USB after dd to the USB drive, and as a file referenced as the boot image for a VM (e.g. VirtualBox)
sudo xorriso -as mkisofs -isohybrid-mbr isolinux/isohdpfx.bin -c isolinux/boot.cat -b isolinux/isolinux.bin -no-emul-boot -boot-load-size 4 -boot-info-table -eltorito-alt-boot -e boot/grub/efi.img -no-emul-boot -isohybrid-gpt-basdat -o ../$IMAGE_NAME.iso .

# Not necessary, but you can check that a bootable partition is visible to fdisk.
# If no bootable partiction is visible to fdisk, my experience is that the ISO will not boot from USB.
# If so, we should be good to go.
sudo fdisk -lu ../$IMAGE_NAME.iso


echo "#### finish time ####"
echo "[$start_time+00:00] Start Time "
echo "[$(date +%FT%T)+00:00] end Time "


exit 0
