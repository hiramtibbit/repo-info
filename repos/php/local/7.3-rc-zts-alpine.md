# `php:7.3.0beta3-zts-alpine3.8`

## Docker Metadata

- Image ID: `sha256:c92f2c4c071a2948984a1c3367a885f2ae5ba7faa76ead8974c595bd10be0f81`
- Created: `2018-09-12T00:50:33.126826515Z`
- Virtual Size: ~ 63.57 Mb  
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
  - `PHP_VERSION=7.3.0beta3`
  - `PHP_URL=https://downloads.php.net/~cmb/php-7.3.0beta3.tar.xz`
  - `PHP_ASC_URL=https://downloads.php.net/~cmb/php-7.3.0beta3.tar.xz.asc`
  - `PHP_SHA256=062111b400939d26f3a6ec41925b52b93feb1a5e70e3ccade12496cea9fb190f`
  - `PHP_MD5=`
