
# https://wiki.osdev.org/Bare_Bones#Booting_the_Kernel
mkdir -p isodir/boot/grub
cp myos.bin isodir/boot/myos.bin
cp grub.cfg isodir/boot/grub/grub.cfg
grub-mkrescue -o iso_created isodir
