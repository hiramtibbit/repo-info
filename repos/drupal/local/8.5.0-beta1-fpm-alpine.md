# `drupal:8.5.0-beta1-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:a2e05a5618550743aa31401573c7b6641b3f48ca417a6f9612b7745afe7ef4e9`
- Created: `2018-02-13T00:01:11.225516621Z`
- Virtual Size: ~ 146.26 Mb  
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
  - `PHP_VERSION=7.2.2`
  - `PHP_URL=https://secure.php.net/get/php-7.2.2.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.2.2.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=47d7607d38a1d565fc43ea942c92229a7cd165f156737f210937e375b243cb11`
  - `PHP_MD5=`
  - `DRUPAL_VERSION=8.5.0-beta1`
  - `DRUPAL_MD5=981177d250839fdf325001c12b4e20ba`
