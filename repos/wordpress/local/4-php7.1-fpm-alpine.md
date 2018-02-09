# `wordpress:4.9.4-php7.1-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:08bde905b71655bc86547ce3fa56773ee16fd877cc39c027599b9f86ddd3f325`
- Created: `2018-02-09T00:09:24.922630633Z`
- Virtual Size: ~ 99.39 Mb  
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
  - `PHP_VERSION=7.1.14`
  - `PHP_URL=https://secure.php.net/get/php-7.1.14.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.14.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=c09f0c1074f5689b492d79034adb84e6a6c6d08c6763c02282e6318d41156779`
  - `PHP_MD5=`
  - `WORDPRESS_VERSION=4.9.4`
  - `WORDPRESS_SHA1=0e630bf940fd586b10e099cd9195b3e825fb194c`
