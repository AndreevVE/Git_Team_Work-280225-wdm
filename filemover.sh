#!/bin/bash

# Запрос исходной и целевой директории у пользователя

# Запрос расширения файлов, которые нужно скопировать

# Запросить новое расширение для файлов.

# Проверка существования исходной директории и целевой директории


# Проверка, есть ли файлы с указанным расширением в исходной директории
#!/bin/bash
found=0
for file in "$source_directory"/*."$file_extension"; do
   if [ -e "$file"]; then
     found=1
     break
   fi
done

   if [ "$found" -eq 0 ]; then
  echo "There are no files with this extention: .$file_extension"
  exit 1

   else 
  echo "Files with .$file_extension were found"

   fi  


# Копирование файлов с указанным расширением в целевую директорию

# Архивация исходных файлов.

