#!/bin/bash
if git status > /dev/null 2>&1; then
   echo "Это git-репозиторий"

   git add -A

if git diff --cached --quiet; then
  echo "Нет изменений для коммита."
else
  git commit -m "Автоматический коммит $(date +'%Y-%m-%d %H:%M:%S')"
  echo "Изменения успешно зафиксированы."
fi
else
  echo "Не git репозиторий"
  exit 1
fi
