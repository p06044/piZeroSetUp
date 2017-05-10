#!/bin/bash

cp /Volumes/boot/cmdline.txt /Volumes/boot/cmdline.txt_off
cat /Volumes/boot/cmdline.txt | sed -e "s/quiet init/modules-load=dwc2,g_ether quiet init/g" > cmd.txt
mv cmd.txt /Volumes/boot/cmdline.txt
cp /Volumes/boot/config.txt /Volumes/boot/config.txt_off
echo "dtoverlay=dwc2" >> /Volumes/boot/config.txt
touch /Volumes/boot/ssh
