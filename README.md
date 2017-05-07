#!/bin/bash

# dotfiles

#i3-gaps  
#arch_linux   
#nvim   
#feh    
#Urxvt    
#fish                 
#mpv 
           
#==================================
mkdir /mnt/driveE
mkdir /mnt/driveD
mkdir /mnt/driveC

#===================================
sudo mv ./fonts/* /usr/share/fonts
fc-cahe -rvf
#==================================
mv -t ~/ Xresourses/.xinitrc Xresourses/.Xresourses
#==================================
sudo mv ./automount/fstab /etc/
sudo chmod 600 /etc/fstab
sudo chown root:root /etc/fstab
#==================================
chmod u+x ./bightness/bright*
mv ./bightness/bright* /usr/bin/
#===================================
mv ./i3/config ~/.config/i3/
sudo mv ./i3/i3status.conf /etc/
#===================================
mv ./mpv ~/.config
mv ./nvim ~/.config
mv .ranger ~/.config
mv ./fish\ shell/* ~/.config/fish/
mv ./wallpapers/ ~/Pictures/
#===================================
sudo mv ./modprob.d/blacklist.conf /etc/modprob.d/
#================================================
