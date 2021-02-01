/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: olydden <olydden@student.21-school.ru>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/31 23:50:20 by olydden           #+#    #+#             */
/*   Updated: 2021/02/01 19:52:07 by olydden          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H
#include <stddef.h>
#include <sys/types.h>

size_t	ft_strlen(const char *s);
ssize_t ft_write(int fd, const void *buf, size_t count);
char	*ft_strcpy(char *dest, const char *src);
ssize_t ft_read(int fd, void *buf, size_t count);
int		ft_strcmp(const char *s1, const char *s2);
char	*ft_strdup(const char *s);

#endif
