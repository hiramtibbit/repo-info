## `postgres:12-beta1-alpine`

```console
$ docker pull postgres@sha256:f064170da90481a0668986d3ce3043da976324be9b0b8497b789e8c55d09dcef
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

### `postgres:12-beta1-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:4a1192b5c73c64f3de0df8467c94adc087b285ee754ca0a500cede5e32e383aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28301842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbdae8604e42f75ea999f1ae1c53bcaa76de6c00cbe7cb7004c34346e4602910`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 02:43:44 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 11 May 2019 02:43:44 GMT
ENV LANG=en_US.utf8
# Sat, 11 May 2019 02:43:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 04 Jun 2019 20:21:45 GMT
ENV PG_MAJOR=12
# Tue, 04 Jun 2019 20:21:45 GMT
ENV PG_VERSION=12beta1
# Tue, 04 Jun 2019 20:21:45 GMT
ENV PG_SHA256=203e2d0151d75e3328a6b6b85eae88e50168ae27423b39787cea595365da9fad
# Tue, 04 Jun 2019 20:27:52 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 04 Jun 2019 20:27:53 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 04 Jun 2019 20:27:54 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 04 Jun 2019 20:27:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 04 Jun 2019 20:27:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Tue, 04 Jun 2019 20:27:55 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 04 Jun 2019 20:27:56 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Tue, 04 Jun 2019 20:27:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 20:27:56 GMT
EXPOSE 5432
# Tue, 04 Jun 2019 20:27:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddab92d60ba90017f12dd42d606551d002a5a0cc09be31e16105925cbfa07481`  
		Last Modified: Sat, 11 May 2019 03:08:22 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4b0e7b82b8e1bdf8e5908b08113fb98ab570336a917e5d207ad5e84130cea9`  
		Last Modified: Sat, 11 May 2019 03:08:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f22b38b13e86dbe99bb6a0eda81c44f3f3eed9280bb625ea11e8a93d89e4af8`  
		Last Modified: Tue, 04 Jun 2019 20:57:38 GMT  
		Size: 25.5 MB (25533657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed39cf0f3408a4364a44eb0241cd1b30b3afcdfa54fa988b7b7fea5240a3e4e`  
		Last Modified: Tue, 04 Jun 2019 20:57:30 GMT  
		Size: 8.2 KB (8219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7fb96af6715f89d3fc34c4f916d2e3ad362df9cc739cd3b6f50cfd5ba2a878c`  
		Last Modified: Tue, 04 Jun 2019 20:57:30 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9e7158a2152c0d880b3b9597b6caa6137a2cf098f32ad71c447902e0529363`  
		Last Modified: Tue, 04 Jun 2019 20:57:30 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8671a82d679dba5e33d765ff1b31394a430cd08b7267d872086bca1806d874e`  
		Last Modified: Tue, 04 Jun 2019 20:57:30 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:12-beta1-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:446882632145e315259144bc2c599c9e978d6938f3e5c7d8aca5d4f25109fb23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27409721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f26149c6c19b4b999c767505f83d34fd0fd5cd598b97fe31a6bfa16a48da9e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:00:48 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 11 May 2019 09:00:49 GMT
ENV LANG=en_US.utf8
# Sat, 11 May 2019 09:00:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 04 Jun 2019 20:49:33 GMT
ENV PG_MAJOR=12
# Tue, 04 Jun 2019 20:49:34 GMT
ENV PG_VERSION=12beta1
# Tue, 04 Jun 2019 20:49:34 GMT
ENV PG_SHA256=203e2d0151d75e3328a6b6b85eae88e50168ae27423b39787cea595365da9fad
# Tue, 04 Jun 2019 20:51:43 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 04 Jun 2019 20:51:45 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 04 Jun 2019 20:51:47 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 04 Jun 2019 20:51:47 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 04 Jun 2019 20:51:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Tue, 04 Jun 2019 20:51:51 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 04 Jun 2019 20:51:52 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Tue, 04 Jun 2019 20:51:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 20:51:53 GMT
EXPOSE 5432
# Tue, 04 Jun 2019 20:51:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40067f00f6272b4ee3ced6fe442909565af7511237b288ac04f07ec071b2e27`  
		Last Modified: Sat, 11 May 2019 09:10:57 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff4e59b89070cb7c3fb445d9f3f2461a0ca2fae91eb7f2a68888de988c23af3e`  
		Last Modified: Sat, 11 May 2019 09:10:57 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52add281a65ab9c18d197ca30106a07fa063b29f3e2dc1707a9b53a7a7386b43`  
		Last Modified: Tue, 04 Jun 2019 21:07:32 GMT  
		Size: 24.9 MB (24855014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21eed8fe39abb876e50ffc4d6ce6996d4f95c27d966596356d62c27490cca337`  
		Last Modified: Tue, 04 Jun 2019 21:07:23 GMT  
		Size: 8.2 KB (8220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d31762995fca2d5b4c9791e323d24137a13e85897aa50e2d46f1c559267eb8`  
		Last Modified: Tue, 04 Jun 2019 21:07:24 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43212d1ecd3fcca8eb2d38458c10bcee465d4f159e79755612cafc087fd482d6`  
		Last Modified: Tue, 04 Jun 2019 21:07:23 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4863480c1eb8eb648d5342437e58b33d5f361005041459b99f5b390fa81ac19f`  
		Last Modified: Tue, 04 Jun 2019 21:07:23 GMT  
		Size: 2.4 KB (2372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:12-beta1-alpine` - linux; arm variant v7

```console
$ docker pull postgres@sha256:cab08e9836d4c63c08eae91ddb004cc8ad19f75d1e63054ce793f3f277a3397d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.3 MB (26324829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2df0ca03430fc53846467aa197f7730c00e2e4a9fb47572ef7cf1c487951781f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:56:11 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 11 May 2019 12:56:11 GMT
ENV LANG=en_US.utf8
# Sat, 11 May 2019 12:56:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 04 Jun 2019 21:28:42 GMT
ENV PG_MAJOR=12
# Tue, 04 Jun 2019 21:28:43 GMT
ENV PG_VERSION=12beta1
# Tue, 04 Jun 2019 21:28:43 GMT
ENV PG_SHA256=203e2d0151d75e3328a6b6b85eae88e50168ae27423b39787cea595365da9fad
# Tue, 04 Jun 2019 21:31:17 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 04 Jun 2019 21:31:20 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 04 Jun 2019 21:31:21 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 04 Jun 2019 21:31:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 04 Jun 2019 21:31:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Tue, 04 Jun 2019 21:31:23 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 04 Jun 2019 21:31:24 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Tue, 04 Jun 2019 21:31:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 21:31:24 GMT
EXPOSE 5432
# Tue, 04 Jun 2019 21:31:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75ddb9311b604ba4812721c497434892efb88706cc9aebdd3e3e84b5e1133b2`  
		Last Modified: Sat, 11 May 2019 13:07:43 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6360535493a3ecaf4b471443cd23c3ec46c6594f3a0961f44368f47e0a39b39`  
		Last Modified: Sat, 11 May 2019 13:07:43 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92443ee689315d72f98a22b8bd3af784309103b07f5d7fdae98ef0d86927105c`  
		Last Modified: Tue, 04 Jun 2019 21:44:59 GMT  
		Size: 24.0 MB (23962889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a6a7686111b9332bf644c8135471b42a2f6b061c07063714c383692dd30cb0`  
		Last Modified: Tue, 04 Jun 2019 21:44:43 GMT  
		Size: 8.2 KB (8218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9855c3f7cb78f4b26c84a388368c28cc1992fd17696078f1be2fefa5a9b0737a`  
		Last Modified: Tue, 04 Jun 2019 21:44:44 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a8db79f05b6f5bce3f4b6b04c35a06910f01dc50bd6160bd6f22e9aabd94f6`  
		Last Modified: Tue, 04 Jun 2019 21:44:43 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3281e74a2d821e1a37507021e2aabc3c9f9840c87605f203e9567db22a1a4723`  
		Last Modified: Tue, 04 Jun 2019 21:44:44 GMT  
		Size: 2.4 KB (2369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:12-beta1-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:2b66abf657180d33ee53fc7b174c950110cf91a79c0f5bee324e0e6894bad3cb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 MB (28189436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ce35bdebd4944d50dfa449d02729fb40ac787f9d24f7bf85e8d7a07afc3e203`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Tue, 04 Jun 2019 21:14:20 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 04 Jun 2019 21:14:21 GMT
ENV LANG=en_US.utf8
# Tue, 04 Jun 2019 21:14:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 04 Jun 2019 21:14:25 GMT
ENV PG_MAJOR=12
# Tue, 04 Jun 2019 21:14:26 GMT
ENV PG_VERSION=12beta1
# Tue, 04 Jun 2019 21:14:27 GMT
ENV PG_SHA256=203e2d0151d75e3328a6b6b85eae88e50168ae27423b39787cea595365da9fad
# Tue, 04 Jun 2019 21:17:56 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 04 Jun 2019 21:18:00 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 04 Jun 2019 21:18:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 04 Jun 2019 21:18:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 04 Jun 2019 21:18:08 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Tue, 04 Jun 2019 21:18:08 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 04 Jun 2019 21:18:09 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Tue, 04 Jun 2019 21:18:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 21:18:11 GMT
EXPOSE 5432
# Tue, 04 Jun 2019 21:18:12 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:361e6d2b7e4165e8a78896bbd2b2e86cbd88a032bbaf39556e91e88676c7e208`  
		Last Modified: Tue, 04 Jun 2019 23:07:09 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20489a45ccc4f6acdee3cfebe5abf626a25ef57e507a2dabe6dcca7fd5f84375`  
		Last Modified: Tue, 04 Jun 2019 23:07:09 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682ca8e9b1d71f4832234e028151dd5253619876ced0f2d5b7a84798bcc12ada`  
		Last Modified: Tue, 04 Jun 2019 23:07:17 GMT  
		Size: 25.5 MB (25489372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7856bb6576e1c622b9214c5682e8b14049817607536124c65348a61b2f6e9b2e`  
		Last Modified: Tue, 04 Jun 2019 23:07:08 GMT  
		Size: 8.2 KB (8221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d830d875ae16e02aa4884671427665e4bed1823bf51a9d6c177b171780ff16`  
		Last Modified: Tue, 04 Jun 2019 23:07:08 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30521ac56e705d6c88d5fccb672b8eed512893101c9a2ef1bd58dfb4e6a71da4`  
		Last Modified: Tue, 04 Jun 2019 23:07:08 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db62974b2ece6574c4ee60382ba82f7e06d96d7a0f11a592665ac1d085238de`  
		Last Modified: Tue, 04 Jun 2019 23:07:08 GMT  
		Size: 2.4 KB (2373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:12-beta1-alpine` - linux; 386

```console
$ docker pull postgres@sha256:9c33161fe30e71bf34f1ab7c8ee9cc714afa11705874b18f1142f7ccacb0666e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29252014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5e46c8b0d142c8978e3e005ae165b424758c753598305d40ab786e6e9b0a76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 15:31:36 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 11 May 2019 15:31:36 GMT
ENV LANG=en_US.utf8
# Sat, 11 May 2019 15:31:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 04 Jun 2019 20:40:55 GMT
ENV PG_MAJOR=12
# Tue, 04 Jun 2019 20:40:56 GMT
ENV PG_VERSION=12beta1
# Tue, 04 Jun 2019 20:40:56 GMT
ENV PG_SHA256=203e2d0151d75e3328a6b6b85eae88e50168ae27423b39787cea595365da9fad
# Tue, 04 Jun 2019 20:47:24 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 04 Jun 2019 20:47:25 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 04 Jun 2019 20:47:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 04 Jun 2019 20:47:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 04 Jun 2019 20:47:28 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Tue, 04 Jun 2019 20:47:28 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 04 Jun 2019 20:47:28 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Tue, 04 Jun 2019 20:47:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 20:47:29 GMT
EXPOSE 5432
# Tue, 04 Jun 2019 20:47:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59abaccdd77df92face9cf6ca594b115a700cac27f4370b2dcd8b899c7dc4f80`  
		Last Modified: Sat, 11 May 2019 15:47:52 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c029f1d6b833217c736af0ee3c47a640c9f57eff8c528ba06458561ffbead18`  
		Last Modified: Sat, 11 May 2019 15:47:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8f6803a3ed0fb87dcc07edab1586ecbe8962124afffd18f5addf40e68ce822`  
		Last Modified: Tue, 04 Jun 2019 21:08:16 GMT  
		Size: 26.5 MB (26488777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fbe884043e297e02f043755b3290fbefb5690819051acca6a4fa22df8fa0b6`  
		Last Modified: Tue, 04 Jun 2019 21:08:08 GMT  
		Size: 8.2 KB (8215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223a88980d4e23f81412a440a97352fdcb4896bb4495ea84e4d0f0fcacb6a971`  
		Last Modified: Tue, 04 Jun 2019 21:08:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e046d054faacf212f1e72df4841da0544d96ee4d3e2ba8631887c0c9819cdf`  
		Last Modified: Tue, 04 Jun 2019 21:08:08 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ab66d6190db9eeeb872a4065f088dd4cdc3840c8fd4ad3af9b7e969a75a084`  
		Last Modified: Tue, 04 Jun 2019 21:08:08 GMT  
		Size: 2.4 KB (2372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:12-beta1-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:4c28da2dc16d78df91de310235ab85ed1d1ed7b28c0bf0b2c7142d85c8add0a9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29667411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b494425a658eb998e48ea65335f71c2a2a7bdf1b6ff829732bc43406f67577`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Tue, 04 Jun 2019 20:22:33 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 04 Jun 2019 20:22:35 GMT
ENV LANG=en_US.utf8
# Tue, 04 Jun 2019 20:22:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 04 Jun 2019 20:22:41 GMT
ENV PG_MAJOR=12
# Tue, 04 Jun 2019 20:22:43 GMT
ENV PG_VERSION=12beta1
# Tue, 04 Jun 2019 20:22:44 GMT
ENV PG_SHA256=203e2d0151d75e3328a6b6b85eae88e50168ae27423b39787cea595365da9fad
# Tue, 04 Jun 2019 20:25:54 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 04 Jun 2019 20:26:01 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 04 Jun 2019 20:26:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 04 Jun 2019 20:26:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 04 Jun 2019 20:26:18 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Tue, 04 Jun 2019 20:26:19 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 04 Jun 2019 20:26:21 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Tue, 04 Jun 2019 20:26:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 20:26:25 GMT
EXPOSE 5432
# Tue, 04 Jun 2019 20:26:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d041f05e585f5075435fc88880dbf069d6b14343439c99a502aec2e8591bb047`  
		Last Modified: Tue, 04 Jun 2019 21:04:30 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f513ecb47c1d6d3ae75f8dadc874caebeeab8c30697767ee8ed3f98636a5ba8a`  
		Last Modified: Tue, 04 Jun 2019 21:04:30 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b3a348cd63457c0262ee9a149f2fdccca9d57aaade5753337ab4f8e8766c49`  
		Last Modified: Tue, 04 Jun 2019 21:04:36 GMT  
		Size: 26.9 MB (26875116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f6d3f4ac698571ab9a6849285bd9b89992adc9185a5926b36f6fe7842f6aa3`  
		Last Modified: Tue, 04 Jun 2019 21:04:28 GMT  
		Size: 8.2 KB (8217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a75292adfb5cb8b97c11cef371b775c11a1f41fa29cbdbe38fcda6ee8fd1bc`  
		Last Modified: Tue, 04 Jun 2019 21:04:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc28c749c4ca540c7cd01d3c69f9459a1ebdeb825e041cbe98e79cb0d951abb8`  
		Last Modified: Tue, 04 Jun 2019 21:04:28 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fdf336dd9ce75409194700f921a529922cf7317f0517073e684542882376fb6`  
		Last Modified: Tue, 04 Jun 2019 21:04:27 GMT  
		Size: 2.4 KB (2368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:12-beta1-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:8354911ff495903ee578efbf814dd63a007a6b8bc39a4c2f6e36eead70e7ec9e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28065390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf7167ace9921853e7f50f23c670b136c80198a82fad04cf10f307da246ce372`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:26:28 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 11 May 2019 12:26:29 GMT
ENV LANG=en_US.utf8
# Sat, 11 May 2019 12:26:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 04 Jun 2019 20:56:32 GMT
ENV PG_MAJOR=12
# Tue, 04 Jun 2019 20:56:32 GMT
ENV PG_VERSION=12beta1
# Tue, 04 Jun 2019 20:56:33 GMT
ENV PG_SHA256=203e2d0151d75e3328a6b6b85eae88e50168ae27423b39787cea595365da9fad
# Tue, 04 Jun 2019 20:59:27 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 04 Jun 2019 20:59:28 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 04 Jun 2019 20:59:29 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 04 Jun 2019 20:59:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 04 Jun 2019 20:59:30 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Tue, 04 Jun 2019 20:59:31 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 04 Jun 2019 20:59:31 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Tue, 04 Jun 2019 20:59:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 20:59:32 GMT
EXPOSE 5432
# Tue, 04 Jun 2019 20:59:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4865e585d61883382119870b39920229ec382dca0843f11998783168258af442`  
		Last Modified: Sat, 11 May 2019 12:47:10 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c4e1be2dab7e661d079ba60d96b75dbcbe44cd537c296f2ec882fb915438c5`  
		Last Modified: Sat, 11 May 2019 12:47:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6a1c60849bd21a9100383b6276a413cdb9f11bf87b0a41989e89a9dbdcfa06`  
		Last Modified: Tue, 04 Jun 2019 21:17:10 GMT  
		Size: 25.5 MB (25510911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b173ab5809bea65fb54b3bf14425413b90c0bdd73844bf5eaea8c02ef96f504f`  
		Last Modified: Tue, 04 Jun 2019 21:17:05 GMT  
		Size: 8.2 KB (8216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014a32c53cb5651124e3df2508c5ff615e3f7898e688183d12a3f20fd49037c0`  
		Last Modified: Tue, 04 Jun 2019 21:17:05 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e20720a671d797a4f430186eee3dc3cb6c6c4e18c25c92735b0bcdacb4e112e`  
		Last Modified: Tue, 04 Jun 2019 21:17:05 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7ff509f846516b88cc9b52fd57cfb66d3ee9f673d5715f1054c51ab1824f4b`  
		Last Modified: Tue, 04 Jun 2019 21:17:05 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
