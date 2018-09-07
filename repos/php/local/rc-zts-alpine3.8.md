# `php:7.3.0beta2-zts-alpine3.8`

## Docker Metadata

- Image ID: `sha256:7db8cfa05087d0f617c3ba574b8f93848e7dc0dabc78b20946d90a3ca2ffe694`
- Created: `2018-09-05T02:57:39.715098358Z`
- Virtual Size: ~ 64.70 Mb  
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
  - `PHP_VERSION=7.3.0beta2`
  - `PHP_URL=https://downloads.php.net/~cmb/php-7.3.0beta2.tar.xz`
  - `PHP_ASC_URL=https://downloads.php.net/~cmb/php-7.3.0beta2.tar.xz.asc`
  - `PHP_SHA256=28f040680ff517b6c3da403fd1048054de0e867246c47da36342f6a488661c70`
  - `PHP_MD5=`
