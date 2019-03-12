# `wordpress:5.1.0-php7.1-fpm-alpine`

## Docker Metadata

- Image ID: `sha256:0de0f8ba465e0a267de66fd0cc6b57fa302c7877d051e6d427262fbe8082dc8e`
- Created: `2019-03-11T23:29:56.014214715Z`
- Virtual Size: ~ 115.56 Mb  
  (total size of all layers on-disk)
- Arch: `linux`/`amd64`
- Entrypoint: `["docker-entrypoint.sh"]`
- Command: `["php-fpm"]`
- Environment:
  - `PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin`
  - `PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c`
  - `PHP_INI_DIR=/usr/local/etc/php`
  - `PHP_EXTRA_CONFIGURE_ARGS=--enable-fpm --with-fpm-user=www-data --with-fpm-group=www-data --disable-cgi`
  - `PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2`
  - `PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie`
  - `GPG_KEYS=A917B1ECDA84AEC2B568FED6F50ABC807BD5DCD0 528995BFEDFBA7191D46839EF9BA0ADA31CBD89E 1729F83938DA44E27BA0F4D3DBDB397470D12172`
  - `PHP_VERSION=7.1.27`
  - `PHP_URL=https://secure.php.net/get/php-7.1.27.tar.xz/from/this/mirror`
  - `PHP_ASC_URL=https://secure.php.net/get/php-7.1.27.tar.xz.asc/from/this/mirror`
  - `PHP_SHA256=25672a3a6060eff37c865a0c84e284da50b7ee8cd57174c78f0ae244b90a96a8`
  - `PHP_MD5=`
  - `WORDPRESS_VERSION=5.1`
  - `WORDPRESS_SHA1=830eadf0afa15928d7f6856b1b85bf57b8e1f585`
