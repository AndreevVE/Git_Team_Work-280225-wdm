
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

