#!/bin/bash

# Получаем текущую раскладку
current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')

# Переключение между русской и английской раскладками
if [ "$current_layout" = "ru" ]; then
    setxkbmap us
else
    setxkbmap ru
fi