# `postfixadmin:3.2-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:cf809ee79097948ca12dca5f284cddc9f48e57c3fc7e750cadd0727c78571e50`
- Created: `2019-03-09T04:51:47.206676371Z`
- Virtual Size: ~ 90.99 Mb  
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
  - `PHP_VERSION=7.2.16`
  - `PHP_URL=https://secure.php.net/get/php-7.2.16.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.2.16.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=7d91ed3c1447c6358a3d53f84599ef854aca4c3622de7435e2df115bf196e482`
  - `PHP_MD5=`
  - `POSTFIXADMIN_VERSION=3.2`
  - `POSTFIXADMIN_SHA512=9e022e3311bce96342e87925159a048f294ed0e2d4558bd43120b5c6eda35a7a2d128987372d310dfe86680c98a4d8cf3d602afcb20d948c9bba58bed1766560`
- Labels:
  - `maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)`
