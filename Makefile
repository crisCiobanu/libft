# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cciobanu <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/21 11:49:49 by cciobanu          #+#    #+#              #
#    Updated: 2022/03/21 11:49:54 by cciobanu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

RM = rm -f

CC = gcc

SUFFIX = ./srcs/

CFLAGS = -Wall -Wextra -Werror

SRC = ft_strjoin.c ft_strlcat.c\
	ft_atoi.c ft_strlcpy.c ft_bzero.c ft_strlen.c \
	ft_calloc.c ft_memchr.c ft_strmapi.c ft_isalnum.c ft_memcmp.c ft_strncmp.c\
	ft_isalpha.c ft_memcpy.c ft_strnstr.c ft_isascii.c ft_memmove.c ft_strrchr.c\
	ft_isdigit.c ft_memset.c ft_strtrim.c ft_isprint.c ft_putchar_fd.c ft_substr.c\
	ft_itoa.c ft_putendl_fd.c ft_tolower.c ft_putnbr_fd.c ft_toupper.c ft_putstr_fd.c\
	ft_strchr.c ft_strdup.c ft_striteri.c ft_split.c

BONUS = ft_lstadd_back_bonus.c ft_lstadd_front_bonus.c ft_lstclear_bonus.c ft_lstdelone_bonus.c ft_lstiter_bonus.c \
	ft_lstlast_bonus.c ft_lstmap_bonus.c ft_lstnew_bonus.c ft_lstsize_bonus.c   

OBJS = $(SRC:.c=.o)

BONUS_OBJS = $(BONUS:.c=.o)

NAME = libft.a

LIBC = ar -rcs

all: $(NAME)

$(NAME): $(OBJS)
	$(LIBC) $(NAME) $(OBJS)

bonus: fclean $(BONUS_OBJS) $(OBJS)
	$(LIBC) $(NAME) $(OBJS) $(BONUS_OBJS)

clean: 
	$(RM) $(OBJS) $(BONUS_OBJS)
fclean: clean
	$(RM) $(NAME)
re: fclean all

.PHONY: all clean fclean re
