cd $1
echo "\ngcc -Wall -Wextra -Werror $1/ft_sort_params.c"
gcc -Wall -Wextra -Werror ft_sort_params.c ../../files/ft_putchar.c
cd ..
echo "./a.out test1 tedt2 et3 a > user_output"
$1/a.out test1 tedt2 et3 a > user_output
echo >> user_output
