# `wordpress:4.9.7-php7.1-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:7e80a1cc357ceea0a31a1f649b57a7eb16122942964eed72631b2cadc5972016`
- Created: `2018-07-21T13:18:52.400414118Z`
- Virtual Size: ~ 102.84 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-entrypoint.sh"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172`
  - `PHP_VERSION=7.1.20`
  - `PHP_URL=https://secure.php.net/get/php-7.1.20.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.20.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=cd7d1006201459d43fae0790cce4eb3451add5c87f4cadb13b228d4c179b850c`
  - `PHP_MD5=`
  - `WORDPRESS_VERSION=4.9.7`
  - `WORDPRESS_SHA1=7bf349133750618e388e7a447bc9cdc405967b7d`
