# `php:7.3.0RC5-fpm-alpine3.8`

## Docker Metadata

- Image ID: `sha256:a6d137597c78abf966ef8ce496ad54203eaf40d81ee3e40e0e1977f70157ea80`
- Created: `2018-11-16T02:58:16.227229845Z`
- Virtual Size: ~ 78.43 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-php-entrypoint"]`
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
  - `PHP_VERSION=7.3.0RC5`
  - `PHP_URL=https://downloads.php.net/~cmb/php-7.3.0RC5.tar.xz`
  - `PHP_ASC_URL=https://downloads.php.net/~cmb/php-7.3.0RC5.tar.xz.asc`
  - `PHP_SHA256=0bf6a6bdfd37576b9a341559023b0adf90063b8970ab08ea7a4d8e83b82136cd`
  - `PHP_MD5=`
