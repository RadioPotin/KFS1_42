


src = boot.s kernel.s

OBJ = $(src:.s=.o)


%.o: %.s
	nasm -felf32 $<  -o $@ 

all: ${OBJ}
	echo $@


clean: 
	rm *.o

.PHONY: all re clean fclean
