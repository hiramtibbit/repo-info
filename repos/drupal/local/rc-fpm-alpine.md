# `drupal:8.6.0-beta2-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:450dee5c0b54dd00c5397b99ec7c676f9795bf0ece89f87f3c39b234a0b2877d`
- Created: `2018-08-04T02:21:21.654784487Z`
- Virtual Size: ~ 149.57 Mb  
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
  - `PHP_VERSION=7.2.8`
  - `PHP_URL=https://secure.php.net/get/php-7.2.8.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.2.8.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=53ba0708be8a7db44256e3ae9fcecc91b811e5b5119e6080c951ffe7910ffb0f`
  - `PHP_MD5=`
  - `DRUPAL_VERSION=8.6.0-beta2`
  - `DRUPAL_MD5=2387284145e34a19fc45e03c258a2831`
