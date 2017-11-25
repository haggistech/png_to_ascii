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



for logo in *.png; do
    echo "Logo: $logo"
    convert $logo jpg:- | jp2a --background=light --colors --height=20 -
done

