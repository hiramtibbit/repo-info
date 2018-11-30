# `php:7.3.0RC6-zts-alpine3.8`

## Docker Metadata

- Image ID: `sha256:906955e6c6ba3389abeadd507275ec476f77437497f6ca13ea5d2d1bd66acbed`
- Created: `2018-11-27T23:08:57.103572406Z`
- Virtual Size: ~ 64.14 Mb  
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
  - `PHP_VERSION=7.3.0RC6`
  - `PHP_URL=https://downloads.php.net/~cmb/php-7.3.0RC6.tar.xz`
  - `PHP_ASC_URL=https://downloads.php.net/~cmb/php-7.3.0RC6.tar.xz.asc`
  - `PHP_SHA256=8120b5830e24d5fabc96da693ab924852e6c2a95829ad994d6a5107c69787848`
  - `PHP_MD5=`
