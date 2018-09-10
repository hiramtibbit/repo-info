## `postgres:11-beta3-alpine`

```console
$ docker pull postgres@sha256:1a5bed68038337754c3db69cef905b89cd0af4ae5f49f5f6ae4c6fd54b40145b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:11-beta3-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:d9ce228aeb206a5c4977dddf6763cd599a8be6179840681c568b286dcbffb95c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29689834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8695d7aef097ea7158f4221e5cc656af503b163534227df76fc1e51507cbbbbb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Thu, 30 Aug 2018 22:08:33 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 30 Aug 2018 22:08:33 GMT
ENV LANG=en_US.utf8
# Thu, 30 Aug 2018 22:08:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 30 Aug 2018 22:08:34 GMT
ENV PG_MAJOR=11
# Thu, 30 Aug 2018 22:08:34 GMT
ENV PG_VERSION=11beta3
# Thu, 30 Aug 2018 22:08:34 GMT
ENV PG_SHA256=82babba086ea7297d78f3ce2298296cd22fc1bb10ba315e8b4ff661658a8044d
# Thu, 30 Aug 2018 22:12:04 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 30 Aug 2018 22:12:05 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 30 Aug 2018 22:12:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 30 Aug 2018 22:12:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 30 Aug 2018 22:12:09 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 30 Aug 2018 22:12:09 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 10 Sep 2018 22:23:09 GMT
COPY file:e4d1cf3be629c43237bbb1e31a071c44ad8c72b8285cb3fb00c70144997dbdb8 in /usr/local/bin/ 
# Mon, 10 Sep 2018 22:23:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 10 Sep 2018 22:23:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Sep 2018 22:23:10 GMT
EXPOSE 5432/tcp
# Mon, 10 Sep 2018 22:23:11 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d292baff568a3e3cc2d1ec1319c5dc41e94ff20409329f7f84865d077d975be`  
		Last Modified: Thu, 30 Aug 2018 22:28:44 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c23ba78253f77a79add2ecff227acec4c9f3f4ffdb469f7a33e8b77813b2052`  
		Last Modified: Thu, 30 Aug 2018 22:28:44 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bd72a7853bac1d654f6afb6c9a1671ff1c145cd98083e311c856039d548c5a`  
		Last Modified: Thu, 30 Aug 2018 22:28:49 GMT  
		Size: 27.5 MB (27472899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f7ac428f5682480e7eeed8ed4964ea6494c3ff00e385d0944105bdebf71e9e`  
		Last Modified: Thu, 30 Aug 2018 22:28:43 GMT  
		Size: 7.5 KB (7495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db89ba4e7c675fc8ff279517047ee1b41015e112f9200864252d58e5ce26de2`  
		Last Modified: Thu, 30 Aug 2018 22:28:43 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c602fd509f0cec044a40b807f0c60ea8cdff5021d0615f7f56bae4fe1672ed`  
		Last Modified: Thu, 30 Aug 2018 22:28:43 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:897add96a58eb4214d53b0fbf85303501a5e8865b08bcbcd6395362fc09fceae`  
		Last Modified: Mon, 10 Sep 2018 22:25:05 GMT  
		Size: 2.2 KB (2214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac4229d2790339bb32fdbd256b044858aabfce998e5ba61f30fc002631ac541`  
		Last Modified: Mon, 10 Sep 2018 22:25:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta3-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:b075e335c1d6dfc9390297c4e9b2f769720146fd87bf19654e04db5cb8c156ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28601413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e989e3deb5ceff7a661b7459c8c4b1f1586fbced988021b1d7f035896a4a5c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 07:53:29 GMT
ADD file:122e3422d9afa971806601812374fdd9d00c8edc8e9a6df7256e2caa85fab6d1 in / 
# Fri, 06 Jul 2018 07:53:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 07:53:30 GMT
CMD ["/bin/sh"]
# Sat, 14 Jul 2018 07:49:44 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 14 Jul 2018 07:49:45 GMT
ENV LANG=en_US.utf8
# Sat, 14 Jul 2018 07:49:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 14 Jul 2018 07:49:50 GMT
ENV PG_MAJOR=11
# Sat, 11 Aug 2018 07:49:45 GMT
ENV PG_VERSION=11beta3
# Sat, 11 Aug 2018 07:49:46 GMT
ENV PG_SHA256=82babba086ea7297d78f3ce2298296cd22fc1bb10ba315e8b4ff661658a8044d
# Sat, 11 Aug 2018 08:29:50 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sat, 11 Aug 2018 08:29:57 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sat, 11 Aug 2018 08:30:00 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 11 Aug 2018 08:30:01 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 11 Aug 2018 08:30:05 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 11 Aug 2018 08:30:06 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 28 Aug 2018 07:49:28 GMT
COPY file:86ac8c6f9b02a25651114cb226da72e718a9cacfa324b01f169bfe88e0027aec in /usr/local/bin/ 
# Tue, 28 Aug 2018 07:49:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Aug 2018 07:49:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Aug 2018 07:49:35 GMT
EXPOSE 5432/tcp
# Tue, 28 Aug 2018 07:49:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ee7d700abbf209aa401ef5d53f86af298a25e8154b3259036e9307d08f255c5d`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 2.1 MB (2145998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1653f4692c1ccea69cd46121d4f1371957f66e97a20141371dd4da10ebaec19`  
		Last Modified: Fri, 06 Jul 2018 07:53:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be89c0bdfe21471b24dd28c380bc35cebe521da2e9615c5be939deafd734624c`  
		Last Modified: Sat, 14 Jul 2018 11:40:24 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852d2cfc5d822ef2846113436b3d9d9264722ad578117a2e770ea982600c9511`  
		Last Modified: Sat, 14 Jul 2018 11:40:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad9dbf7341e7fdd0928e6d560990db907edae8d69b70435798c89fd9058c6df`  
		Last Modified: Sat, 11 Aug 2018 11:28:22 GMT  
		Size: 26.4 MB (26444675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef516141da2d3b5a345b86492dc1cbc62f336f699b20161780df0388fca8ab57`  
		Last Modified: Sat, 11 Aug 2018 11:27:41 GMT  
		Size: 7.5 KB (7492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445e585cd55cdc72c6c43ad6183df0fdab9a367594a5b1363396c5fbd30b6ba1`  
		Last Modified: Sat, 11 Aug 2018 11:27:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f9a29eefc007bb406d448431b60b3803425f9c9844bad0ad7461846d8b2465`  
		Last Modified: Sat, 11 Aug 2018 11:27:42 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3d17c2abd9a8ebd727438b6f4752d621d1d95b8bddb835a4d9a845bce8a40e`  
		Last Modified: Tue, 28 Aug 2018 07:50:59 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8ad963d2b1d8e89abe43ee530e66542f8c96169c718eaa18582c7cae0a4e28`  
		Last Modified: Tue, 28 Aug 2018 07:50:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta3-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:e2120e57924bd5e495ac4ed69d6cd7544cc74840be8f741000d2ebc5f37eede4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28357857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ab052bf1d3528eef06db91750ea46e54cc931e7c0d5bbb63e41b00f21ebd4e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 08:58:15 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 11 Jul 2018 08:58:15 GMT
ENV LANG=en_US.utf8
# Wed, 11 Jul 2018 08:58:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jul 2018 08:58:18 GMT
ENV PG_MAJOR=11
# Sat, 11 Aug 2018 10:10:49 GMT
ENV PG_VERSION=11beta3
# Sat, 11 Aug 2018 10:10:50 GMT
ENV PG_SHA256=82babba086ea7297d78f3ce2298296cd22fc1bb10ba315e8b4ff661658a8044d
# Sat, 11 Aug 2018 10:15:33 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sat, 11 Aug 2018 10:15:35 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sat, 11 Aug 2018 10:15:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 11 Aug 2018 10:15:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 11 Aug 2018 10:15:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 11 Aug 2018 10:15:40 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 28 Aug 2018 10:14:42 GMT
COPY file:86ac8c6f9b02a25651114cb226da72e718a9cacfa324b01f169bfe88e0027aec in /usr/local/bin/ 
# Tue, 28 Aug 2018 10:14:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Aug 2018 10:15:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Aug 2018 10:15:05 GMT
EXPOSE 5432/tcp
# Tue, 28 Aug 2018 10:15:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437d5ea65f8f13faa3042893bc9dd0a4e5b68562c0eb1f9aeaf258936fe72140`  
		Last Modified: Wed, 11 Jul 2018 09:26:40 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf835df21096513cbddcf69a9b532c79832f2cd1c8b47e78e9776fc76eb24340`  
		Last Modified: Wed, 11 Jul 2018 09:26:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c4e2fa291235fe628878c688a97ce98df414a074df526771e7602bf7f1ec37`  
		Last Modified: Sat, 11 Aug 2018 13:05:11 GMT  
		Size: 26.2 MB (26247729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6220c6c8dbc0b2de09ffd9147b9a2eea624208f20c59cf4c7b160f73270aff`  
		Last Modified: Sat, 11 Aug 2018 13:05:00 GMT  
		Size: 7.5 KB (7494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a659ed052b26ca2ca26bcd18d7380f12a7588b9c42b18f49a88b92bbcf0148`  
		Last Modified: Sat, 11 Aug 2018 13:05:00 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550e9b0eeb16b2566d1770e77642123b3d1f68b6b19ce55ff226aa73257e6de2`  
		Last Modified: Sat, 11 Aug 2018 13:05:00 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761dc5ba9eb9e07b144f9e396a6b2376a05012218ca0dfe4c3c53688d50c4a30`  
		Last Modified: Tue, 28 Aug 2018 10:26:29 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9ea0718e18087319a8b18510240e0572bc47d901f1aaca06cda511b357f01f`  
		Last Modified: Tue, 28 Aug 2018 10:26:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta3-alpine` - linux; 386

```console
$ docker pull postgres@sha256:3d88417f878dae2da7686de7bf979ce855c2e0a802b0e28f06c4718dae3e23a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30443220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9b54d8a399eddcf5203e7fab539d5a4db0f460708f49bde2782257eea65012c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Fri, 31 Aug 2018 21:08:48 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Fri, 31 Aug 2018 21:08:49 GMT
ENV LANG=en_US.utf8
# Fri, 31 Aug 2018 21:08:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 31 Aug 2018 21:08:51 GMT
ENV PG_MAJOR=11
# Fri, 31 Aug 2018 21:08:51 GMT
ENV PG_VERSION=11beta3
# Fri, 31 Aug 2018 21:08:51 GMT
ENV PG_SHA256=82babba086ea7297d78f3ce2298296cd22fc1bb10ba315e8b4ff661658a8044d
# Fri, 31 Aug 2018 21:19:05 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 31 Aug 2018 21:19:06 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 31 Aug 2018 21:19:07 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 31 Aug 2018 21:19:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 31 Aug 2018 21:19:09 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 31 Aug 2018 21:19:10 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 31 Aug 2018 21:19:10 GMT
COPY file:86ac8c6f9b02a25651114cb226da72e718a9cacfa324b01f169bfe88e0027aec in /usr/local/bin/ 
# Fri, 31 Aug 2018 21:19:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 31 Aug 2018 21:19:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Aug 2018 21:19:12 GMT
EXPOSE 5432/tcp
# Fri, 31 Aug 2018 21:19:12 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1dbd44d5e9a4a6b32c72050c755b4918f6760a132de329e32e9331fc54ff49`  
		Last Modified: Fri, 31 Aug 2018 21:49:02 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba18bdc267bf9d3fec01d4ec8f7db68f112121c5bb566304327f6aab447e739`  
		Last Modified: Fri, 31 Aug 2018 21:49:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81167f766aecfd22676fff9b1fc2fb61a73dad9afb9320138904493f63ed3a5`  
		Last Modified: Fri, 31 Aug 2018 21:49:11 GMT  
		Size: 28.2 MB (28161690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa5477f6f29a096d6cda3e075f49cf549a970f5a93c4764a270a6cf1013c484`  
		Last Modified: Fri, 31 Aug 2018 21:49:01 GMT  
		Size: 7.5 KB (7495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36feb3cf4db050c5000a64dc50d9e805aae12244ad4a1a4ce9a6f37e5d521a9d`  
		Last Modified: Fri, 31 Aug 2018 21:49:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f523009be98e663e3869f7da0956dffd9d8ef21fad39d1675b628b9ff87e3a79`  
		Last Modified: Fri, 31 Aug 2018 21:49:01 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54dd1013b7b64976d16367ffc9f7386e91e08e46633dc79ab5be8824ed84e6f0`  
		Last Modified: Fri, 31 Aug 2018 21:49:01 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b874f36dc0f571b406410e5e3b1094ea376863c7fcad35b87b8492b45ad5d1b6`  
		Last Modified: Fri, 31 Aug 2018 21:49:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta3-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:e6ec9b2329558aeb0b12deb946bfadd7e3b4ac7ee4055df3890592f57238699b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29347762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19ce3166f36c1208f50994e1596e8cfb103d9cbe9f733bd129be2c31bb11debf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:01:28 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 11 Jul 2018 10:01:29 GMT
ENV LANG=en_US.utf8
# Wed, 11 Jul 2018 10:01:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jul 2018 10:01:33 GMT
ENV PG_MAJOR=11
# Sat, 11 Aug 2018 09:29:11 GMT
ENV PG_VERSION=11beta3
# Sat, 11 Aug 2018 09:29:12 GMT
ENV PG_SHA256=82babba086ea7297d78f3ce2298296cd22fc1bb10ba315e8b4ff661658a8044d
# Sat, 11 Aug 2018 09:32:18 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sat, 11 Aug 2018 09:35:29 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sat, 11 Aug 2018 09:35:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 11 Aug 2018 09:35:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 11 Aug 2018 09:36:16 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 11 Aug 2018 09:36:28 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 28 Aug 2018 08:54:31 GMT
COPY file:86ac8c6f9b02a25651114cb226da72e718a9cacfa324b01f169bfe88e0027aec in /usr/local/bin/ 
# Tue, 28 Aug 2018 08:54:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Aug 2018 08:54:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:54:36 GMT
EXPOSE 5432/tcp
# Tue, 28 Aug 2018 08:54:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cf65db7a2a46b10230d6919606d6370a8f89f4126cb2e72c0e8e2b817cc9bd`  
		Last Modified: Wed, 11 Jul 2018 10:24:59 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831e22a24061ee9561c3ce50ae211d56c4d735d93bc6f6ba82661c69ebaaea94`  
		Last Modified: Wed, 11 Jul 2018 10:24:59 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73419a94f36bd3224b8d8c51a09d40b0ee8612567b9440c8c530b35f0b89c0c0`  
		Last Modified: Sat, 11 Aug 2018 10:15:47 GMT  
		Size: 27.1 MB (27142154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f8616d8daab769c7ded50607c4ce8d5278ca2a41e6cd92938cadc5d6608732`  
		Last Modified: Sat, 11 Aug 2018 10:15:10 GMT  
		Size: 7.5 KB (7493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db9cad1ad00ce16589cd5b74d16910733e616a8623cbae883988d0dae9cfaa98`  
		Last Modified: Sat, 11 Aug 2018 10:15:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f75cf78f46636d3c567b64c514c82f94fdf59a5dbce14da579d050cec4af6b`  
		Last Modified: Sat, 11 Aug 2018 10:15:09 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32c2b6ddd887296598db454c30bfb9876cf91a9d6d852d147716a5d34130757`  
		Last Modified: Tue, 28 Aug 2018 08:58:50 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13eb0d43820905c91012d55199554474ecc30a5ce2acb43a3489d7a2569bdd44`  
		Last Modified: Tue, 28 Aug 2018 08:58:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta3-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:16fdab73b886832c9cffde0e3634e303a464377fb0134c26c873146aa51a355e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29675880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53460e71b4230a91d7c9d91735f0e55fe535ca1ca3109f67ce7b1023bada6fe4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 11:52:46 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 11 Jul 2018 11:52:46 GMT
ENV LANG=en_US.utf8
# Wed, 11 Jul 2018 11:52:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jul 2018 11:52:47 GMT
ENV PG_MAJOR=11
# Sat, 11 Aug 2018 12:11:59 GMT
ENV PG_VERSION=11beta3
# Sat, 11 Aug 2018 12:12:00 GMT
ENV PG_SHA256=82babba086ea7297d78f3ce2298296cd22fc1bb10ba315e8b4ff661658a8044d
# Sat, 11 Aug 2018 12:14:38 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sat, 11 Aug 2018 12:14:39 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sat, 11 Aug 2018 12:14:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 11 Aug 2018 12:14:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 11 Aug 2018 12:14:40 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 11 Aug 2018 12:14:40 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 28 Aug 2018 12:11:13 GMT
COPY file:86ac8c6f9b02a25651114cb226da72e718a9cacfa324b01f169bfe88e0027aec in /usr/local/bin/ 
# Tue, 28 Aug 2018 12:11:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Aug 2018 12:11:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Aug 2018 12:11:14 GMT
EXPOSE 5432/tcp
# Tue, 28 Aug 2018 12:11:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398fccf2ffccf7250c1715d26143118893acb524a48bced68b09ea5b8eec51d5`  
		Last Modified: Wed, 11 Jul 2018 12:07:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9218ec3eacdd51c0198b5043ce0115b269b534e8da4fd8aa0f07d1b7e3f1f1ab`  
		Last Modified: Wed, 11 Jul 2018 12:07:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ea93eb59b66a1818a5473907f1b9d5c69e08e98f7ee08b224830c09c2bb051`  
		Last Modified: Sat, 11 Aug 2018 13:10:32 GMT  
		Size: 27.4 MB (27357809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151426c1b138074c2393f1d055c6bf965ceedf2b2181f814559a88c11a1a8d2a`  
		Last Modified: Sat, 11 Aug 2018 13:10:25 GMT  
		Size: 7.5 KB (7486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c4a3c1f2bea155e11d8122ad9e89cc7bc09e208c1657bb7d3c3ec0bbee83da`  
		Last Modified: Sat, 11 Aug 2018 13:10:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889911c2260d255e5a84bfa331c463f174c544a77279604f3da976a77043df1c`  
		Last Modified: Sat, 11 Aug 2018 13:10:25 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eaec9a24c8d314a03b5bd4885ef45835a4a17832c4405eae7aafa61b8eb5fbb`  
		Last Modified: Tue, 28 Aug 2018 12:13:18 GMT  
		Size: 2.3 KB (2253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db6c03ae6dd0ad5691e714f4eadca497dd4d4a4175f6322cf7ef538d65bb7ec`  
		Last Modified: Tue, 28 Aug 2018 12:13:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
