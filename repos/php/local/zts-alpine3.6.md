# `php:7.2.9-zts-alpine3.6`

## Docker Metadata

- Image ID: `sha256:2834574f218b1d4525c814bddd6a33c2bd6a6875ee8bc0aa5e3c6f58ed4c4dd6`
- Created: `2018-09-05T04:45:18.979055181Z`
- Virtual Size: ~ 63.27 Mb  
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
  - `PHP_VERSION=7.2.9`
  - `PHP_URL=https://secure.php.net/get/php-7.2.9.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.2.9.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=3585c1222e00494efee4f5a65a8e03a1e6eca3dfb834814236ee7f02c5248ae0`
  - `PHP_MD5=`
