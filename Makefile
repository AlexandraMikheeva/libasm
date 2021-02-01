# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: olydden <olydden@student.21-school.ru>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/01 03:43:34 by olydden           #+#    #+#              #
#    Updated: 2021/02/01 19:53:27 by olydden          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

CC = gcc

NASM = nasm

HEADER = includes

FLAGS_C = -no-pie

FLAGS_NASM = -f elf64

TEST = test

DIR_S = srcs

DIR_O = objs

SOURCES = 	ft_strlen.s\
			ft_write.s\
			ft_strcpy.s\
			ft_read.s\
			ft_strcmp.s\
			ft_strdup.s
			
SRCS = $(addprefix $(DIR_S)/, $(SOURCES))

OBJS = $(addprefix $(DIR_O)/, $(SOURCES:.s=.o))

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $@ $^

$(DIR_O)/%.o: $(DIR_S)/%.s $(HEADER)/libasm.h
	mkdir -p $(DIR_O)
	$(NASM) $(FLAGS_NASM) $< -o $@

test: all
	gcc $(FLAGS_C) main.c -L. -lasm -o $(TEST)
	./$(TEST)

clean:
	@rm -rf $(DIR_O)
	@rm -f test

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: fclean re all clean test