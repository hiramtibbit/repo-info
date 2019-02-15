## `postgres:10-alpine`

```console
$ docker pull postgres@sha256:52a0e01f339cbecdc4b16db81c7e6c4a1369ac01256b3504f5ccaebc0aa04020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `postgres:10-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:465fe056e8230192a3deb5075ec6b1732fb62a66c1581a0cd12771d8ce132364
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 MB (27583768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a50de95fb964990a996d40231f46e0f7093d797a9d2e7b8d64bb43627408a91a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:34:28 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 05 Feb 2019 20:34:28 GMT
ENV LANG=en_US.utf8
# Tue, 05 Feb 2019 20:34:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Feb 2019 20:37:43 GMT
ENV PG_MAJOR=10
# Fri, 15 Feb 2019 01:24:39 GMT
ENV PG_VERSION=10.7
# Fri, 15 Feb 2019 01:24:39 GMT
ENV PG_SHA256=bfed1065380c1bba927bfe51f23168471373f26e3324cbad859269cc32733ede
# Fri, 15 Feb 2019 01:27:45 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 15 Feb 2019 01:27:46 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 01:27:47 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 01:27:47 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 01:27:48 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 01:27:48 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 01:27:48 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 15 Feb 2019 01:27:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 01:27:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 01:27:49 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 01:27:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea5fa93d0256a5c13fa2926f47a75d64ba34cc9f224ef3d9190d71d97e6f857`  
		Last Modified: Tue, 05 Feb 2019 20:51:10 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146f5c88cacb6c9f29e44a0ebdf2dc77bfddd2fb1695a97bd73253795c69af19`  
		Last Modified: Tue, 05 Feb 2019 20:51:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:990f1b2d7aa5b5d1b95b71e6662ba4c9bcd795ed021777abf7af58525a530e98`  
		Last Modified: Fri, 15 Feb 2019 01:39:35 GMT  
		Size: 24.8 MB (24818680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa5be1a481dec7f06bd66bf592e41be6636bd7b6edbf4040a1b73cf4df2836a`  
		Last Modified: Fri, 15 Feb 2019 01:39:30 GMT  
		Size: 7.3 KB (7306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd93505a15c85f8b499724adfe4b87cd05050390085d7657cfcaad11f4a81b5`  
		Last Modified: Fri, 15 Feb 2019 01:39:30 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0caf45bd1575502d237522b026dd275fa454955a69ef5dfffa51af2a99a5c36`  
		Last Modified: Fri, 15 Feb 2019 01:39:30 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d5a426f3c5ffe3d866c3604db6d52b28a957a42ed6adead0ad7e0de4a7e87b`  
		Last Modified: Fri, 15 Feb 2019 01:39:30 GMT  
		Size: 2.4 KB (2369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f01a39a8a5352785f6672bea7eb0e917080fe40f8fde3f1a1f0e3d26ee79f3`  
		Last Modified: Fri, 15 Feb 2019 01:39:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:6719529ebe632c191b02cddbbeb6b9af16ca8fc7264d93c14d81b6a6613570b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26654156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419a9c225103c1cd0d1c01db2c4053fac2ea4833c6210ff89c01ef59454c4949`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:14:36 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 06 Feb 2019 09:14:36 GMT
ENV LANG=en_US.utf8
# Wed, 06 Feb 2019 09:14:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 09:16:50 GMT
ENV PG_MAJOR=10
# Fri, 15 Feb 2019 08:58:29 GMT
ENV PG_VERSION=10.7
# Fri, 15 Feb 2019 08:58:30 GMT
ENV PG_SHA256=bfed1065380c1bba927bfe51f23168471373f26e3324cbad859269cc32733ede
# Fri, 15 Feb 2019 09:00:25 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 15 Feb 2019 09:00:27 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 09:00:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 09:00:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 09:00:30 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 09:00:30 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 09:00:31 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 15 Feb 2019 09:00:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 09:00:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 09:00:33 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 09:00:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c77ba51beefa9a22abd4e2e35103135e2312602e42dd7042c890fbc49e72ca`  
		Last Modified: Wed, 06 Feb 2019 09:25:27 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a6f03aaddc3ca07e447cc3be860e209752e90c6fcfc21931029262a590853d`  
		Last Modified: Wed, 06 Feb 2019 09:25:27 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9e02668e1af08d7ed598bc8ac92460c73711f80640dfab6e38e18d008eb57d`  
		Last Modified: Fri, 15 Feb 2019 09:07:01 GMT  
		Size: 24.1 MB (24102748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afabcd99c960e32e5e8092adcdd2c9b2cfa14960469c8cf0429757cba44de35`  
		Last Modified: Fri, 15 Feb 2019 09:06:51 GMT  
		Size: 7.3 KB (7306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68ebcce26bba9671d789b81d5457179dc4ff58903a60fdfaaf8870ae14fe01c`  
		Last Modified: Fri, 15 Feb 2019 09:06:51 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa66dc676c97fe8775aa2d5e3b2df2920bc6203f4e1a4784ee4b3199527bece`  
		Last Modified: Fri, 15 Feb 2019 09:06:51 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03edc8985c66bea6b6da6d332045d817867f6576921bb32b74d669f6a43b2cf3`  
		Last Modified: Fri, 15 Feb 2019 09:06:51 GMT  
		Size: 2.4 KB (2369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f583b149986894e1b64b0987f7ba9e98c8fdbb51e209ac2e44c572668a8529d2`  
		Last Modified: Fri, 15 Feb 2019 09:06:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
