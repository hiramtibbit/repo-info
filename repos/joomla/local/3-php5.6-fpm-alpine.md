# `joomla:3.8.13-php5.6-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:1441490ed9a22c3386419cac9923a2a4ae7ea6bbe851601ed89513013bf711a9`
- Created: `2018-10-12T18:20:21.339114426Z`
- Virtual Size: ~ 104.67 Mb  
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
  - `GPG_KEYS=0BD78B5F97500D450838F95DFE857D9A90D90EC1 6E4F6AB321FDC07F2C332E3AC2BF0BC433CFC8B3`
  - `PHP_VERSION=5.6.38`
  - `PHP_URL=https://secure.php.net/get/php-5.6.38.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-5.6.38.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=c2fac47dc6316bd230f0ea91d8a5498af122fb6a3eb43f796c9ea5f59b04aa1e`
  - `PHP_MD5=`
  - `JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1`
  - `JOOMLA_VERSION=3.8.13`
  - `JOOMLA_SHA1=f769b1a7539f08a04dcbde5df6b82fd678254609`
