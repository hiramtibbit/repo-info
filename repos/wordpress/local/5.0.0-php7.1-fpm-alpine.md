# `wordpress:5.0.0-php7.1-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:7308ee1716f22d7f5ca027a284a2a25781b86bd4c092e321857105f013a6b9a8`
- Created: `2018-12-10T20:27:54.503500543Z`
- Virtual Size: ~ 113.22 Mb  
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
  - `PHP_VERSION=7.1.25`
  - `PHP_URL=https://secure.php.net/get/php-7.1.25.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.25.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=0fd8dad1903cd0b2d615a1fe4209f99e53b7292403c8ffa1919c0f4dd1eada88`
  - `PHP_MD5=`
  - `WORDPRESS_VERSION=5.0`
  - `WORDPRESS_SHA1=67758958f14c1dcefe37ce6558d470a4e142893b`
