#!/bin/bash

# Author: Airat Halitov
# GitHub: https://github.com/AiratHalitov/airat-phpredis-update
# License: GPLv3

# don't forget update version!
# check version from https://github.com/phpredis/phpredis/blob/develop/Changelog.md

# check: https://objectcache.pro/docs/data-encoding/
# apt install php7.4-igbinary liblz4-dev libzstd-dev liblzf-dev

VER=5.3.7
PHPVER=7.4
NP=$(nproc)

rm -rf phpredis-$VER
rm -rf $VER.zip

wget -q https://github.com/phpredis/phpredis/archive/$VER.zip

if [ -f $VER.zip ]; then
    unzip -q $VER.zip && rm -rf $VER.zip

    cd phpredis-$VER
    phpize && ./configure --enable-redis-igbinary --enable-redis-zstd && make -j $NP > /dev/null && sudo make install && echo "Done!"

    # check the right path to redis.so in redis.ini and copy to all folders:
    #cp redis.ini /etc/php/$PHPVER/apache2/conf.d/redis.ini
fi
