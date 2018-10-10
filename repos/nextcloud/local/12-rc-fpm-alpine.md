# `nextcloud:12.0.12RC2-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:56caf33d4ba8f29ceeb21b5b6d7560ca1d475cc659e484e1eaaafc43548044bd`
- Created: `2018-10-09T20:20:31.622134755Z`
- Virtual Size: ~ 279.13 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/entrypoint.sh"]`
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
  - `PHP_VERSION=7.1.22`
  - `PHP_URL=https://secure.php.net/get/php-7.1.22.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.22.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=9194c9b3a592d8376fde837dde711ec01ee26f8607fc2884047ef6f7c089b15d`
  - `PHP_MD5=`
  - `NEXTCLOUD_VERSION=12.0.12RC2`
