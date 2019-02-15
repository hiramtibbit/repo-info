## `postgres:11-alpine`

```console
$ docker pull postgres@sha256:936b12d33b60de192af5c059155689879dd909ab8fdf2ac9ace36dca657363e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `postgres:11-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:aebfb480dece91105a99834ace2ebdda51845524a56c59af377055920a5ecf46
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27803469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db3d433d155dde3c13d318613eaec5bf7e78ce1997bb451ecaae62b7d6346d88`
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
# Tue, 05 Feb 2019 20:34:29 GMT
ENV PG_MAJOR=11
# Fri, 15 Feb 2019 01:20:41 GMT
ENV PG_VERSION=11.2
# Fri, 15 Feb 2019 01:20:41 GMT
ENV PG_SHA256=2676b9ce09c21978032070b6794696e0aa5a476e3d21d60afc036dc0a9c09405
# Fri, 15 Feb 2019 01:23:48 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 15 Feb 2019 01:23:49 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 01:23:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 01:23:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 01:23:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 01:23:51 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 01:23:51 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 15 Feb 2019 01:23:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 01:23:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 01:23:52 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 01:23:52 GMT
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
	-	`sha256:712027ff1dd31fd8f8f70a0a08262fdcf449577d978d062d2dcd15240fe3aca1`  
		Last Modified: Fri, 15 Feb 2019 01:39:09 GMT  
		Size: 25.0 MB (25038164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf5ede79e9b7b23a55df94508f3a9ad862b17411dc10e7ed3bb792ce65d95b2`  
		Last Modified: Fri, 15 Feb 2019 01:39:03 GMT  
		Size: 7.5 KB (7520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0807de49413613fb13fc9c4f35526d7290cec49a199ba9fd4903b23ff3c4a8a0`  
		Last Modified: Fri, 15 Feb 2019 01:39:03 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a7621e500092ba53ccd159195f3eb0b4a36673ab382ffb1f29ccc8763feebc`  
		Last Modified: Fri, 15 Feb 2019 01:39:03 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3ce63fd7bcd83a09cc5c7bd0e46c5dd232991eab97105ca2c48856fadd2d37`  
		Last Modified: Fri, 15 Feb 2019 01:39:03 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51676eec4d66f73ab737cee04eb50792ea88e95a80cf3bf452ccdb8bbc0bec4f`  
		Last Modified: Fri, 15 Feb 2019 01:39:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:587b322a41084305d92e13d819fd5ddb16c30692b72f7dac44eba09202e6b77a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26860076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c06a91b46953212a3a1b9540dc7c94462ba25b1a9d515aac4484dbde363539e`
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
# Wed, 06 Feb 2019 09:14:38 GMT
ENV PG_MAJOR=11
# Fri, 15 Feb 2019 08:56:15 GMT
ENV PG_VERSION=11.2
# Fri, 15 Feb 2019 08:56:15 GMT
ENV PG_SHA256=2676b9ce09c21978032070b6794696e0aa5a476e3d21d60afc036dc0a9c09405
# Fri, 15 Feb 2019 08:58:07 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 15 Feb 2019 08:58:09 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 08:58:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 08:58:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 08:58:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 08:58:12 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 08:58:12 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 15 Feb 2019 08:58:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 08:58:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 08:58:14 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 08:58:14 GMT
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
	-	`sha256:f9e13e44d986989e7f1fccf5af1984889f9c9ead526c48fd2c4a8a0f3372c039`  
		Last Modified: Fri, 15 Feb 2019 09:06:44 GMT  
		Size: 24.3 MB (24308447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db40a5b7ccb8bf5a30d2dc46d9ce0cdb64d2aa53083350b86cd940991e644f4`  
		Last Modified: Fri, 15 Feb 2019 09:06:35 GMT  
		Size: 7.5 KB (7525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cdeed8b399186a5a70206f1d3625396890ab21932d08788fb5faab03d88f5ca`  
		Last Modified: Fri, 15 Feb 2019 09:06:34 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e31c5ecbd7f408fe0017e685205dcc2ab14dfa67792b6a0ad358e3d10b978db`  
		Last Modified: Fri, 15 Feb 2019 09:06:35 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20204d7544c1fcec6f160b49f06ae9ad0d20f14e0f17435e4d24b20d58608530`  
		Last Modified: Fri, 15 Feb 2019 09:06:34 GMT  
		Size: 2.4 KB (2372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a732c333b1eadac9c684f0c06bbb080a845d71c7db22bb0a370ecd5164d17c2d`  
		Last Modified: Fri, 15 Feb 2019 09:06:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
