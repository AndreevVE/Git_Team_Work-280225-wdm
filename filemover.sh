#!/bin/bash

# Запрос исходной и целевой директории у пользователя

# Запрос расширения файлов, которые нужно скопировать

# Запросить новое расширение для файлов.

# Проверка существования исходной директории и целевой директории


# Проверка, есть ли файлы с указанным расширением в исходной директории
#!/bin/bash
SOURCE_DIR='sourse_directory'
EXTENSION='file_extension'

found=0
for file in "$SOURCE_DIR"/*."$EXTENTION"; do
   if [ -e "$file"]; then
     found=1
     break
   fi
done

   if [ "$found" -eq 0 ]; then
  echo "There are no files with this extention: .$EXTENTION"
  exit 1

   else 
  echo "Files with .$EXTENTION were found"

   fi  


# Копирование файлов с указанным расширением в целевую директорию

# Архивация исходных файлов.

