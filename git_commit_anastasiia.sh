#!/bin/bash

if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then

  git add -A

 
  if git commit -m "Автоматический коммит $(date +'%Y-%m-%d %H:%M:%S')" > /dev/null 2>&1; then
    echo " Изменения успешно зафиксированы."
  else
    echo "️ Нет изменений для коммита."
  fi

else
  echo " Это не git-репозиторий."
  exit 1
fi
