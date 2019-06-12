cd $1
echo "\ngcc -Wall -Wextra -Werror $1/ft_rev_params.c"
gcc -Wall -Wextra -Werror ft_rev_params.c ../../files/ft_putchar.c
cd ..
echo "./a.out test1 test2 test3 > user_output"
$1/a.out test1 test2 test3 > user_output
echo >> user_output
echo "./a.out test4 test5 > user_output"
$1/a.out test4 test5 >> user_output
echo >> user_output
