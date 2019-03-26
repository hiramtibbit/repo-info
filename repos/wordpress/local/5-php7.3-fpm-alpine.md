# `wordpress:5.1.1-php7.3-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:0345ea50bc18b08a1efa92f1b96627c63c10bb211928a8e449e5a45ea75ec1de`
- Created: `2019-03-22T23:15:40.215961557Z`
- Virtual Size: ~ 124.83 Mb  
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
  - `GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D`
  - `PHP_VERSION=7.3.3`
  - `PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3`
  - `PHP_MD5=`
  - `WORDPRESS_VERSION=5.1.1`
  - `WORDPRESS_SHA1=f1bff89cc360bf5ef7086594e8a9b68b4cbf2192`
