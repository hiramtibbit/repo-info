# `joomla:3.9.2-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:2c611d2ec823ce114e78ccbc62f2734f94f4322039589ad51c4e9ca28f721f28`
- Created: `2019-01-18T00:33:33.814541171Z`
- Virtual Size: ~ 120.05 Mb  
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
  - `GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172`
  - `PHP_VERSION=7.1.26`
  - `PHP_URL=https://secure.php.net/get/php-7.1.26.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.26.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=10b7ae634c12852fae52a22dc2262e5f12418ad59fd20da2d00d71a212235d31`
  - `PHP_MD5=`
  - `JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1`
  - `JOOMLA_VERSION=3.9.2`
  - `JOOMLA_SHA512=b6b551748a683bbdf7185f99092708257b6b1483e8ef4e762f5341f7479cd698cf2e309d4004a4eabafdf5f388518c426f2f1fb19c0003fa8dff215317102a95`
