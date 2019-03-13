# `joomla:3.9.3-php7.3-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:480fdbe94be64208994829a2e32984c71204c72aee45296c8926da731ca946ea`
- Created: `2019-03-09T05:11:41.76751252Z`
- Virtual Size: ~ 131.44 Mb  
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
  - `PHP_VERSION=7.3.3`
  - `PHP_URL=https://secure.php.net/get/php-7.3.3.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.3.3.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=6bb03e79a183d0cb059a6d117bbb2e0679cab667fb713a13c6a16f56bebab9b3`
  - `PHP_MD5=`
  - `JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1`
  - `JOOMLA_VERSION=3.9.3`
  - `JOOMLA_SHA512=333554c0ce784c540b5a184c728c4d516103fe09fa66316accf537cdfc74ef2632a8972cb8fe665c20798817e454bc5156e1a0b1a6bfc8e70c63e3c4f698dee9`
- Labels:
  - `maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)`
