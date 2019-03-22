# `postfixadmin:3.2.2-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:1e26407903945391b12cc08b88a6468f59e0f46e837691d0f054d5273179d1e5`
- Created: `2019-03-19T21:31:51.794931338Z`
- Virtual Size: ~ 95.56 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["/usr/local/bin/docker-entrypoint.sh"]`
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
  - `POSTFIXADMIN_VERSION=3.2.2`
  - `POSTFIXADMIN_SHA512=6c84cb215e69c52c26db0651e5d0d9d8bcb0a63b00d3c197f10fa1f0442a1fde44bb514fb476a1e68a21741d603febac67282961d01270e5969ee13d145121ee`
- Labels:
  - `maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)`
