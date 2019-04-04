#!/bin/bash

#### create - after install script ####
echo "############# create after install script #############"
echo "#/bin/bash" >> /root/.after_install.sh
sed -i 's/#\//#!\//g' /root/.after_install.sh

echo "" >> /root/.after_install.sh

# set firewall - ufw on
echo "sudo sed -i 's/ENABLED=no/ENABLED=yes/g' /target/etc/ufw/ufw.conf" >> /root/.after_install.sh


# get locale
echo "sed -i '/^#/ d' /target/etc/default/locale" >> /root/.after_install.sh

lang_kr1="lang_kr='LANG="
lang_kr2='"ko_KR.UTF-8"'
lang_kr3="'"
echo "$lang_kr1""$lang_kr2""$lang_kr3" >> /root/.after_install.sh

echo "lang_val=(cat /target/etc/default/locale)" >> /root/.after_install.sh
sed -i 's/=(/=\$(/g' /root/.after_install.sh

echo "" >> /root/.after_install.sh

# if start
echo 'if [ "lang_val" == "lang_kr" ]; then' >> /root/.after_install.sh
sed -i 's/"lang_kr"/"\$lang_kr"/g' /root/.after_install.sh
sed -i 's/"lang_val"/"\$lang_val"/g' /root/.after_install.sh


# set locale
echo "  echo 'LANGUAGE=ko_KR:ko' >> /target/etc/default/locale;" >> /root/.after_install.sh
echo "  echo 'LC_NUMERIC=ko_KR.UTF-8' >> /target/etc/default/locale;" >> /root/.after_install.sh
echo "  echo 'LC_TIME=ko_KR.UTF-8' >> /target/etc/default/locale;" >> /root/.after_install.sh
echo "  echo 'LC_MONETARY=ko_KR.UTF-8' >> /target/etc/default/locale;" >> /root/.after_install.sh
echo "  echo 'LC_PAPER=ko_KR.UTF-8' >> /target/etc/default/locale;" >> /root/.after_install.sh
echo "  echo 'LC_IDENTIFICATION=ko_KR.UTF-8' >> /target/etc/default/locale;" >> /root/.after_install.sh
echo "  echo 'LC_NAME=ko_KR.UTF-8' >> /target/etc/default/locale;" >> /root/.after_install.sh
echo "  echo 'LC_ADDRESS=ko_KR.UTF-8' >> /target/etc/default/locale;" >> /root/.after_install.sh
echo "  echo 'LC_TELEPHONE=ko_KR.UTF-8' >> /target/etc/default/locale;" >> /root/.after_install.sh
echo "  echo 'LC_MEASUREMENT=ko_KR.UTF-8' >> /target/etc/default/locale;" >> /root/.after_install.sh

echo "fi" >> /root/.after_install.sh
# if end


# change gui language - ko_KR -> default
echo "rm /target/home/*/.dmrc" >> /root/.after_install.sh
echo "rm /target/etc/skel/.dmrc" >> /root/.after_install.sh


# remove install script
echo "sudo rm -r /target/cdrom" >> /root/.after_install.sh
echo "sudo rm /target/root/.after_install.sh" >> /root/.after_install.sh

sudo chmod +x /root/.after_install.sh

