# `drupal:7.58-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:ac1f1adc28ead03a4837b074e58900194e6b02ee13c772454e64bb26cd2e4566`
- Created: `2018-04-24T15:42:51.652278296Z`
- Virtual Size: ~ 86.61 Mb  
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
  - `GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=7.0.29`
  - `PHP_URL=https://secure.php.net/get/php-7.0.29.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.0.29.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=ca79d3ecc123bff4b623d4a1bbf5ad53ad39f5f2f5912fecc0ea97e95eba21cc`
  - `PHP_MD5=`
  - `DRUPAL_VERSION=7.58`
  - `DRUPAL_MD5=c59949bcfd0d68b4f272bc05a91d4dc6`
