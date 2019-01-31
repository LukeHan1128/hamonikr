<img src="https://hamonikr.org/files/attach/images/46053/be8885e3c0258da42d68a00294f41486.png" style="width: 100%;">

# 하모니카 커뮤니티
* <b>리눅스 커뮤니티 하모니카 :</b> https://hamonikr.org
<br/><br/>

# 하모니카ME는 어떤 프로젝트 인가요?

HamoniKR-ME(Media Edition) 배포판은 Linux Mint 19 Tara Cinnamon 버전을 기반으로 여러 응용 프로그램들을 추가하였습니다. 최근 초등학교 SW 교육이 중요해지고 애플, 구글 등 글로벌 기업들도 교육용 플랫폼을 출시하고 있습니다. 그래서 2018 하모니카 ME 버전은 한글 리눅스 사용자들이 무료로 원격교육이나 화상회의 용도로 사용할 수 있는 보다 사용성이 좋은 리눅스 데스크탑 제공에 초점을 맞추었습니다.
<br/><br/>

# 스크린샷
<img src="https://raw.githubusercontent.com/ivsteam/hamonikr/master/screenshot.png" width="100%;">
<br/><br/>

# History
* 자세한 내용을 알고싶다면 [하모니카 커뮤니티 - 릴리즈노트](https://hamonikr.org/index.php?mid=board_hkrme&category=55599)를 확인해 주세요.

* 2019-01-22 [HamoniKR-ME 1.2 release](https://hamonikr.org/)
* 2018-11-20 [HamoniKR-ME 1.1 release](https://hamonikr.org/index.php?mid=board_hkrme&category=55599&document_srl=55790)
* 2018-11-18 [HamoniKR-ME 1.0 release](https://hamonikr.org/index.php?mid=board_hkrme&category=55599&document_srl=55702)
<br/>

# 준비
* 해당 프로젝트는 데비안 기반의 리눅스 배포판에서 실행 가능합니다.
<br/>
<b>※ 해당 스크립트는 홈 디렉토리를 기반으로 작성되었습니다.</b><br/>
<b>※ 스크립트를 실행하기 위해선 시스템 언어가 영어(English)로 설정되어야 합니다. 한글로 설정된 경우 제대로 진행되지 않습니다.</b><br/>
<br/><br/>

1. 다운로드
* 해당 깃허브 프로젝트를 다운로드 받습니다.
* [리눅스 민트 공식 홈페이지](https://linuxmint.com/)에서 [리눅스 민트 19 타라 시나몬 64-bit](https://linuxmint.com/edition.php?id=254)를 다운받습니다.
* 혹은 아래와 같이 다운로드 받습니다.
<pre><code>wget http://ftp.kaist.ac.kr/linuxmint-iso/stable/19/linuxmint-19-cinnamon-64bit-v2.iso</code></pre>
<br/>

2. 사전설치 및 준비<br/>
<br/>
실행전 폴더를 이동합니다.
<pre><code>mv mydir ~/</code></pre>
<br/>

다운받은 iso 파일을 깃허브 프로젝트에 있는 mydir 폴더로 이동합니다.
<pre><code>mv Download/linuxmint-19-cinnamon-64bit-v2.iso ~/mydir</code></pre>
<br/>

스크립트를 실행하면 필수 패키지를 설치합니다. 설치되지 않는 경우 아래의 명령어를 입력하여 설치합니다. 
<pre><code>sudo apt-get install xorriso</code></pre>
<br/>

a. 직접 다운로드 받은 경우(a. 직접다운 -> 3. 이하공통)<br/>
<pre>
<code>
# 홈 디렉토리로 이동
cd ~/

# 압축해제
unzip Downloads/hamonikr-master.zip

# 폴더 옮기기
mv hamonikr-master/mydir ~/
</code>
</pre>
<br/>

b. git 으로 clone 받은 경우(b. git clone -> 3. 이하공통)<br/>
<pre>
<code>
# 홈 디렉토리로 이동
cd ~/

# git clone
git clone https://github.com/ivsteam/hamonikr.git

# 폴더 옮기기
mv hamonikr/mydir ~/
</code>
</pre>
<br/>
<br/>

# 실행
<pre>
<code>
# 스크립트 옮기기
mv mydir/start.sh ~

# 실행
sudo ./start.sh
</code>
</pre>
<br/>
<br/>

# 완료
스크립트가 완료되면 ~/custome-img 폴더에서 HamoniKR-ME_1.2.iso 파일이 생성되었음을 확인할 수 있습니다.<br/>
<br/>
HamoniKR-ME_1.2.iso 파일을 이용하여 부팅 USB 를 제작할 수 있습니다.<br/>
<br/>
부팅USB 제작 방법은 아래의 링크를 참조해 주시기 바랍니다.
- [Ⅱ-1. 윈도우에서 하모니카OS 부팅USB 만들기](https://hamonikr.org/index.php?mid=board_manual&category=3671&document_srl=3747)
- [Ⅱ-2. 리눅스에서 하모니카OS 부팅USB 만들기](https://hamonikr.org/index.php?mid=board_manual&category=3671&document_srl=3767)
<br/>

# Group structure

* Board of directors (BOARD)
* Committer
* 개발자
* 사용자
<br/><br/>

# Roles

## 사용자

제공하는 소프트웨어를 다운로드 받아 사용하는 사용자입니다. 프로젝트를 위하여 피드백을 주거나 새로운 기능을 제안할 수 있습니다.
제안을 위해서는 사용자 채널을 이용하세요. 
[하모니카 커뮤니티 사용자 채널 안내](https://hamonikr.org/how_join)

## 개발자

하모니카 프로젝트에 소스코드 패치를 제출하거나 문서를 기여하는 멤버입니다. 커뮤니티와 메일링 리스트를 통해 협력할 수 있습니다.
[하모니카 커뮤니티 메일링리스트](https://groups.google.com/forum/#!forum/hamonikr-dev)

## Committer

커미터는 코드 저장소에 대한 쓰기 권한이 부여되고 파일에 서명 된 Contributor License Agreement (CLA)가 있는 개발자입니다. 
그들에게는 hamonikr.org 메일 주소가 있습니다. 패치를 다른 사람들에게 의존 할 필요가 없으므로 실제로 프로젝트에 대한 단기적인 결정을 내리고 있습니다. 

## Board of directors (BD)

BD는 프로젝트의 진화와 헌신의 시위를 위해 장점으로 인해 선출 된 개발자 또는 커미터입니다. 그들은 코드 저장소, 커뮤니티 관련 결정에 투표 할 수있는 권리 및 커미터쉽을 위해 적극적인 사용자를 제안 할 수있는 권한을 가지고 있습니다. BD는 전체적으로 프로젝트를 통제하는 주체 프로젝트의 정식 릴리스에 투표해야합니다.
<br/><br/>

# 의사결정
하모니카 프로젝트는 별도의 관리주체 없이 운영되며 자원봉사자들에 의해 주도됩니다.
조정이 필요할 때, 투포를 통한 합의 접근 방식으로 결정을 내립니다. 

Voting is done with numbers:
+1 -- a positive vote
0 -- abstain, have no opinion
-1 -- a negative vote
<br/><br/>

# 커뮤니티에 질문하는 법
[하모니카 커뮤니티 공식사이트](https://hamonikr.org)와 공개적으로 보관 된 메일링 리스트를 사용하여 누구나 가입하거나 프로젝트 관련 질문을 할 수 있습니다.
<br/><br/>

# License
* [GNU General Public License v2.0](https://github.com/ivsteam/hamonikr/blob/master/LICENSE)
<br/><br/>

# 이용 약관
세부내용은 [이 링크](/policy.md) 를 참고하세요
