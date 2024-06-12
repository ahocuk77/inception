# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahocuk <ahocuk@student.42heilbronn.de>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/27 18:08:46 by ahocuk            #+#    #+#              #
#    Updated: 2024/06/12 18:50:52 by ahocuk           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.SILENT:

NAME	=	inception
SRC		=	main.cpp
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