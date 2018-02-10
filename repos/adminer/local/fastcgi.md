# `adminer:4.6.1-fastcgi`

## Docker Metadata

- Image ID: `sha256:b7e9f674cd53370dcbea5d7248e0b89e4350d4f148b792dc1a4bff637a9a64d9`
- Created: `2018-02-09T19:44:14.643799792Z`
- Virtual Size: ~ 80.96 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F`
  - `PHP_VERSION=7.2.2`
  - `PHP_URL=https://secure.php.net/get/php-7.2.2.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.2.2.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=47d7607d38a1d565fc43ea942c92229a7cd165f156737f210937e375b243cb11`
  - `PHP_MD5=`
  - `ADMINER_VERSION=4.6.1`
  - `ADMINER_DOWNLOAD_SHA256=48610e0e605ea088a852791d77e5d403d4a709ca0466cd8aba70273c714cea72`
  - `ADMINER_SRC_DOWNLOAD_SHA256=e0174c58122b7c6f03a95255927f99690c5cc1e61ffd21a7d928a7272ca6b0b4`
