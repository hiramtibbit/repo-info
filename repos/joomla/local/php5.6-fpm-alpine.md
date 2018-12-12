# `joomla:3.9.1-php5.6-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:499abaf83ec0f5ff9448a1aca04245f333e3d79a322b4787d3b612078f2ba1fe`
- Created: `2018-12-10T21:37:22.279304183Z`
- Virtual Size: ~ 106.04 Mb  
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
  - `GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=5.6.39`
  - `PHP_URL=https://secure.php.net/get/php-5.6.39.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-5.6.39.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=8147576001a832ff3d03cb2980caa2d6b584a10624f87ac459fcd3948c6e4a10`
  - `PHP_MD5=`
  - `JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1`
  - `JOOMLA_VERSION=3.9.1`
  - `JOOMLA_SHA1=aec0f602f93064d55cc06917329abdeef2e0f820`
