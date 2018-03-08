# `drupal:8.4.5-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:c0f4a2a29de8293e8f529595dae3848eb31a833b95f577db1d257eb3ad40db66`
- Created: `2018-03-06T03:10:49.381465318Z`
- Virtual Size: ~ 132.10 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-php-entrypoint"]`
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
  - `PHP_VERSION=7.1.15`
  - `PHP_URL=https://secure.php.net/get/php-7.1.15.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.15.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=0e17192fb43532e4ebaa190ecec9c7e59deea7dadb7dab67b19c2081a68bd817`
  - `PHP_MD5=`
  - `DRUPAL_VERSION=8.4.5`
  - `DRUPAL_MD5=e866ae73a2ce13eb803cd24c68ef94c7`
