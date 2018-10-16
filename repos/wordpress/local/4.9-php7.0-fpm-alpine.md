# `wordpress:4.9.8-php7.0-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:049c7b95635d5d96c3ee8eb3d8fec40437aa48e3c51e50695ae12ef194d78f89`
- Created: `2018-10-12T18:58:48.89136301Z`
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
  - `PHP_VERSION=7.0.32`
  - `PHP_URL=https://secure.php.net/get/php-7.0.32.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.0.32.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=ff6f62afeb32c71b3b89ecbd42950ef6c5e0c329cc6e1c58ffac47e6f1f883c4`
  - `PHP_MD5=`
  - `WORDPRESS_VERSION=4.9.8`
  - `WORDPRESS_SHA1=0945bab959cba127531dceb2c4fed81770812b4f`
