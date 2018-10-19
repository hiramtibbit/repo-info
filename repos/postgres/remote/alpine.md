## `postgres:alpine`

```console
$ docker pull postgres@sha256:c490fe09d5cb1d1cffc8c70bbc5ff0f4837b3f97e4f357d3bea88b9be642fd20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:alpine` - linux; amd64

```console
$ docker pull postgres@sha256:857f6c4d7f992ae58232388e0aff27b9353de881b8ae8c368600f96e907f7d8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28438299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47510d0ec468f7b46d7c07c268871052b86d82fcc77277dc2bfe144c4e7a168d`
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
# Thu, 18 Oct 2018 23:40:03 GMT
ENV PG_VERSION=11.0
# Thu, 18 Oct 2018 23:40:03 GMT
ENV PG_SHA256=bf9bba03d0c3902c188af12e454b35343c4a9bf9e377ec2fe50132efb44ef36b
# Thu, 18 Oct 2018 23:43:48 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 18 Oct 2018 23:43:49 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 18 Oct 2018 23:43:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 18 Oct 2018 23:43:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 18 Oct 2018 23:43:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 18 Oct 2018 23:43:51 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 18 Oct 2018 23:43:51 GMT
COPY file:e4d1cf3be629c43237bbb1e31a071c44ad8c72b8285cb3fb00c70144997dbdb8 in /usr/local/bin/ 
# Thu, 18 Oct 2018 23:43:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 18 Oct 2018 23:43:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Oct 2018 23:43:52 GMT
EXPOSE 5432/tcp
# Thu, 18 Oct 2018 23:43:52 GMT
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
	-	`sha256:4e120c38e0aaf136372b16d21d8a12675b0353da6c1eec828b0eb1979a3bd5a8`  
		Last Modified: Thu, 18 Oct 2018 23:46:26 GMT  
		Size: 26.2 MB (26220984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114a638392f134b90c9d672d66c247cd03b76ab89d599b351f4869c24e07b7a0`  
		Last Modified: Thu, 18 Oct 2018 23:46:20 GMT  
		Size: 7.5 KB (7488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d140d9500009699e058122dd84089f621a44e25ab974f8e8b5d53ac19885084`  
		Last Modified: Thu, 18 Oct 2018 23:46:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe210330066a77e9a30ba4502cc8b3c1b74e00f37c2d3700878410504304a20`  
		Last Modified: Thu, 18 Oct 2018 23:46:20 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828c5663516744cb827e3d7878f7dcde9e1b622889e1f7d7e7217964739d3fda`  
		Last Modified: Thu, 18 Oct 2018 23:46:20 GMT  
		Size: 2.2 KB (2214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799c2a403e8f1fc0164a2f2c20b664ae64e79e8a90f8fceb6b82cc8eae0a93c6`  
		Last Modified: Thu, 18 Oct 2018 23:46:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:d882155c887a08662f5bffba5d9c39455375baf301e35a741682638caf437777
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27373861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b8de51d6b311e5d11ccf657958c6efed38b00b6d0786653d5728bf510d7e7e7`
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
# Fri, 19 Oct 2018 07:49:39 GMT
ENV PG_VERSION=11.0
# Fri, 19 Oct 2018 07:49:39 GMT
ENV PG_SHA256=bf9bba03d0c3902c188af12e454b35343c4a9bf9e377ec2fe50132efb44ef36b
# Fri, 19 Oct 2018 08:29:34 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 19 Oct 2018 08:29:41 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 19 Oct 2018 08:29:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 Oct 2018 08:29:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 Oct 2018 08:29:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 Oct 2018 08:29:52 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 Oct 2018 08:29:53 GMT
COPY file:e4d1cf3be629c43237bbb1e31a071c44ad8c72b8285cb3fb00c70144997dbdb8 in /usr/local/bin/ 
# Fri, 19 Oct 2018 08:29:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 08:29:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 08:29:58 GMT
EXPOSE 5432/tcp
# Fri, 19 Oct 2018 08:29:59 GMT
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
	-	`sha256:449056dd30edb6f25df652d7409cf417a211d5955a6c16a40f12eac2565367ef`  
		Last Modified: Fri, 19 Oct 2018 08:31:18 GMT  
		Size: 25.2 MB (25216711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0ab5b783a7aa1d253155162d2c7590b1b83f2e4c96c4e3735d7c8eceb7fff8`  
		Last Modified: Fri, 19 Oct 2018 08:30:40 GMT  
		Size: 7.5 KB (7492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f2a0085ecd2d71a5ca013842479972bdedb441d9b3aaaf1b0b0d19906719d0`  
		Last Modified: Fri, 19 Oct 2018 08:30:40 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58b0df0ba002b9eca6206eb3e72b40e170133460b8a1ee8902f1d80ba0b682d`  
		Last Modified: Fri, 19 Oct 2018 08:30:40 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf820091a1e723333991adcf3bb5f520d6ed331595a55f34756ebd76c5ce31c0`  
		Last Modified: Fri, 19 Oct 2018 08:30:40 GMT  
		Size: 2.2 KB (2220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d89655e8546fb7761c434c698efdac3b69de50f9537205e5428e8b922d1eb8`  
		Last Modified: Fri, 19 Oct 2018 08:30:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:d31a06b5550f47ad209add8ae90c4772c14545913519cff92f27f0b52d9e8b61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27122631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:639b4859db6942a7f821bb1cb74b77668bf9068e4077bb57c004e8d85b63ee5e`
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
# Fri, 19 Oct 2018 10:29:32 GMT
ENV PG_VERSION=11.0
# Fri, 19 Oct 2018 10:29:33 GMT
ENV PG_SHA256=bf9bba03d0c3902c188af12e454b35343c4a9bf9e377ec2fe50132efb44ef36b
# Fri, 19 Oct 2018 10:34:01 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 19 Oct 2018 10:34:03 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 19 Oct 2018 10:34:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 Oct 2018 10:34:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 Oct 2018 10:34:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 Oct 2018 10:34:08 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 Oct 2018 10:34:08 GMT
COPY file:e4d1cf3be629c43237bbb1e31a071c44ad8c72b8285cb3fb00c70144997dbdb8 in /usr/local/bin/ 
# Fri, 19 Oct 2018 10:34:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 10:34:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 10:34:12 GMT
EXPOSE 5432/tcp
# Fri, 19 Oct 2018 10:34:12 GMT
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
	-	`sha256:17ca599d3d10518a9df29017cd6280dc03ad97f3a2c4f3129b13e6b468e40ee2`  
		Last Modified: Fri, 19 Oct 2018 11:08:51 GMT  
		Size: 25.0 MB (25012303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a80dcf6fd559ca21de8d7e38d8b27036a29cc49331f62b4ced63848d3a488b`  
		Last Modified: Fri, 19 Oct 2018 11:08:40 GMT  
		Size: 7.5 KB (7490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9df957802ae288e40fbc31307f8a622a68531b70018d110c011e66004713786`  
		Last Modified: Fri, 19 Oct 2018 11:08:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f30098c8f0519f71ae014398085b6b20ae4b2218f78a89db76b8124246670f6`  
		Last Modified: Fri, 19 Oct 2018 11:08:40 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b338eb356997ab1232d71dcc7012296d6806aff021c11439de8e9d6f94bb431f`  
		Last Modified: Fri, 19 Oct 2018 11:08:39 GMT  
		Size: 2.2 KB (2214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dbbdab0f9d209f1f7ed49e338a8439ea1677ada9a19bea92d03a63f3ec2f3cc`  
		Last Modified: Fri, 19 Oct 2018 11:08:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; 386

```console
$ docker pull postgres@sha256:23a3096de93511a41aef02f54ca95dcd93e42f96dbac3f9f7231c0be4c963876
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29212224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a6a13dc9b371f88974e3e6a7263ddbb3163aed1068c794f0ccc1bb8df678e32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 15:48:42 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 12 Sep 2018 15:48:42 GMT
ENV LANG=en_US.utf8
# Wed, 12 Sep 2018 15:48:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 12 Sep 2018 15:48:43 GMT
ENV PG_MAJOR=11
# Fri, 19 Oct 2018 11:23:13 GMT
ENV PG_VERSION=11.0
# Fri, 19 Oct 2018 11:23:13 GMT
ENV PG_SHA256=bf9bba03d0c3902c188af12e454b35343c4a9bf9e377ec2fe50132efb44ef36b
# Fri, 19 Oct 2018 11:26:16 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 19 Oct 2018 11:26:17 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 19 Oct 2018 11:26:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 Oct 2018 11:26:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 Oct 2018 11:26:18 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 Oct 2018 11:26:19 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 Oct 2018 11:26:19 GMT
COPY file:e4d1cf3be629c43237bbb1e31a071c44ad8c72b8285cb3fb00c70144997dbdb8 in /usr/local/bin/ 
# Fri, 19 Oct 2018 11:26:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 11:26:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 11:26:20 GMT
EXPOSE 5432/tcp
# Fri, 19 Oct 2018 11:26:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f62decef9da9188af4fbc9ef9917baeee10cdb2dd614c12c301d67bee68540f8`  
		Last Modified: Wed, 12 Sep 2018 16:07:20 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e6bdd8a295e0affd08d997b6e1ca45afb4b8c5d6786e468202742378265477c`  
		Last Modified: Wed, 12 Sep 2018 16:07:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca9fdf5fa45b72b4aa466c8289ac621c130ba81de50df36cdc929275cd3fb96`  
		Last Modified: Fri, 19 Oct 2018 11:28:35 GMT  
		Size: 26.9 MB (26930203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575df45e471a4af242888c03f7e935dd1aa53fbedd7753b6b00634543f509132`  
		Last Modified: Fri, 19 Oct 2018 11:28:28 GMT  
		Size: 7.5 KB (7489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a83e867d1246e78939ba4a121f254d06975984d471eb529b211ea7c5fb30ea57`  
		Last Modified: Fri, 19 Oct 2018 11:28:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b50c3fdf5f1a3eab3ce54a6718e26b7ed7000da247e88c5bc3e060bace8383f`  
		Last Modified: Fri, 19 Oct 2018 11:28:28 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7056c0678bb5eb76da6d7c77ed91e520188599eea08f8306e87cb7e4122f2254`  
		Last Modified: Fri, 19 Oct 2018 11:28:28 GMT  
		Size: 2.2 KB (2214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f120bab8833a3fff2a66dbc882dc25b97e2dce0b8de33c9f374989a245e50503`  
		Last Modified: Fri, 19 Oct 2018 11:28:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:905ebc67fcf8591446fef633ec9b953c6f17c65c9f803c048ea4caaa8d9b47e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28100800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2c4fd0bc0ae761c01938d49fa9491862ec9f2c2a14a8912ecb9154685f657d2`
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
# Fri, 19 Oct 2018 09:05:48 GMT
ENV PG_VERSION=11.0
# Fri, 19 Oct 2018 09:05:55 GMT
ENV PG_SHA256=bf9bba03d0c3902c188af12e454b35343c4a9bf9e377ec2fe50132efb44ef36b
# Fri, 19 Oct 2018 09:08:36 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 19 Oct 2018 09:08:40 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 19 Oct 2018 09:08:42 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 Oct 2018 09:08:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 Oct 2018 09:08:45 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 Oct 2018 09:08:47 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 Oct 2018 09:08:48 GMT
COPY file:e4d1cf3be629c43237bbb1e31a071c44ad8c72b8285cb3fb00c70144997dbdb8 in /usr/local/bin/ 
# Fri, 19 Oct 2018 09:08:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 09:08:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 09:08:53 GMT
EXPOSE 5432/tcp
# Fri, 19 Oct 2018 09:08:54 GMT
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
	-	`sha256:0b458b0326ccb87c3cfbec172e025c91af561a669be8714a0f59e90397a0a3dc`  
		Last Modified: Fri, 19 Oct 2018 09:14:31 GMT  
		Size: 25.9 MB (25894881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e85942a8c13897e1d146bcc1feeb3ce02bc0ae9dbc83c155f2ba070a6c8cf947`  
		Last Modified: Fri, 19 Oct 2018 09:14:20 GMT  
		Size: 7.5 KB (7488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92576b9e1ccf1a3e02a9eb855858e8838d98e26cf6c86ec36854ac8e04200cd8`  
		Last Modified: Fri, 19 Oct 2018 09:14:19 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b3527f9843e27c4a355ba548fa86aa088f62b6ad90aaab52d4b9944f02ae5a`  
		Last Modified: Fri, 19 Oct 2018 09:14:19 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3e3d15070f71437a7d926aa43979d5f2ef50b7a5a029e0e7d8f895bf9696f8`  
		Last Modified: Fri, 19 Oct 2018 09:14:20 GMT  
		Size: 2.2 KB (2215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d15297581ff49104fc89914efe5822bac713077340d025009465d050177201`  
		Last Modified: Fri, 19 Oct 2018 09:14:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; s390x

```console
$ docker pull postgres@sha256:994d42b78427fd8da9aaf6ce4383005d3dc2bfefa426e27dbfa144a23d25d08a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28478915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bd6e9fafe1bc7dd5a6cf4aff0183e995a1dda6863f44ed03a7fb2c97f478155`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:55:49 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 12 Sep 2018 12:55:49 GMT
ENV LANG=en_US.utf8
# Wed, 12 Sep 2018 12:55:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 12 Sep 2018 12:55:50 GMT
ENV PG_MAJOR=11
# Fri, 19 Oct 2018 12:08:33 GMT
ENV PG_VERSION=11.0
# Fri, 19 Oct 2018 12:08:33 GMT
ENV PG_SHA256=bf9bba03d0c3902c188af12e454b35343c4a9bf9e377ec2fe50132efb44ef36b
# Fri, 19 Oct 2018 12:11:14 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 19 Oct 2018 12:11:15 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 19 Oct 2018 12:11:15 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 Oct 2018 12:11:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 Oct 2018 12:11:16 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 Oct 2018 12:11:16 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 Oct 2018 12:11:16 GMT
COPY file:e4d1cf3be629c43237bbb1e31a071c44ad8c72b8285cb3fb00c70144997dbdb8 in /usr/local/bin/ 
# Fri, 19 Oct 2018 12:11:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 Oct 2018 12:11:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Oct 2018 12:11:17 GMT
EXPOSE 5432/tcp
# Fri, 19 Oct 2018 12:11:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3467e43c9cde5d538fd09854a748a89a5ac8b937cfca30a220774cf9ac9638f`  
		Last Modified: Wed, 12 Sep 2018 13:11:19 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb65a0a3aba41fff3043c6e09e45d1063ea0f748bbaae83742fa55e80cd7858a`  
		Last Modified: Wed, 12 Sep 2018 13:11:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705346602cde026efda74e388e6c895359d2ff5af03318b702112089375f41a6`  
		Last Modified: Fri, 19 Oct 2018 12:21:46 GMT  
		Size: 26.2 MB (26160601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e3dee94f80e9a3dce4dcc2e25a110691b280d2e2da180862763a0d0e24bf06`  
		Last Modified: Fri, 19 Oct 2018 12:21:40 GMT  
		Size: 7.5 KB (7491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a919834b59417324a9796c60693162511e2ad0a1f344c9593fa727294d477f`  
		Last Modified: Fri, 19 Oct 2018 12:21:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1019c3311eebcf893fddbe8612bfcd6d354420a31010060334be21197bae32`  
		Last Modified: Fri, 19 Oct 2018 12:21:40 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d560f523c58f14342722b7cdf595c324df057a6853bfb8b7bb10d31affae2`  
		Last Modified: Fri, 19 Oct 2018 12:21:40 GMT  
		Size: 2.2 KB (2217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a67b69dae6c261591b495bc8ad37c6c4d491672695054f0601cb02dc290964`  
		Last Modified: Fri, 19 Oct 2018 12:21:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
