#!/bin/bash


read -p "enter domain name: " domain
read -p "enter the machine ipv4 address: " ipv4
read -p "enter the host name: " host
sudo hostnamectl set-hostname $host

echo "IP_of_main_DC             hostname.domainname  hostname"
read -p "enter the hosts entry: " hosts
echo "$hosts" >> /etc/hosts

sudo apt-get install samba smbclient winbind libpam-winbind libnss-winbind krb5-kdc libpam-krb5 -y
#sudo systemctl stop samba-ad-dc.service smbd.service nmbd.service winbind.service
#zsudo systemctl disable samba-ad-dc.service smbd.service nmbd.service winbind.service

sudo mv /etc/samba/smb.conf /etc/samba/smb.conf.orig
sudo mv /etc/krb5.conf /etc/krb5.conf.orig
sudo samba-tool domain provision --use-rfc2307 --interactive
sudo cp /var/lib/samba/private/krb5.conf /etc
#sudo systemctl stop systemd-resolved
sudo systemctl disable --now systemd-resolved smbd nmbd winbind
sudo systemctl unmask samba-ad-dc.service
sudo systemctl enable --now samba-ad-dc.service
#sudo systemctl start samba-ad-dc.service
#sudo systemctl status samba-ad-dc.service
#sudo systemctl enable samba-ad-dc.service

sudo samba-tool domain level show
sudo rm -rf /etc/resolv.conf
sudo touch /etc/resolv.conf

#read -p "enter the nameserver : " nameserver
echo "nameserver $ipv4" >> /etc/resolv.conf

#read -p "enter the search : " search
echo "search $domain" >> /etc/resolv.conf

sudo samba
host -t A $domain
host -t SRV _ldap._tcp.$domain
host -t SRV _kerberos.udp.$domain

sudo systemctl unmask samba-ad-dc
udo systemctl start samba-ad-dc
sudo systemctl enable samba-ad-dc



echo "################################/n successfull completed /n #################"
n
