## `postgres:11-beta4-alpine`

```console
$ docker pull postgres@sha256:0c32c110b686b0bbe8ff3512b6e10e2d5670f1121d03bd00b018b346b57f9302
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `postgres:11-beta4-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:82d62c0d34f5265bcf665e89fc6523a6a8a0289b06824f3eaa4a5dd571dd2611
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28419944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02303dd29c7b737f881dfff7799138863ed98cc886e26a3d8cdc3523da90703d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 01:37:36 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 12 Sep 2018 01:37:36 GMT
ENV LANG=en_US.utf8
# Wed, 12 Sep 2018 01:37:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 12 Sep 2018 01:37:37 GMT
ENV PG_MAJOR=11
# Fri, 21 Sep 2018 19:22:06 GMT
ENV PG_VERSION=11beta4
# Fri, 21 Sep 2018 19:22:07 GMT
ENV PG_SHA256=bb0b21f7f551cf5b3e13c05fdf8266fd0ce14db1f62e9c8d21b395ddbaf68fe4
# Fri, 21 Sep 2018 19:25:16 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 21 Sep 2018 19:25:22 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 21 Sep 2018 19:25:23 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Sep 2018 19:25:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Sep 2018 19:25:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 21 Sep 2018 19:25:24 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 21 Sep 2018 19:25:24 GMT
COPY file:e4d1cf3be629c43237bbb1e31a071c44ad8c72b8285cb3fb00c70144997dbdb8 in /usr/local/bin/ 
# Fri, 21 Sep 2018 19:25:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Sep 2018 19:25:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 19:25:25 GMT
EXPOSE 5432/tcp
# Fri, 21 Sep 2018 19:25:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cf8c12f47e64151935f8d8ea6529409384c9c0b753ef0df7df7711d35fe033`  
		Last Modified: Wed, 12 Sep 2018 02:03:23 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451b995b6a91a797f19b87bc008422c652e8a565818e0de3e794da96c08e4030`  
		Last Modified: Wed, 12 Sep 2018 02:03:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d5f39426481a6b311ad1330c17de258425b74e256a387a429c1343c574cf60`  
		Last Modified: Fri, 21 Sep 2018 19:27:00 GMT  
		Size: 26.2 MB (26202630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0790630419c89c8da1c14e8e37905a2251473aacd0362ccc607d86d8392fc423`  
		Last Modified: Fri, 21 Sep 2018 19:26:55 GMT  
		Size: 7.5 KB (7486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6621eead53f4670250268ff567ed90fffc44338b7d6307367a80c1ac7a01f57f`  
		Last Modified: Fri, 21 Sep 2018 19:26:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1a87e90aeda3e50d14641a2f618b66b600c7ed9da1854cb87b1670631f9af0`  
		Last Modified: Fri, 21 Sep 2018 19:26:55 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894e60dda5ba08f56c2f6d62fcc7a4b78c799a8f2fa03f984d335b2934e4ce66`  
		Last Modified: Fri, 21 Sep 2018 19:26:55 GMT  
		Size: 2.2 KB (2213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6621f726308bb405beccd57c712ca2208f8f0d8541c3bd7a3aa000f5f36b69fa`  
		Last Modified: Fri, 21 Sep 2018 19:26:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta4-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:a6dd8a976503087e533ada1d291b5823001dfa28e1ac28d58840436201e25119
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27364125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:908758acf0c466fa9fc20373e917d0d159e2bb7aefabc79fe9b5a9c00a7c7d02`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:50:18 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 12 Sep 2018 09:50:19 GMT
ENV LANG=en_US.utf8
# Wed, 12 Sep 2018 09:50:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 12 Sep 2018 09:50:25 GMT
ENV PG_MAJOR=11
# Sat, 22 Sep 2018 07:49:28 GMT
ENV PG_VERSION=11beta4
# Sat, 22 Sep 2018 07:49:28 GMT
ENV PG_SHA256=bb0b21f7f551cf5b3e13c05fdf8266fd0ce14db1f62e9c8d21b395ddbaf68fe4
# Sat, 22 Sep 2018 08:31:23 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sat, 22 Sep 2018 08:31:29 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sat, 22 Sep 2018 08:31:34 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 22 Sep 2018 08:31:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 22 Sep 2018 08:31:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 22 Sep 2018 08:31:38 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 22 Sep 2018 08:31:39 GMT
COPY file:e4d1cf3be629c43237bbb1e31a071c44ad8c72b8285cb3fb00c70144997dbdb8 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:31:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:31:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:31:45 GMT
EXPOSE 5432/tcp
# Sat, 22 Sep 2018 08:31:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b459e79bf042631c40606931b68bfb5ce1b67919800be4cff8a8aedad3c24ba`  
		Last Modified: Wed, 12 Sep 2018 13:41:52 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269c532d4d04c6df10c783d1559ccbbfea08af09012a6efa3f8c896227b49a75`  
		Last Modified: Wed, 12 Sep 2018 13:41:52 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8053b8d60426f47eb292306fec3455800700b72532884c9020219218a949833`  
		Last Modified: Sat, 22 Sep 2018 08:32:56 GMT  
		Size: 25.2 MB (25206980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8501fd6dd4f5303d667def12dc33adeb1ef3eb868abcde43954164203d60bc4f`  
		Last Modified: Sat, 22 Sep 2018 08:32:16 GMT  
		Size: 7.5 KB (7488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6c511c77b70a85a43ef42d5601d71e65bd5930e9cefe28eb846e343e044fe4`  
		Last Modified: Sat, 22 Sep 2018 08:32:16 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b26f902245ef1411962e9678ede9b53ff70ab349abe05f241e86b7147371c5`  
		Last Modified: Sat, 22 Sep 2018 08:32:17 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11cec217a89a15bb46688e2696079540b0a444572f9a405504e56fe9364aa50`  
		Last Modified: Sat, 22 Sep 2018 08:32:17 GMT  
		Size: 2.2 KB (2218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b235c20be3bc3acf7374fb6d0a377d2dc9d5325f0ab23b4c73628fa4c0992dd0`  
		Last Modified: Sat, 22 Sep 2018 08:32:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta4-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:49fa248770a6a3d57a741b2bb50e50649e5abc3140d4ad147352bb68b3ee01e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27112307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7efc031d1e7691a8b510e955baf8461e7b92e62f5ec34a7c7b1c6cbc4a0a878`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 22 Sep 2018 09:29:55 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 22 Sep 2018 09:29:56 GMT
ENV LANG=en_US.utf8
# Sat, 22 Sep 2018 09:29:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 22 Sep 2018 09:29:58 GMT
ENV PG_MAJOR=11
# Sat, 22 Sep 2018 09:29:59 GMT
ENV PG_VERSION=11beta4
# Sat, 22 Sep 2018 09:30:00 GMT
ENV PG_SHA256=bb0b21f7f551cf5b3e13c05fdf8266fd0ce14db1f62e9c8d21b395ddbaf68fe4
# Sat, 22 Sep 2018 09:34:06 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sat, 22 Sep 2018 09:34:08 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sat, 22 Sep 2018 09:34:09 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 22 Sep 2018 09:34:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 22 Sep 2018 09:34:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 22 Sep 2018 09:34:12 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 22 Sep 2018 09:34:13 GMT
COPY file:e4d1cf3be629c43237bbb1e31a071c44ad8c72b8285cb3fb00c70144997dbdb8 in /usr/local/bin/ 
# Sat, 22 Sep 2018 09:34:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 09:34:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 09:34:16 GMT
EXPOSE 5432/tcp
# Sat, 22 Sep 2018 09:34:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cecadf76f859dfd46b4be471258902265817079136caa1aeb7dbc82444e2984`  
		Last Modified: Sat, 22 Sep 2018 09:57:38 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4f8030a24edaa562766cdb3bc5c1db6f8ced777ab4a58c82c8986a2d49959f`  
		Last Modified: Sat, 22 Sep 2018 09:57:39 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00852ad25bba110475d4b9d1059fe300e077e6e675bf234793531a63d081732`  
		Last Modified: Sat, 22 Sep 2018 09:57:47 GMT  
		Size: 25.0 MB (25001979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52f111fcd13c2eb2998dfa0beb7adadf34c18f1069062af0b7ac12a82c75857`  
		Last Modified: Sat, 22 Sep 2018 09:57:36 GMT  
		Size: 7.5 KB (7490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9b2b177d76c74e5ebd43b55f397293a8a9f89e53ebc0f2842da301afa2966f`  
		Last Modified: Sat, 22 Sep 2018 09:57:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104ba5df37bea7e231b0c498ddb78bb9a5cf4d9ea9e319e941d00842147cc49c`  
		Last Modified: Sat, 22 Sep 2018 09:57:36 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7a78d5fef0403b3d5f08e65b41652216bd4d5bde8e8d5cd1acc550f9a16e89`  
		Last Modified: Sat, 22 Sep 2018 09:57:36 GMT  
		Size: 2.2 KB (2215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1e367698eca15d214447dcf383457eb144d159ab3bcb0e2a18b9d3625fc574`  
		Last Modified: Sat, 22 Sep 2018 09:57:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta4-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:9f07fb512bd61b6705ffd335e9c49fb6ba0d8ebe8d0664ee9a2dfb7b056e0cd1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28097224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:726a5fae48b4c6a66e85bbff1e71adc327b54114ede5195b8f05d3ec70a16074`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 10:51:56 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 12 Sep 2018 10:51:57 GMT
ENV LANG=en_US.utf8
# Wed, 12 Sep 2018 10:51:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 12 Sep 2018 10:52:00 GMT
ENV PG_MAJOR=11
# Sat, 22 Sep 2018 08:41:19 GMT
ENV PG_VERSION=11beta4
# Sat, 22 Sep 2018 08:41:32 GMT
ENV PG_SHA256=bb0b21f7f551cf5b3e13c05fdf8266fd0ce14db1f62e9c8d21b395ddbaf68fe4
# Sat, 22 Sep 2018 08:44:23 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sat, 22 Sep 2018 08:44:25 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sat, 22 Sep 2018 08:44:27 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 22 Sep 2018 08:44:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 22 Sep 2018 08:44:31 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 22 Sep 2018 08:44:32 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 22 Sep 2018 08:44:33 GMT
COPY file:e4d1cf3be629c43237bbb1e31a071c44ad8c72b8285cb3fb00c70144997dbdb8 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:44:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:44:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:44:36 GMT
EXPOSE 5432/tcp
# Sat, 22 Sep 2018 08:44:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce2aed787f849a52cf883e13ec56851afd8a06a4ee7ddfe2d14cad3266755048`  
		Last Modified: Wed, 12 Sep 2018 11:23:47 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b991fd87d966eb69a30f71a6c4256a725f9e19bb13f0b9ebe7bf38edfec5261`  
		Last Modified: Wed, 12 Sep 2018 11:23:48 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82cc05201329df699311e6617cbff7c69a3750a882ba9f52d444b9461cb230c`  
		Last Modified: Sat, 22 Sep 2018 08:46:28 GMT  
		Size: 25.9 MB (25891306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b35b1a76ac2f23d78c8e9f39e0997a9eaa61884948a4127992d6c65a58e1b78`  
		Last Modified: Sat, 22 Sep 2018 08:46:18 GMT  
		Size: 7.5 KB (7491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfcee4a3e580ae07421d837d1ac6b9830ed9d441dc3802fd09634eb55a7c15e`  
		Last Modified: Sat, 22 Sep 2018 08:46:18 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4323b507c427396c5a10c012e9f6f3efb95bbf6ecf991d5d19267cb351ad3cd2`  
		Last Modified: Sat, 22 Sep 2018 08:46:18 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33799038531f2af3e5d17f8b70eece6e6513f39cadd423c2dbe33a1bb7ef2e29`  
		Last Modified: Sat, 22 Sep 2018 08:46:18 GMT  
		Size: 2.2 KB (2213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b31ac61da9c091a2380ac592c905a9eeb26605d75a382cff294fa6cadbb79a`  
		Last Modified: Sat, 22 Sep 2018 08:46:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
