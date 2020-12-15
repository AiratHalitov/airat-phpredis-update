#!/bin/bash

# Author: Airat Halitov
# GitHub: https://github.com/AiratHalitov/airat-phpredis-update
# License: GPLv3

# don't forget update version!
# check version from https://github.com/phpredis/phpredis/blob/develop/Changelog.md
VER=5.3.2
PHPVER=7.4
NP=$(nproc)

rm -rf phpredis-$VER
rm -rf $VER.zip

wget https://github.com/phpredis/phpredis/archive/$VER.zip

if [ -f $VER.zip ]; then
    unzip $VER.zip && rm -rf $VER.zip

    cd phpredis-$VER
    phpize && ./configure && make -j $NP && sudo make install

    # check the right path to redis.so in redis.ini
    #cp redis.ini /etc/php/$PHPVER/apache2/conf.d/redis.ini

    echo "Done!"
fi
