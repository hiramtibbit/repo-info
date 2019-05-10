## `postgres:11-alpine`

```console
$ docker pull postgres@sha256:1ba269d549882ef4dc1cec46517ad364f9927c36f15e6eca483cb0ff65f703b4
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

### `postgres:11-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:13d0ad40bc15e61f01e3337e7a025e2e9084ba2c4d761f10128e925b30af9036
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27817722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb5d401e0b1f5ca5647e0ed6a15763c01dbb733b14097a5cbd98258b116751df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:40:59 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 09 Apr 2019 23:40:59 GMT
ENV LANG=en_US.utf8
# Tue, 09 Apr 2019 23:41:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 Apr 2019 23:41:00 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 01:21:38 GMT
ENV PG_VERSION=11.3
# Fri, 10 May 2019 01:21:38 GMT
ENV PG_SHA256=2a85e082fc225944821dfd23990e32dfcd2284c19060864b0ad4ca537d30522d
# Fri, 10 May 2019 01:30:27 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 01:30:28 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:30:29 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:30:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:30:30 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:30:30 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:30:30 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 01:30:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:30:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:30:31 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:30:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365f27dc05d7a3562de7526a4c5cca44d00d6bced5c9ddbb4f21e2db97ae492f`  
		Last Modified: Tue, 09 Apr 2019 23:58:49 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf541d40dfbca919d52eaeffee79c612c3d669830e4bf23dbade267774d7708f`  
		Last Modified: Tue, 09 Apr 2019 23:58:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d8ff647bb9df49b527c63eafd83b60d3b24d1967070da1ebeeb812d88ec9b8`  
		Last Modified: Fri, 10 May 2019 01:44:49 GMT  
		Size: 25.1 MB (25050145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dce7216c02334b1e04dc1340f7c1776cd6061da58fbb36a237a1eec99f59c04`  
		Last Modified: Fri, 10 May 2019 01:44:43 GMT  
		Size: 7.5 KB (7514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285adb082cef36886eb4e5e808611f64c05831d7f893a380a2c124d94b06c2cd`  
		Last Modified: Fri, 10 May 2019 01:44:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6a2311d7dbd3e3f9fec7a214a2960b5e3168eab253d0c2c4c6349a66ce534e`  
		Last Modified: Fri, 10 May 2019 01:44:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344a76561445b1132deb51ec6eaa17885c710ff6e07ef2bbb671f818b5d1b9ff`  
		Last Modified: Fri, 10 May 2019 01:44:43 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f7dd572e9362f033e8bcf9eb0923f6f2ccecf0f2ca96695fd0e7abb253b715`  
		Last Modified: Fri, 10 May 2019 01:44:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:c9d0db378fb2b7a5a8cf4c00a96c2f1c055faccab2139a516bff9e496271df87
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26869682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4279d5a7aa907e478910e02e4fe99a94aecae6c86c8d2cb1844be6d140357361`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:03:08 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 09:03:08 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 09:03:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 09:03:10 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 07:52:35 GMT
ENV PG_VERSION=11.3
# Fri, 10 May 2019 07:52:35 GMT
ENV PG_SHA256=2a85e082fc225944821dfd23990e32dfcd2284c19060864b0ad4ca537d30522d
# Fri, 10 May 2019 07:54:50 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 07:54:52 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 07:54:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 07:54:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 07:54:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 07:54:55 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 07:54:55 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 07:54:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 07:54:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 07:54:57 GMT
EXPOSE 5432
# Fri, 10 May 2019 07:54:58 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3510403378b09eb87d6996a614a8a3dc8e31725e6b680577a5e59572fefeb7`  
		Last Modified: Wed, 10 Apr 2019 09:14:16 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d941d2aacff6d14e3e8f915884b83b36359f5c15182aee7c59dd57ea09b34c`  
		Last Modified: Wed, 10 Apr 2019 09:14:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80094f284e20db2bba9db3c61541b80a27547f7894d06f073a3c293646eb2b21`  
		Last Modified: Fri, 10 May 2019 08:03:09 GMT  
		Size: 24.3 MB (24315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8ac7c3a4c1c74f4b9546ab4efa4956d2da16e1c09da82e75b923f075b35592`  
		Last Modified: Fri, 10 May 2019 08:03:00 GMT  
		Size: 7.5 KB (7514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9eb2c37c18dda5a5c5fffda8e93bb7a2b37532fd052482965145f94931a10a`  
		Last Modified: Fri, 10 May 2019 08:02:59 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc23116ff08cdec19edf61ae2c8054fb93fe4ee6e04b05cb1658afdc5802e82`  
		Last Modified: Fri, 10 May 2019 08:02:59 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8dfcb5ca64a381677091db8eb7179ce8eab369531a02dc335d164410e6fc9e`  
		Last Modified: Fri, 10 May 2019 08:02:59 GMT  
		Size: 2.4 KB (2370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6777efc82185ef79fe843d6a78e8ba773113e3b33222f915b6e95b1caaa881`  
		Last Modified: Fri, 10 May 2019 08:02:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-alpine` - linux; arm variant v7

```console
$ docker pull postgres@sha256:d310efe50770b3d6a341a6076678ad2da3888c533242fc2d8189d93b50af07f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25843042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60e8defbe2d90f7d7400d5f97feb3da781de6317185995d5210deef6d2b2070c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:46:19 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 12:46:19 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 12:46:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 12:46:22 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 12:23:58 GMT
ENV PG_VERSION=11.3
# Fri, 10 May 2019 12:23:59 GMT
ENV PG_SHA256=2a85e082fc225944821dfd23990e32dfcd2284c19060864b0ad4ca537d30522d
# Fri, 10 May 2019 12:25:54 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 12:25:56 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 12:25:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 12:25:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 12:25:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 12:25:59 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 12:26:00 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 12:26:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 12:26:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 12:26:03 GMT
EXPOSE 5432
# Fri, 10 May 2019 12:26:03 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d279db916c7957a1cea16fb73fa11ee1839092769f8c04e25bb8af5a8737491`  
		Last Modified: Wed, 10 Apr 2019 12:57:32 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fcb955ce0c723d4c267e49a0429fcfc4645face9d1f749eb7bee7845c0b240`  
		Last Modified: Wed, 10 Apr 2019 12:57:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996fb8f0edd91706b5bcbd9ca86150e0b5e607126d1c9b52c5525fb8109a2b9d`  
		Last Modified: Fri, 10 May 2019 13:42:11 GMT  
		Size: 23.5 MB (23481582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725dc917e8923e2d4a5459613693c4844d0ee5b51559c539ad0420245b0aae0c`  
		Last Modified: Fri, 10 May 2019 13:42:02 GMT  
		Size: 7.5 KB (7520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e56b758d5ef111adc031ecdf429551cd511cd79cdd76c9dfb29bd6c891a7773`  
		Last Modified: Fri, 10 May 2019 13:42:02 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f044f8414eb8fa6c93ab7af348cb39ec876f1dd56b32afb959296ac9a9e2814d`  
		Last Modified: Fri, 10 May 2019 13:42:02 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28462087726c5d4faeb2ffed445327471cd0130f797bacca7bf58b1dd6c3925e`  
		Last Modified: Fri, 10 May 2019 13:42:02 GMT  
		Size: 2.4 KB (2369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf0515cb6d19175cdf9e410050d703d49fc4b4a4de4d5fa675a70354b5c8ef7`  
		Last Modified: Fri, 10 May 2019 13:42:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:c9b72623ae28c0756135d9c09cdf5ea11d0a4ef46d68632c0454b620d1c110e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27690540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1b65db03b93c4e52e2c9e4f9a90d4f6ff55a61a70df5b8a4d0a0792da41cb26`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:22:45 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 10:22:46 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 10:22:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 10:22:51 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 10:02:47 GMT
ENV PG_VERSION=11.3
# Fri, 10 May 2019 10:02:48 GMT
ENV PG_SHA256=2a85e082fc225944821dfd23990e32dfcd2284c19060864b0ad4ca537d30522d
# Fri, 10 May 2019 10:10:25 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 10:10:27 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 10:10:29 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 10:10:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 10:10:32 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 10:10:33 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 10:10:33 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 10:10:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 10:10:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 10:10:37 GMT
EXPOSE 5432
# Fri, 10 May 2019 10:10:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fea16c00f90d0af6592e1608d6e3318a5055868310f316ebee261e89b982b1e`  
		Last Modified: Wed, 10 Apr 2019 11:07:30 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b041547846a3b396a5b0f7f676273100de8d96c1f2671a68f884085274c0c47`  
		Last Modified: Wed, 10 Apr 2019 11:07:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08dd9c447d582a8a94d5ae24cb6732b5a455e5f82e294c9bd70afc045d3ef96`  
		Last Modified: Fri, 10 May 2019 12:51:21 GMT  
		Size: 25.0 MB (24991187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfdb1d97e7e7e1bcedd4c5d3fe1bd3fc8f842fb43e8830c22c90ca18e71809b`  
		Last Modified: Fri, 10 May 2019 12:51:10 GMT  
		Size: 7.5 KB (7519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb136a30430ace45221e39cde651dee8c5f66b48f35d6838909a2111ece7f5e`  
		Last Modified: Fri, 10 May 2019 12:51:10 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e55248af2657225f51e8f621a714cc454fbc6b152c14c70d5a237067a64c7b7`  
		Last Modified: Fri, 10 May 2019 12:51:10 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8537f82ff2ac8904aff7bcb084fd09b2f0b58fdbae1cdfd3c40596f341ab04e1`  
		Last Modified: Fri, 10 May 2019 12:51:10 GMT  
		Size: 2.4 KB (2373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a317080d094d494779ab3faeda8d12ea303ca0c065bde504fdb0dc0c0ab79b`  
		Last Modified: Fri, 10 May 2019 12:51:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-alpine` - linux; 386

```console
$ docker pull postgres@sha256:d085e5c6f0481c428116b391cc18ef102ffc393935b8808d45db362cfdc30421
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.7 MB (28664142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb44b5f2e5150947206273596fc41996675b53c1694583081151d798a98b2261`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:28:03 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 14:28:03 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 14:28:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 14:28:04 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 11:03:14 GMT
ENV PG_VERSION=11.3
# Fri, 10 May 2019 11:03:14 GMT
ENV PG_SHA256=2a85e082fc225944821dfd23990e32dfcd2284c19060864b0ad4ca537d30522d
# Fri, 10 May 2019 11:06:35 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 11:06:36 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:06:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:06:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:06:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:06:38 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:06:38 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 11:06:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:06:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:06:39 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:06:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df8da713ae1263f84fd0cae748880b9bd3c3aa4619279b1b972976cdd7d4933`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60005ea8fc190aec4ebdcb14ff51e60c24531718c56530053e1321be67ccc37a`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb40771b304246f6e4b108c58ac5e184bc4aaf7d5bae347e550eb0c7a782852`  
		Last Modified: Fri, 10 May 2019 11:22:42 GMT  
		Size: 25.9 MB (25901411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdfb0cf7fa1d129d54f22a439ed64ff1ed8675b7573e1cadbb03ec002b7ae19`  
		Last Modified: Fri, 10 May 2019 11:22:32 GMT  
		Size: 7.5 KB (7517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65dba1d909297ea1da3f95ac3d45df0566a128d79d36cd9bd409b0a348fc8880`  
		Last Modified: Fri, 10 May 2019 11:22:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b496853f8598bb3ea34405ed8c3215ced6057b23a3ca183dc7596a2c8ac587ef`  
		Last Modified: Fri, 10 May 2019 11:22:32 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8317001c434890bd09d989f02b62480d439b4830965fe3be3c61f67cc5c9c27`  
		Last Modified: Fri, 10 May 2019 11:22:32 GMT  
		Size: 2.4 KB (2369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8045362602544e5ccd8729392701331a0d92953e303507068475817db3c47e7`  
		Last Modified: Fri, 10 May 2019 11:22:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:4394407feb73d2b7dea72b184bd260f03f201a123e0e3bebeec33ebfae034baf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29128932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e02013fc9643f619de60e7a77ca558b7ab4d1d433e46051efecbdb01cf887f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:40:21 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 10:40:26 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 10:40:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 10:40:34 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 09:23:10 GMT
ENV PG_VERSION=11.3
# Fri, 10 May 2019 09:23:16 GMT
ENV PG_SHA256=2a85e082fc225944821dfd23990e32dfcd2284c19060864b0ad4ca537d30522d
# Fri, 10 May 2019 09:27:39 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 09:27:47 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:27:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:27:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:28:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:28:10 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:28:12 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 09:28:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:28:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:28:28 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:28:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fadc09892703ded74da3266e56d7cf5631a32b6afc741c5d73cd181c7fcf26`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d903923d54c1aec0b4affbfa3483f2a737879e509527322b1f68fde697c40acf`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f7544c7b295507148a492cf3da081da4cd5dbc16e52872d6a67a72f7b835e2`  
		Last Modified: Fri, 10 May 2019 10:16:33 GMT  
		Size: 26.3 MB (26337207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ffbd3658d305dc5485a143d060245bb4fb1d5ffb95a2664a88458447e140c3`  
		Last Modified: Fri, 10 May 2019 10:16:05 GMT  
		Size: 7.5 KB (7517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbee7340d39239b1c16f3ad86748f8a349c003467e06bd7ad53c07c84b93313`  
		Last Modified: Fri, 10 May 2019 10:16:04 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92750866a61ffcda6f4d601dc2c72f66aff369b4a04610e035b3b0933f4c301b`  
		Last Modified: Fri, 10 May 2019 10:16:05 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1e23fe874cd3f8c8c68945798e57a4f8acb93c76dd942abfe3abe07d94b3e6`  
		Last Modified: Fri, 10 May 2019 10:16:04 GMT  
		Size: 2.4 KB (2373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c34e012df252b58bcc1f493fb37d33b6cb8222d092d656f79537a9965c7f46`  
		Last Modified: Fri, 10 May 2019 10:16:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:3f03387cb2e7ca5a601671a1703e3c75e37363e2c39112ac85cfc339a298313a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 MB (27592099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:623e70149153cdd781031f0d0b9412efd560c155075a8e8ce6e6ac052fd231b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:27:01 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 14:27:02 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 14:27:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 14:27:06 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 12:09:24 GMT
ENV PG_VERSION=11.3
# Fri, 10 May 2019 12:09:26 GMT
ENV PG_SHA256=2a85e082fc225944821dfd23990e32dfcd2284c19060864b0ad4ca537d30522d
# Fri, 10 May 2019 12:15:33 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 12:15:35 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 12:15:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 12:15:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 12:15:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 12:15:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 12:15:40 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 12:15:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 12:15:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 12:15:44 GMT
EXPOSE 5432
# Fri, 10 May 2019 12:15:44 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5a42be124b5c35b80d686de80099c7a29e62671dde52357608c5bb43155289`  
		Last Modified: Wed, 10 Apr 2019 14:58:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c64b23a57d110ce8601a192addcebc6d5707db8c43d027616541b6f338c1624`  
		Last Modified: Wed, 10 Apr 2019 14:58:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ba6525618137812fd1eaa5221569ce0173ebf139054372e17892e3ca3a4f31`  
		Last Modified: Fri, 10 May 2019 13:14:35 GMT  
		Size: 25.0 MB (25038201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8452639d6c83ceea5582b161126977ea513195c9b8d429172e514c8c3e32e747`  
		Last Modified: Fri, 10 May 2019 13:14:29 GMT  
		Size: 7.5 KB (7517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df22fee80259a5829843f920cdba4236407f19d9370096a1367203c1a4e06b10`  
		Last Modified: Fri, 10 May 2019 13:14:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f479535e9c957c0c5e6962dabd629dbffef14e1865b67a85ce67b28053a469`  
		Last Modified: Fri, 10 May 2019 13:14:29 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abfcdea6424ba469e7da3881ad480040b9991616a64d055d550bea197a5edc89`  
		Last Modified: Fri, 10 May 2019 13:14:29 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db07e2cd60d11eb7b9eac4b19938c03d9229fffd682755b7aa2968dd6b2dd17d`  
		Last Modified: Fri, 10 May 2019 13:14:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
