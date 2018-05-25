# `wordpress:4.9.6-php7.1-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:829a8e964f382118f70ac9dd382ddccd0772545e5346d9b6d0d1309ab6aa4908`
- Created: `2018-05-24T02:35:33.256356021Z`
- Virtual Size: ~ 100.89 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-entrypoint.sh"]`
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
  - `WORDPRESS_VERSION=4.9.6`
  - `WORDPRESS_SHA1=40616b40d120c97205e5852c03096115c2fca537`
