#!/bin/bash
#### change install slide

ISO_NAME='HamoniKR-ME'
ISO_CN='ME'
ISO_VER='1.3'

#### os before installation slide (image during install)
cp -r /mydir/hamoniKR-ME_img/slide/* /usr/share/ubiquity-slideshow/slides/screenshots/
  
sed -i "s/리눅스 민트에/$ISO_NAME 에/g" /usr/share/ubiquity-slideshow/slides/l10n/ko/welcome.html
sed -i "s/그리고  리눅스 민트를/HamoniKR-ME 를/g" /usr/share/ubiquity-slideshow/slides/l10n/ko/welcome.html
sed -i "s/리눅스 민트가/$ISO_NAME 가/g" /usr/share/ubiquity-slideshow/slides/l10n/ko/welcome.html
sed -i "s/리눅스//g" /usr/share/ubiquity-slideshow/slides/l10n/ko/welcome.html
sed -i "s/민트에/$ISO_NAME 에/g" /usr/share/ubiquity-slideshow/slides/l10n/ko/welcome.html
sed -i "s/게 있거나 문제가 있을 땐, 주변에 물어보세요. //g" /usr/share/ubiquity-slideshow/slides/l10n/ko/help.html
sed -i "s/ 리눅스 민트는 수백만 명의 사람들이 사용하는 가장 유명한 데스크톱용 리눅스 중//g" /usr/share/ubiquity-slideshow/slides/l10n/ko/help.html
sed -i "s/하나입니다. 사용자 안내서, 커뮤니티 웹사이트, 튜토리얼 모음집 그리고 채팅방과 인터넷에서 가장 다이나믹한 커뮤니티를 함께 제공합니다.//g" /usr/share/ubiquity-slideshow/slides/l10n/ko/help.html
sed -i "s/궁금한/궁금한 게 있거나 문제가 있을 땐, 하모니카 커뮤니티(https:\/\/hamonikr.org)에 물어보세요. 하모니카 커뮤니티는 한국어 사용자들이 가장 많이 이용하는 리눅스 커뮤니티 입니다./g" /usr/share/ubiquity-slideshow/slides/l10n/ko/help.html
sed -i "s/Linux Mint/$ISO_NAME/g" /usr/share/ubiquity-slideshow/slides/l10n/*/*.html
sed -i "s/리눅스 민트/$ISO_NAME/g" /usr/share/ubiquity-slideshow/slides/l10n/*/*.html

  
# change welcome window
sed -i "s/dist_name = \"Linux Mint\"/dist_name = \"$ISO_NAME\"/g" /usr/lib/linuxmint/mintwelcome/mintwelcome.py
sed -i "s/리눅스 민트/$ISO_NAME/g" /usr/share/applications/mintwelcome.desktop
sed -i "s/Linux Mint/$ISO_NAME/g" /usr/share/applications/mintwelcome.desktop
sed -i "s/리눅스 민트/$ISO_NAME/g" /usr/share/applications/kde4/mintwelcome.desktop
sed -i "s/Linux Mint/$ISO_NAME/g" /usr/share/applications/kde4/mintwelcome.desktop

#### os after installation slide

cd /usr/share/linuxmint/locale
msgunfmt af/LC_MESSAGES/mintwelcome.mo > af/LC_MESSAGES/mintwelcome.po
msgunfmt am/LC_MESSAGES/mintwelcome.mo > am/LC_MESSAGES/mintwelcome.po
msgunfmt ar/LC_MESSAGES/mintwelcome.mo > ar/LC_MESSAGES/mintwelcome.po
msgunfmt ast/LC_MESSAGES/mintwelcome.mo > ast/LC_MESSAGES/mintwelcome.po
msgunfmt az/LC_MESSAGES/mintwelcome.mo > az/LC_MESSAGES/mintwelcome.po
msgunfmt cy/LC_MESSAGES/mintwelcome.mo > cy/LC_MESSAGES/mintwelcome.po
msgunfmt da/LC_MESSAGES/mintwelcome.mo > da/LC_MESSAGES/mintwelcome.po
msgunfmt en_CA/LC_MESSAGES/mintwelcome.mo > en_CA/LC_MESSAGES/mintwelcome.po
msgunfmt es/LC_MESSAGES/mintwelcome.mo > es/LC_MESSAGES/mintwelcome.po
msgunfmt fo/LC_MESSAGES/mintwelcome.mo > fo/LC_MESSAGES/mintwelcome.po
msgunfmt fr_CA/LC_MESSAGES/mintwelcome.mo > fr_CA/LC_MESSAGES/mintwelcome.po
msgunfmt gl/LC_MESSAGES/mintwelcome.mo > gl/LC_MESSAGES/mintwelcome.po
msgunfmt hy/LC_MESSAGES/mintwelcome.mo > hy/LC_MESSAGES/mintwelcome.po
msgunfmt ia/LC_MESSAGES/mintwelcome.mo > ia/LC_MESSAGES/mintwelcome.po
msgunfmt is/LC_MESSAGES/mintwelcome.mo > is/LC_MESSAGES/mintwelcome.po
msgunfmt it/LC_MESSAGES/mintwelcome.mo > it/LC_MESSAGES/mintwelcome.po
msgunfmt ka/LC_MESSAGES/mintwelcome.mo > ka/LC_MESSAGES/mintwelcome.po
msgunfmt lb/LC_MESSAGES/mintwelcome.mo > lb/LC_MESSAGES/mintwelcome.po
msgunfmt lt/LC_MESSAGES/mintwelcome.mo > lt/LC_MESSAGES/mintwelcome.po
msgunfmt lv/LC_MESSAGES/mintwelcome.mo > lv/LC_MESSAGES/mintwelcome.po
msgunfmt mk/LC_MESSAGES/mintwelcome.mo > mk/LC_MESSAGES/mintwelcome.po
msgunfmt ml/LC_MESSAGES/mintwelcome.mo > ml/LC_MESSAGES/mintwelcome.po
msgunfmt mr/LC_MESSAGES/mintwelcome.mo > mr/LC_MESSAGES/mintwelcome.po
msgunfmt pap/LC_MESSAGES/mintwelcome.mo > pap/LC_MESSAGES/mintwelcome.po
msgunfmt sc/LC_MESSAGES/mintwelcome.mo > sc/LC_MESSAGES/mintwelcome.po
msgunfmt sco/LC_MESSAGES/mintwelcome.mo > sco/LC_MESSAGES/mintwelcome.po
msgunfmt so/LC_MESSAGES/mintwelcome.mo > so/LC_MESSAGES/mintwelcome.po
msgunfmt su/LC_MESSAGES/mintwelcome.mo > su/LC_MESSAGES/mintwelcome.po
msgunfmt uk/LC_MESSAGES/mintwelcome.mo > uk/LC_MESSAGES/mintwelcome.po
msgunfmt uz/LC_MESSAGES/mintwelcome.mo > uz/LC_MESSAGES/mintwelcome.po
msgunfmt yi/LC_MESSAGES/mintwelcome.mo > yi/LC_MESSAGES/mintwelcome.po
msgunfmt zh_CN/LC_MESSAGES/mintwelcome.mo > zh_CN/LC_MESSAGES/mintwelcome.po
msgunfmt zu/LC_MESSAGES/mintwelcome.mo > zu/LC_MESSAGES/mintwelcome.po
  
msgunfmt fi/LC_MESSAGES/mintwelcome.mo > fi/LC_MESSAGES/mintwelcome.po
msgunfmt nb/LC_MESSAGES/mintwelcome.mo > nb/LC_MESSAGES/mintwelcome.po
msgunfmt zh_TW/LC_MESSAGES/mintwelcome.mo > zh_TW/LC_MESSAGES/mintwelcome.po
msgunfmt el/LC_MESSAGES/mintwelcome.mo > el/LC_MESSAGES/mintwelcome.po
msgunfmt fa/LC_MESSAGES/mintwelcome.mo > fa/LC_MESSAGES/mintwelcome.po
msgunfmt kk/LC_MESSAGES/mintwelcome.mo > kk/LC_MESSAGES/mintwelcome.po
msgunfmt th/LC_MESSAGES/mintwelcome.mo > th/LC_MESSAGES/mintwelcome.po
msgunfmt oc/LC_MESSAGES/mintwelcome.mo > oc/LC_MESSAGES/mintwelcome.po
msgunfmt ro/LC_MESSAGES/mintwelcome.mo > ro/LC_MESSAGES/mintwelcome.po
msgunfmt si/LC_MESSAGES/mintwelcome.mo > si/LC_MESSAGES/mintwelcome.po
msgunfmt bg/LC_MESSAGES/mintwelcome.mo > bg/LC_MESSAGES/mintwelcome.po
msgunfmt vi/LC_MESSAGES/mintwelcome.mo > vi/LC_MESSAGES/mintwelcome.po
msgunfmt hr/LC_MESSAGES/mintwelcome.mo > hr/LC_MESSAGES/mintwelcome.po
msgunfmt frp/LC_MESSAGES/mintwelcome.mo > frp/LC_MESSAGES/mintwelcome.po
msgunfmt la/LC_MESSAGES/mintwelcome.mo > la/LC_MESSAGES/mintwelcome.po
msgunfmt ja/LC_MESSAGES/mintwelcome.mo > ja/LC_MESSAGES/mintwelcome.po
msgunfmt ky/LC_MESSAGES/mintwelcome.mo > ky/LC_MESSAGES/mintwelcome.po
msgunfmt ku/LC_MESSAGES/mintwelcome.mo > ku/LC_MESSAGES/mintwelcome.po
msgunfmt sv/LC_MESSAGES/mintwelcome.mo > sv/LC_MESSAGES/mintwelcome.po
msgunfmt ga/LC_MESSAGES/mintwelcome.mo > ga/LC_MESSAGES/mintwelcome.po
msgunfmt be/LC_MESSAGES/mintwelcome.mo > be/LC_MESSAGES/mintwelcome.po
msgunfmt tr/LC_MESSAGES/mintwelcome.mo > tr/LC_MESSAGES/mintwelcome.po
msgunfmt fy/LC_MESSAGES/mintwelcome.mo > fy/LC_MESSAGES/mintwelcome.po
msgunfmt ta/LC_MESSAGES/mintwelcome.mo > ta/LC_MESSAGES/mintwelcome.po
msgunfmt ms/LC_MESSAGES/mintwelcome.mo > ms/LC_MESSAGES/mintwelcome.po
msgunfmt sk/LC_MESSAGES/mintwelcome.mo > sk/LC_MESSAGES/mintwelcome.po
msgunfmt kn/LC_MESSAGES/mintwelcome.mo > kn/LC_MESSAGES/mintwelcome.po
msgunfmt jv/LC_MESSAGES/mintwelcome.mo > jv/LC_MESSAGES/mintwelcome.po
msgunfmt fil/LC_MESSAGES/mintwelcome.mo > fil/LC_MESSAGES/mintwelcome.po
msgunfmt he/LC_MESSAGES/mintwelcome.mo > he/LC_MESSAGES/mintwelcome.po
msgunfmt pt/LC_MESSAGES/mintwelcome.mo > pt/LC_MESSAGES/mintwelcome.po
msgunfmt fr/LC_MESSAGES/mintwelcome.mo > fr/LC_MESSAGES/mintwelcome.po
msgunfmt eo/LC_MESSAGES/mintwelcome.mo > eo/LC_MESSAGES/mintwelcome.po
msgunfmt om/LC_MESSAGES/mintwelcome.mo > om/LC_MESSAGES/mintwelcome.po
msgunfmt tpi/LC_MESSAGES/mintwelcome.mo > tpi/LC_MESSAGES/mintwelcome.po
msgunfmt pa/LC_MESSAGES/mintwelcome.mo > pa/LC_MESSAGES/mintwelcome.po
msgunfmt ur/LC_MESSAGES/mintwelcome.mo > ur/LC_MESSAGES/mintwelcome.po
msgunfmt en_AU/LC_MESSAGES/mintwelcome.mo > en_AU/LC_MESSAGES/mintwelcome.po
msgunfmt ca/LC_MESSAGES/mintwelcome.mo > ca/LC_MESSAGES/mintwelcome.po
msgunfmt gd/LC_MESSAGES/mintwelcome.mo > gd/LC_MESSAGES/mintwelcome.po
msgunfmt bn/LC_MESSAGES/mintwelcome.mo > bn/LC_MESSAGES/mintwelcome.po
msgunfmt mus/LC_MESSAGES/mintwelcome.mo > mus/LC_MESSAGES/mintwelcome.po
msgunfmt mg/LC_MESSAGES/mintwelcome.mo > mg/LC_MESSAGES/mintwelcome.po
msgunfmt shn/LC_MESSAGES/mintwelcome.mo > shn/LC_MESSAGES/mintwelcome.po
msgunfmt gv/LC_MESSAGES/mintwelcome.mo > gv/LC_MESSAGES/mintwelcome.po
msgunfmt et/LC_MESSAGES/mintwelcome.mo > et/LC_MESSAGES/mintwelcome.po
msgunfmt zh_HK/LC_MESSAGES/mintwelcome.mo > zh_HK/LC_MESSAGES/mintwelcome.po
msgunfmt en_GB/LC_MESSAGES/mintwelcome.mo > en_GB/LC_MESSAGES/mintwelcome.po
msgunfmt id/LC_MESSAGES/mintwelcome.mo > id/LC_MESSAGES/mintwelcome.po
msgunfmt tg/LC_MESSAGES/mintwelcome.mo > tg/LC_MESSAGES/mintwelcome.po
msgunfmt ca@valencia/LC_MESSAGES/mintwelcome.mo > ca@valencia/LC_MESSAGES/mintwelcome.po
msgunfmt te/LC_MESSAGES/mintwelcome.mo > te/LC_MESSAGES/mintwelcome.po
msgunfmt pt_BR/LC_MESSAGES/mintwelcome.mo > pt_BR/LC_MESSAGES/mintwelcome.po
msgunfmt csb/LC_MESSAGES/mintwelcome.mo > csb/LC_MESSAGES/mintwelcome.po
msgunfmt sr/LC_MESSAGES/mintwelcome.mo > sr/LC_MESSAGES/mintwelcome.po
msgunfmt de/LC_MESSAGES/mintwelcome.mo > de/LC_MESSAGES/mintwelcome.po
msgunfmt nn/LC_MESSAGES/mintwelcome.mo > nn/LC_MESSAGES/mintwelcome.po
msgunfmt sq/LC_MESSAGES/mintwelcome.mo > sq/LC_MESSAGES/mintwelcome.po
msgunfmt kab/LC_MESSAGES/mintwelcome.mo > kab/LC_MESSAGES/mintwelcome.po
msgunfmt bs/LC_MESSAGES/mintwelcome.mo > bs/LC_MESSAGES/mintwelcome.po
msgunfmt hi/LC_MESSAGES/mintwelcome.mo > hi/LC_MESSAGES/mintwelcome.po
msgunfmt my/LC_MESSAGES/mintwelcome.mo > my/LC_MESSAGES/mintwelcome.po
msgunfmt nl/LC_MESSAGES/mintwelcome.mo > nl/LC_MESSAGES/mintwelcome.po
msgunfmt nds/LC_MESSAGES/mintwelcome.mo > nds/LC_MESSAGES/mintwelcome.po
msgunfmt nap/LC_MESSAGES/mintwelcome.mo > nap/LC_MESSAGES/mintwelcome.po
msgunfmt eu/LC_MESSAGES/mintwelcome.mo > eu/LC_MESSAGES/mintwelcome.po
msgunfmt tl/LC_MESSAGES/mintwelcome.mo > tl/LC_MESSAGES/mintwelcome.po
msgunfmt sl/LC_MESSAGES/mintwelcome.mo > sl/LC_MESSAGES/mintwelcome.po
msgunfmt ru/LC_MESSAGES/mintwelcome.mo > ru/LC_MESSAGES/mintwelcome.po
msgunfmt cs/LC_MESSAGES/mintwelcome.mo > cs/LC_MESSAGES/mintwelcome.po
msgunfmt hu/LC_MESSAGES/mintwelcome.mo > hu/LC_MESSAGES/mintwelcome.po
msgunfmt ne/LC_MESSAGES/mintwelcome.mo > ne/LC_MESSAGES/mintwelcome.po
msgunfmt sr@latin/LC_MESSAGES/mintwelcome.mo > sr@latin/LC_MESSAGES/mintwelcome.po

sed -i "s/Linux Mint/$ISO_NAME/g" */LC_MESSAGES/mintwelcome.po
  
