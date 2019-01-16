# `joomla:3.9.1-php7.3-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:1896876d7cc514efbe7bc13b132ab778cb6891dd7f30882c2db85a5ceebe9751`
- Created: `2019-01-15T02:22:05.555318357Z`
- Virtual Size: ~ 129.06 Mb  
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
  - `PHP_VERSION=7.3.1`
  - `PHP_URL=https://secure.php.net/get/php-7.3.1.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.3.1.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=cfe93e40be0350cd53c4a579f52fe5d8faf9c6db047f650a4566a2276bf33362`
  - `PHP_MD5=`
  - `JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1`
  - `JOOMLA_VERSION=3.9.1`
  - `JOOMLA_SHA512=1a3b8d9788f657a97dc107bdea909792ba117c17587aaf05ce0f416bc1fddaf80c108431d6b9b1f1a212d10817cfe8f06c6178c474a4be1d73d232f98eb685e9`
