#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
IZIN=$( curl http://akses.endka.ga:81/aksesku | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Only For Premium Users"
exit 0
fi
clear
figlet -f small Panel V2ray | lolcat
echo -e ""
echo -e "======================================" | lolcat
echo -e ""
echo -e "     [1]  Create Vmess NoneTLS Account"
echo -e "     [2]  Create Vmess Tls Account"
echo -e "     [3]  Delete Vmess Tls Account"
echo -e "     [4]  Delete Vmess NoneTLS Account"
echo -e "     [5]  Renew Vmess Tls Account"
echo -e "     [6]  Renew Vmess NoneTLS Account"
echo -e "     [7]  Check User Login Vmess"
echo -e "     [x]  Exit"
echo -e "======================================" | lolcat
echo -e ""
read -p "     Select From Options [1-7 or x] :  " port
echo -e ""
case $port in
1)
add-ws
;;
2)
add-wstls
;;
3)
del-ws
;;
4)
del-non
;;
5)
renew-ws
;;
6)
renew-non
;;
7)
cek-ws
;;
x)
clear
menu
;;
*)
echo "Please enter an correct number"
;;
esac