msgfmt af/LC_MESSAGES/mintwelcome.po -o af/LC_MESSAGES/mintwelcome.mo
msgfmt am/LC_MESSAGES/mintwelcome.po -o am/LC_MESSAGES/mintwelcome.mo
msgfmt ar/LC_MESSAGES/mintwelcome.po -o ar/LC_MESSAGES/mintwelcome.mo
msgfmt ast/LC_MESSAGES/mintwelcome.po -o ast/LC_MESSAGES/mintwelcome.mo
msgfmt az/LC_MESSAGES/mintwelcome.po -o az/LC_MESSAGES/mintwelcome.mo
msgfmt cy/LC_MESSAGES/mintwelcome.po -o cy/LC_MESSAGES/mintwelcome.mo
msgfmt da/LC_MESSAGES/mintwelcome.po -o da/LC_MESSAGES/mintwelcome.mo
msgfmt en_CA/LC_MESSAGES/mintwelcome.po -o en_CA/LC_MESSAGES/mintwelcome.mo
msgfmt es/LC_MESSAGES/mintwelcome.po -o es/LC_MESSAGES/mintwelcome.mo
msgfmt fo/LC_MESSAGES/mintwelcome.po -o fo/LC_MESSAGES/mintwelcome.mo
msgfmt fr_CA/LC_MESSAGES/mintwelcome.po -o fr_CA/LC_MESSAGES/mintwelcome.mo
msgfmt gl/LC_MESSAGES/mintwelcome.po -o gl/LC_MESSAGES/mintwelcome.mo
msgfmt hy/LC_MESSAGES/mintwelcome.po -o hy/LC_MESSAGES/mintwelcome.mo
msgfmt ia/LC_MESSAGES/mintwelcome.po -o ia/LC_MESSAGES/mintwelcome.mo
msgfmt is/LC_MESSAGES/mintwelcome.po -o is/LC_MESSAGES/mintwelcome.mo
msgfmt it/LC_MESSAGES/mintwelcome.po -o it/LC_MESSAGES/mintwelcome.mo
msgfmt ka/LC_MESSAGES/mintwelcome.po -o ka/LC_MESSAGES/mintwelcome.mo
msgfmt lb/LC_MESSAGES/mintwelcome.po -o lb/LC_MESSAGES/mintwelcome.mo
msgfmt lt/LC_MESSAGES/mintwelcome.po -o lt/LC_MESSAGES/mintwelcome.mo
msgfmt lv/LC_MESSAGES/mintwelcome.po -o lv/LC_MESSAGES/mintwelcome.mo
msgfmt mk/LC_MESSAGES/mintwelcome.po -o mk/LC_MESSAGES/mintwelcome.mo
msgfmt ml/LC_MESSAGES/mintwelcome.po -o ml/LC_MESSAGES/mintwelcome.mo
msgfmt mr/LC_MESSAGES/mintwelcome.po -o mr/LC_MESSAGES/mintwelcome.mo
msgfmt pap/LC_MESSAGES/mintwelcome.po -o pap/LC_MESSAGES/mintwelcome.mo
msgfmt sc/LC_MESSAGES/mintwelcome.po -o sc/LC_MESSAGES/mintwelcome.mo
msgfmt sco/LC_MESSAGES/mintwelcome.po -o sco/LC_MESSAGES/mintwelcome.mo
msgfmt so/LC_MESSAGES/mintwelcome.po -o so/LC_MESSAGES/mintwelcome.mo
msgfmt su/LC_MESSAGES/mintwelcome.po -o su/LC_MESSAGES/mintwelcome.mo
msgfmt uk/LC_MESSAGES/mintwelcome.po -o uk/LC_MESSAGES/mintwelcome.mo
msgfmt uz/LC_MESSAGES/mintwelcome.po -o uz/LC_MESSAGES/mintwelcome.mo
msgfmt yi/LC_MESSAGES/mintwelcome.po -o yi/LC_MESSAGES/mintwelcome.mo
msgfmt zh_CN/LC_MESSAGES/mintwelcome.po -o zh_CN/LC_MESSAGES/mintwelcome.mo
msgfmt zu/LC_MESSAGES/mintwelcome.po -o zu/LC_MESSAGES/mintwelcome.mo
  
