/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: akharrou <akharrou@student.42.us.org>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/09 08:30:29 by akharrou          #+#    #+#             */
/*   Updated: 2019/05/19 22:11:54 by akharrou         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_ssl.h"

int		main(int ac, const char *av[])
{
	int		i;

	if (ac < 2)
		EXIT(usage());
	i = -1;
	while (g_ssl_commands[++i].name != NULL)
		if (ft_strcmp(av[1], g_ssl_commands[i].name) == 0)
		{
			g_ssl_commands[i].name = ft_strdup(g_ssl_commands[i].name);
			if (ac > 2)
				compute_digests(g_ssl_commands[i], av + 2);
			else
				ft_ssl_stdin(g_ssl_commands[i], NULL, NULL);
			free(g_ssl_commands[i].name);
			break ;
		}
	if (g_ssl_commands[i].name == NULL)
		EXIT(invalid_command(av[1]));
	return (0);
}
