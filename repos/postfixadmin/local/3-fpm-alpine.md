# `postfixadmin:3.2-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:b93a43ddac0126916f517179432f8284fad19490879f3029a0effc1a05b6f267`
- Created: `2019-01-29T00:20:09.639795377Z`
- Virtual Size: ~ 89.66 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/usr/local/bin/docker-entrypoint.sh"]`
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
  - `POSTFIXADMIN_VERSION=3.2`
  - `POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560`
