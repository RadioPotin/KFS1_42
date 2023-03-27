

run bash cross_compiled.


rajouter ces env dans son  env
export PREFIX="$HOME/mycross_cross"
export TARGET=i686-elf
export PATH="$PREFIX/bin:$PATH"



to build:
make


puis
qemu-system-i386 -s -cdrom kfs.iso


les fichier en .s viennent de https://wiki.osdev.org/Bare_Bones_with_NASM 





