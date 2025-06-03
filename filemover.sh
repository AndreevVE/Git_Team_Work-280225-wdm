#!/bin/bash

# Запрос исходной и целевой директории у пользователя
read -p "Введите путь к исходной директории: " source_directory

read -p "Введите путь к целевой директории: " target_directory

echo "Исходная директория: $source_directory"
echo "Целевая директория: $target_directory"

# Запрос расширения файлов, которые нужно скопировать
read -p "Введите расширение файлов, которые нужно скопировать (например, txt): " file_extension

# Убедимся, что расширение не начинается с точкой — добавим точку при необходимости
if [[ "$file_extension" != .* ]]; then
  file_extension=".$file_extension"
fi

echo "Будут копироваться файлы с расширением: $file_extension"

# Запросить новое расширение для файлов.

# Проверка существования исходной директории и целевой директории

if [ ! -d "$source_directory" ];
  then
    echo "is no directory"
    exit 1
fi

if [ ! -d "$target_directory" ];
  then
    mkdir -p "$target_directory"
fi
                   
               
                      

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

# Архивация исходных файлов
read -p "Введите путь к исходной директории: " source_directory
read -p "Введите путь к целевой директории: " target_directory
read -p "Введите расширение файлов для архивации (без точки, например txt): " file_extension

# === Создание имени архива ===
current_date=$(date +%F)
archive_name="old_files_${current_date}.tar"
# === Создание архзива ===
tar -cf "$target_directory/$archive_name" *."$file_extension"

if [ $? -eq 0 ]; then
    echo "Архив $archive_name успешно создан в $target_directory."

# ====== Удаление исзодных файлов ======
    rm -f *."$file_extension"
    echo "Файлы с расширением .$file_extension удалены из $source_directory."
else
    echo "Ошибка при создании архива."
fi

