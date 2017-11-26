#!/bin/sh

#==========================================================================================================================
#
# Title          : PNG to ASCII
# Description    : This script will convert png to jpg then to ASCII
# Author         : Mik McLean
# Date           : 20171125
# Version        : 0.1    
# Usage          : ./png_to_ascii.sh
#
#==========================================================================================================================

PKG_OK=$(dpkg-query -W --showformat='${Status}\n' jp2a 2>/dev/null | grep "install ok installed" | wc -l)
echo
if [ $PKG_OK -eq 0 ] ; then
echo "JP2A not found, please install JP2A"
echo
sleep 2
exit
fi

numfiles=$(ls *.png | wc -l)

if [ $numfiles \> 0 ] ; then
for logo in *.png; do
    echo "Logo: $logo"
    convert $logo jpg:- | jp2a --background=dark --colors --height=20 -
done
else
echo "No Input Files"
echo
exit
fi

