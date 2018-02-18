## `postgres:alpine`

```console
$ docker pull postgres@sha256:8d56412d35e8cf0e33f061b53ebb6498e6a047b2824b3a6c191c042b1e1ff9e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:alpine` - linux; amd64

```console
$ docker pull postgres@sha256:f398f22411195ff70e7bbbd1001d22270ab5d556f653ef55a47c149a58b5edd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14944943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400ef39e0dbfc3444bc4145791a247696504b1c81ea6a223052180f3d921efd2`
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
# Sun, 18 Feb 2018 02:31:32 GMT
ENV PG_MAJOR=10
# Sun, 18 Feb 2018 02:31:32 GMT
ENV PG_VERSION=10.2
# Sun, 18 Feb 2018 02:31:32 GMT
ENV PG_SHA256=fe32009b62ddb97f7f014307ce9d0edb6972f5a698e63cb531088e147d145bad
# Sun, 18 Feb 2018 02:34:20 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sun, 18 Feb 2018 02:34:27 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sun, 18 Feb 2018 02:34:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sun, 18 Feb 2018 02:34:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sun, 18 Feb 2018 02:34:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sun, 18 Feb 2018 02:34:29 GMT
VOLUME [/var/lib/postgresql/data]
# Sun, 18 Feb 2018 02:34:30 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sun, 18 Feb 2018 02:34:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sun, 18 Feb 2018 02:34:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 02:34:31 GMT
EXPOSE 5432/tcp
# Sun, 18 Feb 2018 02:34:31 GMT
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
	-	`sha256:8df57d533e713644605296e9c7def657bb2c60b21b9dfbc7c07d19d346fd1057`  
		Last Modified: Sun, 18 Feb 2018 02:35:13 GMT  
		Size: 12.9 MB (12869657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7858f71c02fb07429d05aba2b2acd0beb7a1d193e4cf8702aefaa7721ccb6806`  
		Last Modified: Sun, 18 Feb 2018 02:35:08 GMT  
		Size: 7.3 KB (7265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a8ef17ba590373cac326f921e907032a42fef66d1c089ba4b3345700f4ccac`  
		Last Modified: Sun, 18 Feb 2018 02:35:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb44f23d3230288aa1adbf9e6672123b71c73010570dfe2afbe3b40d9f4986c`  
		Last Modified: Sun, 18 Feb 2018 02:35:08 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65cad41156b38bf3be12ed04eb52f787fd68c7f92f7a71b32a313bf06bba0178`  
		Last Modified: Sun, 18 Feb 2018 02:35:08 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5492a5bead708f24738bbff12373f374c8a50ef0a9b7c176f15b033f20ecd5b5`  
		Last Modified: Sun, 18 Feb 2018 02:35:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:9bc027e325e46ec34f9fb7ce5604c229589ea0a09b29ace1a57ca421f94d04d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 MB (13588258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f2fc6cd16022bc30902310584ed98e033c5cafaca342f7b84e2bcfe4aee92ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 14:21:06 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 14:21:07 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 14:21:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 14:21:09 GMT
ENV PG_MAJOR=10
# Fri, 09 Feb 2018 15:52:34 GMT
ENV PG_VERSION=10.2
# Fri, 09 Feb 2018 15:52:35 GMT
ENV PG_SHA256=fe32009b62ddb97f7f014307ce9d0edb6972f5a698e63cb531088e147d145bad
# Fri, 09 Feb 2018 15:56:43 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 09 Feb 2018 15:56:44 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 09 Feb 2018 15:56:46 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Feb 2018 15:56:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Feb 2018 15:56:48 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Feb 2018 15:56:48 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Feb 2018 15:56:49 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Fri, 09 Feb 2018 15:56:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Feb 2018 15:56:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Feb 2018 15:56:52 GMT
EXPOSE 5432/tcp
# Fri, 09 Feb 2018 15:56:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9279e12cd5e4d64ecccdaa1e2c84905721462be29e276e033e82dc8e9f9618`  
		Last Modified: Thu, 26 Oct 2017 14:26:09 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251fba6008fdbbfdbed7eb759d124fa5fb44d25bc358bba815e480506378d3fc`  
		Last Modified: Thu, 26 Oct 2017 14:26:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e177e62f9e128b7cfc922a0e4ca8ecead7b548cb74ec98a27e73cbd24a5d085`  
		Last Modified: Fri, 09 Feb 2018 17:53:57 GMT  
		Size: 11.7 MB (11663562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c4ac1fcd865ec2d00dddb39f148808e64a12ea9a3485bc7af995b39563fa2e`  
		Last Modified: Fri, 09 Feb 2018 17:53:50 GMT  
		Size: 7.3 KB (7266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c308d0394edb7a85337c237b26e1a534c81f8d0011eb9be6621effaa193acb2d`  
		Last Modified: Fri, 09 Feb 2018 17:53:50 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f02abcb68e4d20b9b7390c322b109ed8585d8463b76269583f6f0b0c05b10c3`  
		Last Modified: Fri, 09 Feb 2018 17:53:50 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24c77f9fb9612813845c88dc06d3fe1392ae50a9aa9822da0e4cf91654aedf6`  
		Last Modified: Fri, 09 Feb 2018 17:53:50 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6734500827a474c4425522637f2b6a04def3ef9b8c947236852c0830bd68d63`  
		Last Modified: Fri, 09 Feb 2018 17:53:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; 386

```console
$ docker pull postgres@sha256:acb3591ff427eb61b2c0a42bdb62175d2c9cca5fe129f178199aadeebcc0afa2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15294038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30ed30079413fa21dea9ba22d6adfd689cbb3f1f734577365ce0927a078d629e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 14:02:56 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 14:02:56 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 14:02:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 14:02:57 GMT
ENV PG_MAJOR=10
# Fri, 09 Feb 2018 15:15:55 GMT
ENV PG_VERSION=10.2
# Fri, 09 Feb 2018 15:15:55 GMT
ENV PG_SHA256=fe32009b62ddb97f7f014307ce9d0edb6972f5a698e63cb531088e147d145bad
# Fri, 09 Feb 2018 15:19:09 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 09 Feb 2018 15:19:10 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 09 Feb 2018 15:19:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Feb 2018 15:19:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Feb 2018 15:19:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Feb 2018 15:19:12 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Feb 2018 15:19:12 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Fri, 09 Feb 2018 15:19:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Feb 2018 15:19:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Feb 2018 15:19:14 GMT
EXPOSE 5432/tcp
# Fri, 09 Feb 2018 15:19:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70a58c1149f88ed96eb8e2fd8c5f4ac797a01539a650a011fd70525f439c090`  
		Last Modified: Thu, 26 Oct 2017 14:06:16 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51753dfc14b286d27f6635b81e06f61b33883b573f797fef42c3af1e09d7242`  
		Last Modified: Thu, 26 Oct 2017 14:06:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b753b1624972a5a91ae7c075cbf8e44291c45c3b33d2ec94234bf0835f82ab`  
		Last Modified: Fri, 09 Feb 2018 16:20:38 GMT  
		Size: 13.2 MB (13238495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ae2fc4952a7ea7c6ff3351b9b964e830efe25f65b50390bc7f2e34f3f228d9a`  
		Last Modified: Fri, 09 Feb 2018 16:20:30 GMT  
		Size: 7.3 KB (7268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97bec6eea1bbe694add1352110ab578d88b2f57e8ea24ef2b13a691251f2f7f`  
		Last Modified: Fri, 09 Feb 2018 16:20:30 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ea2594f7103e480a0c0dcff44e08a638c0201aebc7ae8b0326799ae3c47e73`  
		Last Modified: Fri, 09 Feb 2018 16:20:30 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93f3964025749992ef396c4bb3c5a13a90cf1e2527cda8feb14933acda2a1e8`  
		Last Modified: Fri, 09 Feb 2018 16:20:30 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819be20bd5b2e32fc417efb89c4f66d72d777d113eff1f4d980ca646d0070b38`  
		Last Modified: Fri, 09 Feb 2018 16:20:30 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:5a746cb0429faad3e0a066c8991dde580be06fee97cae2d8333d2a8980766442
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14615123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e62ff457217a33da49fe08a84a67fb16276783a23c3deeff743170c595070e75`
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
# Sat, 17 Feb 2018 23:01:50 GMT
ENV PG_VERSION=10.2
# Sat, 17 Feb 2018 23:01:51 GMT
ENV PG_SHA256=fe32009b62ddb97f7f014307ce9d0edb6972f5a698e63cb531088e147d145bad
# Sat, 17 Feb 2018 23:04:45 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sat, 17 Feb 2018 23:04:49 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sat, 17 Feb 2018 23:04:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 17 Feb 2018 23:04:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 17 Feb 2018 23:04:58 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 17 Feb 2018 23:04:59 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 17 Feb 2018 23:05:01 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sat, 17 Feb 2018 23:05:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 23:05:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 23:05:12 GMT
EXPOSE 5432/tcp
# Sat, 17 Feb 2018 23:05:14 GMT
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
	-	`sha256:9dc376f423a61fba740fb108149f5d7c51c557e791f4b4b9c13690903edf0fee`  
		Last Modified: Sat, 17 Feb 2018 23:05:44 GMT  
		Size: 12.5 MB (12523611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd33ffccd2e488aabefffd05b8a87c36fdeee99cdbc17b62122fb76ee14eb3`  
		Last Modified: Sat, 17 Feb 2018 23:05:38 GMT  
		Size: 7.3 KB (7265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201808e2b7378852011d655dc2f9336e5a408d81d1d0a8f2aa943cfb920f0120`  
		Last Modified: Sat, 17 Feb 2018 23:05:38 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8179f44712a614e6b3668cefa68968a7c49fb289a0450ed71e0d40ad343c13`  
		Last Modified: Sat, 17 Feb 2018 23:05:38 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff99b03e20f4a2ef3b26917cf62e792e206519ec05ea1222c8f5ad2c6a79e463`  
		Last Modified: Sat, 17 Feb 2018 23:05:38 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8ea3594befccee0f8df96b61f8b564ae943ca1bcafadce15684f34dc327811`  
		Last Modified: Sat, 17 Feb 2018 23:05:38 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; s390x

```console
$ docker pull postgres@sha256:8e58175dde623d14957ebaa06e4875947b08e0087500c8a8f6baf873fab0d8ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14560594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:889c0e17b6196b480363185e229caee4cd00dc350a2bed9f64bf75586258235f`
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
# Sun, 18 Feb 2018 10:25:36 GMT
ENV PG_VERSION=10.2
# Sun, 18 Feb 2018 10:25:36 GMT
ENV PG_SHA256=fe32009b62ddb97f7f014307ce9d0edb6972f5a698e63cb531088e147d145bad
# Sun, 18 Feb 2018 10:27:53 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sun, 18 Feb 2018 10:27:53 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sun, 18 Feb 2018 10:27:54 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sun, 18 Feb 2018 10:27:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sun, 18 Feb 2018 10:27:54 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sun, 18 Feb 2018 10:27:55 GMT
VOLUME [/var/lib/postgresql/data]
# Sun, 18 Feb 2018 10:27:55 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sun, 18 Feb 2018 10:27:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sun, 18 Feb 2018 10:27:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 10:27:56 GMT
EXPOSE 5432/tcp
# Sun, 18 Feb 2018 10:27:56 GMT
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
	-	`sha256:fde2daa3cd3f7041b0e70b2e5f9f5565fbc3dab681581d64582dee4e501e55a3`  
		Last Modified: Sun, 18 Feb 2018 10:28:28 GMT  
		Size: 12.4 MB (12365437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a360256a57a9e554b56f745c67126db21d3b06083b8333db0afcbf43cb593f`  
		Last Modified: Sun, 18 Feb 2018 10:28:25 GMT  
		Size: 7.3 KB (7268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f67ff4026ffd1fdf0bc77c31b8aabd81293a7562074b1d62b4562a851abcf13`  
		Last Modified: Sun, 18 Feb 2018 10:28:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88963822628011d556b55b317d505942f667f63768a068356e4445eec4898692`  
		Last Modified: Sun, 18 Feb 2018 10:28:25 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eeb69990cb5f48e47909172c25b8b7dc1515123f3355b275136219521151f78`  
		Last Modified: Sun, 18 Feb 2018 10:28:25 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260d98c3fdb6bb15085e1a9572dc14c5a81ffbd4ffa982b698423738312efd0c`  
		Last Modified: Sun, 18 Feb 2018 10:28:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
