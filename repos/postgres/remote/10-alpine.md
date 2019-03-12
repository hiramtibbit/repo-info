## `postgres:10-alpine`

```console
$ docker pull postgres@sha256:1ac12ae2c84fc28791e6a8ee039ea1d566140f3f2602290aa8c8e1a10f2d03f9
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
$ docker pull postgres@sha256:811b0e6c571fac9cb343809630d5aa557c23e993a53215caa92aa37986c339e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 MB (27583771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c004c5e0ffaf03ca416a4b46337ed3c5dfeb374edf57ccd945353e2d28190bf2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:17:17 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Fri, 08 Mar 2019 02:17:18 GMT
ENV LANG=en_US.utf8
# Fri, 08 Mar 2019 02:17:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Mar 2019 02:22:51 GMT
ENV PG_MAJOR=10
# Fri, 08 Mar 2019 02:22:51 GMT
ENV PG_VERSION=10.7
# Fri, 08 Mar 2019 02:22:51 GMT
ENV PG_SHA256=bfed1065380c1bba927bfe51f23168471373f26e3324cbad859269cc32733ede
# Fri, 08 Mar 2019 02:28:26 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 08 Mar 2019 02:28:27 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 08 Mar 2019 02:28:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Mar 2019 02:28:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Mar 2019 02:28:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Mar 2019 02:28:29 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Mar 2019 02:28:29 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 02:28:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Mar 2019 02:28:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 02:28:30 GMT
EXPOSE 5432
# Fri, 08 Mar 2019 02:28:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12541ba6b2347a889b1e9e9c21d1e590162b12b29af80070c9cbbc51e3235470`  
		Last Modified: Fri, 08 Mar 2019 02:45:04 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005e294420406b27c576258ee0ff21d9c1ebbd280bdb492393db7af9491fa863`  
		Last Modified: Fri, 08 Mar 2019 02:45:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c5b79c54a261c21e5a59cd8cc0b9b044796da33c8becc53302831ce64a43ee`  
		Last Modified: Fri, 08 Mar 2019 02:45:25 GMT  
		Size: 24.8 MB (24818685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a0f06e7ff2badaf90830064acc63edb1d917d17927aef2234751604a961117`  
		Last Modified: Fri, 08 Mar 2019 02:45:17 GMT  
		Size: 7.3 KB (7303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220327ec149819ad99f47e74462026ce4a2c014cb77d06831ba3bd65f73bfd2b`  
		Last Modified: Fri, 08 Mar 2019 02:45:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a91839d2ba06341955c8be61341ddb54d08b72e712660a763425ad0417d10a`  
		Last Modified: Fri, 08 Mar 2019 02:45:18 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863de4abb10f0bd6ccca5c85eecba1ec1c5b62d357b60111905c971e8f9bd8a8`  
		Last Modified: Fri, 08 Mar 2019 02:45:17 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e31248775d219a80bff95dedd841c68adf3220c607d0a4bf9ab20411b01fcd37`  
		Last Modified: Fri, 08 Mar 2019 02:45:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:c6c75b4e2b4c7cbbc65fc152f6d1e15d8892c2f50dbd604b53a11db5b51351e0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26653952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f691c44a22456ceec781af5d5945ec2b17943746161d5b4f269ec9501e413bfc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:11:10 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Fri, 08 Mar 2019 05:11:10 GMT
ENV LANG=en_US.utf8
# Fri, 08 Mar 2019 05:11:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Mar 2019 05:13:23 GMT
ENV PG_MAJOR=10
# Fri, 08 Mar 2019 05:13:24 GMT
ENV PG_VERSION=10.7
# Fri, 08 Mar 2019 05:13:24 GMT
ENV PG_SHA256=bfed1065380c1bba927bfe51f23168471373f26e3324cbad859269cc32733ede
# Fri, 08 Mar 2019 05:15:10 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 08 Mar 2019 05:15:12 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 08 Mar 2019 05:15:13 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Mar 2019 05:15:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Mar 2019 05:15:15 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Mar 2019 05:15:15 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Mar 2019 05:15:16 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:15:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Mar 2019 05:15:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:15:18 GMT
EXPOSE 5432
# Fri, 08 Mar 2019 05:15:18 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67873c450604e5fd6b240117191944a9f6d11ae8bf1788a13f238e799a3b2259`  
		Last Modified: Fri, 08 Mar 2019 05:21:44 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ee3cc09ab9ae9d64025d1187674f2350a217860b611f448c603d5af122a6bc`  
		Last Modified: Fri, 08 Mar 2019 05:21:44 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd93a37ada717f4323b9994a5c1f3a16382e8cad2c783f8e5ede35d5142d141a`  
		Last Modified: Fri, 08 Mar 2019 05:22:11 GMT  
		Size: 24.1 MB (24102796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49df23c5c935f62e6233d3be2fc416fe85c3fb0c5d848df52e671800603b5e1d`  
		Last Modified: Fri, 08 Mar 2019 05:22:02 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e134ee6d4156b5c4052f02045e9b14095d9861a5d367b1abf5df2628d254ae6b`  
		Last Modified: Fri, 08 Mar 2019 05:22:02 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1ac62e9d2d76e0120f3e1a5d1e70af69ddbc7ce680cf4c176902c8225a0c29`  
		Last Modified: Fri, 08 Mar 2019 05:22:02 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd49d8ee3f5ff08dfdda4ef51edfbd35217b0e30517b52bf5097698fd6040171`  
		Last Modified: Fri, 08 Mar 2019 05:22:02 GMT  
		Size: 2.4 KB (2370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b3f1d49537a12ff59826204896f91dba3a65e43d691d5df4fb5c81293d0871`  
		Last Modified: Fri, 08 Mar 2019 05:22:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; arm variant v7

```console
$ docker pull postgres@sha256:db080d4d1d6689784cc653a78987a67894d278de82ff872ece499b90e57a7167
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25645429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779cabd5b6c4725ea0026b99e346fdc59f703007e1fc74e5241946d3e0e2804f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:25:41 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 12 Mar 2019 12:25:42 GMT
ENV LANG=en_US.utf8
# Tue, 12 Mar 2019 12:25:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 12:28:13 GMT
ENV PG_MAJOR=10
# Tue, 12 Mar 2019 12:28:14 GMT
ENV PG_VERSION=10.7
# Tue, 12 Mar 2019 12:28:14 GMT
ENV PG_SHA256=bfed1065380c1bba927bfe51f23168471373f26e3324cbad859269cc32733ede
# Tue, 12 Mar 2019 12:30:03 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 12 Mar 2019 12:30:05 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 12 Mar 2019 12:30:07 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Mar 2019 12:30:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Mar 2019 12:30:09 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Mar 2019 12:30:10 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Mar 2019 12:30:10 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Tue, 12 Mar 2019 12:30:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 12:30:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 12:30:13 GMT
EXPOSE 5432
# Tue, 12 Mar 2019 12:30:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0590566d471062a48b6ae0035457913f8ba9ffb66357cbcc709d1947a1edcadd`  
		Last Modified: Tue, 12 Mar 2019 12:37:06 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be20b018737ec7f8657ab8e0a8974522ce78293d82d4b391a6694ccd1965d286`  
		Last Modified: Tue, 12 Mar 2019 12:37:05 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2710e94caa4ae74b33572fc62abafe2013aed8d8b3e362753a3f1649c06c8abc`  
		Last Modified: Tue, 12 Mar 2019 12:37:29 GMT  
		Size: 23.3 MB (23286364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bf8b2afe63f7d48e78eb45b6b8415e90b5f50e5fd002972de845cdbd375344`  
		Last Modified: Tue, 12 Mar 2019 12:37:20 GMT  
		Size: 7.3 KB (7303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc57b77bcfc8454b91571c43b7747cd6cc161cea86889162928165e55090abd`  
		Last Modified: Tue, 12 Mar 2019 12:37:19 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64eca671d8c748251d6e0533c3ab9791d8f36b22df5f15d2126860493299f24e`  
		Last Modified: Tue, 12 Mar 2019 12:37:19 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347b9b323519d8303fc031c490868d341563cdab34ed16ec3023a4773e34afa4`  
		Last Modified: Tue, 12 Mar 2019 12:37:19 GMT  
		Size: 2.4 KB (2372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b28f41d3211df90c40e9a6c4594d8ece9f2a1166d3c823b0c8b48aeac9db0c3f`  
		Last Modified: Tue, 12 Mar 2019 12:37:19 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:4630578d83e9544e6374b9551a0b653371ba38f8eb70e0e53f9017a0c360fe26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v1+json`
-	Total Size: **27.5 MB (27450366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `91ca3b353d87369cbd112439da9dd8802e2c02d4a8f9efd1d59dbb880c267730`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 09:00:29 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Fri, 08 Mar 2019 09:00:30 GMT
ENV LANG=en_US.utf8
# Fri, 08 Mar 2019 09:00:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Mar 2019 09:08:18 GMT
ENV PG_MAJOR=10
# Fri, 08 Mar 2019 09:08:19 GMT
ENV PG_VERSION=10.7
# Fri, 08 Mar 2019 09:08:20 GMT
ENV PG_SHA256=bfed1065380c1bba927bfe51f23168471373f26e3324cbad859269cc32733ede
# Fri, 08 Mar 2019 09:15:01 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 08 Mar 2019 09:15:03 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 08 Mar 2019 09:15:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Mar 2019 09:15:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Mar 2019 09:15:08 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Mar 2019 09:15:09 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Mar 2019 09:15:09 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 09:15:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Mar 2019 09:15:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 09:15:15 GMT
EXPOSE 5432
# Fri, 08 Mar 2019 09:15:16 GMT
RUN ["\/bin\/sh","-c","#(nop) ","CMD [\"postgres\"]"]
```

-	Layers:
	-	`sha256:a3ed95caeb02ffe68cdd9fd84406680ae93d633cb16422d00e8a7c22955b46d4`  
		Last Modified: Sat, 14 Nov 2015 09:09:44 GMT  
		Size: 32.0 B  
		MIME: application/octet-stream
	-	`sha256:25789ae60338de104c16e916fdb81bf1ce6fe147711fc72e9fa2451178621a7b`  
		Last Modified: Fri, 08 Mar 2019 09:36:48 GMT  
		Size: 121.0 B  
		MIME: application/octet-stream
	-	`sha256:3633b6d14a7c7d4a02d82168d26daaa6056e0ad735fc74ae1d2edeec4f1979d3`  
		Last Modified: Fri, 08 Mar 2019 09:36:49 GMT  
		Size: 2.4 KB (2373 bytes)  
		MIME: application/octet-stream
	-	`sha256:6baa26774386520376b739d5260eb77e5688a911b94518a3dacc548ac16a98f9`  
		Last Modified: Fri, 08 Mar 2019 09:36:48 GMT  
		Size: 169.0 B  
		MIME: application/octet-stream
	-	`sha256:949d7fdc392ea6547cfd359b9ab499908c3758ef01d88823a5277708c92bc305`  
		Last Modified: Fri, 08 Mar 2019 09:36:48 GMT  
		Size: 129.0 B  
		MIME: application/octet-stream
	-	`sha256:619da56b86c469466a2f29dd59f43eb7878e078a9bfd2325c33af2f76ee34da9`  
		Last Modified: Fri, 08 Mar 2019 09:36:48 GMT  
		Size: 7.3 KB (7305 bytes)  
		MIME: application/octet-stream
	-	`sha256:a95f61a31ffffaafda75d820767725eae34a707f262c30a15d80493d555aca84`  
		Last Modified: Fri, 08 Mar 2019 09:37:06 GMT  
		Size: 24.8 MB (24752033 bytes)  
		MIME: application/octet-stream
	-	`sha256:5973af3fce929722a75fe9ca5b363881c81266ff8a7c1bff6c2408a0997bd11a`  
		Last Modified: Fri, 08 Mar 2019 09:36:18 GMT  
		Size: 115.0 B  
		MIME: application/octet-stream
	-	`sha256:09fd31e7de4892a842e7528e486c54c4503434b878071b6e3ad48d50b4fe4a55`  
		Last Modified: Fri, 08 Mar 2019 09:36:18 GMT  
		Size: 150.0 B  
		MIME: application/octet-stream
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/octet-stream

### `postgres:10-alpine` - linux; 386

```console
$ docker pull postgres@sha256:bf9ace90a4b71b7f4d57ee5846c4212a3d0834b8b50a14683d87de73be75d279
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28419026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:294210dbde12bf9f367b521c19322ce4d58798820aaac358ee526e45a932878b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:52:45 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Fri, 08 Mar 2019 04:52:46 GMT
ENV LANG=en_US.utf8
# Fri, 08 Mar 2019 04:52:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Mar 2019 04:57:33 GMT
ENV PG_MAJOR=10
# Fri, 08 Mar 2019 04:57:33 GMT
ENV PG_VERSION=10.7
# Fri, 08 Mar 2019 04:57:33 GMT
ENV PG_SHA256=bfed1065380c1bba927bfe51f23168471373f26e3324cbad859269cc32733ede
# Fri, 08 Mar 2019 05:01:32 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 08 Mar 2019 05:01:33 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 08 Mar 2019 05:01:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Mar 2019 05:01:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Mar 2019 05:01:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Mar 2019 05:01:35 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Mar 2019 05:01:35 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:01:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Mar 2019 05:01:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:01:36 GMT
EXPOSE 5432
# Fri, 08 Mar 2019 05:01:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13ee0b1a0cca94f48a653d55ada0dd5573358dffb875de07ab6bb114dd8295`  
		Last Modified: Fri, 08 Mar 2019 05:13:40 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9072ebfbf4c9ef90d0e6bf3a3d6b6b7a70a94ae36f3a02afdc2d74a88e3e05`  
		Last Modified: Fri, 08 Mar 2019 05:13:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd052479aba25fc062b26bcc0e353bbf977a33853460356bd7f4af138d68a178`  
		Last Modified: Fri, 08 Mar 2019 05:14:03 GMT  
		Size: 25.7 MB (25659314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27168d4821734e65f5c588bed5296899a5a18cfffca9615ef558e3deb96ebca8`  
		Last Modified: Fri, 08 Mar 2019 05:13:54 GMT  
		Size: 7.3 KB (7303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a230ec4844ef0845aebe09d2d506e78d53d81289e83c22e5376e20d981daa9ec`  
		Last Modified: Fri, 08 Mar 2019 05:13:54 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce448a076af1d8508684f641ed8fa2932aee056f33fb882c0e3a9bf57c9535bd`  
		Last Modified: Fri, 08 Mar 2019 05:13:54 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb2e0bfd2bec6ccd3281bdd7d3e0377b307e4a7b49bf0dcee03ffe6fd6164b9`  
		Last Modified: Fri, 08 Mar 2019 05:13:54 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98970c8ce9335c88b8dd7f065b16b2d9e032716c2146d700f2cfec15056129f`  
		Last Modified: Fri, 08 Mar 2019 05:13:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:afdac41bcda9aec3b5af07fa6525ce62f613b56c5ebf30077ecac37beab04b12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.9 MB (28926951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a3d13c31479a37330eb435eb998d539490d824ec23cb2da5eedfb3e4029f40c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:28:55 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Fri, 08 Mar 2019 06:28:58 GMT
ENV LANG=en_US.utf8
# Fri, 08 Mar 2019 06:29:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Mar 2019 06:33:28 GMT
ENV PG_MAJOR=10
# Fri, 08 Mar 2019 06:33:30 GMT
ENV PG_VERSION=10.7
# Fri, 08 Mar 2019 06:33:31 GMT
ENV PG_SHA256=bfed1065380c1bba927bfe51f23168471373f26e3324cbad859269cc32733ede
# Fri, 08 Mar 2019 06:36:34 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 08 Mar 2019 06:36:38 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 08 Mar 2019 06:36:41 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Mar 2019 06:36:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Mar 2019 06:36:46 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Mar 2019 06:36:48 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Mar 2019 06:36:49 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 06:36:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Mar 2019 06:36:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 06:36:56 GMT
EXPOSE 5432
# Fri, 08 Mar 2019 06:36:58 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd955e57e3fb901b7bc8d4925ebbf1993c47a259b6501b4af57a15855e10bf4`  
		Last Modified: Fri, 08 Mar 2019 06:48:54 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf40c0986a0e2ee4caf8a4ad147b6867e8591c3d5a0e34684bb2c2759161798`  
		Last Modified: Fri, 08 Mar 2019 06:48:54 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7169254663746c5c2296e2c10fa48d9a28ad46a9a1ebfd7ea7a5d18b4a64e8b`  
		Last Modified: Fri, 08 Mar 2019 06:49:23 GMT  
		Size: 26.1 MB (26137824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f29253fbb4e47ae80d7cc97c7a4860ba8e0ba8479018ab41b263717729e7180`  
		Last Modified: Fri, 08 Mar 2019 06:49:14 GMT  
		Size: 7.3 KB (7305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4129d1dbc433c98b6c5123311ff72cb5b4d67d3ab55f36e432d91fe58ae63963`  
		Last Modified: Fri, 08 Mar 2019 06:49:15 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a9b088052550fd7384205dd43eeb407772259a3ddb598877127ff5eb4fb23b`  
		Last Modified: Fri, 08 Mar 2019 06:49:14 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ca85d508348cdeb73a406dbe33b00dc33014f6ee975248362d737e391196d4`  
		Last Modified: Fri, 08 Mar 2019 06:49:14 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13199058a3ae7cc9cc995888c65ed9a23113df373966d1ce33e05f9ca987064e`  
		Last Modified: Fri, 08 Mar 2019 06:49:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:52a7e6c6bec8ee2645668fc8b9befdf91db08dd66edab1a15d975dd8512ba3dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27367202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:632f70f5244d8382a00313760f136abfd270e41245b2b9c5aad81c5bbeb570ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:45:28 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Fri, 08 Mar 2019 04:45:29 GMT
ENV LANG=en_US.utf8
# Fri, 08 Mar 2019 04:45:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Mar 2019 04:49:04 GMT
ENV PG_MAJOR=10
# Fri, 08 Mar 2019 04:49:04 GMT
ENV PG_VERSION=10.7
# Fri, 08 Mar 2019 04:49:04 GMT
ENV PG_SHA256=bfed1065380c1bba927bfe51f23168471373f26e3324cbad859269cc32733ede
# Fri, 08 Mar 2019 04:52:08 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 08 Mar 2019 04:52:09 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 08 Mar 2019 04:52:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Mar 2019 04:52:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Mar 2019 04:52:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Mar 2019 04:52:11 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Mar 2019 04:52:12 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:52:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Mar 2019 04:52:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:52:13 GMT
EXPOSE 5432
# Fri, 08 Mar 2019 04:52:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8ad8ee9cc8272ee7a7ca212e3bde3d880ce5c5751611bef005222fad898088`  
		Last Modified: Fri, 08 Mar 2019 05:03:33 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94461b5de217f1221df95899bf82678e8c42e41e09f5582246f2fed04a691b0`  
		Last Modified: Fri, 08 Mar 2019 05:03:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafdc8e9179097d51d0d777ca89b2f336995f5cb6454e8c94dc3b62af5381ed1`  
		Last Modified: Fri, 08 Mar 2019 05:03:52 GMT  
		Size: 24.8 MB (24815535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581f813851a7d596adf1358851200c1f5eae4e571939ec21226118bb7274ce56`  
		Last Modified: Fri, 08 Mar 2019 05:03:45 GMT  
		Size: 7.3 KB (7308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4e63567cee3677d5dffef2249be715b49db427a611a8b446ab1d91066d79b7`  
		Last Modified: Fri, 08 Mar 2019 05:03:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd42d0e844cb0077b81270aeaf9d3bb84c8bcfb9cd5bd6d5ec405fa5f3bb6eb`  
		Last Modified: Fri, 08 Mar 2019 05:03:46 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2201087539d419cb86e3997261098bb277c2d6f087fc824d46d3dd59fb21d37`  
		Last Modified: Fri, 08 Mar 2019 05:03:45 GMT  
		Size: 2.4 KB (2369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4700a0dca2636dc35ab7ff775bc617fa7a2ec03c90d1652cfcc571791104236e`  
		Last Modified: Fri, 08 Mar 2019 05:03:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
