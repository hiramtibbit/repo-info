## `postgres:10-alpine`

```console
$ docker pull postgres@sha256:f345cd3726be9b45e63153b1a708c3cadd2fece173bafbae70867caab342d7d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:10-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:72088e4ddf133a8d000ec1b69a45e9410d777eff88c562d19ac8e8029c4bdfcd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (16016692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9406c495d68990992ff4cc9edc58e2d343f170c04e86c7d3a2f1f000c2ce805f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:47:50 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 11 Jul 2018 00:47:50 GMT
ENV LANG=en_US.utf8
# Wed, 11 Jul 2018 00:47:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jul 2018 00:50:58 GMT
ENV PG_MAJOR=10
# Wed, 11 Jul 2018 00:50:58 GMT
ENV PG_VERSION=10.4
# Wed, 11 Jul 2018 00:50:58 GMT
ENV PG_SHA256=1b60812310bd5756c62d93a9f93de8c28ea63b0df254f428cd1cf1a4d9020048
# Wed, 11 Jul 2018 00:53:34 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 11 Jul 2018 00:53:34 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 11 Jul 2018 00:53:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 11 Jul 2018 00:53:47 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 11 Jul 2018 00:53:48 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 11 Jul 2018 00:53:48 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 11 Jul 2018 00:53:48 GMT
COPY file:ea83254240307acb41cff4ba67980cb25f52871869af6e6c49a729ba283f82ed in /usr/local/bin/ 
# Wed, 11 Jul 2018 00:53:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 11 Jul 2018 00:53:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 00:53:49 GMT
EXPOSE 5432/tcp
# Wed, 11 Jul 2018 00:53:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9adb8cff82fca4ee56d72d6f8084c02ba5ef008039979a1379e9162703cc6`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8817b9e00daac6d86d105d480aa5c8ef78b76903e15283154197774f718e7e`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d8b58c44e84a974e354fcae3818afe6777bfa6253144e070f5bad3408a166c`  
		Last Modified: Wed, 11 Jul 2018 01:05:55 GMT  
		Size: 13.8 MB (13799964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5be2367a0a170825f28654a4de7b98bd0e5e376fbb15bcbd1b254a859dbc0d`  
		Last Modified: Wed, 11 Jul 2018 01:05:47 GMT  
		Size: 7.3 KB (7269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b2adb9d3de2b18ece6d94b53b75d28977c060b4d8ca3f17d257e8e0090d912`  
		Last Modified: Wed, 11 Jul 2018 01:05:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3bd5d9807c1a6bb4a625b407121adb74128c7d2c5a694585d45e9d8a79099c`  
		Last Modified: Wed, 11 Jul 2018 01:05:47 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4059be72f462c8b554ce720eb018983837d14afd05763bbe77159633e2d7c4e`  
		Last Modified: Wed, 11 Jul 2018 01:05:47 GMT  
		Size: 2.2 KB (2232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75b44684d906f78b76c52ef2249c1bece9458ceaad0f58f39be14d751e11b49`  
		Last Modified: Wed, 11 Jul 2018 01:05:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:7ef56e1e40905000c29088d172176433f1b7eade0c639b041fc64616d2c8fe38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14283022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e5d45f8a027e9d2f57aef2aa2900f2a02bfc5f597ac25fd3f23a07a4f2fff2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Fri, 27 Apr 2018 07:49:28 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Fri, 27 Apr 2018 07:49:29 GMT
ENV LANG=en_US.utf8
# Fri, 27 Apr 2018 07:49:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Apr 2018 07:49:33 GMT
ENV PG_MAJOR=10
# Tue, 15 May 2018 07:49:24 GMT
ENV PG_VERSION=10.4
# Tue, 15 May 2018 07:49:25 GMT
ENV PG_SHA256=1b60812310bd5756c62d93a9f93de8c28ea63b0df254f428cd1cf1a4d9020048
# Tue, 15 May 2018 08:31:06 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 15 May 2018 08:31:11 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 15 May 2018 08:31:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 15 May 2018 08:31:17 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 15 May 2018 08:31:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 15 May 2018 08:31:22 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 09 Jun 2018 08:43:21 GMT
COPY file:ea83254240307acb41cff4ba67980cb25f52871869af6e6c49a729ba283f82ed in /usr/local/bin/ 
# Sat, 09 Jun 2018 08:43:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 09 Jun 2018 08:43:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 08:43:27 GMT
EXPOSE 5432/tcp
# Sat, 09 Jun 2018 08:43:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:877dbad78c12bf47aad365f9937f5a115590d5d9ea750adbeb98afd5e8a0ff05`  
		Last Modified: Fri, 27 Apr 2018 10:47:00 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee30b812507d677230132ab2fd9b2bcbb461d82966947165c406c0391a6dba8e`  
		Last Modified: Fri, 27 Apr 2018 10:46:59 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c1d3b453c1ac5d832171a5764eb2cdea7b1476f9c8f7a73ba2e960d189ec6b`  
		Last Modified: Tue, 15 May 2018 10:35:13 GMT  
		Size: 12.2 MB (12234227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb80a8cd8dee988b62af16a1198a52c0b9694f175046dc774793da94c2d2bef4`  
		Last Modified: Tue, 15 May 2018 10:34:51 GMT  
		Size: 7.3 KB (7274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca66824852e920a7cfe9a8dd55bea4affdc892b71babbc553e81476647972e14`  
		Last Modified: Tue, 15 May 2018 10:34:50 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddebe59ff90df07f25aa16f9978c5749af04645222961252b7239429dc506d17`  
		Last Modified: Tue, 15 May 2018 10:34:53 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0bfb7f2379165cd88bb1616cf1423fe5c1e687e2947f10e8a340c8cbd4dd15`  
		Last Modified: Sat, 09 Jun 2018 08:44:45 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5046543a25f0ca96956279bfe9096dbf6cc211b4bf70f6713c2c14f18d9cea11`  
		Last Modified: Sat, 09 Jun 2018 08:44:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:1cba89c2a51f42b430f76705443fbdf41551f6c13ac4983db61621a04d2d271f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14661968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbbc8e0df8ff609ae03d0ba4f3d7dda51f83efe9d26a369432a436681f6ef109`
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
# Wed, 11 Jul 2018 09:03:33 GMT
ENV PG_MAJOR=10
# Wed, 11 Jul 2018 09:03:34 GMT
ENV PG_VERSION=10.4
# Wed, 11 Jul 2018 09:03:34 GMT
ENV PG_SHA256=1b60812310bd5756c62d93a9f93de8c28ea63b0df254f428cd1cf1a4d9020048
# Wed, 11 Jul 2018 09:07:56 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 11 Jul 2018 09:07:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 11 Jul 2018 09:08:00 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 11 Jul 2018 09:08:01 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 11 Jul 2018 09:08:02 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 11 Jul 2018 09:08:03 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 11 Jul 2018 09:08:04 GMT
COPY file:ea83254240307acb41cff4ba67980cb25f52871869af6e6c49a729ba283f82ed in /usr/local/bin/ 
# Wed, 11 Jul 2018 09:08:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 11 Jul 2018 09:08:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 09:08:07 GMT
EXPOSE 5432/tcp
# Wed, 11 Jul 2018 09:08:08 GMT
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
	-	`sha256:a30ab8f0c46a514564d84f0bf942533404d3b5357a330923fc4f97a1a7314310`  
		Last Modified: Wed, 11 Jul 2018 09:27:23 GMT  
		Size: 12.6 MB (12552092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7799045b913ee9f157b7752e79f8d200b4baa1eaa227a05399fab194e2a3a8`  
		Last Modified: Wed, 11 Jul 2018 09:27:16 GMT  
		Size: 7.3 KB (7271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e5a35a1f90ee11e523f0e249279439d6bbe22581ad7d63d0cde7199f9132fe`  
		Last Modified: Wed, 11 Jul 2018 09:27:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a1ce6157e2f443a6d797650bf379392b22cfcb5beed02eaf74581c2901d7297`  
		Last Modified: Wed, 11 Jul 2018 09:27:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad2d22b9c03c8b82a59279a23f4d481340a7e2d59655fcdbca8c29615af449e`  
		Last Modified: Wed, 11 Jul 2018 09:27:17 GMT  
		Size: 2.2 KB (2232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c569ffa887e1cd522514b9ef4e0f660183340ef8379dc076995e405d7f0f57`  
		Last Modified: Wed, 11 Jul 2018 09:27:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; 386

```console
$ docker pull postgres@sha256:f69c0a19316f284baf19fa996fc1b6d057a6c1824abcb5d2336b984535c6ae3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.6 MB (15550343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af0d8f7fa3a979ee7b627f093457e23230f32e97cec667d19f879df0e458dc0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 11:56:42 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Fri, 01 Jun 2018 11:56:42 GMT
ENV LANG=en_US.utf8
# Fri, 01 Jun 2018 11:56:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 01 Jun 2018 12:00:23 GMT
ENV PG_MAJOR=10
# Fri, 01 Jun 2018 12:00:24 GMT
ENV PG_VERSION=10.4
# Fri, 01 Jun 2018 12:00:24 GMT
ENV PG_SHA256=1b60812310bd5756c62d93a9f93de8c28ea63b0df254f428cd1cf1a4d9020048
# Fri, 01 Jun 2018 12:03:27 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 01 Jun 2018 12:03:28 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 01 Jun 2018 12:03:29 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 01 Jun 2018 12:03:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 01 Jun 2018 12:03:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 01 Jun 2018 12:03:30 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 09 Jun 2018 10:57:12 GMT
COPY file:ea83254240307acb41cff4ba67980cb25f52871869af6e6c49a729ba283f82ed in /usr/local/bin/ 
# Sat, 09 Jun 2018 10:57:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 09 Jun 2018 10:57:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 10:57:13 GMT
EXPOSE 5432/tcp
# Sat, 09 Jun 2018 10:57:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6e78197eedf00065e46ab19bb88744ee13b3871807752963ce9b72519c52d0`  
		Last Modified: Fri, 01 Jun 2018 12:16:03 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3688eaec326afb5301bafb705a61abb9e30a82fd5a34bef77024d5bd9416ebc2`  
		Last Modified: Fri, 01 Jun 2018 12:16:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:943c5b544006b7bb873d71cdfec2d9fbcd964c116a53c9a79b1ea83d4055162a`  
		Last Modified: Fri, 01 Jun 2018 12:16:41 GMT  
		Size: 13.4 MB (13413763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712db376ad5eeeb15ed8513b3d79247ba1bf4842ed5771e1de41f92de0844245`  
		Last Modified: Fri, 01 Jun 2018 12:16:33 GMT  
		Size: 7.3 KB (7269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd6a526892dd24e8f638ae4a31ab0937d56d5559875ce4ccaf78d08a6e91493`  
		Last Modified: Fri, 01 Jun 2018 12:16:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ab6c7740c33f222ac02f48f5cb78bc7481938f8b2b51cd8f74bf53251ecbad`  
		Last Modified: Fri, 01 Jun 2018 12:16:33 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f098b17395edd01e55eae74383d32fa61f7245d5431a031645bc2ca8cda4fadd`  
		Last Modified: Sat, 09 Jun 2018 10:59:49 GMT  
		Size: 2.2 KB (2232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3fb93dd524e48cf78cd989a97ea2860a6580cf2152142d176744036927702d`  
		Last Modified: Sat, 09 Jun 2018 10:59:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:d7c99bc75ac14e48351cf2651f7f128c1d35bfb4944acb71ab3caa17f90201e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14638417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc324c5d3d6e9a380acb9a0b004c9b5d85c17ea845ef03ec4c01f3fd32b70773`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Sat, 17 Feb 2018 23:01:41 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 17 Feb 2018 23:01:43 GMT
ENV LANG=en_US.utf8
# Sat, 17 Feb 2018 23:01:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 23:01:48 GMT
ENV PG_MAJOR=10
# Tue, 15 May 2018 08:33:50 GMT
ENV PG_VERSION=10.4
# Tue, 15 May 2018 08:33:52 GMT
ENV PG_SHA256=1b60812310bd5756c62d93a9f93de8c28ea63b0df254f428cd1cf1a4d9020048
# Tue, 15 May 2018 08:36:19 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 15 May 2018 08:36:22 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 15 May 2018 08:36:23 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 15 May 2018 08:36:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 15 May 2018 08:36:27 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 15 May 2018 08:36:29 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 09 Jun 2018 08:40:43 GMT
COPY file:ea83254240307acb41cff4ba67980cb25f52871869af6e6c49a729ba283f82ed in /usr/local/bin/ 
# Sat, 09 Jun 2018 08:40:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 09 Jun 2018 08:40:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 08:40:47 GMT
EXPOSE 5432/tcp
# Sat, 09 Jun 2018 08:40:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a489c2288bce888c6fac93b540da6d11957e1b4920137f6f06f21ac757708c5`  
		Last Modified: Sat, 17 Feb 2018 23:05:42 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40f964dcf4eb7ac5150e2a57f549a4d89d6780315f8dbc2960a7b3de7697e08`  
		Last Modified: Sat, 17 Feb 2018 23:05:41 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89dc1d00868d117cee04b49484df6dfa91dc8317a76c8379a7bb1ac45fc37d64`  
		Last Modified: Tue, 15 May 2018 08:59:27 GMT  
		Size: 12.5 MB (12546454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df912ac7f3348d670229bbd1a4ca7d2e1b395e988629f213c01949e45175e022`  
		Last Modified: Tue, 15 May 2018 08:59:17 GMT  
		Size: 7.3 KB (7273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2f41f13ccf92fba3ce23c531cbd173cf29d2b4c6eaf14d4813863645a0590d`  
		Last Modified: Tue, 15 May 2018 08:59:17 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d481b11cdb90b0184023fe0cea76360eaa33b0da9bc78913feb1e8ff25a8982d`  
		Last Modified: Tue, 15 May 2018 08:59:17 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7010463af4dd84837656ed19ac6e06ee333e8d7fc6dbe6b138ec95dc69bf55`  
		Last Modified: Sat, 09 Jun 2018 08:43:33 GMT  
		Size: 2.2 KB (2237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9cfcd7f744816193a587d76c7a7bb88152aa22ecd4a252625b784107bde52f`  
		Last Modified: Sat, 09 Jun 2018 08:43:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:02a502cff50242571458aef9758b7616c66f79ae0d713adba9509fe7e977ae96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14999714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:772ea26c7d5e8f3c50cb3e3d1d5004633588676c7f54a5b21c968a9686e74b17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 18 Feb 2018 10:25:35 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sun, 18 Feb 2018 10:25:35 GMT
ENV LANG=en_US.utf8
# Sun, 18 Feb 2018 10:25:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sun, 18 Feb 2018 10:25:36 GMT
ENV PG_MAJOR=10
# Tue, 15 May 2018 12:06:28 GMT
ENV PG_VERSION=10.4
# Tue, 15 May 2018 12:06:28 GMT
ENV PG_SHA256=1b60812310bd5756c62d93a9f93de8c28ea63b0df254f428cd1cf1a4d9020048
# Tue, 15 May 2018 12:09:09 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 15 May 2018 12:09:10 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 15 May 2018 12:09:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 15 May 2018 12:09:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 15 May 2018 12:09:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 15 May 2018 12:09:12 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 09 Jun 2018 11:55:42 GMT
COPY file:ea83254240307acb41cff4ba67980cb25f52871869af6e6c49a729ba283f82ed in /usr/local/bin/ 
# Sat, 09 Jun 2018 11:55:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 09 Jun 2018 11:55:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 11:55:44 GMT
EXPOSE 5432/tcp
# Sat, 09 Jun 2018 11:55:44 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2901b2cb7072f4813c9b7ac67da7313fb2a8decdce071e54219eca565c3f9dc`  
		Last Modified: Sun, 18 Feb 2018 10:28:26 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bba4f50d1c4a54c9b128d41df2bd434e0840a25d049f44eeb5827254b2f0e4a`  
		Last Modified: Sun, 18 Feb 2018 10:28:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e478fa3809ce6aa0e17ec1bfe3be446d8e9b16bc711bda51fad9b25b241134a`  
		Last Modified: Tue, 15 May 2018 13:16:22 GMT  
		Size: 12.8 MB (12804126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd6a31f86a13df305e487c621cf22989cf67334c3a87f043a942ff7659b7514`  
		Last Modified: Tue, 15 May 2018 13:16:16 GMT  
		Size: 7.3 KB (7269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ea97b83581d60543bfa46057dcc6f4fabbf0732917b89587d2bb4976394009`  
		Last Modified: Tue, 15 May 2018 13:16:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebda61234627ceace21b838f948f7763cd7d5a5e05631f2eadbb9b7e683c5e2`  
		Last Modified: Tue, 15 May 2018 13:16:16 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a157d8d3eb6bdb8c364b29c25596fd8e9b0f85e34483678ada5ecc8405cec16a`  
		Last Modified: Sat, 09 Jun 2018 11:57:10 GMT  
		Size: 2.2 KB (2233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9692fc3318825563f2ee8144b9be29223fd2b91add0c7f57e5d7346a2dd4c8`  
		Last Modified: Sat, 09 Jun 2018 11:57:10 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
