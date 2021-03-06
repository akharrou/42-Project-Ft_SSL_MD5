# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: akharrou <akharrou@student.42.us.org>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/05/07 18:55:23 by akharrou          #+#    #+#              #
#    Updated: 2019/05/23 20:23:37 by akharrou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

CC          =   gcc
CFLAGS      =   -Wall -Wextra -Werror $(OPTIM_FLAGS)

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

OPTIM_FLAGS = -O3 -march=native                                               \

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

DEBUG_FLAGS = -O0 -g                                                          \
                                                                              \
              -fsanitize=address                                              \
              -fsanitize=undefined                                            \
              -fsanitize=bounds                                               \
              -fsanitize=nullability-arg                                      \
              -fsanitize=nullability-return                                   \
              -fsanitize=nullability-assign                                   \
              -fsanitize-address-use-after-scope                              \

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

NAME        =   ft_ssl

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

LIBRARY     =   Libft/libft.a

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

HEADERS     =   ft_ssl.h                                                      \
                                                                              \
                Commands/commons.h                                            \
                                                                              \
                Commands/MD5/ft_md5.h                                         \
                Commands/SHA2-224/ft_sha224.h                                 \
                Commands/SHA2-256/ft_sha256.h                                 \
                Commands/SHA2-384/ft_sha384.h                                 \
                Commands/SHA2-512/ft_sha512.h                                 \

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

SOURCES     =   main.c                                                        \
                compute.c                                                     \
                error.c                                                       \
                globals.c                                                     \
                                                                              \
                $(HANDLERS)                                                   \
                $(COMMANDS)                                                   \

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

HANDLERS    =   Handlers/ft_ssl_p_option.c                                    \
                Handlers/ft_ssl_q_option.c                                    \
                Handlers/ft_ssl_r_option.c                                    \
                Handlers/ft_ssl_s_option.c                                    \
                Handlers/ft_ssl_stdin.c                                       \
                Handlers/ft_ssl_file.c                                        \

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

COMMANDS    =   $(MD5)                                                        \
                $(SHA224)                                                     \
                $(SHA256)                                                     \
                $(SHA384)                                                     \
                $(SHA512)                                                     \

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

MD5         =   Commands/MD5/ft_md5.c                                         \
                                                                              \
                Commands/MD5/md5_process.c                                    \
                Commands/MD5/md5_utils.c                                      \

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

SHA224      =   Commands/SHA2-224/ft_sha224.c                                 \
                                                                              \
                Commands/SHA2-224/sha224_process.c                            \
                Commands/SHA2-224/sha224_utils.c                              \

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

SHA256      =   Commands/SHA2-256/ft_sha256.c                                 \
                                                                              \
                Commands/SHA2-256/sha256_process.c                            \
                Commands/SHA2-256/sha256_utils.c                              \

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

SHA384      =   Commands/SHA2-384/ft_sha384.c                                 \
                                                                              \
                Commands/SHA2-384/sha384_process.c                            \
                Commands/SHA2-384/sha384_utils.c                              \

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

SHA512      =   Commands/SHA2-512/ft_sha512.c                                 \
                                                                              \
                Commands/SHA2-512/sha512_process.c                            \
                Commands/SHA2-512/sha512_utils.c                              \

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

OBJECTS     =   $(SOURCES:.c=.o)

# Main — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

all: $(NAME)

$(NAME): $(LIBRARY) $(OBJECTS)
	@$(CC) $(CFLAGS) $^ -o $@
	@echo && echo $(GREEN) "[√]     [$(NAME) Successfully Compiled!]"
	@echo $(WHITE)

%.o: %.c $(HEADERS)
	@$(CC) $(CFLAGS) -c $< -o $@
	@echo $(WHITE) "Compiling => " $<

$(LIBRARY):
	@make -C Libft/

# House Keeping — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

DEL = /bin/rm -rf

clean:
	@$(DEL) $(shell find . -name '*.o')
	@make clean -C Libft/

fclean: clean
	@$(DEL) $(NAME)
	@make fclean -C Libft/

re: fclean all

# Text Colorization — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

GREEN = "\033[1;32m"
WHITE = "\033[1;37m"

# Norminette Check — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

nc:
	@echo && echo $(GREEN) "Checking Norme -- Source Files:" && echo $(WHITE);
	@norminette $(shell find . -name '*.c')

nh:
	@echo && echo $(GREEN) "Checking Norme -- Header Files:" && echo $(WHITE);
	@norminette $(shell find . -name '*.h')

na: nh nc

# Correction Script — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

correction:

	@echo '==============================================================='
	@echo && echo $(GREEN) "I - Checking Author File:" && echo $(WHITE);
	@sleep 1
	cat author
	@echo
	@sleep 1

	@echo '==============================================================='
	@echo && echo $(GREEN) "II - Checking Norme:" && echo $(WHITE);
	@sleep 1

	@echo && echo $(GREEN) "a - Checking Norme -- Header Files:" && echo $(WHITE);
	@sleep 1
	@norminette $(shell find . -name '*.h')

	@sleep 1
	@echo && echo $(GREEN) "b - Checking Norme -- Source Files:" && echo $(WHITE);
	@sleep 1
	@norminette $(shell find . -name '*.c')
	@echo

	@echo '==============================================================='
	@sleep 1
	@echo && echo $(GREEN) "III - Checking Compilation:" && echo $(WHITE);
	@sleep 1
	@echo 'make all'
	@echo
	@sleep 1
	@make all
	@sleep 1
	@sleep 1

	@echo '==============================================================='
	@echo && echo $(GREEN) "IV - Checking Makefile Rules:" && echo $(WHITE);
	@sleep 1
	@echo 'Current working directory:'
	@echo
	@sleep 1
	@echo 'ls -1'
	@echo
	@sleep 1
	@ls -1
	@echo
	@sleep 1

	@echo '==============================================================='
	@echo && echo $(GREEN) "a - make clean" && echo $(WHITE);
	@sleep 1
	@echo 'make clean'
	@echo
	@make clean
	@sleep 1
	@sleep 1
	@ls -1
	@echo
	@sleep 1

	@echo '==============================================================='
	@echo && echo $(GREEN) "b - make fclean" && echo $(WHITE);
	@sleep 1
	@echo 'make fclean'
	@echo
	@make fclean
	@sleep 1
	@sleep 1
	@ls -1
	@echo
	@sleep 1

	@echo '==============================================================='
	@echo && echo $(GREEN) "V - Explain code/approach" && echo $(WHITE);
	@echo $(GREEN) "VI - Q&A" && echo $(WHITE);
	@echo '==============================================================='

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

.PHONY: all clean fclean re nc nh na

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —
