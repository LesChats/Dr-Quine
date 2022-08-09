######################################################################
# @author      : abaudot (aimebaudot@gmail.com)
# @file        : Makefile
# @created     : mardi août 09, 2022 18:21:11 CEST
######################################################################
NAME:=Grace
LD:=gcc
LDFLAGS:=-no-pie -Wall -Wextra -Werror
CC:=nasm
CFLAGS:=-f elf64
SRCS:=Grace.s
OBJS:=$(SRCS:.s=.o)
all: $(NAME)
$(NAME): $(OBJS)
	$(LD) $(LDFLAGS) $(OBJS) -o $(NAME)
%.o: %.s
	$(CC) $(CFLAGS) $< -o $@
clean:
	rm -f $(OBJS)
fclean: clean
	rm -f $(NAME)
	rm -f $(NAME)_kid.s
re: fclean all
.PHONY: all clean re fclean
