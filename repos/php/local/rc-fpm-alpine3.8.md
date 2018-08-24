# `php:7.3.0beta2-fpm-alpine3.8`

## Docker Metadata

- Image ID: `sha256:6a954f6f6ce47c34a92ef933c85fe9a70a3b426efd30a24e4fa0e378fb73e03f`
- Created: `2018-08-22T23:51:41.053778779Z`
- Virtual Size: ~ 78.96 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-php-entrypoint"]`
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
  - `PHP_VERSION=7.3.0beta2`
  - `PHP_URL=https://downloads.php.net/~cmb/php-7.3.0beta2.tar.xz`
  - `PHP_ASC_URL=https://downloads.php.net/~cmb/php-7.3.0beta2.tar.xz.asc`
  - `PHP_SHA256=28f040680ff517b6c3da403fd1048054de0e867246c47da36342f6a488661c70`
  - `PHP_MD5=`
