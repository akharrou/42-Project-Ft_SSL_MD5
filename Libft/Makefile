# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: akharrou <akharrou@student.42.us.org>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/17 16:23:01 by akharrou          #+#    #+#              #
#    Updated: 2019/05/20 12:17:51 by akharrou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC          =   gcc
CFLAGS      =   -Wall -Wextra -Werror $(OPTIM_FLAGS)

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

OPTIM_FLAGS = -O3 -march=native                                               \

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

DEBUG_FLAGS =   -O0 -g                                                        \
                                                                              \
                -fsanitize=address                                            \
                -fsanitize=undefined                                          \
                -fsanitize=bounds                                             \
                -fsanitize=nullability-arg                                    \
                -fsanitize=nullability-return                                 \
                -fsanitize=nullability-assign                                 \
                -fsanitize=undefined                                          \
                -fsanitize-address-use-after-scope                            \

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

NAME        =   libft.a

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

OBJECTS     =   $(SOURCES:.c=.o)

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

HEADERS     =   Includes/libft.h                                              \
                                                                              \
                Includes/stdio_42.h                                           \
                Includes/stdlib_42.h                                          \
                Includes/string_42.h                                          \
                Includes/stdint_42.h                                          \
                Includes/macros_42.h                                          \
                Includes/ctype_42.h                                           \
                Includes/math_42.h                                            \
                                                                              \
                Includes/bigint.h                                             \
                                                                              \
                Includes/ft_readline.h                                        \
                Includes/ft_printf.h                                          \

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

SOURCES     =   $(STDIO)                                                      \
                $(STDLIB)                                                     \
                $(STRING)                                                     \
                $(CTYPE)                                                      \
                $(MATH)                                                       \
                                                                              \
                $(BIGINT)                                                     \

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

STDIO       =   Stdio/ft_readline.c                                           \
                Stdio/ft_readfile.c                                           \
                Stdio/ft_readfiledes.c                                        \
                                                                              \
                Stdio/ft_printf.c                                             \
                Stdio/ft_dprintf.c                                            \
                Stdio/ft_sprintf.c                                            \
                Stdio/ft_asprintf.c                                           \
                Stdio/ft_vprintf.c                                            \
                Stdio/ft_vdprintf.c                                           \
                Stdio/ft_vsprintf.c                                           \
                Stdio/ft_vasprintf.c                                          \
                                                                              \
                Stdio/PrintfUtils/parser.c                                    \
                Stdio/PrintfUtils/formatter.c                                 \
                Stdio/PrintfUtils/Handlers/c_handler.c                        \
                Stdio/PrintfUtils/Handlers/s_handler.c                        \
                Stdio/PrintfUtils/Handlers/r_handler.c                        \
                Stdio/PrintfUtils/Handlers/p_handler.c                        \
                Stdio/PrintfUtils/Handlers/i_handler.c                        \
                Stdio/PrintfUtils/Handlers/u_handler.c                        \
                Stdio/PrintfUtils/Handlers/f_handler.c                        \
                Stdio/PrintfUtils/Handlers/b_handler.c                        \
                Stdio/PrintfUtils/Handlers/o_handler.c                        \
                Stdio/PrintfUtils/Handlers/d_handler.c                        \
                Stdio/PrintfUtils/Handlers/x_handler.c                        \
                Stdio/PrintfUtils/Handlers/xx_handler.c                       \
                Stdio/PrintfUtils/Handlers/mod_handler.c                      \
                Stdio/PrintfUtils/Handlers/style_handler.c                    \
                                                                              \
                Stdio/ft_putbits.c                                            \
                Stdio/ft_putbyte.c                                            \
                Stdio/ft_putbyte_fd.c                                         \
                Stdio/ft_putbytes.c                                           \
                Stdio/ft_putbytes_fd.c                                        \
                Stdio/ft_putchar.c                                            \
                Stdio/ft_putchar_fd.c                                         \
                Stdio/ft_putstr.c                                             \
                Stdio/ft_putstr_fd.c                                          \
                Stdio/ft_putendl.c                                            \
                Stdio/ft_putendl_fd.c                                         \
                Stdio/ft_putstrtab.c                                          \
                Stdio/ft_putstrtab_fd.c                                       \
                Stdio/ft_putnbr.c                                             \
                Stdio/ft_putnbr_fd.c                                          \
                Stdio/ft_putnbr_base.c                                        \
                Stdio/ft_putnbr_base_fd.c                                     \
                                                                              \
                Stdio/ft_open.c                                               \

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

