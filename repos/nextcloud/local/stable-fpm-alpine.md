# `nextcloud:13.0.6-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:6fa26dc025926633d76c69271a4492b5c55e66f2e064179038108b42520cfea6`
- Created: `2018-10-03T17:20:49.138736666Z`
- Virtual Size: ~ 284.43 Mb  
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
  - `PHP_VERSION=7.2.10`
  - `PHP_URL=https://secure.php.net/get/php-7.2.10.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.2.10.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=01c2154a3a8e3c0818acbdbc1a956832c828a0380ce6d1d14fea495ea21804f0`
  - `PHP_MD5=`
  - `NEXTCLOUD_VERSION=13.0.6`
