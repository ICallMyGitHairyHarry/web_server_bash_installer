#!/bin/bash

dialog --title "ИСТ-922Юрченко_ЛР10Install" --msgbox "Вас привествует инсталлятор ИСТ-922Юрченко_ЛР10Install. Данный инсталлятор установит на вашу машину веб-сервер с сайтом." 8 50

while :
do
    dialog --title "ИСТ-922Юрченко_ЛР10Install" --menu "Что вы хотите сделать?\nДля выхода нажмите \"Отмена\"" 20 70 7 \
       1 "Посмотреть скрипт установщика"\
       2 "Посмотреть файлы в архиве"\
       3 "Начать установку"\
       2>.menuchoice

    ret=$?

    if [ $ret -eq 0 ]
    then
        choice=$(cat .menuchoice)
        case $choice in
          1)
            dialog --title "Скрипт установщика" --no-collapse --cr-wrap --msgbox "$(cat ИСТ-922Юрченко_ЛР10Install.sh)" 20 70;;
          2)
            dialog --title "Файлы архива" --no-collapse --cr-wrap --msgbox "$(tar -tf ИСТ-922Юрченко_ЛР10.tar.gz)" 20 70;;
          3)
            i=0
            tar -xzvf ИСТ-922Юрченко_ЛР10.tar.gz | awk -v i="${i}" '{i+=0.2} {print i}' | dialog --title  "Установка" --gauge "Распаковка архива [*]" 15 60 0
            i=23
            apt-get -y install apache2 | awk -v i="${i}" '{i+=2} {print i}' | dialog --title  "Установка" --gauge "Распаковка архива\nУстановка apache2[*]" 15 60 23
            i=81
            DIRS=(ИСТ-922Юрченко_ЛР10/*)
            {
            for f in "${DIRS[@]}"
            do
                i=$(( $i + 1 ))
                echo "$i"
                cp -r $f "/var/www/html" &>/dev/null
            done
            } | dialog --title "Установка" --gauge "Распаковка архива\nУстановка apache2\nКопирование файлов[*]" 15 60 81
            systemctl enable apache2 &>/dev/null
            dialog --title "ИСТ-922Юрченко_ЛР10Install" --msgbox "Установка завершена! \nСайт установлен на базе веб-сервиса apache2 по адресу \"$(hostname -I | awk '{print $1}')\"" 8 50
            clear
            echo "Спасибо за установку! Сайт расположен по адресу \"$(hostname -I | awk '{print $1}')\"."
            break;;
        esac
    else
    clear
    echo "Ждем вас снова!"
    break
    fi
done
rm .menuchoice &>/dev/null
rm -rf ИСТ-922Юрченко_ЛР10 &>/dev/null
    