msgfmt fi/LC_MESSAGES/mintwelcome.po -o fi/LC_MESSAGES/mintwelcome.mo
msgfmt nb/LC_MESSAGES/mintwelcome.po -o nb/LC_MESSAGES/mintwelcome.mo
msgfmt zh_TW/LC_MESSAGES/mintwelcome.po -o zh_TW/LC_MESSAGES/mintwelcome.mo
msgfmt el/LC_MESSAGES/mintwelcome.po -o el/LC_MESSAGES/mintwelcome.mo
msgfmt fa/LC_MESSAGES/mintwelcome.po -o fa/LC_MESSAGES/mintwelcome.mo
msgfmt kk/LC_MESSAGES/mintwelcome.po -o kk/LC_MESSAGES/mintwelcome.mo
msgfmt th/LC_MESSAGES/mintwelcome.po -o th/LC_MESSAGES/mintwelcome.mo
msgfmt oc/LC_MESSAGES/mintwelcome.po -o oc/LC_MESSAGES/mintwelcome.mo
msgfmt ro/LC_MESSAGES/mintwelcome.po -o ro/LC_MESSAGES/mintwelcome.mo
msgfmt si/LC_MESSAGES/mintwelcome.po -o si/LC_MESSAGES/mintwelcome.mo
msgfmt bg/LC_MESSAGES/mintwelcome.po -o bg/LC_MESSAGES/mintwelcome.mo
msgfmt vi/LC_MESSAGES/mintwelcome.po -o vi/LC_MESSAGES/mintwelcome.mo
msgfmt hr/LC_MESSAGES/mintwelcome.po -o hr/LC_MESSAGES/mintwelcome.mo
msgfmt frp/LC_MESSAGES/mintwelcome.po -o frp/LC_MESSAGES/mintwelcome.mo
msgfmt la/LC_MESSAGES/mintwelcome.po -o la/LC_MESSAGES/mintwelcome.mo
msgfmt ja/LC_MESSAGES/mintwelcome.po -o ja/LC_MESSAGES/mintwelcome.mo
msgfmt ky/LC_MESSAGES/mintwelcome.po -o ky/LC_MESSAGES/mintwelcome.mo
msgfmt ku/LC_MESSAGES/mintwelcome.po -o ku/LC_MESSAGES/mintwelcome.mo
msgfmt sv/LC_MESSAGES/mintwelcome.po -o sv/LC_MESSAGES/mintwelcome.mo
msgfmt ga/LC_MESSAGES/mintwelcome.po -o ga/LC_MESSAGES/mintwelcome.mo
msgfmt be/LC_MESSAGES/mintwelcome.po -o be/LC_MESSAGES/mintwelcome.mo
msgfmt tr/LC_MESSAGES/mintwelcome.po -o tr/LC_MESSAGES/mintwelcome.mo
msgfmt fy/LC_MESSAGES/mintwelcome.po -o fy/LC_MESSAGES/mintwelcome.mo
msgfmt ta/LC_MESSAGES/mintwelcome.po -o ta/LC_MESSAGES/mintwelcome.mo
msgfmt ms/LC_MESSAGES/mintwelcome.po -o ms/LC_MESSAGES/mintwelcome.mo
msgfmt sk/LC_MESSAGES/mintwelcome.po -o sk/LC_MESSAGES/mintwelcome.mo
msgfmt kn/LC_MESSAGES/mintwelcome.po -o kn/LC_MESSAGES/mintwelcome.mo
msgfmt jv/LC_MESSAGES/mintwelcome.po -o jv/LC_MESSAGES/mintwelcome.mo
msgfmt fil/LC_MESSAGES/mintwelcome.po -o fil/LC_MESSAGES/mintwelcome.mo
msgfmt he/LC_MESSAGES/mintwelcome.po -o he/LC_MESSAGES/mintwelcome.mo
msgfmt pt/LC_MESSAGES/mintwelcome.po -o pt/LC_MESSAGES/mintwelcome.mo
msgfmt fr/LC_MESSAGES/mintwelcome.po -o fr/LC_MESSAGES/mintwelcome.mo
msgfmt eo/LC_MESSAGES/mintwelcome.po -o eo/LC_MESSAGES/mintwelcome.mo
msgfmt om/LC_MESSAGES/mintwelcome.po -o om/LC_MESSAGES/mintwelcome.mo
msgfmt tpi/LC_MESSAGES/mintwelcome.po -o tpi/LC_MESSAGES/mintwelcome.mo
msgfmt pa/LC_MESSAGES/mintwelcome.po -o pa/LC_MESSAGES/mintwelcome.mo
msgfmt ur/LC_MESSAGES/mintwelcome.po -o ur/LC_MESSAGES/mintwelcome.mo
msgfmt en_AU/LC_MESSAGES/mintwelcome.po -o en_AU/LC_MESSAGES/mintwelcome.mo
msgfmt ca/LC_MESSAGES/mintwelcome.po -o ca/LC_MESSAGES/mintwelcome.mo
msgfmt gd/LC_MESSAGES/mintwelcome.po -o gd/LC_MESSAGES/mintwelcome.mo
msgfmt bn/LC_MESSAGES/mintwelcome.po -o bn/LC_MESSAGES/mintwelcome.mo
msgfmt mus/LC_MESSAGES/mintwelcome.po -o mus/LC_MESSAGES/mintwelcome.mo
msgfmt mg/LC_MESSAGES/mintwelcome.po -o mg/LC_MESSAGES/mintwelcome.mo
msgfmt shn/LC_MESSAGES/mintwelcome.po -o shn/LC_MESSAGES/mintwelcome.mo
msgfmt gv/LC_MESSAGES/mintwelcome.po -o gv/LC_MESSAGES/mintwelcome.mo
msgfmt et/LC_MESSAGES/mintwelcome.po -o et/LC_MESSAGES/mintwelcome.mo
msgfmt zh_HK/LC_MESSAGES/mintwelcome.po -o zh_HK/LC_MESSAGES/mintwelcome.mo
msgfmt en_GB/LC_MESSAGES/mintwelcome.po -o en_GB/LC_MESSAGES/mintwelcome.mo
msgfmt id/LC_MESSAGES/mintwelcome.po -o id/LC_MESSAGES/mintwelcome.mo
msgfmt tg/LC_MESSAGES/mintwelcome.po -o tg/LC_MESSAGES/mintwelcome.mo
msgfmt ca@valencia/LC_MESSAGES/mintwelcome.po -o ca@valencia/LC_MESSAGES/mintwelcome.mo
msgfmt te/LC_MESSAGES/mintwelcome.po -o te/LC_MESSAGES/mintwelcome.mo
msgfmt pt_BR/LC_MESSAGES/mintwelcome.po -o pt_BR/LC_MESSAGES/mintwelcome.mo
msgfmt csb/LC_MESSAGES/mintwelcome.po -o csb/LC_MESSAGES/mintwelcome.mo
msgfmt sr/LC_MESSAGES/mintwelcome.po -o sr/LC_MESSAGES/mintwelcome.mo
msgfmt de/LC_MESSAGES/mintwelcome.po -o de/LC_MESSAGES/mintwelcome.mo
msgfmt nn/LC_MESSAGES/mintwelcome.po -o nn/LC_MESSAGES/mintwelcome.mo
msgfmt sq/LC_MESSAGES/mintwelcome.po -o sq/LC_MESSAGES/mintwelcome.mo
msgfmt kab/LC_MESSAGES/mintwelcome.po -o kab/LC_MESSAGES/mintwelcome.mo
msgfmt bs/LC_MESSAGES/mintwelcome.po -o bs/LC_MESSAGES/mintwelcome.mo
msgfmt hi/LC_MESSAGES/mintwelcome.po -o hi/LC_MESSAGES/mintwelcome.mo
msgfmt my/LC_MESSAGES/mintwelcome.po -o my/LC_MESSAGES/mintwelcome.mo
msgfmt nl/LC_MESSAGES/mintwelcome.po -o nl/LC_MESSAGES/mintwelcome.mo
msgfmt nds/LC_MESSAGES/mintwelcome.po -o nds/LC_MESSAGES/mintwelcome.mo
msgfmt nap/LC_MESSAGES/mintwelcome.po -o nap/LC_MESSAGES/mintwelcome.mo
msgfmt eu/LC_MESSAGES/mintwelcome.po -o eu/LC_MESSAGES/mintwelcome.mo
msgfmt tl/LC_MESSAGES/mintwelcome.po -o tl/LC_MESSAGES/mintwelcome.mo
msgfmt sl/LC_MESSAGES/mintwelcome.po -o sl/LC_MESSAGES/mintwelcome.mo
msgfmt ru/LC_MESSAGES/mintwelcome.po -o ru/LC_MESSAGES/mintwelcome.mo
msgfmt cs/LC_MESSAGES/mintwelcome.po -o cs/LC_MESSAGES/mintwelcome.mo
msgfmt hu/LC_MESSAGES/mintwelcome.po -o hu/LC_MESSAGES/mintwelcome.mo
msgfmt ne/LC_MESSAGES/mintwelcome.po -o ne/LC_MESSAGES/mintwelcome.mo
msgfmt sr@latin/LC_MESSAGES/mintwelcome.po -o sr@latin/LC_MESSAGES/mintwelcome.mo
  
  
msgunfmt ko/LC_MESSAGES/mintwelcome.mo > ko/LC_MESSAGES/mintwelcome.po
sed -i "s/Linux Mint/$ISO_NAME/g" ko/LC_MESSAGES/mintwelcome.po
sed -i "s/리눅스 민트/$ISO_NAME/g" ko/LC_MESSAGES/mintwelcome.po


