char	*ft_strdup(char *src);
void	ft_putstr(char *str);

int		main(void)
{
	char src1[12] = "Hello world\0";
	char src2[10] = "School 21\0";
	char *str;

	str = ft_strdup(src1);
	ft_putstr(str);
	str = ft_strdup(src2);
	ft_putstr(str);
	return (0);
}
