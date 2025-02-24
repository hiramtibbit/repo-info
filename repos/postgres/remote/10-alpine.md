## `postgres:10-alpine`

```console
$ docker pull postgres@sha256:a708aa4ce69f1cd68319ddb7f46028284ac43bc8ca99e76aa4a3fc6baaaafd78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:10-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:8a720bd864c7707175fa81defa1a18a524ba7b18a32d2fede61ec7f107f032b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 MB (27598844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57f0ba0b4f5f43c486853fa69a3c94157c965ddc5e410048ec12208db7096e38`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 02:43:44 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 11 May 2019 02:43:44 GMT
ENV LANG=en_US.utf8
# Sat, 11 May 2019 02:43:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 11 May 2019 02:50:04 GMT
ENV PG_MAJOR=10
# Fri, 21 Jun 2019 20:37:26 GMT
ENV PG_VERSION=10.9
# Fri, 21 Jun 2019 20:37:26 GMT
ENV PG_SHA256=958b317fb007e94f3bef7e2a6641875db8f7f9d73db9f283324f3d6e8f5b0f54
# Fri, 21 Jun 2019 20:41:51 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 21 Jun 2019 20:41:52 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 21 Jun 2019 20:41:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Jun 2019 20:41:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Jun 2019 20:41:53 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 21 Jun 2019 20:41:54 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 21 Jun 2019 20:41:54 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:41:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Jun 2019 20:41:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:41:55 GMT
EXPOSE 5432
# Fri, 21 Jun 2019 20:41:55 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddab92d60ba90017f12dd42d606551d002a5a0cc09be31e16105925cbfa07481`  
		Last Modified: Sat, 11 May 2019 03:08:22 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4b0e7b82b8e1bdf8e5908b08113fb98ab570336a917e5d207ad5e84130cea9`  
		Last Modified: Sat, 11 May 2019 03:08:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae018713bf8e525ba6e2c2fd5fbddbbda8ae7ed2a9cdbb43601aa68d2e44cd72`  
		Last Modified: Fri, 21 Jun 2019 21:01:50 GMT  
		Size: 24.8 MB (24831462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c5086e147c99985a5d8fcab538c61a830e450d326e850d592f6fbd06c47615`  
		Last Modified: Fri, 21 Jun 2019 21:01:43 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21203f6a96c3f044675629b407982b61710c883b5463a12e1f2c2e8ca9443da1`  
		Last Modified: Fri, 21 Jun 2019 21:01:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe7c42d06cba5b51efc65c5f6588ece4f02e5ac54ab27891f2581707134404b`  
		Last Modified: Fri, 21 Jun 2019 21:01:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5617800c3631b8b233a10c48e724a977ceb591f36528a18d96c8772e395ae7`  
		Last Modified: Fri, 21 Jun 2019 21:01:43 GMT  
		Size: 2.4 KB (2370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96afe661bbe5b42f752177aacb590f214f1f0e8b0925d978db574a8d64fc957`  
		Last Modified: Fri, 21 Jun 2019 21:01:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:3bb408610c42788a9850d25752573ade1884760efe79b73bae1119a6fe19b183
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26668236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1bebeec6525491e428b354970b99d5f7990b9fbc29c37125ee7b09f42b4928f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:00:48 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 11 May 2019 09:00:49 GMT
ENV LANG=en_US.utf8
# Sat, 11 May 2019 09:00:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 11 May 2019 09:03:03 GMT
ENV PG_MAJOR=10
# Fri, 21 Jun 2019 20:57:45 GMT
ENV PG_VERSION=10.9
# Fri, 21 Jun 2019 20:57:46 GMT
ENV PG_SHA256=958b317fb007e94f3bef7e2a6641875db8f7f9d73db9f283324f3d6e8f5b0f54
# Fri, 21 Jun 2019 20:59:44 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 21 Jun 2019 20:59:46 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 21 Jun 2019 20:59:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Jun 2019 20:59:48 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Jun 2019 20:59:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 21 Jun 2019 20:59:50 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 21 Jun 2019 20:59:51 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:59:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Jun 2019 20:59:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:59:53 GMT
EXPOSE 5432
# Fri, 21 Jun 2019 20:59:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40067f00f6272b4ee3ced6fe442909565af7511237b288ac04f07ec071b2e27`  
		Last Modified: Sat, 11 May 2019 09:10:57 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff4e59b89070cb7c3fb445d9f3f2461a0ca2fae91eb7f2a68888de988c23af3e`  
		Last Modified: Sat, 11 May 2019 09:10:57 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d6ea0365373911d8d911841949e9bdc048d0df47d421889c9e7b5b41143c83`  
		Last Modified: Fri, 21 Jun 2019 21:06:50 GMT  
		Size: 24.1 MB (24114333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a83213f438b9ea8a2637f7cf09f0464792ddb20e3a4c54d1af2fd38cc98cf9`  
		Last Modified: Fri, 21 Jun 2019 21:06:39 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d82b78ba830ce26103a9d6c80e041fffed4a999783c2380f2e63760c54ab7fa`  
		Last Modified: Fri, 21 Jun 2019 21:06:39 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f16c693a02e49a359e8f1b872b69d0c67b85bef16ad9af9f9393f8293fe110a`  
		Last Modified: Fri, 21 Jun 2019 21:06:39 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b7b760a9dfd7e45e3960f9da17099d22513d48a711372d6ca4d203b117d618`  
		Last Modified: Fri, 21 Jun 2019 21:06:39 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f4d0c8a5bfae5dfa3c5d296c8d4a2edb48e29042f45161352a057eb46b739c`  
		Last Modified: Fri, 21 Jun 2019 21:06:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; arm variant v7

```console
$ docker pull postgres@sha256:476d05d74c09e0ca9973b1abac8c16c5b95c0ee6e7e4ae0d086c7d97ab0f7cdb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25651707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b3fd77c4ff4e027f1018f0481d9f4221ed4d19f7b854d4a1ebcc80e8f9a13c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:56:11 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 11 May 2019 12:56:11 GMT
ENV LANG=en_US.utf8
# Sat, 11 May 2019 12:56:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 11 May 2019 12:58:27 GMT
ENV PG_MAJOR=10
# Fri, 21 Jun 2019 22:06:01 GMT
ENV PG_VERSION=10.9
# Fri, 21 Jun 2019 22:06:02 GMT
ENV PG_SHA256=958b317fb007e94f3bef7e2a6641875db8f7f9d73db9f283324f3d6e8f5b0f54
# Fri, 21 Jun 2019 22:08:00 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 21 Jun 2019 22:08:03 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 21 Jun 2019 22:08:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Jun 2019 22:08:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Jun 2019 22:08:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 21 Jun 2019 22:08:07 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 21 Jun 2019 22:08:07 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 21 Jun 2019 22:08:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Jun 2019 22:08:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 22:08:09 GMT
EXPOSE 5432
# Fri, 21 Jun 2019 22:08:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75ddb9311b604ba4812721c497434892efb88706cc9aebdd3e3e84b5e1133b2`  
		Last Modified: Sat, 11 May 2019 13:07:43 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6360535493a3ecaf4b471443cd23c3ec46c6594f3a0961f44368f47e0a39b39`  
		Last Modified: Sat, 11 May 2019 13:07:43 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedc7e1734b1d0c1a6b979f1e58c9b2e15dd1218dcfa8999e22877d45ed2420c`  
		Last Modified: Fri, 21 Jun 2019 23:07:19 GMT  
		Size: 23.3 MB (23290564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c416679ab8ad1bbda370fead4d9f45b6e78abd11be47e9db55a08321a9b1211`  
		Last Modified: Fri, 21 Jun 2019 23:07:10 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ca77379d988da494a3dd82d1d006ac25b0f44ccc368bd71a21022d663aef3e`  
		Last Modified: Fri, 21 Jun 2019 23:07:10 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9424549f1191d1757d772e9b89ae9cec7debcac916bc1251f420e0f208656d01`  
		Last Modified: Fri, 21 Jun 2019 23:07:10 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d68cf930f873057037b208eaa9356f6ec2a3d74697db274d4e8054715000e77`  
		Last Modified: Fri, 21 Jun 2019 23:07:10 GMT  
		Size: 2.4 KB (2370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e96087eaf0198483ceb1401444e59fd62967c8cef38fafa3ab0acac9a88164`  
		Last Modified: Fri, 21 Jun 2019 23:07:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:9873e8c5df5971d59934e84657f0a6ad9c082713c122d648285779afe7f97a4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27462277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8099f3643eb6468bbb81e2d9d6f6b3edfb052475a017d3b2dda3b6335fa9ee6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:47 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Wed, 19 Jun 2019 20:39:47 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 23:13:56 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 19 Jun 2019 23:13:57 GMT
ENV LANG=en_US.utf8
# Wed, 19 Jun 2019 23:13:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 19 Jun 2019 23:19:33 GMT
ENV PG_MAJOR=10
# Fri, 21 Jun 2019 21:59:42 GMT
ENV PG_VERSION=10.9
# Fri, 21 Jun 2019 21:59:42 GMT
ENV PG_SHA256=958b317fb007e94f3bef7e2a6641875db8f7f9d73db9f283324f3d6e8f5b0f54
# Fri, 21 Jun 2019 22:02:10 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 21 Jun 2019 22:02:12 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 21 Jun 2019 22:02:13 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Jun 2019 22:02:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Jun 2019 22:02:15 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 21 Jun 2019 22:02:16 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 21 Jun 2019 22:02:16 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 21 Jun 2019 22:02:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Jun 2019 22:02:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 22:02:19 GMT
EXPOSE 5432
# Fri, 21 Jun 2019 22:02:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288d38dc2b23a4921b8bada77743a7e933f727a406509d08754562d18d126202`  
		Last Modified: Wed, 19 Jun 2019 23:30:52 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97d1446b106edbf3122d9cd59e3b6b5b1769b2a10844f1f056203d77434548f8`  
		Last Modified: Wed, 19 Jun 2019 23:30:52 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3291144055744d52fd366cb6b6f0f06ecf71a8f5b4d119ce27fc2e5b5e32d2`  
		Last Modified: Fri, 21 Jun 2019 23:02:58 GMT  
		Size: 24.8 MB (24763017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d30b60becb99d3676f80f839d6e7d78365713ca5ca2ac5e1b3e0e48d288958`  
		Last Modified: Fri, 21 Jun 2019 23:02:49 GMT  
		Size: 7.3 KB (7299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ae13a606a70016b321e9d6ecd6c0425cb577c3fd811188d4b5920fe03b9b5d`  
		Last Modified: Fri, 21 Jun 2019 23:02:49 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b00564590fea1798f2d73465ae3a7f4958bf47d297af82bdda31ca2a168d92`  
		Last Modified: Fri, 21 Jun 2019 23:02:49 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d931e02939771919d3f6d5ab4d79009e1f5be8579ac0b2d6480674a75ff054`  
		Last Modified: Fri, 21 Jun 2019 23:02:49 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269965a8436e2815042a4f17461129bb36228c0da886ebd59de276eaba305819`  
		Last Modified: Fri, 21 Jun 2019 23:02:49 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; 386

```console
$ docker pull postgres@sha256:6fcf68143c1c6c328b6083bae4c2fa2e0b08bf1e9f17e6ef2cb2709f7cacb909
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28426515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb6bbb45e73e7270737e7742a335d8202096c1434b7b33111b0c4c249b5e0105`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 15:31:36 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 11 May 2019 15:31:36 GMT
ENV LANG=en_US.utf8
# Sat, 11 May 2019 15:31:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 11 May 2019 15:35:07 GMT
ENV PG_MAJOR=10
# Fri, 21 Jun 2019 21:03:41 GMT
ENV PG_VERSION=10.9
# Fri, 21 Jun 2019 21:03:41 GMT
ENV PG_SHA256=958b317fb007e94f3bef7e2a6641875db8f7f9d73db9f283324f3d6e8f5b0f54
# Fri, 21 Jun 2019 21:07:35 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 21 Jun 2019 21:07:36 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 21 Jun 2019 21:07:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Jun 2019 21:07:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Jun 2019 21:07:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 21 Jun 2019 21:07:38 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 21 Jun 2019 21:07:38 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:07:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Jun 2019 21:07:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:07:39 GMT
EXPOSE 5432
# Fri, 21 Jun 2019 21:07:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59abaccdd77df92face9cf6ca594b115a700cac27f4370b2dcd8b899c7dc4f80`  
		Last Modified: Sat, 11 May 2019 15:47:52 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c029f1d6b833217c736af0ee3c47a640c9f57eff8c528ba06458561ffbead18`  
		Last Modified: Sat, 11 May 2019 15:47:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622c6186f4f5ed364c5ff4eb503f01fc634b41cafc4fa8e75355bc56eb39eb02`  
		Last Modified: Fri, 21 Jun 2019 21:21:14 GMT  
		Size: 25.7 MB (25664072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a20147f9da830dfba18b5c4e5bb6a5927c835d278b7940f428174a7c6e63b9`  
		Last Modified: Fri, 21 Jun 2019 21:21:06 GMT  
		Size: 7.3 KB (7299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ecf8b0c47fc4296c448b6eb6cb934aef5e1d5b83010259f6c8607692e0831f`  
		Last Modified: Fri, 21 Jun 2019 21:21:06 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4647b6ae59da00029ec473f0e09aedc435d22280e6f7e97f9447269a17611e`  
		Last Modified: Fri, 21 Jun 2019 21:21:06 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd046dff78e0f4c24a714453421c57f266ae31ad02710b8eda28ddfa6ee2f19`  
		Last Modified: Fri, 21 Jun 2019 21:21:06 GMT  
		Size: 2.4 KB (2370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc49f22522882463a75742df61535bb163b111b30085b04512e45c3c62c949f`  
		Last Modified: Fri, 21 Jun 2019 21:21:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:87079523c3a59c8338ac99f75c98422b091ccf5942de9cc1b5ac67d09d5e7e6b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.9 MB (28877899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff18a130194ecf52c4373cf3b4a232997008bac798bfb78be1728ee9e4feb5cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 19 Jun 2019 21:20:35 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Wed, 19 Jun 2019 21:20:36 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 23:37:18 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 19 Jun 2019 23:37:20 GMT
ENV LANG=en_US.utf8
# Wed, 19 Jun 2019 23:37:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 19 Jun 2019 23:46:01 GMT
ENV PG_MAJOR=10
# Fri, 21 Jun 2019 21:05:20 GMT
ENV PG_VERSION=10.9
# Fri, 21 Jun 2019 21:05:24 GMT
ENV PG_SHA256=958b317fb007e94f3bef7e2a6641875db8f7f9d73db9f283324f3d6e8f5b0f54
# Fri, 21 Jun 2019 21:08:42 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 21 Jun 2019 21:08:51 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 21 Jun 2019 21:08:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Jun 2019 21:09:01 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Jun 2019 21:09:10 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 21 Jun 2019 21:09:14 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 21 Jun 2019 21:09:16 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:09:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Jun 2019 21:09:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:09:33 GMT
EXPOSE 5432
# Fri, 21 Jun 2019 21:09:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b81a6a0d9bdf3b207768607b99415b72d93b6d489c64f096adc23bdc98d100`  
		Last Modified: Thu, 20 Jun 2019 00:01:28 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b444c3b4819f42a3724ec08b289ae13829a9a97e8342c12d48a849fa4b335c9`  
		Last Modified: Thu, 20 Jun 2019 00:01:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf96ef42f9e81ce5fe6bc264aae9c63a3535e64802fc196acd462f86ca295bcd`  
		Last Modified: Fri, 21 Jun 2019 21:38:52 GMT  
		Size: 26.1 MB (26086400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90a6b0efe8c8857b0b87d0ae47339b919ff1f5f1d39407c9c0fbca246ebfa22`  
		Last Modified: Fri, 21 Jun 2019 21:38:39 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e98d7838ae49eccc0621ed291f2079b449c6b8ce93ade592b0db347e63d6928`  
		Last Modified: Fri, 21 Jun 2019 21:38:39 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae0cf191c65f07f52e3fb51fd94aecea3bf452c4c77a0cb55c1fb75d494775`  
		Last Modified: Fri, 21 Jun 2019 21:38:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0569a91917e678ec3217158007371ce181f49cbca1e6c2c005884d080f5f9010`  
		Last Modified: Fri, 21 Jun 2019 21:38:39 GMT  
		Size: 2.4 KB (2372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:482bf89c3ff6fc082c6df396e4420bacc7b89c1a581a87d00760c0760859c3dd`  
		Last Modified: Fri, 21 Jun 2019 21:38:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:7e5c326576ef320bbb44c0919c36050a7a1897a270ec8d02d20fd3e9ee90836c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27384215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f3ea4318e41b8ecc77d10b4bca3e6125662e5bee40e6df384259bbe01cf0e5e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:26:28 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 11 May 2019 12:26:29 GMT
ENV LANG=en_US.utf8
# Sat, 11 May 2019 12:26:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 11 May 2019 12:30:39 GMT
ENV PG_MAJOR=10
# Fri, 21 Jun 2019 21:30:54 GMT
ENV PG_VERSION=10.9
# Fri, 21 Jun 2019 21:30:55 GMT
ENV PG_SHA256=958b317fb007e94f3bef7e2a6641875db8f7f9d73db9f283324f3d6e8f5b0f54
# Fri, 21 Jun 2019 21:34:39 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 21 Jun 2019 21:34:40 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 21 Jun 2019 21:34:41 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Jun 2019 21:34:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Jun 2019 21:34:42 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 21 Jun 2019 21:34:42 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 21 Jun 2019 21:34:43 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:34:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Jun 2019 21:34:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:34:44 GMT
EXPOSE 5432
# Fri, 21 Jun 2019 21:34:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4865e585d61883382119870b39920229ec382dca0843f11998783168258af442`  
		Last Modified: Sat, 11 May 2019 12:47:10 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c4e1be2dab7e661d079ba60d96b75dbcbe44cd537c296f2ec882fb915438c5`  
		Last Modified: Sat, 11 May 2019 12:47:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e4767c5c41a19a85f545f45db03fba16b167c5ce34ce19afbb55755a8e2e2d`  
		Last Modified: Fri, 21 Jun 2019 22:15:00 GMT  
		Size: 24.8 MB (24830536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99c066427c14261b42d756024feeac2d16bc5f092f6f8fecd34a08ff1364107`  
		Last Modified: Fri, 21 Jun 2019 22:14:54 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36f681da6fd6bd6e14f792e0a4964a176320e0ce34b2969621bebffd79afb84`  
		Last Modified: Fri, 21 Jun 2019 22:14:54 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848acc20fdb21a6bcf3c824bfbe4e23e0f2a7b8cd2615f82ebe8b7d92ccdeeb2`  
		Last Modified: Fri, 21 Jun 2019 22:14:54 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7e23b303ab0399f24828b963fb39e278c1ea8327a60ed5d43036732e8fcc8a`  
		Last Modified: Fri, 21 Jun 2019 22:14:55 GMT  
		Size: 2.4 KB (2367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4071007d4d124e67ec30c89d16a86a5a8233ca075c4ad1b8f67b900414be790d`  
		Last Modified: Fri, 21 Jun 2019 22:14:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
