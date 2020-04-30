 #!/bin/bash

read -p "enter domain name: " domain
read -p "enter the machine ipv4 address: " ipv4
read -p "enter the PDC DOMAIN ip: " PDC
read -p "enter the host name: " hostname

sudo hostnamectl set-hostname $hostname


echo "IP_of_main_DC             hostname.domainname  hostname"

echo "++++++++++enter the PDC HOST DETAILS++++"
read -p "enter the hosts entry: " hosts
echo "$hosts" >> /etc/hosts

if grep -R "$ipv4" "/etc/network/interfaces" >> /dev/null
then
        echo "please update your dns record in network interface"
else
        echo "dns-nameservers $PDC" >> "/etc/network/interfaces"
fi


if grep -R "$domain" "/etc/network/interfaces" >> /dev/null
then
	echo "please update your dns record in network interface"
else
	echo "dns-search $domain" >> "/etc/network/interfaces"
       # echo "please update your dns record in network interface"
fi

rm -rf /etc/resolv.conf

sudo touch /etc/resolv.conf

#read -p "enter the nameserver : " nameserver
echo "nameserver $PDC" >> /etc/resolv.conf

#read -p "enter the search : " search
echo "search $domain" >> /etc/resolv.conf


echo "####RESTARTING NETWORK SERVICE########"
systemctl restart networking.service



cat /etc/resolv.conf


#install necessary packages

apt-get install samba krb5-user krb5-config winbind libpam-winbind libnss-winbind

kinit administrator@$domain
klist
systemctl stop samba-ad-dc smbd nmbd winbind
mv /etc/samba/smb.conf /etc/samba/smb.conf.initial
samba-tool domain join $domain DC -U"Administrator"
cat /etc/samba/smb.conf
systemctl restart samba-ad-dc
samba-tool drs showrepl
mv /etc/krb5.conf /etc/krb5.conf.initial
ln -s /var/lib/samba/private/krb5.conf /etc/
kinit administrator
klist
host $domain
