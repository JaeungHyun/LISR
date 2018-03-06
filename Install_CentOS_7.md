# 다산데이타 CentOS 7 설치 표준안 (2018.03)
다산데이터에서 출고되는 장비에 설치되는 리눅스 (CenOS7) 의설치 표준안 입니다.  
별도의 요청사항이 없는 경우 기본적으로 아래 절차에 따라 설치한 후 출고 하고 있습니다.  
보완이 필요한 점이나 새로운 아이디어를 제보해 주시면 적극 반영하겠습니다 :)  

감사합니다.

![Dasandata Logo](http://www.dasandata.co.kr/dasanlogo.jpg)

***

## 범례(변수).
- <내용>: 상황에 따라 변경이 필요한 내용을 표현 합니다.
- ${USERNAME} : 설치시 생성한 기본 사용자 명 입니다.
- ${DEFAULT_NIC} : 인터넷에 연결되는 기본 네트워크 인터페이스 명칭 입니다.
- ${IP_ADDRESS} : 인터넷 연결시 사용하는 IP 주소 입니다.
- #centos7 #ubuntu14 ... : 각 운영체제 별 명령어를 분리하여 표시 하였습니다.

## 팁.
- 명령을 실행시킬때, 명령어 박스 단위로 복사하여 터미널에 붙여넣으면 됩니다.  
- 같은 운영체제 단위라도 박스가 분리되어 있는 경우 분리된 단위로 복사하여 붙여넣습니다.
- 각 항목별 제목을 클릭하면 목차로 되돌아 올 수 있습니다.

## 리눅스 설치시 IP 와 HOSTNAME 은 수동으로 미리 설정 한다.
 리눅스를 처음 설치 할때부터 고정 IP를 설정하고 HOSTNAME을 정의 하는 것을 권장 합니다.  
 그 이유는... *비밀*(?) ㅡㅡ;;

## 터미널을 통해 리눅스가 새로 설치된 장비에 로그인 합니다.

```bash
ssh ${USERNAME}@${IP_ADDRESS}
```

## 목차
1. [기본 유틸 설치 / 시간 동기화](#1-%EA%B8%B0%EB%B3%B8-%EC%9C%A0%ED%8B%B8-%EC%84%A4%EC%B9%98--%EC%8B%9C%EA%B0%84-%EB%8F%99%EA%B8%B0%ED%99%94)
2. [profile 설정 - Console Color , alias](#2-profile-%EC%84%A4%EC%A0%95---console-color--alias)
3. [하드웨어 사양 / 기본 환경 확인 (os 버젼 등)](#3-%ED%95%98%EB%93%9C%EC%9B%A8%EC%96%B4-%EC%82%AC%EC%96%91--%EA%B8%B0%EB%B3%B8-%ED%99%98%EA%B2%BD-%ED%99%95%EC%9D%B8-os-%EB%B2%84%EC%A0%BC-%EB%93%B1)
4. [ip 및 hostname 정보 / 인터넷 연결 확인](#4-ip-%EB%B0%8F-hostname-%EC%A0%95%EB%B3%B4--%EC%9D%B8%ED%84%B0%EB%84%B7-%EC%97%B0%EA%B2%B0-%ED%99%95%EC%9D%B8)
5.
6.

***

### [1. 기본 유틸 설치 / 시간 동기화](#목차)
서버 기본 설정에 필요한 유틸리티들을 설치 한 후, 인터넷 시간에 맞추어 서버의 시간을 조정 합니다.

```bash
# 기본 유틸 설치.
# 화면에 로그가 뿌려지지 않도록 하기 위해 파이프라인(>) 처리를 합니다.
yum install -y  \
vim pciutils perl openssh mlocate nfs-utils rdate xauth firefox nautilus wget tcsh \
tree lshw tmux git kernel-headers kernel-devel ipmitool gcc make gcc-c++ cmake \
python-devel ntfs-3g   >  dasan_log_install_centos_default_util.txt

# 설치된 결과를 확인할 수 있습니다.  
tail dasan_log_install_centos_default_util.txt

# 시간 동기화.
rdate  -s  time.bora.net
clock --systohc  
date
hwclock
```


### [2. profile 설정 - Console Color , alias](#목차)


### [3. 하드웨어 사양 / 기본 환경 확인 (os 버젼 등)](#목차)


### [4. ip 및 hostname 정보 / 인터넷 연결 확인](#목차)







***
## end.