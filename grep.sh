#!/bin/bash

if grep -R "demo12" "/home/cipher/Desktop/Scripts/demo.txt"
then
	echo "hi2 " >> "/home/cipher/Desktop/Scripts/ext.txt"
else
	echo "check DNS record"
fi

if grep -R "demo1" "/home/cipher/Desktop/Scripts/demo.txt" 
then
	#statements
	echo "nf" >> "/home/cipher/Desktop/Scripts/ext.txt"
else
	echo "plese check dns record"
fi

#############
#!/bin/bash

if grep -R "$ipv4" "/etc/network/interfaces" >> /dev/null
then
        echo "dns-nameservers $ipv4" > "/etc/network/interfaces"  
else
        echo "please update your dns record in network interface"
fi

#!/bin/bash

if grep -R "$domain" "/etc/network/interfaces" >> /dev/null
then
        echo "dns-search $domain" "/etc/network/interfaces" >> /dev/null
else
        echo "please update your dns record in network interface"
fi


