# `drupal:8.5.1-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:2adffa6bc007485bf9d733e9b84943365136d3ba0233a782d6f9c3e72fe863be`
- Created: `2018-03-29T10:25:35.842326596Z`
- Virtual Size: ~ 144.93 Mb  
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
  - `GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F`
  - `PHP_VERSION=7.2.3`
  - `PHP_URL=https://secure.php.net/get/php-7.2.3.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.2.3.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=b3a94f1b562f413c0b96f54bc309706d83b29ac65d9b172bc7ed9fb40a5e651f`
  - `PHP_MD5=`
  - `DRUPAL_VERSION=8.5.1`
  - `DRUPAL_MD5=23e18afbdd031d0cd7c519c4e9baff71`
