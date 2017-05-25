NAME = $(shell basename `pwd` | cut -c5-)
$(NAME): $(wildcard *.cpp)
	g++ -Wall -Wpedantic *.cpp -o $(NAME)
