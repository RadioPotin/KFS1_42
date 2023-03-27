


src = boot.s kernel.s

OBJ = $(src:.s=.o)


%.o: %.s
	nasm -felf32 $<  -o $@ 

all: ${OBJ}
	@echo we link
	ld  -m elf_i386 -T linker.ld ${OBJ} -o kernel
	@echo we create iso
	bash create_iso.sh



clean: 
	rm *.o
	rm kernel
	rm -rf isodir


.PHONY: all re clean fclean
