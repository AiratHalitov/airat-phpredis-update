#!/bin/bash

# don't forget update version!
VER=5.3.2
# download version from https://github.com/phpredis/phpredis/blob/develop/Changelog.md

rm -rf phpredis-$VER
rm -rf $VER.zip

wget https://github.com/phpredis/phpredis/archive/$VER.zip

if [ -f $VER.zip ]; then
    unzip $VER.zip && rm -rf $VER.zip

    cd phpredis-$VER
    phpize && ./configure && make -j2 && sudo make install && echo "Done!"
fi

# copy redis.ini to /etc/php/7.4/apache2/conf.d and update path
