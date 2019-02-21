#!/bin/bash
set -e
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################


sudo pacman -S --noconfirm --needed samba
wget "https://git.samba.org/samba.git/?p=samba.git;a=blob_plain;f=examples/smb.conf.default;hb=HEAD" -O /tmp/smb.conf
sudo cp /tmp/smb.conf /etc/samba/smb.conf
echo "change the default log file position to where can be accessed. then press Enter."
read input
sudo systemctl enable smb.service
sudo systemctl start smb.service
sudo systemctl enable nmb.service
sudo systemctl start nmb.service
##Change your username here
sudo smbpasswd -a ykzheng

#access samba share windows
sudo pacman -S --noconfirm --needed gvfs-smb


# sudo systemctl restart ... if you run into trouble
# testparm will check the conf file for errors

# red hat samba sharing config 

echo "################################################################"
echo "system-config-samba"
echo "################################################################"


package="system-config-samba"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed
	if pacman -Qi packer &> /dev/null; then

		echo "Installing with packer"
		packer -S --noconfirm --noedit  $package

	elif pacman -Qi pacaur &> /dev/null; then
		
		echo "Installing with pacaur"
		pacaur -S --noconfirm --noedit  $package
		 	
	elif pacman -Qi yaourt &> /dev/null; then

		echo "Installing with yaourt"
		yaourt -S --noconfirm $package
			  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"


	fi

fi





echo "Run system-config-samba to set up shares"


echo "################################################################"
echo "#########   samba  software installed           ################"
echo "################################################################"