# 반갑습니다 페이지
sed -i "s/새로운 운영 체제에 오신 것을 환영합니다!/한국어 사용자에게 최적화된 운영 체제 $ISO_NAME에 오신 것을 환영합니다!/g" ko/LC_MESSAGES/mintwelcome.po
  
sed -i "s/개발 팀과 프로젝트에 참여한 모든 사람들의 이름으로, $ISO_NAME를 선택해 주/$ISO_NAME(Media Edition) 배포판은 Linux Mint 19 Tara Cinnamon 버전을 기반으로 여러 응용 프로그램들을 추가하였습니다. /g" ko/LC_MESSAGES/mintwelcome.po
sed -i 's/신 것에 대해 감사드립니다. 우리가 이 일에 참여하며 즐기고 있는 만큼 여러분들/최근 초등학교 SW 교육이 중요해지고 애플, 구글 등 글로벌 기업들도 교육용 플랫폼을 출시하고 있습니다. /g' ko/LC_MESSAGES/mintwelcome.po
sed -i 's/도 즐겁게 사용하시기를 바랍니다./그래서 2018 하모니카 ME 버전은 한글 리눅스 사용자들이 무료로 원격교육이나 화상회의 용도로 사용할 수 있는 보다 사용성이 좋은 리눅스 데스크탑 제공에 초점을 맞추었습니다. /g' ko/LC_MESSAGES/mintwelcome.po
  
