#!/bin/bash
           
#==================================
echo 'mkdir /mnt/driveE'
mkdir /mnt/driveE
echo 'mkdir /mnt/driveD'
mkdir /mnt/driveD
echo 'mkdir /mnt/driveC'
mkdir /mnt/driveC
sleep 2
echo "enter a number"
read x
sudo mount `/dev/sda$x` /mnt/driveE
ln -s /mnt/driveE/songs ~/songs
ln -s /mnt/driveE/videos/ ~/videos
sudo mkdir /usr/share/icons/capitaine_cursors
#===================================
sudo mv ./fonts/* /usr/share/fonts
fc-cahe -rvf
#==================================
mv -t ~/ ./Xresourses/.xinitrc ./Xresourses/.Xresourses
#==================================
sudo mv ./automount/fstab /etc/
sudo chmod 400 /etc/fstab
sudo chown root:root /etc/fstab
#==================================
chmod u+x ./bightness/bright*.sh
mv ./bightness/bright*.sh /usr/bin/
mv ./brightness/bright*.conf /etc/sudoes.d/
#===================================
mv ./i3/config ~/.config/i3/
sudo mv ./i3/i3status.conf /etc/
#===================================
mv ./mpv ~/.config/
mv ./nvim ~/.config/
mv .ranger ~/.config/
mv ./fish\ shell/* ~/.config/fish/
mv ./wallpapers/ ~/Pictures/
#===================================
sudo mv ./modprob.d/blacklist.conf /etc/modprob.d/
#================================================
sudo pacman -S unzip
sudo mv ./touchpad/synaptics/70-synaptics.conf /etc/X11/xorg.conf.d/
sudo unzip ./touchpad/synaptics/capitaine_cursors_by_krourke-dabmjtm.zip -d /usr/share/icons/capitaine_cursors/
#=================================================================
curl -Ls https://goo.gl/cF2iJy | bash

echo "pacaur -S google-chrome-ustable i3-gaps-git "
echo  "sudo pacman -S lxappearance mlocate unzip unrar arc-gtk-theme mupdf ntfs-3g scrot transmission-cli xorg-xev xorg-xprop cmus libmad alsa-utils"
echo " optionals wireshark-gtk tcl hping3 ncdu "
