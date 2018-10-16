# `php:7.3.0RC3-zts-alpine3.8`

## Docker Metadata

- Image ID: `sha256:26e4f6d291ce103c45545cd59ec6010dab62e3432037b7b71ad3edf0b516577d`
- Created: `2018-10-12T19:26:01.602736372Z`
- Virtual Size: ~ 63.67 Mb  
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
  - `GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D`
  - `PHP_VERSION=7.3.0RC3`
  - `PHP_URL=https://downloads.php.net/~cmb/php-7.3.0RC3.tar.xz`
  - `PHP_ASC_URL=https://downloads.php.net/~cmb/php-7.3.0RC3.tar.xz.asc`
  - `PHP_SHA256=bd6c7fa718ff5b430d64ae1b5cfdf3e076ceb0a4a8569927bba8fe65fa04c4b5`
  - `PHP_MD5=`
