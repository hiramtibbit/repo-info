# `php:7.3.1-fpm-alpine3.9`

## Docker Metadata

- Image ID: `sha256:3d0697b70b104e767577a9ad085c9ebbac6a81774990d53a97f4827fc2afe001`
- Created: `2019-02-06T01:48:49.167637455Z`
- Virtual Size: ~ 79.82 Mb  
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
  - `GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D`
  - `PHP_VERSION=7.3.1`
  - `PHP_URL=https://secure.php.net/get/php-7.3.1.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.3.1.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=cfe93e40be0350cd53c4a579f52fe5d8faf9c6db047f650a4566a2276bf33362`
  - `PHP_MD5=`
