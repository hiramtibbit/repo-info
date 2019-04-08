# `drupal:7.65-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:87cd762f8dc4c551f0d93fa5e526e6757a00a926febcaa6d4491057148c0f5bd`
- Created: `2019-04-06T06:33:52.621026259Z`
- Virtual Size: ~ 94.30 Mb  
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
  - `PHP_VERSION=7.1.28`
  - `PHP_URL=https://www.php.net/get/php-7.1.28.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://www.php.net/get/php-7.1.28.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=45131497ec0a947e3f9145c000e8fcc1f86b46518ee3f6810d80efa2d39521e2`
  - `PHP_MD5=`
  - `DRUPAL_VERSION=7.65`
  - `DRUPAL_MD5=d453c23413627594f3f05c984e339706`
