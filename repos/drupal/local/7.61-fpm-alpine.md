# `drupal:7.61-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:104d9b420c6de501f1f68a1d66731c30c25d3ab8b4c288268750ca6f7fb2c980`
- Created: `2018-11-17T01:51:30.686748365Z`
- Virtual Size: ~ 89.09 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-php-entrypoint"]`
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
  - `PHP_VERSION=7.1.24`
  - `PHP_URL=https://secure.php.net/get/php-7.1.24.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.24.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=e70dcec0ae28b6bc308b78972ec15aa850808819cc765f505aa51e5a7e2fa5d7`
  - `PHP_MD5=`
  - `DRUPAL_VERSION=7.61`
  - `DRUPAL_MD5=94bc49170d98e0cfe59db487911ecb9d`
