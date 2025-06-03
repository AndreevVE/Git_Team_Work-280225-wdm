#!/bin/bash

# Настройки по умолчанию
: ${source_directory:="./"}
: ${target_directory:="./"}
: ${file_extension:="*.txt"}

# Проверяем, что исходная директория существует
if [ ! -d "$source_directory" ]; then
  echo "Ошибка: Исходная директория '$source_directory' не найдена."
  exit 1
fi

# Создаем целевую директорию, если она не существует
mkdir -p "$target_directory"

# Формируем имя архива
archive_name="old_files_$(date +%Y-%m-%d).tar.gz"

# Архивируем файлы
find "$source_directory" -maxdepth 1 -name "$file_extension" -print0 | tar --null -czvf "$target_directory/$archive_name" --files-from -

# Проверяем успешность архивации
if [ $? -eq 0 ]; then
  echo "Архив '$archive_name' успешно создан в директории '$target_directory'."
  # Удаляем исходные файлы
  find "$source_directory" -maxdepth 1 -name "$file_extension" -delete
  echo "Файлы с расширением '$file_extension' удалены из директории '$source_directory'."
else
  echo "Ошибка при создании архива."
fi
