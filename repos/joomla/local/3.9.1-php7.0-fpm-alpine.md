# `joomla:3.9.1-php7.0-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:6f8da1671cd2357405e4fce55098df1b0d5448f635e2f731da3da9e7d5f40ee4`
- Created: `2018-12-10T21:45:42.416222315Z`
- Virtual Size: ~ 118.62 Mb  
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
  - `PHP_VERSION=7.0.33`
  - `PHP_URL=https://secure.php.net/get/php-7.0.33.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.0.33.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=ab8c5be6e32b1f8d032909dedaaaa4bbb1a209e519abb01a52ce3914f9a13d96`
  - `PHP_MD5=`
  - `JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1`
  - `JOOMLA_VERSION=3.9.1`
  - `JOOMLA_SHA1=aec0f602f93064d55cc06917329abdeef2e0f820`
