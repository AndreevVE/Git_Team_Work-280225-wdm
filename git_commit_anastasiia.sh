#!/bin/bash
if git status > /dev/null 2>&1; then
  echo "Это git-репозиторий"
else
  echo "Не git-репозиторий"
fi
  git add -A

  if git commit -m "Автоматический коммит $(date +'%Y-%m-%d %H:%M:%S')" > /dev/null 2>&1; then
    echo " Изменения успешно зафиксированы."
  else
    echo "️ Нет изменений для коммита."
  fi
  exit 1
fi
