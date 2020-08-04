echo "请确认 mhwd-kernel -li的结果是linux54再运行此脚本"
read -p "Press any key to continue." var
pacman -Syu virtualbox-guest-utils linux54-virtualbox-guest-modules
modprobe vboxguest vboxvideo vboxsf
systemctl enable --now vboxservice.service
gpasswd -a $USER vboxsf