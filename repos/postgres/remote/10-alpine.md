## `postgres:10-alpine`

```console
$ docker pull postgres@sha256:dcda1ca53623e11f02c2210b726126f9baff504a21c6ebc8e4d3382751f6e8dc
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
$ docker pull postgres@sha256:0b5031e82f83e04b92698c6a91a4e48095c83f5b9fbbae7685ee84d4d0475466
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 MB (27598098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72ef7d0071c015d5a242d952a259ef23ff5d4014a75200fc9c566b1169e7cb86`
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
# Tue, 09 Apr 2019 23:44:47 GMT
ENV PG_MAJOR=10
# Fri, 10 May 2019 01:31:24 GMT
ENV PG_VERSION=10.8
# Fri, 10 May 2019 01:31:24 GMT
ENV PG_SHA256=b198c2aadf1d68308127a0f5b51dbe798958ffe60dd999134f6495c489afcd5d
# Fri, 10 May 2019 01:34:10 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 01:34:11 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:34:12 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:34:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:34:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:34:13 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:34:13 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 01:34:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:34:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:34:14 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:34:14 GMT
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
	-	`sha256:99227acb3655cac410c85bacf1c58205630d93840933b1405732e0da244df288`  
		Last Modified: Fri, 10 May 2019 01:45:28 GMT  
		Size: 24.8 MB (24830739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d95f4aeaf4310670e8b6c7813da48311e0b980d904afae4657f4596bd9404b3`  
		Last Modified: Fri, 10 May 2019 01:45:22 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e429e4116e171e2e13e5bc2973b5eb4c089ce02dae36c38ea9d4bf3c84e53b`  
		Last Modified: Fri, 10 May 2019 01:45:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9796534cfdf3170cd4334727bc9913e2f3e2c00b2b5fd84641329e8978bc6eba`  
		Last Modified: Fri, 10 May 2019 01:45:22 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6ee173bbf8f8e3b36ca1fa37a719ebce16391be27ecb7423005798b5637c11`  
		Last Modified: Fri, 10 May 2019 01:45:22 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceecd59b4255dc63bae9cdb86b2aa0ad1f35d4ed71704cdda904503ae1678a9e`  
		Last Modified: Fri, 10 May 2019 01:45:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:d7d89cad851f662b48fe9566dc71364db99509d06e7d82c5e5ce4013ee9f4cdf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26666975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ddc5fe36998583463c231e40175c399106be4bc25677d8b97c0c7bbcb461799`
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
# Wed, 10 Apr 2019 09:05:36 GMT
ENV PG_MAJOR=10
# Fri, 10 May 2019 07:55:06 GMT
ENV PG_VERSION=10.8
# Fri, 10 May 2019 07:55:06 GMT
ENV PG_SHA256=b198c2aadf1d68308127a0f5b51dbe798958ffe60dd999134f6495c489afcd5d
# Fri, 10 May 2019 07:56:53 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 07:56:55 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 07:56:56 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 07:56:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 07:56:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 07:56:58 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 07:56:58 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 07:57:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 07:57:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 07:57:00 GMT
EXPOSE 5432
# Fri, 10 May 2019 07:57:01 GMT
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
	-	`sha256:af38756eaf2833ffc52cf8f1c4d499ec2e6f3794cdc53e67ead3b4d965011307`  
		Last Modified: Fri, 10 May 2019 08:03:28 GMT  
		Size: 24.1 MB (24113049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ceda9ada72ae2e61c79affce0ab6558fbe000aa62f97cd00fd83094c4fc60b2`  
		Last Modified: Fri, 10 May 2019 08:03:19 GMT  
		Size: 7.3 KB (7299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f054221e045061339d12ad4446bfb06f971d26be1ce562bff5a36f7724349c7f`  
		Last Modified: Fri, 10 May 2019 08:03:19 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fcd203b9989ef3edf2510312749314e572db55d9d95ea67fe7af30f91b76b40`  
		Last Modified: Fri, 10 May 2019 08:03:19 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06769639e996c6901bd7a2726ff697d3b959d319c6007ea47455baaf68f72a5f`  
		Last Modified: Fri, 10 May 2019 08:03:19 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f59aff430ff77aef98fca03e4e9a768c4fc936beaa6fbed1a6c1593f42d98c`  
		Last Modified: Fri, 10 May 2019 08:03:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; arm variant v7

```console
$ docker pull postgres@sha256:4e991e27d13088ee630f99cf8727a145250edc6e62cf7d9639a54613762986db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25651562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2052b9c97ad7f54c71b482f6e08b1cd89769f4038d17f0449971c9af1a419bb5`
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
# Wed, 10 Apr 2019 12:48:35 GMT
ENV PG_MAJOR=10
# Fri, 10 May 2019 12:44:29 GMT
ENV PG_VERSION=10.8
# Fri, 10 May 2019 12:44:29 GMT
ENV PG_SHA256=b198c2aadf1d68308127a0f5b51dbe798958ffe60dd999134f6495c489afcd5d
# Fri, 10 May 2019 12:46:27 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 12:46:29 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 12:46:30 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 12:46:31 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 12:46:32 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 12:46:32 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 12:46:33 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 12:46:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 12:46:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 12:46:35 GMT
EXPOSE 5432
# Fri, 10 May 2019 12:46:35 GMT
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
	-	`sha256:67d43a64ca5677e1e51339713a9383a232e7cfa7dfc9f68ef2a15a9d42935cc3`  
		Last Modified: Fri, 10 May 2019 13:42:53 GMT  
		Size: 23.3 MB (23290323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4962037f044105a7359ff7c6f48505615492266cc1cd1a5949812a66a491d79`  
		Last Modified: Fri, 10 May 2019 13:42:45 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279e4254f180635973a2d0aee33924971d3939daf8c9f5acaef0ae361fa816dd`  
		Last Modified: Fri, 10 May 2019 13:42:45 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fa02376ce7fc9c4af4f883ab3df9ed6f6890d7a632e07c519c4e9fa3dfb584`  
		Last Modified: Fri, 10 May 2019 13:42:45 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dedb98cb96ae4933af3fcdda385ae70a283d1d85cdfd3d480a033cba0b44fd5`  
		Last Modified: Fri, 10 May 2019 13:42:45 GMT  
		Size: 2.4 KB (2370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73601a820485f2b099bb354b47131357416dfd1b503d375098571e1032eb9a0`  
		Last Modified: Fri, 10 May 2019 13:42:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:f92655f85481401cf6918a879459b2af4daeba77ec5b2115b336b619a14c9c04
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27460926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76f7ec5cc4b192518405d88f3e7454bc286afe108e53b5e1f92ab5d9184c6045`
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
# Wed, 10 Apr 2019 10:31:55 GMT
ENV PG_MAJOR=10
# Fri, 10 May 2019 10:50:18 GMT
ENV PG_VERSION=10.8
# Fri, 10 May 2019 10:50:19 GMT
ENV PG_SHA256=b198c2aadf1d68308127a0f5b51dbe798958ffe60dd999134f6495c489afcd5d
# Fri, 10 May 2019 10:57:30 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 10:57:33 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 10:57:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 10:57:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 10:57:40 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 10:57:41 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 10:57:42 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 10:57:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 10:57:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 10:57:45 GMT
EXPOSE 5432
# Fri, 10 May 2019 10:57:46 GMT
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
	-	`sha256:b27a4b4f94efdf6c3f6493a53f3d74df2b399fa07aa96fa4002c99aaba5db21b`  
		Last Modified: Fri, 10 May 2019 12:52:15 GMT  
		Size: 24.8 MB (24761795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7054705e5d5b72d2b53f78682449dba241dffc3b5fcfb6a75df6d5e405964bbd`  
		Last Modified: Fri, 10 May 2019 12:52:04 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce543bcea2b34051406e415b6ca884e9c9e8ffd30403e875c7c373015b331ab3`  
		Last Modified: Fri, 10 May 2019 12:52:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e353462c422a2be58dfd1dd9b7cb05e4f26f5f08d6efdb1495fb38d25eaa5b8c`  
		Last Modified: Fri, 10 May 2019 12:52:04 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e933d61439be475372daf08316c4fa60e80744e456312f4450a12e6c4c23a986`  
		Last Modified: Fri, 10 May 2019 12:52:04 GMT  
		Size: 2.4 KB (2372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5d521a2f75eba249bacca48829bc30635b4d3dcc0d49b81af8ca54dc406da9`  
		Last Modified: Fri, 10 May 2019 12:52:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; 386

```console
$ docker pull postgres@sha256:2cbb289d4dce96d113c153dc9985ac99009ca9590bd2c56a6ad2eea6d507a5cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28426018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca1c75a240ea51cc63973e3b2fbd7356a662731c290e8d52a7f6e3b26933fd81`
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
# Wed, 10 Apr 2019 14:31:34 GMT
ENV PG_MAJOR=10
# Fri, 10 May 2019 11:07:28 GMT
ENV PG_VERSION=10.8
# Fri, 10 May 2019 11:07:28 GMT
ENV PG_SHA256=b198c2aadf1d68308127a0f5b51dbe798958ffe60dd999134f6495c489afcd5d
# Fri, 10 May 2019 11:10:35 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 11:10:36 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:10:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:10:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:10:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:10:38 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:10:38 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 11:10:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:10:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:10:39 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:10:39 GMT
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
	-	`sha256:bc92cac12d7daef7e8a8a66bdefa5bc964fc03e691ced285ad216a5e3f688f54`  
		Last Modified: Fri, 10 May 2019 11:23:16 GMT  
		Size: 25.7 MB (25663502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5b685896b751b975f44d3d2d246b7088318a6d248fca53caad376b67ec3941`  
		Last Modified: Fri, 10 May 2019 11:23:08 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534beb8aa49ff2065257bb6c2748e9115e05637091bbb6901ba56fbcffd890eb`  
		Last Modified: Fri, 10 May 2019 11:23:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f743d5101c9cd673cf00f7242c3379becbc248703417daa0951e22e4aae5d64`  
		Last Modified: Fri, 10 May 2019 11:23:08 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b38680b8151bc051d2f7c9981ce64176fdd6fa3d1dc3681c0dbeeeab19f076`  
		Last Modified: Fri, 10 May 2019 11:23:08 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4dfc66430d3b6801a8c050402fed1af6de4daf25dba191085dd3c28ad6d95d9`  
		Last Modified: Fri, 10 May 2019 11:23:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:42d65b50f2571e0e61f7d717b468ac7d83c37a49e0c9d1f4e66ca4cca1698c4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.9 MB (28877474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0545e5ff541fe94aec0927db5dc7cffe1e786d1e066926797ccef052df7344e9`
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
# Wed, 10 Apr 2019 10:44:52 GMT
ENV PG_MAJOR=10
# Fri, 10 May 2019 09:33:31 GMT
ENV PG_VERSION=10.8
# Fri, 10 May 2019 09:33:37 GMT
ENV PG_SHA256=b198c2aadf1d68308127a0f5b51dbe798958ffe60dd999134f6495c489afcd5d
# Fri, 10 May 2019 09:36:58 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 09:37:08 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:37:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:37:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:37:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:37:29 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:37:30 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 09:37:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:37:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:37:44 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:37:48 GMT
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
	-	`sha256:c662a82fda466abc0f2c89471ec0c00b04c0810151c18d826328705573f74fd1`  
		Last Modified: Fri, 10 May 2019 10:18:48 GMT  
		Size: 26.1 MB (26085975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975898739bc321a624d7882eca8aec5ad964e0d0d722924da335f34c79514613`  
		Last Modified: Fri, 10 May 2019 10:18:10 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2deb9566f3d3eed31de3942f237eb9f284fec5d41256140ca681177f7caded4`  
		Last Modified: Fri, 10 May 2019 10:18:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c9d5aa6392b713d140a60ffba5dccac72baf7030d664176def438d690af60b`  
		Last Modified: Fri, 10 May 2019 10:18:10 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea71710e6017eb2b159cd4367bb16b8b7e4ed0c12159456b9395b760d84f739`  
		Last Modified: Fri, 10 May 2019 10:18:10 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e273d4fa31b7937d20f34a55215691c5aad37bb0633a120b9471a2cc8408ac`  
		Last Modified: Fri, 10 May 2019 10:18:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:7b58e6fba698cab67dfe6aca85fe326a007021801fe1a2c9f296b664b7ff54a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27382614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:874ff6425497ac0e908b010e5a41b22c4c66fd76390bea6dee18018721e92d16`
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
# Wed, 10 Apr 2019 14:34:48 GMT
ENV PG_MAJOR=10
# Fri, 10 May 2019 12:31:17 GMT
ENV PG_VERSION=10.8
# Fri, 10 May 2019 12:31:18 GMT
ENV PG_SHA256=b198c2aadf1d68308127a0f5b51dbe798958ffe60dd999134f6495c489afcd5d
# Fri, 10 May 2019 12:35:01 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 12:35:03 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 12:35:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 12:35:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 12:35:05 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 12:35:05 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 12:35:05 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 12:35:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 12:35:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 12:35:07 GMT
EXPOSE 5432
# Fri, 10 May 2019 12:35:07 GMT
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
	-	`sha256:92f9e4754680e3cfecd326f71e9bc6b0546bc876c56221efcc7c69571f468464`  
		Last Modified: Fri, 10 May 2019 13:15:05 GMT  
		Size: 24.8 MB (24828938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913f0ef5501049894d3a2a0ee51c3784634206c64279ca62800cc7f73b885c3f`  
		Last Modified: Fri, 10 May 2019 13:14:59 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f452cd370612cf34577e9580dafdf454c23923a302ce70a779ca70bb29cd88b`  
		Last Modified: Fri, 10 May 2019 13:14:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596a2b1f579e4ae11020393427f061b826ae8aa2e6a82d10e30b5a2bdcfec878`  
		Last Modified: Fri, 10 May 2019 13:14:59 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd694125ba270c1a7246c5d0919293d3e83eba50449ef9748e495c2e7dc1640`  
		Last Modified: Fri, 10 May 2019 13:14:59 GMT  
		Size: 2.4 KB (2374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7e45f134122900451e5aed586c940dc12202547dc09d2ea3baa5576275e20d`  
		Last Modified: Fri, 10 May 2019 13:14:59 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
