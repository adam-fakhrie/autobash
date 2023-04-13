#!/bin/bash

y="Y"

export TZ=Asia/Jakarta
date
echo "-";
echo "-";
read -p "Do you wanna get updated? (Y/n) " pilih;
if [ $pilih == $y ];
then
	sudo apt-get update && upgrade -y
else
    echo "-"
    echo "-"
	echo "Ok, your computer won't be updated"
    sleep 1;
fi
echo "-"
echo "-"
echo "-"
echo "-"
echo "-"
echo "other process is installing Git, Curl, ZIP, python3 & python3-pip"
sleep 2;
read -p "Do you wanna install those dependencies? (Y/n) " pilih;

if [ $pilih == $y ];
then
	sudo apt-get install git curl zip python3 python3-pip
else
    echo "-"
    echo "-"
	echo "Ok, we won't install those"
    sleep 1;
fi
echo "-"
echo "-"
echo "-"
echo "-"
echo "-"
echo "This is the last process, we will install Docker"
sleep 2;
read -p "Do you wanna install Docker? (Y/n) " pilih;

if [ $pilih == $y ];
then
	sudo apt-get install docker
else
    echo "-"
    echo "-"
	echo "Ok, we won't install Docker. Goodbye"
    exit1
fi