STDLIB      =   Stdlib/ft_bzero.c                                             \
                Stdlib/ft_memset.c                                            \
                Stdlib/ft_memset_addr.c                                       \
                Stdlib/ft_memcpy.c                                            \
                Stdlib/ft_memccpy.c                                           \
                Stdlib/ft_memmove.c                                           \
                Stdlib/ft_memchr.c                                            \
                Stdlib/ft_memcmp.c                                            \
                Stdlib/ft_memdel.c                                            \
                Stdlib/ft_memalloc.c                                          \
                Stdlib/ft_malloc.c                                            \
                Stdlib/ft_realloc.c                                           \
                Stdlib/ft_matrix_new.c                                        \
                Stdlib/valid_base.c                                           \
                Stdlib/ft_padding.c                                           \
                Stdlib/ft_intlen.c                                            \
                Stdlib/ft_intlen_base.c                                       \
                Stdlib/ft_intmaxlen_base.c                                    \
                Stdlib/ft_uintmaxlen_base.c                                   \
                Stdlib/ft_atoi.c                                              \
                Stdlib/ft_itoa.c                                              \
                Stdlib/ft_atoi_base.c                                         \
                Stdlib/ft_itoa.c                                              \
                Stdlib/ft_itoa_base.c                                         \
                Stdlib/ft_ltoa_base.c                                         \
                Stdlib/ft_lltoa_base.c                                        \
                Stdlib/ft_utoa_base.c                                         \
                Stdlib/ft_uitoa_base.c                                        \
                Stdlib/ft_ultoa_base.c                                        \
                Stdlib/ft_ulltoa_base.c                                       \
                Stdlib/ft_ftoa.c                                              \
                Stdlib/ft_ftoa_base.c                                         \
                Stdlib/ft_dtoa_base.c                                         \
                Stdlib/ft_ldtoa_base.c                                        \
                Stdlib/ft_convert_base.c                                      \
                Stdlib/ft_find_next_prime.c                                   \
                Stdlib/ft_wcount.c                                            \
                Stdlib/ft_chrcount.c                                          \
                Stdlib/ft_swap_int.c                                          \
                Stdlib/ft_swap_char.c                                         \
                Stdlib/ft_swap_str.c                                          \
                Stdlib/ft_swap_item.c                                         \
                Stdlib/ft_hash.c                                              \
                                                                              \
                Stdlib/ft_reverse_bytes.c                                     \

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

STRING      =   String/ft_strlen.c                                            \
                String/ft_strnlen.c                                           \
                String/ft_strcmp.c                                            \
                String/ft_strncmp.c                                           \
                String/ft_strequ.c                                            \
                String/ft_strnequ.c                                           \
                String/ft_strrev.c                                            \
                String/ft_strcpy.c                                            \
                String/ft_strncpy.c                                           \
                String/ft_strlcpy.c                                           \
                String/ft_strcpy_until.c                                      \
                String/ft_astrcpy.c                                           \
                String/ft_astrncpy.c                                          \
                String/ft_strcat.c                                            \
                String/ft_strncat.c                                           \
                String/ft_strlcat.c                                           \
                String/ft_strchr.c                                            \
                String/ft_strrchr.c                                           \
                String/ft_strchrs.c                                           \
                String/ft_strstr.c                                            \
                String/ft_strnstr.c                                           \
                String/ft_strdup.c                                            \
                String/ft_strndup.c                                           \
                String/ft_strdup_range.c                                      \
                String/ft_strnew.c                                            \
                String/ft_strdel.c                                            \
                String/ft_strclr.c                                            \
                String/ft_striter.c                                           \
                String/ft_striteri.c                                          \
                String/ft_strmap.c                                            \
                String/ft_strmapi.c                                           \
                String/ft_strjoin.c                                           \
                String/ft_strappend.c                                         \
                String/ft_strprepend.c                                        \
                String/ft_strnjoin.c                                          \
                String/ft_strnappend.c                                        \
                String/ft_strnprepend.c                                       \
                String/ft_strsub.c                                            \
                String/ft_strsplit.c                                          \
                String/ft_strtrim.c                                           \
                String/ft_strstrip.c                                          \
                String/ft_strlstrip.c                                         \
                String/ft_strnlstrip.c                                        \
                String/ft_strrstrip.c                                         \
                String/ft_strnrstrip.c                                        \
                String/ft_strhex.c                                            \
                                                                              \
                String/ft_strtab.c                                            \
                String/ft_strtabnew.c                                         \
                String/ft_strtablen.c                                         \
                String/ft_strtabnlen.c                                        \
                String/ft_strtabdup.c                                         \
                String/ft_strtabndup.c                                        \
                String/ft_strtabcat.c                                         \
                String/ft_strtabncat.c                                        \
                String/ft_strtab_appendstr.c                                  \

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

