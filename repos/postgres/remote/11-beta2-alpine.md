## `postgres:11-beta2-alpine`

```console
$ docker pull postgres@sha256:0e8bdf2c250dc76ed6f24b9a500561e685df61835f227bc29e56b9ea04022f18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:11-beta2-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:43f8b66b7278293a660ba6d3c8959ba1dd6af3f3a07e119e5f0e6120abe1d2cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.2 MB (16217162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88756ace24de6749606befcbf63108a46e4e1ba391e58a6e2d2073e82816e549`
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
# Wed, 11 Jul 2018 00:47:51 GMT
ENV PG_MAJOR=11
# Wed, 11 Jul 2018 00:47:51 GMT
ENV PG_VERSION=11beta2
# Wed, 11 Jul 2018 00:47:51 GMT
ENV PG_SHA256=31e28f46b0529e5be937423bc040eff2787bc399ba0ebd725510aea30274b463
# Wed, 11 Jul 2018 00:50:05 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 11 Jul 2018 00:50:06 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 11 Jul 2018 00:50:07 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 11 Jul 2018 00:50:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 11 Jul 2018 00:50:08 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 11 Jul 2018 00:50:08 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 11 Jul 2018 00:50:09 GMT
COPY file:ea83254240307acb41cff4ba67980cb25f52871869af6e6c49a729ba283f82ed in /usr/local/bin/ 
# Wed, 11 Jul 2018 00:50:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 11 Jul 2018 00:50:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 00:50:10 GMT
EXPOSE 5432/tcp
# Wed, 11 Jul 2018 00:50:10 GMT
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
	-	`sha256:0676dd5ea5b3cfcc2e8ee7666f03e94a0ffb0b1b77605685370adcab0a295746`  
		Last Modified: Wed, 11 Jul 2018 01:05:06 GMT  
		Size: 14.0 MB (14000210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ab6ef3ee46c209da0088da5302c1b4804c622a8f1dcdc6ccac944d7f457e1e`  
		Last Modified: Wed, 11 Jul 2018 01:04:58 GMT  
		Size: 7.5 KB (7494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96fac7584f18c10b18c1df1b729fa282ce3e92cd7fe5e5774f82855c73478753`  
		Last Modified: Wed, 11 Jul 2018 01:04:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff32ad4278ef7d1f5e8e32b5b57fc4e9a32ba1c4d98c98bd9fe781c6dad2a54b`  
		Last Modified: Wed, 11 Jul 2018 01:04:58 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef63dca2a0b7203c10e3b41f9d90a46268f3bbbdf01d0567a11d84aacb69444`  
		Last Modified: Wed, 11 Jul 2018 01:04:58 GMT  
		Size: 2.2 KB (2233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f6d48f62fa17f7033391ebf4ad90fc0d2abe2f2cce5e34b74faabf2b7ce6de`  
		Last Modified: Wed, 11 Jul 2018 01:04:59 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta2-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:5b06463db1b281010702c8970c67e19394039b4e685d27a7f9ff5e24e71a4def
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14476740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef7d49ec1c3e26400e8e38d34e4d65ff98c8cf698d46fea7ba6ad66c49225b09`
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
# Thu, 31 May 2018 07:49:26 GMT
ENV PG_MAJOR=11
# Tue, 03 Jul 2018 07:49:25 GMT
ENV PG_VERSION=11beta2
# Tue, 03 Jul 2018 07:49:26 GMT
ENV PG_SHA256=31e28f46b0529e5be937423bc040eff2787bc399ba0ebd725510aea30274b463
# Tue, 03 Jul 2018 08:27:20 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 03 Jul 2018 08:27:25 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 03 Jul 2018 08:27:30 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 03 Jul 2018 08:27:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 03 Jul 2018 08:27:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 03 Jul 2018 08:27:36 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 03 Jul 2018 08:27:37 GMT
COPY file:ea83254240307acb41cff4ba67980cb25f52871869af6e6c49a729ba283f82ed in /usr/local/bin/ 
# Tue, 03 Jul 2018 08:27:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 03 Jul 2018 08:27:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Jul 2018 08:27:42 GMT
EXPOSE 5432/tcp
# Tue, 03 Jul 2018 08:27:43 GMT
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
	-	`sha256:408c47badd244e4daa4e7c7e87dc5e7f4890ccbf936fe97750c02b349f31b21d`  
		Last Modified: Tue, 03 Jul 2018 08:28:31 GMT  
		Size: 12.4 MB (12427726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4030bfc78c2b1c5dfb4aeb1f638532a877a87ec439171ef859b627095452641c`  
		Last Modified: Tue, 03 Jul 2018 08:28:07 GMT  
		Size: 7.5 KB (7491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bcc068541a8e6bf280c5e38c8974acfad5f567a25153476c25af4c10723170`  
		Last Modified: Tue, 03 Jul 2018 08:28:06 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86773783ed3a088ee2da92dc49f807c2fd6d60be8fca97b480f7789bfa657ad7`  
		Last Modified: Tue, 03 Jul 2018 08:28:07 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8684561318421b84a33b23a7da617aae193ba94f704da107ce9d5ee29e3276d`  
		Last Modified: Tue, 03 Jul 2018 08:28:06 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e974456cafe150714683fdfb660b7d13152f8f2b3761ee4022607c09e58bd870`  
		Last Modified: Tue, 03 Jul 2018 08:28:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta2-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:ebe14f596bce78dc1596e19725067f865d531a8fca253ef69f7341a3bdae51b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.8 MB (14848722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d75a6ca8ddb401fa048f91ee61121f5fabce18610b591ffc2e5557c2a93f521c`
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
# Wed, 11 Jul 2018 08:58:18 GMT
ENV PG_MAJOR=11
# Wed, 11 Jul 2018 08:58:18 GMT
ENV PG_VERSION=11beta2
# Wed, 11 Jul 2018 08:58:19 GMT
ENV PG_SHA256=31e28f46b0529e5be937423bc040eff2787bc399ba0ebd725510aea30274b463
# Wed, 11 Jul 2018 09:02:50 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 11 Jul 2018 09:02:53 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 11 Jul 2018 09:02:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 11 Jul 2018 09:02:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 11 Jul 2018 09:02:58 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 11 Jul 2018 09:02:59 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 11 Jul 2018 09:03:00 GMT
COPY file:ea83254240307acb41cff4ba67980cb25f52871869af6e6c49a729ba283f82ed in /usr/local/bin/ 
# Wed, 11 Jul 2018 09:03:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 11 Jul 2018 09:03:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 09:03:04 GMT
EXPOSE 5432/tcp
# Wed, 11 Jul 2018 09:03:04 GMT
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
	-	`sha256:416b3e7c5b138ff68040fd60a3d0cfa3614b4b54c0be6996f6e4d582c2dde760`  
		Last Modified: Wed, 11 Jul 2018 09:26:44 GMT  
		Size: 12.7 MB (12738620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de291d1e0120244232b3bea933b3a5e16e9f4a26db37823d6682e38e5e15a538`  
		Last Modified: Wed, 11 Jul 2018 09:26:38 GMT  
		Size: 7.5 KB (7496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f91ed280def1898987d5359ac700964d2f32391d537cae10ae393633f58dfef`  
		Last Modified: Wed, 11 Jul 2018 09:26:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc0acd6fb6f781903d00beb89c8e177f7d78b69476693b889ec6754e5852aa4`  
		Last Modified: Wed, 11 Jul 2018 09:26:38 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecc9058c497b602a6a7aed622f202fa96cb0566e6815373d831980658b836b9`  
		Last Modified: Wed, 11 Jul 2018 09:26:38 GMT  
		Size: 2.2 KB (2232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa7018a6d15c3f2ec0b731c0f412bb17a1fcb1d7c7103dbd110504263594a6f`  
		Last Modified: Wed, 11 Jul 2018 09:26:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta2-alpine` - linux; 386

```console
$ docker pull postgres@sha256:360833e6626d8f66252f1f78242007ae0d27c020e968ba76b357bdb61ceec32c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.8 MB (16752147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17f575a170832aa01bd703979a266daf7c35dbab3dc7b0193c692fcabf79a4ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:50:41 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 11 Jul 2018 10:50:42 GMT
ENV LANG=en_US.utf8
# Wed, 11 Jul 2018 10:50:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jul 2018 10:50:43 GMT
ENV PG_MAJOR=11
# Wed, 11 Jul 2018 10:50:43 GMT
ENV PG_VERSION=11beta2
# Wed, 11 Jul 2018 10:50:43 GMT
ENV PG_SHA256=31e28f46b0529e5be937423bc040eff2787bc399ba0ebd725510aea30274b463
# Wed, 11 Jul 2018 10:53:20 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 11 Jul 2018 10:53:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 11 Jul 2018 10:53:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 11 Jul 2018 10:53:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 11 Jul 2018 10:53:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 11 Jul 2018 10:53:23 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 11 Jul 2018 10:53:24 GMT
COPY file:ea83254240307acb41cff4ba67980cb25f52871869af6e6c49a729ba283f82ed in /usr/local/bin/ 
# Wed, 11 Jul 2018 10:53:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 11 Jul 2018 10:53:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 10:53:25 GMT
EXPOSE 5432/tcp
# Wed, 11 Jul 2018 10:53:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f1f64a5de43fc9cf3d68cbe05f2a18e17a39e44d1512ce0b3911f2bc59f77e`  
		Last Modified: Wed, 11 Jul 2018 11:09:05 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72347c8a13f638fd36f586cfa21f37b4da1dd04bab6b6204d3ce2dc8f04d98e8`  
		Last Modified: Wed, 11 Jul 2018 11:09:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7332b7f0c1ef02b6d85ebdeba0593991665c7fe39cffa30affdd15c3baa6c49`  
		Last Modified: Wed, 11 Jul 2018 11:09:12 GMT  
		Size: 14.5 MB (14470644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7c94333a94fbda4d3f76786bf257a6601a939eeb89512695d90ffcc75c6e10`  
		Last Modified: Wed, 11 Jul 2018 11:09:01 GMT  
		Size: 7.5 KB (7496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe65e2eb388c0aec1bb53e4982098554fe862f6423bbb1c8fc82f0136201613`  
		Last Modified: Wed, 11 Jul 2018 11:09:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9db0992b8b5fd09725fb0ed14642a954f35021f19e9662fcb6dd00a030b2ea`  
		Last Modified: Wed, 11 Jul 2018 11:09:01 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501d9cacf54e7f11d8af0b626b248a9d7eb91fc1b75948a208cd0ccb4f30f074`  
		Last Modified: Wed, 11 Jul 2018 11:09:01 GMT  
		Size: 2.2 KB (2231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101fc03de14660c81ef4be2d24bd26c85c5553896caa8ee55dc573510e6b6560`  
		Last Modified: Wed, 11 Jul 2018 11:09:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta2-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:c29d351faa03be0b5b807270daf3e6aff02e6980a09775ffd31a33add7a1ff37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15718708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a3e18c36cefe9d87feb2cb9b20b49c8200c0b4e716c7e45d008dcf218aad5b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 10:01:28 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 11 Jul 2018 10:01:29 GMT
ENV LANG=en_US.utf8
# Wed, 11 Jul 2018 10:01:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jul 2018 10:01:33 GMT
ENV PG_MAJOR=11
# Wed, 11 Jul 2018 10:01:34 GMT
ENV PG_VERSION=11beta2
# Wed, 11 Jul 2018 10:01:35 GMT
ENV PG_SHA256=31e28f46b0529e5be937423bc040eff2787bc399ba0ebd725510aea30274b463
# Wed, 11 Jul 2018 10:04:28 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 11 Jul 2018 10:06:03 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 11 Jul 2018 10:06:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 11 Jul 2018 10:06:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 11 Jul 2018 10:06:19 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 11 Jul 2018 10:06:20 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 11 Jul 2018 10:06:28 GMT
COPY file:ea83254240307acb41cff4ba67980cb25f52871869af6e6c49a729ba283f82ed in /usr/local/bin/ 
# Wed, 11 Jul 2018 10:06:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 11 Jul 2018 10:06:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 10:06:33 GMT
EXPOSE 5432/tcp
# Wed, 11 Jul 2018 10:06:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cf65db7a2a46b10230d6919606d6370a8f89f4126cb2e72c0e8e2b817cc9bd`  
		Last Modified: Wed, 11 Jul 2018 10:24:59 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831e22a24061ee9561c3ce50ae211d56c4d735d93bc6f6ba82661c69ebaaea94`  
		Last Modified: Wed, 11 Jul 2018 10:24:59 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4db58cf183d2d986e9c7e65da1d333a3702218280fb58d5a97544f854a81f8`  
		Last Modified: Wed, 11 Jul 2018 10:25:03 GMT  
		Size: 13.5 MB (13513135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918f974dbbfc463e2ad7fa8fe91af318144f621f510d9848205824fd3bcff1b4`  
		Last Modified: Wed, 11 Jul 2018 10:24:56 GMT  
		Size: 7.5 KB (7490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84711b6d8ec108778dde2b1bd5be8d915f253e43f5af111e241c87393cfcef5e`  
		Last Modified: Wed, 11 Jul 2018 10:24:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad09468eb07c5ab85160e2a808bff14eeb3beab67d021aa5912e44d61bf29a6`  
		Last Modified: Wed, 11 Jul 2018 10:24:56 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2195cb2cc383fdb970ebafbab8a43608513a475333c2f0ed080f698f33d0f624`  
		Last Modified: Wed, 11 Jul 2018 10:24:57 GMT  
		Size: 2.2 KB (2231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec02d4a6e259aea726cec448de5b630899954c0b9db1ac0d506b3f3b5a6b9707`  
		Last Modified: Wed, 11 Jul 2018 10:24:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta2-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:c963630553328bf4de678f473d9c069647772ffec21e723458dc5c378ce966ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16053293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07cb1bec4e5a93d11f2f844d34b232a80106e38bc4ceee5bcd16155c93c26dc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 11:52:46 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 11 Jul 2018 11:52:46 GMT
ENV LANG=en_US.utf8
# Wed, 11 Jul 2018 11:52:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jul 2018 11:52:47 GMT
ENV PG_MAJOR=11
# Wed, 11 Jul 2018 11:52:47 GMT
ENV PG_VERSION=11beta2
# Wed, 11 Jul 2018 11:52:47 GMT
ENV PG_SHA256=31e28f46b0529e5be937423bc040eff2787bc399ba0ebd725510aea30274b463
# Wed, 11 Jul 2018 11:55:15 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 11 Jul 2018 11:55:15 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 11 Jul 2018 11:55:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 11 Jul 2018 11:55:19 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 11 Jul 2018 11:55:19 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 11 Jul 2018 11:55:19 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 11 Jul 2018 11:55:20 GMT
COPY file:ea83254240307acb41cff4ba67980cb25f52871869af6e6c49a729ba283f82ed in /usr/local/bin/ 
# Wed, 11 Jul 2018 11:55:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 11 Jul 2018 11:55:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 11:55:21 GMT
EXPOSE 5432/tcp
# Wed, 11 Jul 2018 11:55:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398fccf2ffccf7250c1715d26143118893acb524a48bced68b09ea5b8eec51d5`  
		Last Modified: Wed, 11 Jul 2018 12:07:23 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9218ec3eacdd51c0198b5043ce0115b269b534e8da4fd8aa0f07d1b7e3f1f1ab`  
		Last Modified: Wed, 11 Jul 2018 12:07:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25f46994d30af1111d8422d6f2d76f148201fff6fb38bcec549296776faf5a8`  
		Last Modified: Wed, 11 Jul 2018 12:07:27 GMT  
		Size: 13.7 MB (13735234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1df9943a4aa33ff20f3e1059086d22f28e5742054dc510716cc88ff31609f68`  
		Last Modified: Wed, 11 Jul 2018 12:07:22 GMT  
		Size: 7.5 KB (7496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fa71abec36673ff48b407e3145d8f5424e5e01e2ce78c2c744da29aa2e5499`  
		Last Modified: Wed, 11 Jul 2018 12:07:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73c424754a8a01508a046e6dfdd5b47112f405631a2becc4e3d946e1fd246fb`  
		Last Modified: Wed, 11 Jul 2018 12:07:22 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310dc0d22fd55d1c946061298cc7596bbd2254291148d2fa7ae59993156b3267`  
		Last Modified: Wed, 11 Jul 2018 12:07:22 GMT  
		Size: 2.2 KB (2233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e1ac6ffe3cabcc593be2a699b8326caffe31d79246aa58c2fafd443023317a`  
		Last Modified: Wed, 11 Jul 2018 12:07:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
