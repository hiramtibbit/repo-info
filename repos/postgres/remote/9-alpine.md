## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:9ca98c730b23ecf4e0f89c4acc070ece194f43032f88e4b89a2bf942cb281b9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:9-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:23d5a6a5ae19bd05bd71544aa894818dda1e914fdae53edd117597bb1774a54d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15137736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5152558331dcb468014e162f003aaea68fdf1cbf71f3e417c97a8998957f49cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 05:03:30 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Fri, 21 Dec 2018 05:03:30 GMT
ENV LANG=en_US.utf8
# Fri, 21 Dec 2018 05:03:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Dec 2018 05:09:50 GMT
ENV PG_MAJOR=9.6
# Fri, 21 Dec 2018 05:09:51 GMT
ENV PG_VERSION=9.6.11
# Fri, 21 Dec 2018 05:09:51 GMT
ENV PG_SHA256=38250adc69a1e8613fb926c894cda1d01031391a03648894b9a6e13ff354a530
# Fri, 21 Dec 2018 05:12:32 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 21 Dec 2018 05:12:33 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 21 Dec 2018 05:12:34 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Dec 2018 05:12:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Dec 2018 05:12:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 21 Dec 2018 05:12:35 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 11 Jan 2019 00:31:22 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 11 Jan 2019 00:31:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 11 Jan 2019 00:31:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 00:31:24 GMT
EXPOSE 5432
# Fri, 11 Jan 2019 00:31:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67451ade031c2a262548d2f16ca8ff58b15246121027a55cbc32fdedc3bf5b61`  
		Last Modified: Fri, 21 Dec 2018 05:18:17 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9990a72e3ae4357d69590623f56a5c2d580ee975f4d3cdfb73c930272da2cfd`  
		Last Modified: Fri, 21 Dec 2018 05:18:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f29e50b6b4e6cab470d58ea538a4380157fc02644da51dc988ae4521b0391a`  
		Last Modified: Fri, 21 Dec 2018 05:18:39 GMT  
		Size: 12.9 MB (12920586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e39b34dab0704f4b19bcfc9f1cc6d6f580f94c0a263849158d95c95010a6cd`  
		Last Modified: Fri, 21 Dec 2018 05:18:37 GMT  
		Size: 7.1 KB (7075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df121438f834bddcee60bb9af63f81b14a7ac36d8977a943841977cd6b60d60`  
		Last Modified: Fri, 21 Dec 2018 05:18:36 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95b6b8ce0317beebabeef6daea0e531cde9772a0f799ebf5af2fb561d9265064`  
		Last Modified: Fri, 21 Dec 2018 05:18:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5459f85909f3517259ee26ce6604189deb12481eb4bc2881a17c62794706b1cd`  
		Last Modified: Fri, 11 Jan 2019 00:32:19 GMT  
		Size: 2.4 KB (2370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7fb7f52186e1447e643fcb738f112e45629b8883d9ed664fe35d1add6e96e9d`  
		Last Modified: Fri, 11 Jan 2019 00:32:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:b7d4ca26dbbceb226835b7e2b065a0f514794614278c940f5329b2328a8675ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14340050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1faa0afc49372e016328d5d590d5434ecfe9a6489b8ba2718b417b59c8d7d2c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:15:42 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Fri, 21 Dec 2018 12:15:44 GMT
ENV LANG=en_US.utf8
# Fri, 21 Dec 2018 12:15:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Dec 2018 13:43:49 GMT
ENV PG_MAJOR=9.6
# Fri, 21 Dec 2018 13:43:50 GMT
ENV PG_VERSION=9.6.11
# Fri, 21 Dec 2018 13:43:52 GMT
ENV PG_SHA256=38250adc69a1e8613fb926c894cda1d01031391a03648894b9a6e13ff354a530
# Fri, 21 Dec 2018 14:22:12 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 21 Dec 2018 14:22:26 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 21 Dec 2018 14:22:36 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Dec 2018 14:22:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Dec 2018 14:22:48 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 21 Dec 2018 14:22:50 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 11 Jan 2019 09:18:50 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 11 Jan 2019 09:19:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 11 Jan 2019 09:19:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 09:19:04 GMT
EXPOSE 5432
# Fri, 11 Jan 2019 09:19:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f684a72d05f99562d2fce623d0a4f73bdd7d9777c7f8c3c9804cbf1894995d3`  
		Last Modified: Fri, 21 Dec 2018 15:41:23 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca1881321a456d099873f18528a29301265d614a2bdd80abc37c30868d78f71`  
		Last Modified: Fri, 21 Dec 2018 15:41:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6379d30f28d105403ee5258801fe0b8e6095aab1d437238d317c45e6504c31`  
		Last Modified: Fri, 21 Dec 2018 15:43:46 GMT  
		Size: 12.2 MB (12183841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a767fc37550f240bf2bf2b360e0a45d090cf794c357ad5c5194d490801f1dbfd`  
		Last Modified: Fri, 21 Dec 2018 15:43:26 GMT  
		Size: 7.1 KB (7073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b5a6be5099b94f8c2e09672cec55d7bfa17b49239a41ab7f2e943090c481079`  
		Last Modified: Fri, 21 Dec 2018 15:43:26 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb25fc683b1dd03a4fe1cfe348fc51d3b5066813eb47c08ffaefb0a415190375`  
		Last Modified: Fri, 21 Dec 2018 15:43:26 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3487cb04488ed4fe735594c4012c801f34a58d4fdb528a3787579ae99245b495`  
		Last Modified: Fri, 11 Jan 2019 09:21:04 GMT  
		Size: 2.4 KB (2375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82612571e6a7dd26b4cd1501552c190edf21d24e87800c7aaa2b720b1c9f6326`  
		Last Modified: Fri, 11 Jan 2019 09:21:04 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:032b8098893d50af46835e6b8f5e72eb50e507e7ff7d90be207970bf0249159a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13843904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edf178434fd2cc4b1eab3098270239f4f41a9c34146f34e3ae95388d34f1524e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:27:16 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Fri, 21 Dec 2018 12:27:17 GMT
ENV LANG=en_US.utf8
# Fri, 21 Dec 2018 12:27:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Dec 2018 12:39:57 GMT
ENV PG_MAJOR=9.6
# Fri, 21 Dec 2018 12:39:58 GMT
ENV PG_VERSION=9.6.11
# Fri, 21 Dec 2018 12:39:58 GMT
ENV PG_SHA256=38250adc69a1e8613fb926c894cda1d01031391a03648894b9a6e13ff354a530
# Fri, 21 Dec 2018 12:46:24 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 21 Dec 2018 12:46:28 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 21 Dec 2018 12:46:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Dec 2018 12:46:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Dec 2018 12:46:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 21 Dec 2018 12:46:37 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 11 Jan 2019 10:18:05 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:18:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 11 Jan 2019 10:18:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 10:18:11 GMT
EXPOSE 5432
# Fri, 11 Jan 2019 10:18:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9430fad4b3af3a4c01f3073dd076ecba6eab1703d18a5adce0c2be976f018970`  
		Last Modified: Fri, 21 Dec 2018 12:58:33 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df16614eac489d29a9b389d5fa6e4e170987326a4ac6214a78024821c114896`  
		Last Modified: Fri, 21 Dec 2018 12:58:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b4c61a5572954c05a056e95563bb0a21c0b6eeade74287b642c6687d31ce39d`  
		Last Modified: Fri, 21 Dec 2018 12:59:30 GMT  
		Size: 11.7 MB (11733755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec383899f0e2d191c8e8e26cfc1e424ef3e12eb570ae38e19ed00a4a8189fd36`  
		Last Modified: Fri, 21 Dec 2018 12:59:23 GMT  
		Size: 7.1 KB (7077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edef063f04f5db2206967f50f0bf1dc03dbb80932a4ee07dd48d23920e6f321c`  
		Last Modified: Fri, 21 Dec 2018 12:59:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:419d2ad6bb56dc4700c2e5ea26b648d203624f10a19714ee7e6cd769d843c4c1`  
		Last Modified: Fri, 21 Dec 2018 12:59:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3554531229df346cb3b0b1b67e89df01e2a45007063a0caa6f0de1d5e6e93611`  
		Last Modified: Fri, 11 Jan 2019 10:20:48 GMT  
		Size: 2.4 KB (2377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52b2d17e3d93a45c4c77970d823f40c0a35c91e7c54ed22ec5e61653acfd370`  
		Last Modified: Fri, 11 Jan 2019 10:20:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9-alpine` - linux; 386

```console
$ docker pull postgres@sha256:df7f4141b208f89b5fba6d88e4d9e9f4c89bb4c4b0ee806aa9e3640755262103
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15624295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a62a72b513efeec9ca47b7cecf2b8431bfec83a81092f622144c63389b62fcae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 17:19:09 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Fri, 21 Dec 2018 17:19:09 GMT
ENV LANG=en_US.utf8
# Fri, 21 Dec 2018 17:19:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Dec 2018 17:25:27 GMT
ENV PG_MAJOR=9.6
# Fri, 21 Dec 2018 17:25:27 GMT
ENV PG_VERSION=9.6.11
# Fri, 21 Dec 2018 17:25:27 GMT
ENV PG_SHA256=38250adc69a1e8613fb926c894cda1d01031391a03648894b9a6e13ff354a530
# Fri, 21 Dec 2018 17:28:01 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 21 Dec 2018 17:28:02 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 21 Dec 2018 17:28:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Dec 2018 17:28:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Dec 2018 17:28:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 21 Dec 2018 17:28:04 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 11 Jan 2019 14:57:47 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 11 Jan 2019 14:57:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 11 Jan 2019 14:57:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 14:57:48 GMT
EXPOSE 5432
# Fri, 11 Jan 2019 14:57:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d5875f70312fdd78de98662431318277d0da1907ab39849ae2b9963214df90`  
		Last Modified: Fri, 21 Dec 2018 17:33:38 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75b9514ce186a9d2aa2e34316997bc428e8f920acc1a73d5a73b051891e12bd`  
		Last Modified: Fri, 21 Dec 2018 17:33:39 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb75b96dab332fc260a2d7c41fc6280caccf39fb5bbd2974d09f150c0414e3b`  
		Last Modified: Fri, 21 Dec 2018 17:34:08 GMT  
		Size: 13.3 MB (13342426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19627d1f127962181986690c1eac3f7f9aec590ea0b1b611b59a399665b4dce7`  
		Last Modified: Fri, 21 Dec 2018 17:34:02 GMT  
		Size: 7.1 KB (7069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36fb77ec392caf932f4aaa809e748ef115f577e620918f9a1222db2b0714a00e`  
		Last Modified: Fri, 21 Dec 2018 17:34:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb1fcb96e153c8c51a281c0dc5aea9cab96d2c9bfdc2fe3bb62920c30e7e0c5`  
		Last Modified: Fri, 21 Dec 2018 17:34:02 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b01f8462025dabb4c693f8059018772509f4b78fd9e8bb594bfb30d4688299a`  
		Last Modified: Fri, 11 Jan 2019 14:58:38 GMT  
		Size: 2.4 KB (2375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa358aa27a1a4dc5902242edd57ab512e746a8446efeca221c0d062ad8be0ff`  
		Last Modified: Fri, 11 Jan 2019 14:58:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:1dda78a96152ff4762bb140dbf5c309ff4068106db4c10c7afbf60f84ded9187
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14684855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5806d8523a269d0124ae7da03fc28c554e1c0fa2e6c1a14fb524f1bbebfe211a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:54:30 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Fri, 21 Dec 2018 12:54:32 GMT
ENV LANG=en_US.utf8
# Fri, 21 Dec 2018 12:54:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Dec 2018 13:01:31 GMT
ENV PG_MAJOR=9.6
# Fri, 21 Dec 2018 13:01:35 GMT
ENV PG_VERSION=9.6.11
# Fri, 21 Dec 2018 13:01:38 GMT
ENV PG_SHA256=38250adc69a1e8613fb926c894cda1d01031391a03648894b9a6e13ff354a530
# Fri, 21 Dec 2018 13:03:59 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 21 Dec 2018 13:04:09 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 21 Dec 2018 13:04:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Dec 2018 13:04:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Dec 2018 13:04:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 21 Dec 2018 13:04:32 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 11 Jan 2019 10:03:11 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:03:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 11 Jan 2019 10:03:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 10:03:19 GMT
EXPOSE 5432
# Fri, 11 Jan 2019 10:03:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a471c6f31ea585f51bf0efee6cc4a296ffdb2c37ce4133accd563850a16757`  
		Last Modified: Fri, 21 Dec 2018 13:12:16 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7dc2deb1b576a1f17dc1a519dfc449f5e9fd78ed412764546a6cdb1297c8e3`  
		Last Modified: Fri, 21 Dec 2018 13:12:15 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4639304ebfa7a1260bffc81509850c9fb2d219e3a918ca80e73575e4030e427a`  
		Last Modified: Fri, 21 Dec 2018 13:13:02 GMT  
		Size: 12.5 MB (12479647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d0eb0cbaef1dda5d15f046afdd40b1f01ceeb8993572b50085ef5c066abee61`  
		Last Modified: Fri, 21 Dec 2018 13:12:55 GMT  
		Size: 7.1 KB (7074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c1f86c1e9d8204fd73a53d6dc7b3a603633892d9736d3c06d4403492bcfb8d`  
		Last Modified: Fri, 21 Dec 2018 13:12:55 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bd1759e45dee19ae966d151594735d827fb09837d8f2dca05f02cd2a7dbb99`  
		Last Modified: Fri, 21 Dec 2018 13:12:55 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f7fe51b4743a6ea33235e3b9f617ced9e2138d4879e40854a6b49dd6580db7e`  
		Last Modified: Fri, 11 Jan 2019 10:06:21 GMT  
		Size: 2.4 KB (2377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9150ac7c997a8392aeee794e9df920ad851b272141d16530b8fa77c9a77ea182`  
		Last Modified: Fri, 11 Jan 2019 10:06:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:b18f107434f0d2cfa7fc86ca6415183948e2a81bfd633be1e081c311ac5df8d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (15028871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2730de6b558c895cc7e0b5cc1639ed6e70b800d6cc0266a4490ef9cb6ede2971`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:36:00 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Fri, 21 Dec 2018 13:36:00 GMT
ENV LANG=en_US.utf8
# Fri, 21 Dec 2018 13:36:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 21 Dec 2018 13:42:32 GMT
ENV PG_MAJOR=9.6
# Fri, 21 Dec 2018 13:42:32 GMT
ENV PG_VERSION=9.6.11
# Fri, 21 Dec 2018 13:42:32 GMT
ENV PG_SHA256=38250adc69a1e8613fb926c894cda1d01031391a03648894b9a6e13ff354a530
# Fri, 21 Dec 2018 13:45:46 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 21 Dec 2018 13:45:47 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 21 Dec 2018 13:45:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Dec 2018 13:45:48 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Dec 2018 13:45:49 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 21 Dec 2018 13:45:49 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 11 Jan 2019 13:17:59 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:18:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 11 Jan 2019 13:18:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 13:18:00 GMT
EXPOSE 5432
# Fri, 11 Jan 2019 13:18:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd56aa8fbac1410f09231a54350efb3aeefc9780ee564b9cbf39f34e67138c1`  
		Last Modified: Fri, 21 Dec 2018 13:53:30 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5bc484ee4622260b1cc4df56b8585c02c641a87f6fc467317e235a2fc80d0d`  
		Last Modified: Fri, 21 Dec 2018 13:53:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163300221edf2adcd37dcc7b4a52287e1a863ea87b44d3c37fe94e3f250adceb`  
		Last Modified: Fri, 21 Dec 2018 13:54:01 GMT  
		Size: 12.7 MB (12710722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e106b79ede5999bad4fbc729b1708e23163af3f6866e7055f78063ebc9a274c`  
		Last Modified: Fri, 21 Dec 2018 13:53:57 GMT  
		Size: 7.1 KB (7075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf69683bdbce24fc26442ba99e2cba0bac972bf1bb20e9880b77dc51d258152`  
		Last Modified: Fri, 21 Dec 2018 13:53:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b99ea08de44fc52df6279d4e4ad99cf2f56988e7c036d6e96915e5ace4b6735`  
		Last Modified: Fri, 21 Dec 2018 13:53:57 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f835ec431484cda0f422d19bde842ac1e52e9dbcfc5ca572ecfa96f21fbda20`  
		Last Modified: Fri, 11 Jan 2019 13:19:08 GMT  
		Size: 2.4 KB (2374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:675417e2a80f1baccf6c8a46322cb7e4df9695d1afad2aadb0cb00098eebbede`  
		Last Modified: Fri, 11 Jan 2019 13:19:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
