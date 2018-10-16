# `php:7.2.11-fpm-alpine3.6`

## Docker Metadata

- Image ID: `sha256:d97e1041280037db095825970be3555efcf8a599e0b97b3c1fdeec1e0c63ee92`
- Created: `2018-10-15T19:27:55.274674997Z`
- Virtual Size: ~ 78.03 Mb  
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
  - `GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F`
  - `PHP_VERSION=7.2.11`
  - `PHP_URL=https://secure.php.net/get/php-7.2.11.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.2.11.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=da1a705c0bc46410e330fc6baa967666c8cd2985378fb9707c01a8e33b01d985`
  - `PHP_MD5=`
