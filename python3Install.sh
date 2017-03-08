#!/usr/bin/bash

echo "#####PYTHON 3.5 SOFTWARE INSTALLATION#####"

echo -e "\nSTAGE 1: Software dependencies installation"
yum install -y zlib-dev openssl-devel sqlite-devel bzip2-devel xz-libs


echo -e "\nSTAGE 2: Python 3.5 software downloading"
wget https://www.python.org/ftp/python/3.5.3/Python-3.5.3.tar.xz

echo -e "\nSTAGE 3: Unpacking (to /opt)"
xz -d Python-3.5.3.tar.xz
tar -xvf Python-3.5.3.tar -C /opt
rm -f Python-3.5.3.tar

echo -e "\nSTAGE 4: Installation"
cd /opt/Python-3.5.3    
./configure && make && make install

echo -e "\nSTAGE 5: Link creation"

echo -e "\n###Do you want to add python2 and python3 to alternaties?###"
echo "type 'yes' or 'no'[default]"
read choice
if [[ $choice == "yes" ]]; then
	alternatives --install /usr/bin/python python /usr/bin/python2.7 5
	alternatives --install /usr/bin/python python /opt/Python-3.5.3/python 10
fi
echo "***OK***"

choice=""
echo -e "\n###Do you want to make python3 as default python###"
echo "type 'yes' or 'no'[default]"
read choice
if [[ $choice == "yes" ]]; then
	touch tmpfilex68e
	echo 2 > tmpfilex68e
	alternatives --config python < tmpfilex68e
else	
	touch tmpfilex68e
	echo 1 > tmpfilex68e
	alternatives --config python < tmpfilex68e
fi
rm -f tmpfilex68e

echo "***OK***"


