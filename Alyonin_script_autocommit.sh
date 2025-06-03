#!/bin/bash

# Проверка: находится ли текущая директория внутри Git-репозитория
if ! git rev-parse --is-inside-work-tree &> /dev/null; then
  echo "Ошибка: текущая директория не является Git-репозиторием."
  exit 1
fi

# Найдём изменённые файлы за последние 10 минут
changed_files=$(find . -type f -mmin -10)

if [ -z "$changed_files" ]; then
  echo "Нет изменённых файлов за последние 10 минут. Коммит не требуется."
  exit 0
fi

# Добавим изменения
git add .

# Создадим коммит с текущей датой и временем
timestamp=$(date +'%Y-%m-%d %H:%M:%S')
git commit -m "Автоматический коммит $timestamp"

echo "✅ Коммит выполнен: Автоматический коммит $timestamp"
