# `nextcloud:14.0.0-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:bdc174456586e026a2e19366f22bd24a4e790300ea22a572c5bc18afd79c07a6`
- Created: `2018-09-15T08:20:37.450763414Z`
- Virtual Size: ~ 293.91 Mb  
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
  - `NEXTCLOUD_VERSION=14.0.0`
