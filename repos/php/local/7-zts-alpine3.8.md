# `php:7.3.1-zts-alpine3.8`

## Docker Metadata

- Image ID: `sha256:29066feee295b9b81954c9dc3dcb65f78a5c811b9725d2ccaa871518ee9087b0`
- Created: `2019-02-06T02:19:52.031395541Z`
- Virtual Size: ~ 63.73 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-php-entrypoint"]`
- Command: `["php","-a"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts --disable-cgi`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D`
  - `PHP_VERSION=7.3.1`
  - `PHP_URL=https://secure.php.net/get/php-7.3.1.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.3.1.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=cfe93e40be0350cd53c4a579f52fe5d8faf9c6db047f650a4566a2276bf33362`
  - `PHP_MD5=`