sed -i 's/좋은 시간 보내시고 저희에게 당신의 피드백을 보내는 것을 주저하지 마세요./보다 자세한 사항 및 기타 문의 사항은 하모니카 커뮤니티(https:\/\/hamonikr.org)를 이용해 주세요./g' ko/LC_MESSAGES/mintwelcome.po
  


# 서류 작업
sed -i 's/서류 작업/가이드 문서/g' ko/LC_MESSAGES/mintwelcome.po
sed -i "s/$ISO_NAME 설명서는 PDF, ePUB  그리고 HTML 형식 및 다양한 언어로 제공되는 가/$ISO_NAME 설명서는 하모니카 커뮤니티에서 확인하실 수 있습니다./g" ko/LC_MESSAGES/mintwelcome.po
sed -i 's/이드 모음으로 구성되어 있습니다. 사용 가능한 가이드를 보려면 아래 버튼을 클릭/ /g' ko/LC_MESSAGES/mintwelcome.po
sed -i 's/하십시오./ /g' ko/LC_MESSAGES/mintwelcome.po
sed -i 's/래 버튼을 클릭 /래 버튼을 클릭하십시오. /g' ko/LC_MESSAGES/mintwelcome.po


# 도움말
sed -i 's/웹 포럼/하모니카 커뮤니티/g' ko/LC_MESSAGES/mintwelcome.po
sed -i "s/$ISO_NAME 포럼은 도움을 받을 수 있는 최고의 장소입니다. 수천 명의 사용자와 /하모니카 커뮤니티는 도움을 받을 수 있는 최고의 장소입니다. $ISO_NAME 를 사용하는 사람들과 /g" ko/LC_MESSAGES/mintwelcome.po
sed -i 's/IRC 채팅방/Slack 채널/g' ko/LC_MESSAGES/mintwelcome.po
sed -i 's/IRC 대화방에 연결하여 현재 온라인 상태 인 사용자와 채팅할 수도 있습니다. 물어/하모니카 커뮤니티 Slack 채널에 연결하여 현재 온라인 상태인 사용자와 채팅할 수도 있습니다. /g' ko/LC_MESSAGES/mintwelcome.po
sed -i 's/보세요, 어쩌면 그곳의 누군가가 해결책을 알고 있지 않을까요?/물어보세요. 누구나 참여하셔서 하모니카 커뮤니티에서 나누고 싶은 이야기를 자유롭게 하실수 있습니다./g' ko/LC_MESSAGES/mintwelcome.po
sed -i 's/다른 사용자와 좋지 않은 일이 생기는 경우 스스로 해결하시거나 중재 팀에 연락하/ /g' ko/LC_MESSAGES/mintwelcome.po
sed -i 's/세요. 모든 사람들이 예의 바르게 행동 하리라고 보장할 수는 없어도, 우리 프로젝/ /g' ko/LC_MESSAGES/mintwelcome.po
sed -i 's/트는 도움, 존중, 관용, 아이디어 및 건설적인 토론을 장려합니다./ /g' ko/LC_MESSAGES/mintwelcome.po


