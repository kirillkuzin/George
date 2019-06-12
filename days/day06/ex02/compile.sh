echo "\ngcc -Wall -Wextra -Werror $ex/ft_print_params.c"
gcc -Wall -Wextra -Werror $1/ft_print_params.c
echo "./a.out test1 test2 test3 > user_output"
./a.out test1 test2 test3 > user_output
echo >> user_output
./a.out test4 test5 >> user_output
echo >> user_output
