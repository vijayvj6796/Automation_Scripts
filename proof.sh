#!/bin/bash

read -p "enter the host name: " host
sudo hostnamectl set-hostname $host



read -p "enter the hosts entry: " hosts
echo "$hosts" >> /etc/hosts