# 기여 - 깃허브
# sed -i 's/기여/내용입력/g' ko/LC_MESSAGES/mintwelcome.po
sed -i "s/$ISO_NAME는 멋진 프로젝트입니다. 이 프로젝트는 참여를 원하는 누구에게나 열/$ISO_NAME는 오픈소스 프로젝트입니다. /g" ko/LC_MESSAGES/mintwelcome.po
sed -i 's/려 있습니다. 도움을 줄 수 있는 여러가지 방법들이 있습니다. 참여 방법을 보려/이 프로젝트에 참여를 원하시거나 소스코드에 관심이 있다/g' ko/LC_MESSAGES/mintwelcome.po


msgfmt ko/LC_MESSAGES/mintwelcome.po -o ko/LC_MESSAGES/mintwelcome.mo
  
rm */LC_MESSAGES/mintwelcome.po

cd ..

sed -i "s/Linux Mint/$ISO_NAME/g" mintwelcome/mintwelcome.ui


# welcome button
# button_forums - 하모니카 커뮤니티(웹 포럼)
sed -i 's/"https:\/\/forums.linuxmint.com"/"https:\/\/hamonikr.org"/g' /usr/lib/linuxmint/mintwelcome/mintwelcome.py
  
# button_documentation - 가이드 문서(서류작업)
sed -i 's/"https:\/\/linuxmint.com\/documentation.php"/"https:\/\/hamonikr.org\/index.php?mid=board_hkrme\&category=55476"/g' /usr/lib/linuxmint/mintwelcome/mintwelcome.py
  
