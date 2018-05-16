all:
	gcc -g -Wall -fno-omit-frame-pointer base.c -o base

diss: clean
	gcc -g -Wall -fno-omit-frame-pointer base.c -lm -S -masm=intel  -fno-stack-protector -o sic.s

test: clean all
	./base

.PHONY: clean
clean:
	rm -rf bin base
