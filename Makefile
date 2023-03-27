


src = boot.s kernel.s

OBJ = $(src:.s=.o)


%.o: %.s
	nasm -felf32 $<  -o $@ 

all: ${OBJ}
	echo $@


clean: 
	rm *.o
	rm kernel
	rm -rf isodir


.PHONY: all re clean fclean
