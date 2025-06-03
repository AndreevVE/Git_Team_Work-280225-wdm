#!/bin/bash
if git status > /dev/null 2>&1; then
   echo "Это git-репозиторий"

   git add -A
if git commit -m "Автоматический коммит $(date +'%Y-%m-%d %H:%M:%S')" > /dev/null 2>&1; then
   echo " Изменения успешно зафиксированы."
   exit 0
else
   echo "️ Нет изменений для коммита."
   exit 0
fi

else
   echo "Не git репозиторий"
   exit 1
fi
