# `wordpress:4.9.5-php7.0-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:57aae0d685cdb5ca1431f76cd8538b271b2d52af77aaf4a7171a4275b85b0880`
- Created: `2018-04-24T07:54:40.358164541Z`
- Virtual Size: ~ 98.42 Mb  
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
  - `GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=7.0.29`
  - `PHP_URL=https://secure.php.net/get/php-7.0.29.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.0.29.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=ca79d3ecc123bff4b623d4a1bbf5ad53ad39f5f2f5912fecc0ea97e95eba21cc`
  - `PHP_MD5=`
  - `WORDPRESS_VERSION=4.9.5`
  - `WORDPRESS_SHA1=6992f19163e21720b5693bed71ffe1ab17a4533a`
