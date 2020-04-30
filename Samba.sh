#!/bin/bash


read - p "enter your domain name" domain 
sudo apt-get install pv -y
echo "#############################
         PLEASE UPDATE YOUR NETWORK FILES AND /ETC/RESOLV.CONF
      ############################## |pv -qL 8

sudo apt-get -y install realmd sssd sssd-tools samba-common krb5-user packagekit samba-common-bin samba-libs adcli ntp

echo "
[users
default-home = /home1/%U
default-shell = /bin/bash
[active-directory]
default-client = sssd
os-name = Ubuntu Desktop Linux
os-version = 16.04
[service]
automatic-install = no
[$domain]
fully-qualified-names = no
automatic-id-mapping = yes
user-principal = yes
manage-system = no " >>/etc/realmd.CONF

sudo kinit administrator@$domain

sudo realm join $domain -U Administrator -v

auth-config-update

vi /etc/pam.d/common-session

https://askubuntu.com/questions/1067345/adding-dns-servers-to-ubuntu-18-04 
https://serverfault.com/questions/849374/change-to-static-dns-server-on-amazon-linux-ami-2017-03
https://aws.amazon.com/premiumsupport/knowledge-center/ec2-static-dns-ubuntu-debian/