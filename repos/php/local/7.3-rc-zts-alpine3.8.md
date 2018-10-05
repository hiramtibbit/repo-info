# `php:7.3.0RC2-zts-alpine3.8`

## Docker Metadata

- Image ID: `sha256:859d955b8ffb857e8ab32c4a0311b64ef6dc1e5b63bd5da6eabe8e999d119c6d`
- Created: `2018-10-02T18:20:26.374790493Z`
- Virtual Size: ~ 63.66 Mb  
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
  - `PHP_VERSION=7.3.0RC2`
  - `PHP_URL=https://downloads.php.net/~cmb/php-7.3.0RC2.tar.xz`
  - `PHP_ASC_URL=https://downloads.php.net/~cmb/php-7.3.0RC2.tar.xz.asc`
  - `PHP_SHA256=f52692cb4f5144365a72c6ff698101035a27bceebf2d5a307ad82dd43ee9d751`
  - `PHP_MD5=`
