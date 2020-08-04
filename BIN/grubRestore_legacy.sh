manjaro-chroot -a
mount /dev/sda1 /mnt
cd /mnt
mount -t proc proc /mnt/proc
mount -t sysfs sys /mnt/sys
mount -o bind /dev /mnt/dev
mount -t devpts pts /mnt/dev/pts/
chroot /mnt
sudo pacman -S mtools os-prober
grub-install /dev/sda
grub-install --recheck /dev/sda
update-grub