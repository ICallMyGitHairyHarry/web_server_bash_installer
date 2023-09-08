# web_server_bash_installer

Файл архива представляет собой сайт с фотографиями, видео и лабораторными. Сайт был оптимизирован: благодаря конвертации фото и видео, их размер стал меньше без видимой потери качества, что значительно ускорило загрузку сайта. Интерфейс сайта адаптируется под различные размеры экрана. Сайт разработан на html/css/js.

Для установки сайта был написан Bash-скрипт с графическим пользовательским интерфейсом. Скрипт автоматически устанавливает веб-сервер apache2 вместе с сайтом на Linux Debian. После этого зайти на сайт можно указав ip-адрес машины в строке браузера.

Инструкция по использованию инсталлятора:
1. Скачайте архив репозитория и распакуйте его.
2. Откройте репозиторий в терминале.
3. Войдите под суперпользователем.
4. Установите dialog, если он у вас не установлен: apt install dialog
5. Запустите скрипт командой . ./ИСТ-922Юрченко_ЛР10Install.sh
6. Следуйте инструкциям установщика.

В файле idef.md представлены диаграммы в нотации IDEF0 для разработанного скрипта.
