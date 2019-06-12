#!/bin/bash
echo "\033[0;36m \n Hi, I'm not Moulinette. I am George. \n \033[0m"
echo "\033[0;31m \n I am not acquainted with Moulinette personally, so that you communicate with me at your own peril and risk. Communication with me is just an additional guarantee. \n \033[0m"
echo "\033[0;31m \n Also, you should not get involved in communication with me, repeat independently commands \033[1;31m-norminette -R CheckForbiddenSourceHeader \033[0;31mand \033[1;31mgcc -Wall -Wextra -Werror \n \033[0m"
git clone $1 user
cd user
output="_output"
for ex in $(find * -type d -name 'ex*')
do
    echo "\033[0;34m \n\n Checking $ex... \033[0m"
    echo "\nnorminette -R CheckForbiddenSourceHeader $ex/*"
    norminette -R CheckForbiddenSourceHeader $ex/*
    if [ -f "../days/$2/$ex/compile.sh" ]; then
        sh ../days/$2/$ex/compile.sh $ex
    else
        echo "\ngcc -Wall -Wextra -Werror $ex/*.c"
		gcc -Wall -Wextra -Werror $ex/*.c ../files/*.c
        echo "./a.out > user_output"
        ./a.out > user_output
        echo >> user_output
    fi
    echo "diff -U 3 user_output ../days/$2/$ex/"$ex$output" | cat -e"
    user_logs=$(diff -U 3 user_output ../days/$2/$ex/"$ex$output" | cat -e)
    correct_logs=""
    echo $user_logs
    if [[ $user_logs = $correct_logs ]]; then
        echo "\033[0;32m Diff OK :D \033[0m"
    else
        echo "\033[0;31m Diff KO :( \033[0m"
    fi
done
cd ..
rm -rf user
