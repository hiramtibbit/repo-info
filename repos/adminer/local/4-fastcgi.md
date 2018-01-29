# `adminer:4.5.0-fastcgi`

## Docker Metadata

- Image ID: `sha256:31462323a315caf0d3cd0b4e7b385e326ab907a41236e7f28591f6a3a28548c9`
- Created: `2018-01-29T18:48:13.622354474Z`
- Virtual Size: ~ 80.36 Mb  
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
  - `PHP_VERSION=7.2.1`
  - `PHP_URL=https://secure.php.net/get/php-7.2.1.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.2.1.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=6c6cf82fda6660ed963821eb0525214bb3547e8e29f447b9c15b2d8e6efd8822`
  - `PHP_MD5=`
  - `ADMINER_VERSION=4.5.0`
  - `ADMINER_DOWNLOAD_SHA256=54eb0870e38229b956a5459c15397c4585665d1f0219a5d8fe50ddfa028f2fd9`
  - `ADMINER_SRC_DOWNLOAD_SHA256=8a1250b658e69ca9f84fc9a7697ced1b686b71723e174f840adc8f337494cc5e`
