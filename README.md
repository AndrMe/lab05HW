## Laboratory V Homework

[![Coverage Status](https://coveralls.io/repos/github/AndrMe/lab05HW/badge.svg?branch=main)](https://coveralls.io/github/AndrMe/lab05HW?branch=main)

Данная лабораторная работа посвещена изучению фреймворков для тестирования на примере **GTest**

## Установка и компиляция(linux)
- Чтобы установить можно выполнить:
```sh
$ export LAB_DIR=labDir
$ git clone https://github.com/AndrMe/lab05HW ${LAB_DIR} --recurse-submodules && cd ${LAB_DIR}
```
-  Чтобы скомпилировать и запустить тесты:
```sh
$ ./build.sh
```
Или вручную через cmake

---
Переменные cmake:
- BUILD_TESTS=ON/OFF - собирка тестов
- TESTS_NAME=tests - имя файла с тестами
- ENABLE_COVERAGE=ON/OFF - задание флагов " ```  -g -coverage ```" 

--- 

## Homework

### Задание
1. Создайте `CMakeList.txt` для библиотеки *banking*.
2. Создайте модульные тесты на классы `Transaction` и `Account`.
    * Используйте mock-объекты.
    * Покрытие кода должно составлять 100%.
3. Настройте сборочную процедуру на **TravisCI**.
4. Настройте [Coveralls.io](https://coveralls.io/).

## Links

- [C++ CI: Travis, CMake, GTest, Coveralls & Appveyor](http://david-grs.github.io/cpp-clang-travis-cmake-gtest-coveralls-appveyor/)
- [Boost.Tests](http://www.boost.org/doc/libs/1_63_0/libs/test/doc/html/)
- [Catch](https://github.com/catchorg/Catch2)

```sh
$ open https://github.com/google/googletest
```

```
Copyright (c) 2015-2021 The ISC Authors
```
