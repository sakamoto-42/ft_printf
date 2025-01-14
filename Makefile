NAME = libftprintf.a

CC = cc
CFLAGS = -Wall -Wextra -Werror
INCLUDES = -I$(HEADER_DIR)

HEADER_DIR = includes
SRCS_DIR = srcs/

SRCS_FILES = \
	ft_printf.c \
	ft_convert.c \
	ft_convert_hex.c

OBJS = $(addprefix $(SRCS_DIR), $(SRCS_FILES:.c=.o))

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
