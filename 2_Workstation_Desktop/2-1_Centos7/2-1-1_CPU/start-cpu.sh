#!/bin/bash

PROMPT="[${USER}@${HOSTNAME%%.*}]#"

echo ""
echo ""

echo " rc.local service add "

echo ""
echo ""
echo -e  "${PROMPT} chmod +x /etc/rc.d/rc.local  " >> /root/dasan_install_log.txt
chmod +x /etc/rc.d/rc.local


echo ""
echo ""
echo -e  "${PROMPT} sed -i '12a bash /root/LISR/2_Workstation_Desktop/2-1_Centos7/2-1-1_CPU/Dasan_Centos7-yumupdate-install0.sh >> /root/dasan_install_log.txt' /etc/rc.d/rc.local   " >> /root/dasan_install_log.txt
sed -i '12a bash /root/LISR/2_Workstation_Desktop/2-1_Centos7/2-1-1_CPU/Dasan_Centos7-yumupdate-install0.sh >> /root/dasan_install_log.txt' /etc/rc.d/rc.local

echo -e  "${PROMPT} cat /etc/rc.d/rc.local  | sed -n 13p " >> /root/dasan_install_log.txt
cat /etc/rc.d/rc.local  | sed -n 13p

echo "  재부팅 "
echo -e  "${PROMPT} reboot " >> /root/dasan_install_log.txt
reboot
