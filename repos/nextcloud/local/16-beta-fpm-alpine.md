# `nextcloud:16.0.0beta1-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:ef35702c794309435f2f8f5cfa58d1c58c5c651c890f878b6d803c91323dbd1e`
- Created: `2019-03-22T23:06:53.588225339Z`
- Virtual Size: ~ 338.30 Mb  
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
  - `PHP_VERSION=7.2.16`
  - `PHP_URL=https://secure.php.net/get/php-7.2.16.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.2.16.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=7d91ed3c1447c6358a3d53f84599ef854aca4c3622de7435e2df115bf196e482`
  - `PHP_MD5=`
  - `NEXTCLOUD_VERSION=16.0.0beta1`
