# `wordpress:4.9.8-php7.0-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:cab968f76f9e03bd66bcdfe8bced3f3a3a8e782037a6551a7ee50dd8049716bf`
- Created: `2018-09-12T06:02:54.143193403Z`
- Virtual Size: ~ 99.54 Mb  
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
  - `GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=7.0.31`
  - `PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf`
  - `PHP_MD5=`
  - `WORDPRESS_VERSION=4.9.8`
  - `WORDPRESS_SHA1=0945bab959cba127531dceb2c4fed81770812b4f`
