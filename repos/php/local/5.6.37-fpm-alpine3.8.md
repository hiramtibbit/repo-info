# `php:5.6.37-fpm-alpine3.8`

## Docker Metadata

- Image ID: `sha256:efb2c8296521b8b1e9d9deac55184b84c353a10bb461f5b7f5cfd6aa5c387ac8`
- Created: `2018-09-12T03:44:25.847239468Z`
- Virtual Size: ~ 54.48 Mb  
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
  - `GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=5.6.37`
  - `PHP_URL=https://secure.php.net/get/php-5.6.37.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-5.6.37.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=5000d82610f9134aaedef28854ec3591f68dedf26a17b8935727dac2843bd256`
  - `PHP_MD5=`
