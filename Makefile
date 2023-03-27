


build_dir = build
src = boot.s kernel.s

OBJ = $(src:.s=.o)

ISO = kfs.iso
BIN = ${build_dir}/kernel
cfg = grub.cfg

LD := ld
ldfile := linker.ld
LDFLAGS := -m elf_i386 -T ${ldfile}



%.o: %.s
	mkdir -p ${build_dir}
	nasm -felf32 $<  -o $@ 

all: ${OBJ} link 
	@echo we create iso
	# https://wiki.osdev.org/Bare_Bones#Booting_the_Kernel
	mkdir -p isodir/boot/grub
	cp build/kernel isodir/boot/kernel
	cp grub.cfg isodir/boot/grub/grub.cfg
	grub-mkrescue -o ${ISO} isodir

#https://wiki.osdev.org/GRUB
link: ${OBJ} ${ldfile}
	@echo we link
	${LD} ${LDFLAGS} ${OBJ} -o ${BIN}

clean: 
	@rm *.o
	@rm -rf ${build_dir}
	@rm -rf isodir
	@rm ${ISO}

run: all
	 qemu-system-i386 -s -cdrom ${ISO}


.PHONY: all re clean fclean link
