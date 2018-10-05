# `php:7.3.0RC2-fpm-alpine3.8`

## Docker Metadata

- Image ID: `sha256:ae54b36f08ff6c186f279d3e01bf3e52ee519f75f042a0d630e9a32f59380745`
- Created: `2018-10-02T18:13:12.502800814Z`
- Virtual Size: ~ 77.95 Mb  
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
  - `PHP_VERSION=7.3.0RC2`
  - `PHP_URL=https://downloads.php.net/~cmb/php-7.3.0RC2.tar.xz`
  - `PHP_ASC_URL=https://downloads.php.net/~cmb/php-7.3.0RC2.tar.xz.asc`
  - `PHP_SHA256=f52692cb4f5144365a72c6ff698101035a27bceebf2d5a307ad82dd43ee9d751`
  - `PHP_MD5=`
