# `matomo:3.9.1-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:c1bb8ed561f869278890f7552241b0f6c9b0511d67a3d2a8872174d089b1cca0`
- Created: `2019-03-21T23:20:46.959451927Z`
- Virtual Size: ~ 209.89 Mb  
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
  - `GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D`
  - `PHP_VERSION=7.3.3`
  - `PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3`
  - `PHP_MD5=`
  - `MATOMO_VERSION=3.9.1`
- Labels:
  - `maintainer=pierre@piwik.org`
