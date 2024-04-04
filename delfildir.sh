#!/bin/bash

read -p "Введите полный путь к директории: " dirtodel

if [ -e $dirtodel ]
        then
                echo 'Указанная директория найдена'
                cd $dirtodel
                echo 'Удаляю файлы *.bak *.tmp *.backup'
                rm -v *.bak *.tmp *.backup
                echo 'Удаление файлов завершено успешно'
        else
                echo 'Ошибка. Указанная директория не найдена!'
                exit 2
fi