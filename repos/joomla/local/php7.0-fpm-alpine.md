# `joomla:3.8.12-php7.0-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:f948b30c28efa28d3f60e7bda3a597d4933a9cd2ac48d776afbd6670afa1b6d5`
- Created: `2018-09-08T02:14:49.987608281Z`
- Virtual Size: ~ 118.51 Mb  
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
  - `GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=7.0.31`
  - `PHP_URL=https://secure.php.net/get/php-7.0.31.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.0.31.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=68f57b3f4587071fb54a620cb83a1cfb3f0bd4ee071e0ce3bf7046a5f2d2f3cf`
  - `PHP_MD5=`
  - `JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1`
  - `JOOMLA_VERSION=3.8.12`
  - `JOOMLA_SHA1=a354eb7689fe3077d1a14ba3f8a7327017bafd1b`
