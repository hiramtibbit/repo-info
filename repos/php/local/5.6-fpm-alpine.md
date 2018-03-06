# `php:5.6.34-fpm-alpine3.4`

## Docker Metadata

- Image ID: `sha256:23359bef09c433bfecf61438fbac0ad97535b7da2d2488913d9cc64e13e64f91`
- Created: `2018-03-05T23:44:17.87233722Z`
- Virtual Size: ~ 55.35 Mb  
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
  - `GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=5.6.34`
  - `PHP_URL=https://secure.php.net/get/php-5.6.34.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-5.6.34.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=21453be3a045204cd2717543ef42771324f411f40962ecda4fe841930a933128`
  - `PHP_MD5=`
