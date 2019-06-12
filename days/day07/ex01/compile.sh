cd $1
echo "\ngcc -Wall -Wextra -Werror user/$1/ft_strdup.c files/*.c days/day07/ex00/main.c"
gcc -Wall -Wextra -Werror ft_range.c ../../files/*.c ../../days/day07/ex01/main.c
cd ..
echo "./a.out > user_output"
$1/a.out > user_output
echo >> user_output
