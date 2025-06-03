#!/bin/bash

if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
  echo "Git-репозиторий обнаружен. Проверяем изменения..."
  
  git add .
 
  if ! git diff --cached --quiet; then
  
    git commit -m "Автоматический коммит $(date +'%Y-%m-%d %H:%M:%S')"
    echo "Изменения зафиксированы."
  else
    echo "Нет изменений для коммита."
  fi
else
  echo "Ошибка: текущая директория не является git-репозиторием."
  exit 1
fi
