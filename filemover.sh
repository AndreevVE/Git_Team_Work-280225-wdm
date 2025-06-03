#!/bin/bash

# Запрос исходной и целевой директории у пользователя
read -p "Введите новое расширение для файлов (без точки): " new_file_extension
echo "Вы ввели новое расширение: .$new_file_extension"

# Запрос расширения файлов, которые нужно скопировать

# Запросить новое расширение для файлов.

# Проверка существования исходной директории и целевой директории


# Проверка, есть ли файлы с указанным расширением в исходной директории

# Копирование файлов с указанным расширением в целевую директорию

# Архивация исходных файлов
read -p "Введите путь к исходной директории: " source_directory
read -p "Введите путь к целевой директории: " target_directory
read -p "Введите расширение файлов для архивации (без точки, например txt): " file_extension

# === Создание имени архива ===
current_date=$(date +%F)
archive_name="old_files_${current_date}.tar"

cd "$source_directory" || { echo "Ошибка: не удалось перейти в $source_directory"; exit 1; }

# === Создание архзива ===
tar -cf "$target_directory/$archive_name" *."$file_extension"

if [ $? -eq 0 ]; then
    echo "Архив $archive_name успешно создан в $target_directory."

# Удаление исзодных файлоа
    rm -f *."$file_extension"
    echo "Файлы с расширением .$file_extension удалены из $source_directory."
else
    echo "Ошибка при создании архива."
fi

