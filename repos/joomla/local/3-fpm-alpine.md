# `joomla:3.8.13-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:f6c0c23ba471f8dbf5a1402114db11c18e9c182111ca8da526cd1a610b81531c`
- Created: `2018-10-15T22:11:47.146200703Z`
- Virtual Size: ~ 119.00 Mb  
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
  - `PHP_VERSION=7.1.23`
  - `PHP_URL=https://secure.php.net/get/php-7.1.23.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.23.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=227a3c76133c3dc1cec937989456cbd89ed00e68e7260c651900dbe1f5b798bc`
  - `PHP_MD5=`
  - `JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1`
  - `JOOMLA_VERSION=3.8.13`
  - `JOOMLA_SHA1=f769b1a7539f08a04dcbde5df6b82fd678254609`
