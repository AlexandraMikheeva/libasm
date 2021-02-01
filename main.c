/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: olydden <olydden@student.21-school.ru>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/01 04:13:03 by olydden           #+#    #+#             */
/*   Updated: 2021/02/01 20:00:07 by olydden          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include <errno.h>
#include "includes/libasm.h"

int main()
{
	char *empty = (char *)malloc(sizeof(char) * 3);
	char *s = "ajbhbkjbjbjbjbjbjbjs";
	char *s1 = ft_strdup(s);
	
	// printf("%ld\n", ft_strlen(s));
	// printf("%d\n", strlen(long_str));
	// ft_write(1, "a\n", 2);
	// printf("%d\n", errno);
	// printf("%s$\n", ft_strcpy(empty, long_str));
	// printf("%s$\n", strcpy(empty, long_str));
	// printf("%d\n", ft_strcmp(str1, str2));
	// printf("%d\n", strcmp(str1, str2));
	printf("%s$\n", s1);
	// printf("%s\n", strdup(long_str));
	return (0);
}