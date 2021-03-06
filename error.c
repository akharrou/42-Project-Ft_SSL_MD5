/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   error.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: akharrou <akharrou@student.42.us.org>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/09 09:07:16 by akharrou          #+#    #+#             */
/*   Updated: 2019/05/23 19:40:33 by akharrou         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_ssl.h"

void		usage(void)
{
	ft_printf("usage: ./ft_ssl command [ -p | -q | -r ] [ -s string ]");
	ft_printf(" [ file ... ]\n");
	return ;
}

void		invalid_command(const char *invalid_command)
{
	int		i;
	int		j;

	ft_printf("ft_ssl: Error: '%s' is an invalid command.\n", invalid_command);
	ft_printf("\n");
	ft_printf("Standard commands:\n");
	i = 0;
	j = -1;
	while (++j < STANDARD_COMMANDS_COUNT)
		ft_printf("%s\n", g_ssl_commands[i++].name);
	ft_printf("\n");
	ft_printf("Message Digest commands:\n");
	j = -1;
	while (++j < DIGEST_COMMANDS_COUNT)
		ft_printf("%s\n", g_ssl_commands[i++].name);
	ft_printf("\n");
	ft_printf("Cipher commands:\n");
	j = -1;
	while (++j < CIPHER_COMMANDS_COUNT)
		ft_printf("%s\n", g_ssl_commands[i++].name);
	ft_printf("\n");
	return ;
}

void		unknown_option(const char *unknown_option)
{
	int8_t	width;
	int32_t	i;

	ft_printf("unknown option '%s'\n", unknown_option);
	ft_printf("options are\n");
	width = LONGEST_OPTION;
	i = -1;
	while (g_ssl_options[++i].name)
		ft_printf("%-*s %s\n",
			width, g_ssl_options[i].name, g_ssl_options[i].descripton);
	return ;
}
