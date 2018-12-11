# `wordpress:5.0.0-php7.0-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:75cd0270c73bb032ea2b853e616a14422277692d88a1a3d7f72d99a9fea8c24d`
- Created: `2018-12-10T20:22:18.55206528Z`
- Virtual Size: ~ 111.30 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-entrypoint.sh"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=1A4E8B7277C42E53DBA9C7B9BCAA30EA9C0D5763 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=7.0.33`
  - `PHP_URL=https://secure.php.net/get/php-7.0.33.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.0.33.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=ab8c5be6e32b1f8d032909dedaaaa4bbb1a209e519abb01a52ce3914f9a13d96`
  - `PHP_MD5=`
  - `WORDPRESS_VERSION=5.0`
  - `WORDPRESS_SHA1=67758958f14c1dcefe37ce6558d470a4e142893b`
