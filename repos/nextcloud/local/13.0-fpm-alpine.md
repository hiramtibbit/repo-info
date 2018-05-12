# `nextcloud:13.0.2-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:f78c8f18ac3a8d02db3c16936e36a882831a0884144024ab9aebad8c003b98a3`
- Created: `2018-05-10T19:03:21.587625821Z`
- Virtual Size: ~ 271.69 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/entrypoint.sh"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172`
  - `PHP_VERSION=7.1.17`
  - `PHP_URL=https://secure.php.net/get/php-7.1.17.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.17.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=1a784806866e06367f7a5c88775d239d6f30041c7ce65a8232d03a3d4de56d56`
  - `PHP_MD5=`
  - `NEXTCLOUD_VERSION=13.0.2`
