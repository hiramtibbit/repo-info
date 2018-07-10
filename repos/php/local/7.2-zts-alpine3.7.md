# `php:7.2.7-zts-alpine3.7`

## Docker Metadata

- Image ID: `sha256:4eb5d9e0bf5dc4da899274309257fa331c835c3560c250df81f09ff90821d132`
- Created: `2018-07-06T16:31:53.773847518Z`
- Virtual Size: ~ 64.09 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-php-entrypoint"]`
- Command: `["php","-a"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-maintainer-zts --disable-cgi`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F`
  - `PHP_VERSION=7.2.7`
  - `PHP_URL=https://secure.php.net/get/php-7.2.7.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.2.7.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=eb01c0153b3baf1f64b8b044013ce414b52fede222df3f509e8ff209478f31f0`
  - `PHP_MD5=`
