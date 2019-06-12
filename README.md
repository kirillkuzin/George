# George

This is George from school 21.

## Getting Started

George is trying to test your programs as Moulinette.\n
You can help George get wiser by sending him tests for future tasks
(https://github.com/kirillkuzin/42_Subjects).

### Installing

```
git clone https://github.com/kirillkuzin/George.git george
```

### Running the tests

```
sh george.sh https://your_repo.git dayX
```

For example, day05 or day10.

## Examples

Examples of non-default compile files.
All compile files are placed in the subjects directories and called compile.sh.

### compile.sh when outputting data to the terminal

```
gcc -Wall -Wextra -Werror $1/file.c
./a.out test1 test2 test3 > user_output
echo >> user_output
./a.out test4 test5 >> user_output
echo >> user_output
```

### compile.sh when returning data from a function

```
gcc -Wall -Wextra -Werror $1/file.c ../days/day06/ex02/main.c
./a.out > user_output
echo >> user_output
```

main () gets the value from the function and outputs it/them to the terminal.
