NAME = $(shell basename `pwd` | cut -c5-)
$(NAME): $(wildcard *.c)
	gcc -Wall -Wpedantic *.c -o $(NAME)
