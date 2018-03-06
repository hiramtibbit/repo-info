# `php:5.6.34-zts-alpine3.4`

## Docker Metadata

- Image ID: `sha256:2aebec40f74953f4f5d60d766844067af90a273ae8f514518d18efb7a84af91e`
- Created: `2018-03-05T23:48:28.860803298Z`
- Virtual Size: ~ 43.81 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-php-entrypoint"]`
- Command: `["php","-a"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=5.6.34`
  - `PHP_URL=https://secure.php.net/get/php-5.6.34.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-5.6.34.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=21453be3a045204cd2717543ef42771324f411f40962ecda4fe841930a933128`
  - `PHP_MD5=`
