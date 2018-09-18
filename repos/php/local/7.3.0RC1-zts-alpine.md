# `php:7.3.0RC1-zts-alpine3.8`

## Docker Metadata

- Image ID: `sha256:45743b9833eca376f173f95e051e641e9bbfafad83ee22d8403be9f1cc7430dd`
- Created: `2018-09-15T02:16:38.5026177Z`
- Virtual Size: ~ 63.63 Mb  
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
  - `PHP_VERSION=7.3.0RC1`
  - `PHP_URL=https://downloads.php.net/~cmb/php-7.3.0RC1.tar.xz`
  - `PHP_ASC_URL=https://downloads.php.net/~cmb/php-7.3.0RC1.tar.xz.asc`
  - `PHP_SHA256=f6af9e4e2376f1aadee8d1b4b7a60c5080bf53fe8816e141c78d4f72c93c5075`
  - `PHP_MD5=`
