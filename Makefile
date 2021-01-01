all:
	gcc test_1.c -o test_file

install:
	cp test_file /usr/bin
