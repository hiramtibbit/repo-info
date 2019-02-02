# `nextcloud:15.0.3RC1-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:397263fa86ea3ea8a44e8dddb8d466b39cb1a5b43073e49ab7c1bda850400ca7`
- Created: `2019-01-31T23:48:06.419024337Z`
- Virtual Size: ~ 293.10 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/entrypoint.sh"]`
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
  - `PHP_VERSION=7.2.14`
  - `PHP_URL=https://secure.php.net/get/php-7.2.14.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.2.14.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=ee3f1cc102b073578a3c53ba4420a76da3d9f0c981c02b1664ae741ca65af84f`
  - `PHP_MD5=`
  - `NEXTCLOUD_VERSION=15.0.3RC1`
