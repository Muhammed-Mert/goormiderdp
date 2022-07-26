#!/bin/sh
# Bedava GoormIDE RDP
sudo aadduser user --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "user:password" | sudo chpasswd
sudo usermod -aG sudo,adm user
sudo apt install screen
sudo apt update
clear
screen -R a2nk
echo "===================================="
echo "XFCE Kuruluyor"
echo "Çıkan yazılara 1 yazarak geçiniz"
echo "===================================="
sudo apt install -y xfce4 xfce4-goodies > /dev/null 2>&1
echo "=======25%"
sudo apt install firefox -y > /dev/null 2>&1
echo "=============50%"
sudo apt-get install -y xrdp > /dev/null 2>&1
sudo apt-get install -y xfce4-terminal > /dev/null 2>&1
echo "=================70%"
echo xfce4-session >~/.xsession
echo "=====================90%"
sudo service xrdp start
clear
echo "=======================100%"
echo "===================================="
echo "RDP IP Adresi :" && curl --silent --show-error ipconfig.io
echo "Kullanıcıadı : user"
echo "Şifre : password"
echo Ayarlardan 3389 portunu ekleyiniz
echo "===================================="
