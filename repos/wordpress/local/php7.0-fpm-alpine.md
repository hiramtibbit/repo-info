# `wordpress:4.9.6-php7.0-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:2e2cf593ac47ef2fbb07b9024e46f4b0ba0fa357b2e98a4cde6e2c72c401098d`
- Created: `2018-05-24T02:24:19.373056209Z`
- Virtual Size: ~ 99.09 Mb  
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
  - `GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=7.0.30`
  - `PHP_URL=https://secure.php.net/get/php-7.0.30.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.0.30.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=c90892fb68ab9b8476519658d3f78f6388f2609ae1309bdc2a2e1cc9f92dd686`
  - `PHP_MD5=`
  - `WORDPRESS_VERSION=4.9.6`
  - `WORDPRESS_SHA1=40616b40d120c97205e5852c03096115c2fca537`
