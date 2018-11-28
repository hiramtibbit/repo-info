# `adminer:4.7.0-fastcgi`

## Docker Metadata

- Image ID: `sha256:2377bd87dc0ba1b600e403729a6909f2c473852f3180ed3ce26cb0259660d035`
- Created: `2018-11-27T00:20:14.089475704Z`
- Virtual Size: ~ 82.26 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F`
  - `PHP_VERSION=7.2.12`
  - `PHP_URL=https://secure.php.net/get/php-7.2.12.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.2.12.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=989c04cc879ee71a5e1131db867f3c5102f1f7565f805e2bb8bde33f93147fe1`
  - `PHP_MD5=`
  - `ADMINER_VERSION=4.7.0`
  - `ADMINER_DOWNLOAD_SHA256=e71766f7b54f87b6b45d0a56601301eb14a031f80bbc511dce5b40b7f27902e3`
  - `ADMINER_SRC_DOWNLOAD_SHA256=0a7bbe9d07946c79bcd4d9f73f13dc58b018dc681c3953ea7fa9a59e0ee9eed3`
