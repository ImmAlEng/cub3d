CC          = cc
CFLAGS      = -Wall -Wextra -Werror -g
CPPFLAGS    = -Iinclude -Ilibft -Imlx
DEPFLAGS    = -MMD -MP

NAME        = cub3d
SRCDIR      = srcs
COREDIR     = $(SRCDIR)/core
ENGINEDIR   = $(SRCDIR)/engine
PARSERDIR     = $(SRCDIR)/parser
RENDERDIR     = $(SRCDIR)/render
UTILSDIR    = $(SRCDIR)/utils

SRCS        = $(SRCDIR)/main.c
SRCS		+= $(COREDIR)/cub3d.c
SRCS		+= $(ENGINEDIR)/engine.c
SRCS		+= $(PARSERDIR)/parser.c
SRCS		+= $(RENDERDIR)/render.c
SRCS		+= $(UTILSDIR)/utils.c

# START OF DEBUG FILES: THEY WILL BE DELETED BEFORE EVAL
DEBUGDIR    = $(SRCDIR)/debug
ifneq ($(filter debug clean fclean,$(MAKECMDGOALS)),)
SRCS		+= $(DEBUGDIR)/debug.c
endif

debug: all

.PHONY: debug
# END OF DEBUG FILES
	
OBJS        = $(SRCS:.c=.o)
DEPS        = $(OBJS:.o=.d)

LIBFT       = libft/libft.a
MLX         = mlx/libmlx.a
MLXFLAGS    = -Lmlx -lmlx -lXext -lX11 -lm -lz

all: $(NAME)

$(NAME): $(OBJS) $(LIBFT) $(MLX)
	$(CC) $(CFLAGS) $(OBJS) $(LIBFT) $(MLXFLAGS) -o $(NAME)

$(LIBFT):
	$(MAKE) -C libft bonus

$(MLX):
	$(MAKE) -C mlx

%.o: %.c
	$(CC) $(CFLAGS) $(CPPFLAGS) $(DEPFLAGS) -c $< -o $@

clean:
	$(MAKE) -C libft clean
	$(MAKE) -C mlx clean
	rm -f $(OBJS) $(DEPS)

fclean: clean
	$(MAKE) -C libft fclean
	rm -f $(NAME)

re: fclean all

bonus: all

-include $(DEPS)

.PHONY: all clean fclean re bonus