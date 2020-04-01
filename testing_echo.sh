#!/bin/bash
read -p "enter the domain name" domain
read -p "enter the ip4 address" ip4
#echo "example for namesserver in this formaat = nameserver 192.168.0.1"
#read -p "enter the nameserver : " nameserver
echo "nameserver $domain " > /home/cipher/Desktop/Scripts/nameser 

#echo "enter the search in this format= search demo.com"
#read -p "enter the search : " search
echo "search $ip4" >> /home/cipher/Desktop/Scripts/nameser



