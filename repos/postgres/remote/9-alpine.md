## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:fafdaa5627dad9f12479d96b2daf5b3bc3101437245423ce80ec1145e3cfb2d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:229d366fa4d57e4efc48208c6dab7d4cfa48d7065e0a52761e2bcf16f2f72b5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15346298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1383785c4ecda33df296bcb6b033b30d50c19c5b1392ac1dea3b6191f41cb2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Sun, 18 Feb 2018 02:31:30 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sun, 18 Feb 2018 02:31:31 GMT
ENV LANG=en_US.utf8
# Sun, 18 Feb 2018 02:31:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Apr 2018 06:22:09 GMT
ENV PG_MAJOR=9.6
# Mon, 14 May 2018 23:32:27 GMT
ENV PG_VERSION=9.6.9
# Mon, 14 May 2018 23:32:28 GMT
ENV PG_SHA256=b97952e3af02dc1e446f9c4188ff53021cc0eed7ed96f254ae6daf968c443e2e
# Mon, 14 May 2018 23:34:35 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 14 May 2018 23:34:36 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 14 May 2018 23:34:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 14 May 2018 23:34:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 14 May 2018 23:34:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 14 May 2018 23:34:38 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 14 May 2018 23:34:38 GMT
COPY file:8bcae898f0d79e82fbb8bef4f9c4b97c824503b3b883fcd819af98327a81e306 in /usr/local/bin/ 
# Mon, 14 May 2018 23:34:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 14 May 2018 23:34:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 14 May 2018 23:34:39 GMT
EXPOSE 5432/tcp
# Mon, 14 May 2018 23:34:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a503b44e1ce09191fd553fe4a22ab09d16dfd3164c7d0f59c7c1a54a85545fa9`  
		Last Modified: Sun, 18 Feb 2018 02:35:11 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2117067130936383676d224fd32133e2e2e9be9847a8288271d021edede1e2b7`  
		Last Modified: Sun, 18 Feb 2018 02:35:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00c3ed125566a2c619db1aeb09d6bd65d2a99007b4b1ebb245ce096cb6888dc`  
		Last Modified: Mon, 14 May 2018 23:45:01 GMT  
		Size: 13.3 MB (13271214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434f0ac3db53f5ad34b19725304b8abc816be680cd647edb88fea075c64b0986`  
		Last Modified: Mon, 14 May 2018 23:44:55 GMT  
		Size: 7.1 KB (7071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72a417c8d8c2c1c718d723a87eb73238b43570a15bb2f7aed4e47a26201f963`  
		Last Modified: Mon, 14 May 2018 23:44:55 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17163e3ebed1d0b3790bdc03a13357c8d5be842613756ccdd5ddb0e88c66d5e`  
		Last Modified: Mon, 14 May 2018 23:44:56 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b03a2e39a239ca789a6730e1284fe70aba520240fb407006c61698ba68510`  
		Last Modified: Mon, 14 May 2018 23:44:56 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7970055eab9413814ce95769c4d79521b544e2949348f255d4b4a39fb281fc59`  
		Last Modified: Mon, 14 May 2018 23:44:57 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
