## `postgres:alpine`

```console
$ docker pull postgres@sha256:3ebba1aa896c8a5f1e71cbe78d4d283b4c55786dbc076787a27b301ce64506f2
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
$ docker pull postgres@sha256:9bae60f18e2455de0e4e8a9b28329072ee508f1549d0961b9af078ca9808e120
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28434746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e5b00b552ba8f6d4cff5ffa71620f100e1445b19454b5ac6179f9cc2c836394`
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
# Fri, 21 Dec 2018 05:03:31 GMT
ENV PG_MAJOR=11
# Fri, 21 Dec 2018 05:03:32 GMT
ENV PG_VERSION=11.1
# Fri, 21 Dec 2018 05:03:32 GMT
ENV PG_SHA256=90815e812874831e9a4bf6e1136bf73bc2c5a0464ef142e2dfea40cda206db08
# Fri, 21 Dec 2018 05:06:29 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 21 Dec 2018 05:06:29 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 21 Dec 2018 05:06:30 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Dec 2018 05:06:31 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Dec 2018 05:06:31 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 21 Dec 2018 05:06:32 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 21 Dec 2018 05:06:32 GMT
COPY file:ce0b92a04b922299a5a2a3afc17611125f84ac18f401e119fd70fbb7c59af195 in /usr/local/bin/ 
# Fri, 21 Dec 2018 05:06:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Dec 2018 05:06:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 05:06:33 GMT
EXPOSE 5432
# Fri, 21 Dec 2018 05:06:33 GMT
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
	-	`sha256:cb46a6b8595e2c75d6addc794ed4e4dcda2dcdb30f62cb14295b545bb70aade6`  
		Last Modified: Fri, 21 Dec 2018 05:18:22 GMT  
		Size: 26.2 MB (26217342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c5191c055e9efb68e13a100b64c8b5cdbf37a89547cdb8457ffe7b3c29b1a1`  
		Last Modified: Fri, 21 Dec 2018 05:18:16 GMT  
		Size: 7.5 KB (7486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb34939ab8280c65a56eada99d4536d244eefcee1643f6fcc4a9e6ea8237805`  
		Last Modified: Fri, 21 Dec 2018 05:18:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bf1f0d5492b100f0d202c1516889195d7e3a3db98ac965986a21cb52376190`  
		Last Modified: Fri, 21 Dec 2018 05:18:16 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c882172ec057ccb86e20d3361205eac1a2b3689853a9a0f7832c27230da78fe2`  
		Last Modified: Fri, 21 Dec 2018 05:18:16 GMT  
		Size: 2.2 KB (2214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5adb8a11c32c9524f149ba8fcd571d283e32ef950da85ece3c553d8de8b3ce`  
		Last Modified: Fri, 21 Dec 2018 05:18:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:aa83f97391c52e8c60e4c8940e40927e243d2d4147c124192616c4854c5305f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27380488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0b1f79909355ed9aa67926ae3691c3bc8af160ee9ae4a141a15816379bfc332`
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
# Fri, 21 Dec 2018 12:15:55 GMT
ENV PG_MAJOR=11
# Fri, 21 Dec 2018 12:15:57 GMT
ENV PG_VERSION=11.1
# Fri, 21 Dec 2018 12:15:59 GMT
ENV PG_SHA256=90815e812874831e9a4bf6e1136bf73bc2c5a0464ef142e2dfea40cda206db08
# Fri, 21 Dec 2018 13:01:46 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 21 Dec 2018 13:01:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 21 Dec 2018 13:02:09 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Dec 2018 13:02:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Dec 2018 13:02:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 21 Dec 2018 13:02:23 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 21 Dec 2018 13:02:25 GMT
COPY file:ce0b92a04b922299a5a2a3afc17611125f84ac18f401e119fd70fbb7c59af195 in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:02:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Dec 2018 13:02:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:02:39 GMT
EXPOSE 5432
# Fri, 21 Dec 2018 13:02:41 GMT
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
	-	`sha256:93185b95fef020f7b8c5e7372ada4394c9b541ec59633cd90d663388cd1ab855`  
		Last Modified: Fri, 21 Dec 2018 15:41:52 GMT  
		Size: 25.2 MB (25224013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001d5e90852bf10210cc2d8451e5fe86a01f022f40ec3cab22721aaea9726fec`  
		Last Modified: Fri, 21 Dec 2018 15:41:14 GMT  
		Size: 7.5 KB (7491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e59985a61080b380a9227ade03bbd98281a55040c14e69c91eb33e562b59284`  
		Last Modified: Fri, 21 Dec 2018 15:41:14 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa72a7ca9b752a6435dc76e9a54751424a116167678e50af9934e61906e7715`  
		Last Modified: Fri, 21 Dec 2018 15:41:14 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235ab9c782a2b19ce037dc2d0a7b6d1f1d27747f527d408dbb9b736a6bec7402`  
		Last Modified: Fri, 21 Dec 2018 15:41:14 GMT  
		Size: 2.2 KB (2219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055f6af275098fccca972f0d1ace32f9903628d4bedb4fff71ae7f9f3d499cc5`  
		Last Modified: Fri, 21 Dec 2018 15:41:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:12d1cdc07a5fa2504ba9f91d2c6c2b8abb0884ce2e65666ce5f69b71a0882cef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27132997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a228acd0b3427ad334b371ac8986fc596b05398ff94af81444808df5013f1819`
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
# Fri, 21 Dec 2018 12:27:21 GMT
ENV PG_MAJOR=11
# Fri, 21 Dec 2018 12:27:22 GMT
ENV PG_VERSION=11.1
# Fri, 21 Dec 2018 12:27:23 GMT
ENV PG_SHA256=90815e812874831e9a4bf6e1136bf73bc2c5a0464ef142e2dfea40cda206db08
# Fri, 21 Dec 2018 12:32:46 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 21 Dec 2018 12:32:49 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 21 Dec 2018 12:32:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Dec 2018 12:32:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Dec 2018 12:32:58 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 21 Dec 2018 12:32:59 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 21 Dec 2018 12:33:00 GMT
COPY file:ce0b92a04b922299a5a2a3afc17611125f84ac18f401e119fd70fbb7c59af195 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:33:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Dec 2018 12:33:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:33:05 GMT
EXPOSE 5432
# Fri, 21 Dec 2018 12:33:06 GMT
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
	-	`sha256:d1040d9b25c5b8e050647644bf32c9af3aaeacfe435fc3539c88de1a0e165f44`  
		Last Modified: Fri, 21 Dec 2018 12:58:48 GMT  
		Size: 25.0 MB (25022595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13019d49f9044d904b46f1b9c040324c238341b5062606d2dc1782989c7b8cd7`  
		Last Modified: Fri, 21 Dec 2018 12:58:31 GMT  
		Size: 7.5 KB (7492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aac59f90c10ca6532459f31cb0c5d303208a43d8a851b7c7f41efe1b5833740`  
		Last Modified: Fri, 21 Dec 2018 12:58:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1488627fb8a9e4757428d9a752096c7d8971a669979cec9ad2c68be086afe3`  
		Last Modified: Fri, 21 Dec 2018 12:58:31 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00932be25f690a14cd4d4742af39f4e0bc16ca91597c9585c7881cba78a15e7d`  
		Last Modified: Fri, 21 Dec 2018 12:58:31 GMT  
		Size: 2.2 KB (2216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c8f8c31acecf3d4bde00563fb7c5a46e1d7efbf712df29f5b1a71ec1aede19`  
		Last Modified: Fri, 21 Dec 2018 12:58:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; 386

```console
$ docker pull postgres@sha256:d45886d7eba6da391132a9b05d36bd75ea587f70252c80117b195b36f61025ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29214638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8696222129ee30316b61b5cc4dbc6701e5a3295376fb560728c55f91e765c0fa`
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
# Sat, 10 Nov 2018 13:16:36 GMT
ENV PG_VERSION=11.1
# Sat, 10 Nov 2018 13:16:36 GMT
ENV PG_SHA256=90815e812874831e9a4bf6e1136bf73bc2c5a0464ef142e2dfea40cda206db08
# Sat, 10 Nov 2018 13:19:48 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sat, 10 Nov 2018 13:19:49 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sat, 10 Nov 2018 13:19:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 10 Nov 2018 13:19:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 10 Nov 2018 13:19:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 10 Nov 2018 13:19:51 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 10 Nov 2018 13:19:51 GMT
COPY file:e4d1cf3be629c43237bbb1e31a071c44ad8c72b8285cb3fb00c70144997dbdb8 in /usr/local/bin/ 
# Sat, 10 Nov 2018 13:19:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 10 Nov 2018 13:19:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 10 Nov 2018 13:19:52 GMT
EXPOSE 5432/tcp
# Sat, 10 Nov 2018 13:19:53 GMT
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
	-	`sha256:67dbe0cbcb0cc58685e85a49f049d164d9934163719fa3d4157428a8fc980011`  
		Last Modified: Sat, 10 Nov 2018 13:41:16 GMT  
		Size: 26.9 MB (26932617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1489315362c04b636b8c045df4c34ee97220b9b760c5c46a6e84d6dc4877c6e7`  
		Last Modified: Sat, 10 Nov 2018 13:41:08 GMT  
		Size: 7.5 KB (7489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d57e1e772aa65a439d9c20ab136ba6d54f0ba70dc3e5a1daccadbd17dcb0d52`  
		Last Modified: Sat, 10 Nov 2018 13:41:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67bac6d48e8c0be00c0f8813db3fce01ce0d97908fef30558098c671d202266`  
		Last Modified: Sat, 10 Nov 2018 13:41:08 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a837a47f0b3ef2ce76e0bf21696cfc44a65dae05cf172c9544d0d99feb44973`  
		Last Modified: Sat, 10 Nov 2018 13:41:09 GMT  
		Size: 2.2 KB (2215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12c3dc0c5c6594aa918f3ba248df5e651934b7e3abe8902fcd49b7f04c7f62f5`  
		Last Modified: Sat, 10 Nov 2018 13:41:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:256ab47288564f4ca7f6f9833006afa781b68759460868ec624f28596b377163
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28109553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:debabfc01c11f2427b483d08739ae5d499b8bffde13743c12d471eef6dbf2ccd`
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
# Fri, 21 Dec 2018 12:54:41 GMT
ENV PG_MAJOR=11
# Fri, 21 Dec 2018 12:54:43 GMT
ENV PG_VERSION=11.1
# Fri, 21 Dec 2018 12:54:46 GMT
ENV PG_SHA256=90815e812874831e9a4bf6e1136bf73bc2c5a0464ef142e2dfea40cda206db08
# Fri, 21 Dec 2018 12:57:23 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 21 Dec 2018 12:57:28 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 21 Dec 2018 12:57:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Dec 2018 12:57:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Dec 2018 12:57:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 21 Dec 2018 12:57:40 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 21 Dec 2018 12:57:41 GMT
COPY file:ce0b92a04b922299a5a2a3afc17611125f84ac18f401e119fd70fbb7c59af195 in /usr/local/bin/ 
# Fri, 21 Dec 2018 12:57:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Dec 2018 12:57:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 12:57:50 GMT
EXPOSE 5432
# Fri, 21 Dec 2018 12:57:52 GMT
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
	-	`sha256:64b930b766c1e51bc3d2f78bffe4bb49fa4a234d28b690439d6c69739d1e5a25`  
		Last Modified: Fri, 21 Dec 2018 13:12:22 GMT  
		Size: 25.9 MB (25904102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959ad102fc628ecc38257f11f67fad55e9ab83b2a68eaa7419cc88286cb2ebb8`  
		Last Modified: Fri, 21 Dec 2018 13:12:12 GMT  
		Size: 7.5 KB (7484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b281e6ae8071f8674c7110d0bca4103902435d040ba44019c5c7b50a2f9dae`  
		Last Modified: Fri, 21 Dec 2018 13:12:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5b99e797c4032202b667dd6d012ac7816ca011ab004b4bb3c710d2bf593815`  
		Last Modified: Fri, 21 Dec 2018 13:12:12 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f529d606be724dc775d94047f34a5f0a6464642415a215c5aae751c985230582`  
		Last Modified: Fri, 21 Dec 2018 13:12:12 GMT  
		Size: 2.2 KB (2210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8d2802c03191de21e40b16d2dd2ae1af368d9bd3b817794f172e68484ef6a1`  
		Last Modified: Fri, 21 Dec 2018 13:12:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; s390x

```console
$ docker pull postgres@sha256:32860ed8b8a48f51e76170fa6a6f82b23320df879b2cc86c582fffe2b3fb19e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.5 MB (28486999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a906a200c8f0611c7006fa05d936b9fe1804dfdc01986628aeb70120f32f980`
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
# Fri, 21 Dec 2018 13:36:01 GMT
ENV PG_MAJOR=11
# Fri, 21 Dec 2018 13:36:02 GMT
ENV PG_VERSION=11.1
# Fri, 21 Dec 2018 13:36:02 GMT
ENV PG_SHA256=90815e812874831e9a4bf6e1136bf73bc2c5a0464ef142e2dfea40cda206db08
# Fri, 21 Dec 2018 13:39:12 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 21 Dec 2018 13:39:13 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 21 Dec 2018 13:39:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Dec 2018 13:39:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Dec 2018 13:39:15 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 21 Dec 2018 13:39:15 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 21 Dec 2018 13:39:15 GMT
COPY file:ce0b92a04b922299a5a2a3afc17611125f84ac18f401e119fd70fbb7c59af195 in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:39:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Dec 2018 13:39:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:39:17 GMT
EXPOSE 5432
# Fri, 21 Dec 2018 13:39:17 GMT
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
	-	`sha256:5afbb8b9982586602d9eff0b3b739ce0994b4c50d3739d840977ce8c9e788312`  
		Last Modified: Fri, 21 Dec 2018 13:53:36 GMT  
		Size: 26.2 MB (26168594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06c683d56571489f3059d92950a4b64a6113ad2afcfd494bb50faf0ea084766`  
		Last Modified: Fri, 21 Dec 2018 13:53:28 GMT  
		Size: 7.5 KB (7488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9435fccfa3b0857a70a5f69b35ee59a8451e984869d95730b35a00fc8816628f`  
		Last Modified: Fri, 21 Dec 2018 13:53:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b445f7d56820d389a32547df6cbecf43ad25a7657a022e1e5f0c24594408e6`  
		Last Modified: Fri, 21 Dec 2018 13:53:29 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9e188eac1e3c104e14d6a6008aebedaef84533a2248278d2e96771d4830cd0`  
		Last Modified: Fri, 21 Dec 2018 13:53:29 GMT  
		Size: 2.2 KB (2215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620f1e450e516b9541f96c9427957f55ecb810a73f6aa8933f4a93b50ed8f24a`  
		Last Modified: Fri, 21 Dec 2018 13:53:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
