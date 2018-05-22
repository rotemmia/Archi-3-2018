all: clean bin/base.o
		gcc -o base -g -Wall -fno-omit-frame-pointer bin/base.o -lm

bin/base.o:
		mkdir -p bin
		nasm -f elf64 sic.s -o bin/base.o -l bin/base.lst

test: clean all
	cat fibb.sic sic.sic | ./base

.PHONY: clean
clean:
	rm -rf bin base
