#!/bin/bash 

apt-get update
apt-get install -y tree vim g++ 
apt-get install -y nfs-kernel-server
apt-get install -y tftpd-hpa tftp-hpa xinetd
apt-get install -y ctags
apt-get install -y libncurses5-dev build-essential 

apt-get install -y samba samba-common
apt-get install -y python-glade2
apt-get install -y system-config-samba 
apt-get install -y mesa-common-dev libgl1-mesa-dev libglu1-mesa-dev freeglut3-dev
apt-get install -y autoconf automake libtool
apt-get install -y xorg-dev
apt-get install -y libv4l-dev
#apt-get install -y libncurses5:i386 libstdc++6:i386 zlib1g:i386
rm 	-f 		/etc/samba/smb.conf

mkdir   /root/.vim/ -p
cp 	.vimrc 		/root/
cp 	doc/ 		/root/.vim/  -R
cp 	plugin/ 	/root/.vim/  -R
cp	tftp 		/etc/xinetd.d/
cp 	smb.conf    /etc/samba/smb.conf

mkdir 	/nfsroot
chmod 	777 -R /nfsroot

mkdir 	/tftpboot
chmod 	777 -R /tftpboot 

mkdir 	/samba/anonymous -p
chmod 	777 -R /samba/anonymous

echo "/nfsroot *(sync,rw,no_root_squash)" >> /etc/exports

/etc/init.d/nfs-kernel-server restart
/etc/init.d/xinetd restart
ln -s /samba/anonymous/  /home/bear/Desktop/share
update-rc.d -f tftpd-hpa remove
#chmod +x qt-opensource-linux-x64-5.3.2.run 
#./qt-opensource-linux-x64-5.3.2.run

####

