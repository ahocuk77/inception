# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahocuk <ahocuk@student.42heilbronn.de>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/27 18:08:46 by ahocuk            #+#    #+#              #
#    Updated: 2024/05/20 00:07:34 by ahocuk           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.SILENT:

NAME	=	convert
SRC		=	main.cpp ScalarConverter.cpp
OBJ		=	$(SRC:.cpp=.o)
CC		= 	c++
RM		=   rm -f
CFLAGS	=	-Wall -Werror -Wextra -std=c++98

all: $(NAME)

$(NAME) : $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(NAME)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re