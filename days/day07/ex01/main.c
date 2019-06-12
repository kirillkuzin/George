int		*ft_range(int min, int max);
void	ft_putstr(char *str);

#include <stdio.h>

int		main(void)
{
	int i = 0;
	int min = 5;
	int max = 36;
	int *ofints;
	
	ofints = ft_range(min, max);
	while (i < 31)
	{
		printf("%d", ofints[i]);
		i++;
	}
	return (0);
}
