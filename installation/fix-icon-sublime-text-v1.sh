#!/bin/bash
#
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


sudo mv /opt/sublime_text/Icon/ /opt/sublime_text/Icon-ykzheng
sudo mv /opt/sublime_text_3/Icon/ /opt/sublime_text_3/Icon-ykzheng

sudo find /usr/share/icons/hicolor/ -name sublime-text.png -type f -delete

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
