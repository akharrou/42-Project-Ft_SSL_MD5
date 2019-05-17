/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_sha384.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: akharrou <akharrou@student.42.us.org>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/10 18:36:53 by akharrou          #+#    #+#             */
/*   Updated: 2019/05/17 16:31:36 by akharrou         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_SHA384_H
# define FT_SHA384_H

/*
** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
** Header File(s).
*/

# include "../Libft/Includes/libft.h"

/*
** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
**  Flag(s).
*/

# define O_FD   (1)
# define O_BUF  (2)

/*
** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
** Macro(s).
*/

# define SHA384_DIGEST_LENGTH   (48)
# define SHA384_CHUNK_LENGTH    (128)
# define SHA384_TOTAL_ROUNDS    (80)

# ifdef E
#  undef E
# endif

# define A   (ctx->state[0])
# define B   (ctx->state[1])
# define C   (ctx->state[2])
# define D   (ctx->state[3])
# define E   (ctx->state[4])
# define F   (ctx->state[5])
# define G   (ctx->state[6])
# define H   (ctx->state[7])

# define A1  (ctx_prime.state[0])
# define B1  (ctx_prime.state[1])
# define C1  (ctx_prime.state[2])
# define D1  (ctx_prime.state[3])
# define E1  (ctx_prime.state[4])
# define F1  (ctx_prime.state[5])
# define G1  (ctx_prime.state[6])
# define H1  (ctx_prime.state[7])

# define CH(e, f, g)   ((e & f) ^ ((~e) & g))
# define MAJ(a, b, c)  ((a & b) ^ (a & c) ^ (b & c))

# define SUM0(a) (ROTR_64BITS(a, 28) ^ ROTR_64BITS(a, 34) ^ ROTR_64BITS(a, 39))
# define SUM1(e) (ROTR_64BITS(e, 14) ^ ROTR_64BITS(e, 18) ^ ROTR_64BITS(e, 41))

# define SIG0(w) (ROTR_64BITS(w, 1) ^ ROTR_64BITS(w, 8) ^ (w >> 7))
# define SIG1(w) (ROTR_64BITS(w, 19) ^ ROTR_64BITS(w, 61) ^ (w >> 6))

/*
** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
** Structure(s).
*/

typedef struct	s_sha384_context
{
	__uint128_t	bitlen;
	char		chunk[128];
	uint64_t	schedule[80];
	uint64_t	state[8];
}				t_sha384ctx;

/*
** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
** Global(s).
*/

extern const uint64_t g_k[80];

/*
** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
** Main Function(s).
*/

char			*ft_sha384(void *data, int flag);

void			sha384_init(t_sha384ctx *ctx);
ssize_t			sha384_update(t_sha384ctx *ctx, void **data, int flag);
void			sha384_transform(t_sha384ctx *ctx);
void			sha384_final(t_sha384ctx *ctx, char **digest);

/*
** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
** Utility Function(s).
*/

void			sha384_transform_init(t_sha384ctx *ctx, t_sha384ctx *ctx_prime);
void			sha384_schedule(t_sha384ctx *ctx);
void			sha384_transform_final(t_sha384ctx *ctx,
					t_sha384ctx *ctx_prime);

/*
** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** ** **
*/

#endif