# button_contribute - 기여
sed -i 's/"https:\/\/linuxmint.com\/getinvolved.php"/"https:\/\/github.com\/ivsteam\/hamonikr"/g' /usr/lib/linuxmint/mintwelcome/mintwelcome.py
  
# button_irc - Slack 채널(IRC 채팅방)
sed -i 's/"irc:\/\/irc.spotchat.org\/linuxmint-help"/"https:\/\/hamonikr.org\/how_join"/g' /usr/lib/linuxmint/mintwelcome/mintwelcome.py
  
# button_codecs - 멀티미디어 코덱
# sed -i 's/    "apt://mint-meta-codecs?refresh=yes"    /"수정필요"/g' /usr/lib/linuxmint/mintwelcome/mintwelcome.py
  
# button_new_features - 새로운 기능 - 수정필요
sed -i 's/("clicked", self.visit, new_features)/("clicked", self.visit, "https:\/\/hamonikr.org\/board_hkrme\/55702")/g' /usr/lib/linuxmint/mintwelcome/mintwelcome.py
  
  
# button_release_notes - 릴리즈 노트 - 수정필요
sed -i 's/("clicked", self.visit, release_notes)/("clicked", self.visit, "https:\/\/hamonikr.org\/index.php?mid=board_hkrme\&category=55599")/g' /usr/lib/linuxmint/mintwelcome/mintwelcome.py

cp /mydir/hamoniKR-ME_img/48.png ./logo.png
cp /mydir/hamoniKR-ME_img/mint-logo.svg /usr/share/icons/hicolor/scalable/apps/linuxmint-logo.svg
  
cp /mydir/hamoniKR-ME_img/scalable_96x84.svg /usr/share/icons/hicolor/scalable/apps/linuxmint-logo-2.svg
cp /mydir/hamoniKR-ME_img/scalable_96x84.svg /usr/share/icons/hicolor/scalable/apps/linuxmint-logo-3.svg
cp /mydir/hamoniKR-ME_img/scalable_96x84.svg /usr/share/icons/hicolor/scalable/apps/linuxmint-logo-4.svg
cp /mydir/hamoniKR-ME_img/scalable_96x84.svg /usr/share/icons/hicolor/scalable/apps/linuxmint-logo-5.svg
cp /mydir/hamoniKR-ME_img/mint-logo.svg /usr/share/icons/hicolor/scalable/apps/mintwelcome.svg
cp /mydir/hamoniKR-ME_img/mint-logo.svg /usr/share/icons/hicolor/scalable/apps/mintsources-mint.svg
  
  

# change help window
sed -i "s/리눅스 민트/$ISO_NAME/g" /usr/share/help/ko/mintupdate/*.*
sed -i "s/Linux Mint/$ISO_NAME/g" /usr/share/help/ko/mintupdate/*.*
