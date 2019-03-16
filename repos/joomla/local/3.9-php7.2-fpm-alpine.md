# `joomla:3.9.4-php7.2-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:f711f6d7fc7de32dc3b84165ceaab1a9e2204e98a029f8143a697f379cc0a962`
- Created: `2019-03-14T21:41:15.889036935Z`
- Virtual Size: ~ 131.48 Mb  
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
  - `GPG_KEYS=1729F83938DA44E27BA0F4D3DBDB397470D12172 B1B44D8F021E4E2D6021E995DC9FF8D3EE5AF27F`
  - `PHP_VERSION=7.2.16`
  - `PHP_URL=https://secure.php.net/get/php-7.2.16.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.2.16.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=7d91ed3c1447c6358a3d53f84599ef854aca4c3622de7435e2df115bf196e482`
  - `PHP_MD5=`
  - `JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1`
  - `JOOMLA_VERSION=3.9.4`
  - `JOOMLA_SHA512=fca41b63396c2f5429680297224f3345bc845b3c62a234c82c5c28af477f4a2b176c53d8b4b821b0c71a28a06f3c2a270b42d54396f3cf6075d72e27f136c4d9`
- Labels:
  - `maintainer=Michael Babker <michael.babker@joomla.org> (@mbabker)`
