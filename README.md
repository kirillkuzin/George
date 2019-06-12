# George

This is George from school 21.

## Getting Started / Начало

George is trying to test your programs as Moulinette.
You can help George get wiser by sending him tests for future tasks
(https://github.com/kirillkuzin/42_Subjects).

Джордж пытается тестировать ваши программы как это делает Мулинет.
Вы можете помочь Джорджу умнеть, отправляя ему тестовые файлы для будущих задач
(https://github.com/kirillkuzin/42_Subjects).

### Installing / Уставнока

```
git clone https://github.com/kirillkuzin/George.git george
```

### Running the tests / Запуск тестов

```
sh george.sh https://your_repo.git dayX
```

For example
Например
sh george.sh https://your_repo.git day05
sh george.sh https://your_repo.git day10

## Examples

Examples of non-default compile files.
All compile files are placed in the subjects directories and called compile.sh.

Примеры нестандартных файлов компиляции.
Все файлы компиляции нужно класть в директорию задания и называть compile.sh.

### compile.sh when outputting data to the terminal / compile.sh при выводе данных программы в терминал

```
gcc -Wall -Wextra -Werror $1/file.c
./a.out test1 test2 test3 > user_output
echo >> user_output
./a.out test4 test5 >> user_output
echo >> user_output
```

### compile.sh when returning data from a function / compile.sh при возвращении данных из функции

```
gcc -Wall -Wextra -Werror $1/file.c ../days/day06/ex02/main.c
./a.out > user_output
echo >> user_output
```

main() gets the value from the function and outputs it/them to the terminal.
main() берет значение из функции и выводит его/их в терминал.
