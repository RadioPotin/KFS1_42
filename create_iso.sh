
# https://wiki.osdev.org/Bare_Bones#Booting_the_Kernel
mkdir -p isodir/boot/grub
cp kernel isodir/boot/kernel
cp grub.cfg isodir/boot/grub/grub.cfg
grub-mkrescue -o kfs.iso isodir
