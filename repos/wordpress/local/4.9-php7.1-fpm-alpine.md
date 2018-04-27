# `wordpress:4.9.5-php7.1-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:9206cbf959ba2a49ceabf8fc66d57a6a872fc56396df3b1e74bdeaf20ba77ba8`
- Created: `2018-04-24T08:05:09.561008953Z`
- Virtual Size: ~ 99.85 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-entrypoint.sh"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172`
  - `PHP_VERSION=7.1.16`
  - `PHP_URL=https://secure.php.net/get/php-7.1.16.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.16.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=a5d67e477248a3911af7ef85c8400c1ba8cd632184186fd31070b96714e669f1`
  - `PHP_MD5=`
  - `WORDPRESS_VERSION=4.9.5`
  - `WORDPRESS_SHA1=6992f19163e21720b5693bed71ffe1ab17a4533a`
