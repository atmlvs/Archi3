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

echo "Creating all folders"

[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"
[ -d $HOME"/.config/gtk-3.0" ] || mkdir -p $HOME"/.config/gtk-3.0"
[ -d $HOME"/.config/conky" ] || mkdir -p $HOME"/.config/conky"
[ -d $HOME"/.config/variety" ] || mkdir -p $HOME"/.config/variety"
[ -d $HOME"/.config/variety/scripts" ] || mkdir -p $HOME"/.config/variety/scripts"
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"
[ -d $HOME"/Desktop" ] || mkdir -p $HOME"/Desktop"
[ -d $HOME"/Documents" ] || mkdir -p $HOME"/Documents"
[ -d $HOME"/Downloads" ] || mkdir -p $HOME"/Downloads"
[ -d $HOME"/DATA" ] || mkdir -p $HOME"/DATA"
[ -d $HOME"/Music" ] || mkdir -p $HOME"/Music"
[ -d $HOME"/Pictures" ] || mkdir -p $HOME"/Pictures"
[ -d $HOME"/Videos" ] || mkdir -p $HOME"/Videos"
[ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"



echo "################################################################"
echo "#########       personal folders copied         ################"
echo "################################################################"
