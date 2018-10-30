# `php:7.3.0RC4-zts-alpine3.8`

## Docker Metadata

- Image ID: `sha256:7604b55b7d8a9faaa98a6fe2639940cb9d0550999dbda75303d095b83fcf7887`
- Created: `2018-10-26T21:18:43.527572992Z`
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
  - `PHP_VERSION=7.3.0RC4`
  - `PHP_URL=https://downloads.php.net/~cmb/php-7.3.0RC4.tar.xz`
  - `PHP_ASC_URL=https://downloads.php.net/~cmb/php-7.3.0RC4.tar.xz.asc`
  - `PHP_SHA256=11582176003e0e8ca06dbdebab0921d539cab2ad795c0d90f146977859e21c26`
  - `PHP_MD5=`
