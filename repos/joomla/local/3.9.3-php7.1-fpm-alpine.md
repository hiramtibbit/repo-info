# `joomla:3.9.3-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:1a1a327517d633d434af79a52866b0b4072d35db48a408cfc789244670f6fb36`
- Created: `2019-03-09T04:59:35.901669755Z`
- Virtual Size: ~ 122.35 Mb  
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
  - `PHP_VERSION=7.1.27`
  - `PHP_URL=https://secure.php.net/get/php-7.1.27.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.27.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=25672a3a6060eff37c865a0c84e284da50b7ee8cd57174c78f0ae244b90a96a8`
  - `PHP_MD5=`
  - `JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1`
  - `JOOMLA_VERSION=3.9.3`
  - `JOOMLA_SHA512=333554c0ce784c540b5a184c728c4d516103fe09fa66316accf537cdfc74ef2632a8972cb8fe665c20798817e454bc5156e1a0b1a6bfc8e70c63e3c4f698dee9`
- Labels:
  - `maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)`
