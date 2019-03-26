# `wordpress:5.1.1-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:7b1cb954c73a9af5106660112f84b10008e64f8c6b5b8f0bb9281668e0ad38b1`
- Created: `2019-03-22T23:15:12.312477439Z`
- Virtual Size: ~ 124.32 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-entrypoint.sh"]`
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
  - `WORDPRESS_VERSION=5.1.1`
  - `WORDPRESS_SHA1=f1bff89cc360bf5ef7086594e8a9b68b4cbf2192`