CTYPE       =   Ctype/ft_isupper.c                                            \
                Ctype/ft_islower.c                                            \
                Ctype/ft_isblank.c                                            \
                Ctype/ft_isspace.c                                            \
                Ctype/ft_isalpha.c                                            \
                Ctype/ft_isdigit.c                                            \
                Ctype/ft_isalnum.c                                            \
                Ctype/ft_isascii.c                                            \
                Ctype/ft_isgraph.c                                            \
                Ctype/ft_ispunct.c                                            \
                Ctype/ft_iscntrl.c                                            \
                Ctype/ft_isprint.c                                            \
                Ctype/ft_isprime.c                                            \
                Ctype/ft_ischarset.c                                          \
                Ctype/ft_int_isany.c                                          \
                Ctype/ft_str_isany.c                                          \
                Ctype/ft_isstrset.c                                           \
                Ctype/ft_isstrsets.c                                          \
                                                                              \
                Ctype/ft_toupper.c                                            \
                Ctype/ft_tolower.c                                            \
                Ctype/ft_strtoupper.c                                         \
                Ctype/ft_strtolower.c                                         \
                Ctype/ft_to_big_endian.c                                      \
                Ctype/ft_to_little_endian.c                                   \

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

MATH        =   Math/ft_sqrt.c                                               \
                Math/ft_pow.c                                                \
                Math/ft_powl.c                                               \
                Math/ft_powll.c                                              \
                Math/ft_max.c                                                \
                Math/ft_max_d.c                                              \
                Math/ft_max_l.c                                              \
                Math/ft_min.c                                                \
                Math/ft_min_d.c                                              \
                Math/ft_min_l.c                                              \
                Math/ft_sum.c                                                \
                Math/ft_sum_d.c                                              \
                Math/ft_sum_l.c                                              \
                Math/ft_sum_ld.c                                             \
                Math/ft_sum_generic.c                                        \
                Math/ft_round.c                                              \
                Math/ft_round_with_prior.c                                   \

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

BIGINT      =   BigInt/bigint_add.c                                           \
                BigInt/bigint_sub.c                                           \
                BigInt/bigint_mul.c                                           \
                BigInt/bigint_div.c                                           \
                                                                              \
                BigInt/bigint_round.c                                         \
                BigInt/bigint_max.c                                           \
                BigInt/bigint_min.c                                           \
                BigInt/bigint_compare.c                                       \
                                                                              \
                BigInt/bigint_cleaner.c                                       \
                BigInt/bigint_normalizer.c                                    \
                                                                              \
                BigInt/arithmetic_dispatcher.c                                \

# Main — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

all: $(NAME)

$(NAME): $(OBJECTS)
	@ar -rcs $(NAME) $(OBJECTS)
	@echo && echo $(GREEN) "[√]     [Library Successfully Compiled!]"
	@echo $(WHITE)

%.o: %.c $(HEADERS)
	@$(CC) $(CFLAGS) -c $< -o $@
	@echo "Compiling => " $<

# House Keeping — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

DEL = /bin/rm -rf

clean:
	@$(DEL) $(shell find . -name '*.o')

fclean: clean
	@$(DEL) $(NAME)

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

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —

.PHONY: all clean fclean re nc nh na

# — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — — —
