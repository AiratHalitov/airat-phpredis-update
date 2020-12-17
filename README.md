# airat-phpredis-update
Скрипт для быстрой установки и/или обновления [phpredis](https://github.com/phpredis/phpredis) на сервере

## Установка и запуск:
```bash
git clone https://github.com/AiratHalitov/airat-phpredis-update

cd airat-phpredis-update

sudo ./airat-phpredis-update.sh
```

**Примечания:** 
- Чтобы использовать `phpize` предварительно нужно установить пакет `php-dev`
- Не забудь перед запуском скрипта обновить версию `phpredis` в переменной `VER`
- Узнать актуальную версию `phpredis` можно [тут](https://github.com/phpredis/phpredis/blob/develop/Changelog.md)
- После сборки можно запустить в папке с кодом `make test` (не обязательно)
- В конце не забудь скопировать файл `redis.ini` в папку `/etc/php/7.4/apache2/conf.d/` (проверь версию PHP) и обновить в нём путь до файла `redis.so`
