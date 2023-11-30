SRCS_DIR = 

SRCS	=	

OBJS = ${addprefix ${SRCS_DIR}, ${SRCS:.c=.o}}

LIBFT_DIR = libft
LIBFT_MAKE = Makefile
LIBFT_PATH = ${LIBFT_DIR}/libft.a

MLX_DIR = minilibx
MLX_MAKE = Makefile
MLX_PATH = ${MLX_DIR}/libmlx.a

GCC = gcc
CFLAGS = -Wall -Werror -Wextra
MFLAGS = -ldl -lmlx -L${MLX_DIR} -framework OpenGL -framework AppKit -lz
IFLAGS:= -I ./inc
LFLAGS:= -L $(LIBFT_DIR) -lft

NAME = so_long
RM = rm -f

all:	${NAME}		

$(NAME): $(OBJS)

bonus:	${BONUS}	

$(BONUS): $(B_OBJS)

clean:

fclean: clean

re: 	fclean all

.PHONY: all clean fclean re