cd $1
sh libft_creator.sh
gcc -Wall -Wextra -Werror ../../days/day06/ex00/main.c -L. -lft
cd ..
$1/a.out > user_output
echo >> user_output
