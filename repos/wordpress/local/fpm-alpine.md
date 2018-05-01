# `wordpress:4.9.5-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:e2bda92b6a5c19588dc5456e8ae8489f903f1b0fd8bfc287c02ead4aceb1f7bc`
- Created: `2018-04-27T19:36:23.752125933Z`
- Virtual Size: ~ 107.97 Mb  
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
  - `GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F`
  - `PHP_VERSION=7.2.5`
  - `PHP_URL=https://secure.php.net/get/php-7.2.5.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.2.5.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=af70a33b3f7a51510467199b39af151333fbbe4cc21923bad9c7cf64268cddb2`
  - `PHP_MD5=`
  - `WORDPRESS_VERSION=4.9.5`
  - `WORDPRESS_SHA1=6992f19163e21720b5693bed71ffe1ab17a4533a`
