# web_server_bash_installer

Файл архива представляет собой сайт с фотографиями, видео и лабораторными. Сайт был оптимизирован: благодаря конвертации фото и видео, их размер стал меньше без видимой потери качества, что значительно ускорило загрузку сайта. Интерфейс сайта адаптируется под различные размеры экрана. Сайт разработан на html/css/js.

Для установки сайта был написан Bash-скрипт с графическим пользовательским интерфейсом. Скрипт автоматически устанавливает веб-сервер apache2 вместе с сайтом на Linux Debian. После этого зайти на сайт можно указав ip-адрес машины в строке браузера.

Контекстная диаграмма скрипта-инсталлятора в нотации IDEF0:

![Ais 9-IDEF0 drawio](https://github.com/ICallMyGitHairyHarry/web_server_bash_installer/assets/51024214/d450b064-4c01-46e5-98b8-60bf38a59d97)

Декомпозиция контекстной диаграммы:

![Ais 9-Декомпозиция drawio](https://github.com/ICallMyGitHairyHarry/web_server_bash_installer/assets/51024214/2b04158c-01ec-4acd-a6c3-b501ed04da47)

Разработанные диаграммы представляют собой функциональную модель, отображающей структуру и функции системы, а также потоки информации и материальных объектов, связывающих эти функции.

Инструкция по использованию инсталлятора:
1. Скачайте архив репозитория и распакуйте его.
2. Откройте репозиторий в терминале.
3. Войдите под суперпользователем.
4. Установите dialog, если он у вас не установлен: apt install dialog
5. Запустите скрипт командой . ./ИСТ-922Юрченко_ЛР10Install.sh
6. Следуйте инструкциям установщика.


