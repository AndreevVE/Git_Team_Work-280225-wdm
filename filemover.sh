emover.sh#!/bin/bash ^ls all ls -al# Запрос исходной и целевой директории у пользователя

# Запрос расширения файлов, которые нужно скопировать

# Запросить новое расширение для файлов.

# Проверка существования исходной директории и целевой директории


# Проверка, есть ли файлы с указанным расширением в исходной директории

# Копирование файлов с указанным расширением в целевую директорию
echo "Копирование и переименование файлов:"

for file in "$source_directory"/*."$file_extension" 
do
  filename=$(basename "$file")
  name="${filename%.*}"
  new_filename="$name.$new_file_extension"
  cp "$file" "$target_directory/$new_filename"

  echo "Скопирован: $filename → $new_filename"

done

# Архивация исходных файлов.

