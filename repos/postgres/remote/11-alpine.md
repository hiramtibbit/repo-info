## `postgres:11-alpine`

```console
$ docker pull postgres@sha256:c348460d173e2f1f6b850f1e0fcbe9756a17edbf658c562eb55e3898521008c4
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
$ docker pull postgres@sha256:7d791d7dcd3f4edf7539770acc6ace15059ca8825c04d88200233dbd0d633baf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27806090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6110703f984534ac2ed8de95a7ccee5c0f362af7caf35bacfec56a6219bfd36`
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
# Tue, 09 Apr 2019 23:41:00 GMT
ENV PG_VERSION=11.2
# Tue, 09 Apr 2019 23:41:00 GMT
ENV PG_SHA256=2676b9ce09c21978032070b6794696e0aa5a476e3d21d60afc036dc0a9c09405
# Tue, 09 Apr 2019 23:44:28 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 09 Apr 2019 23:44:29 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 09 Apr 2019 23:44:29 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 09 Apr 2019 23:44:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 09 Apr 2019 23:44:30 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 09 Apr 2019 23:44:30 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 09 Apr 2019 23:44:31 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:44:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 09 Apr 2019 23:44:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:44:32 GMT
EXPOSE 5432
# Tue, 09 Apr 2019 23:44:32 GMT
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
	-	`sha256:823ce70c3252c7fde4e22c1db495d1b8d88b6452a763ee0ebd58bb6b40aeeae8`  
		Last Modified: Tue, 09 Apr 2019 23:58:56 GMT  
		Size: 25.0 MB (25038506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92a31ecd32a634d35d7f3818fce31f45d1619860d7f9540abbb062e95ea4620`  
		Last Modified: Tue, 09 Apr 2019 23:58:49 GMT  
		Size: 7.5 KB (7521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83cc8c6d8282f23fc188ded3cbb6ad33835b517c050f4db52bfa0d3c7d82d3db`  
		Last Modified: Tue, 09 Apr 2019 23:58:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777e556126e8d92abac9462c7d3fd72ceb92d639481bfef1fbf3235f16eb941c`  
		Last Modified: Tue, 09 Apr 2019 23:58:49 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c712d0076943ac50dadd870c82587bd7a0444f3e7ef01c52bc51d66b878ba34`  
		Last Modified: Tue, 09 Apr 2019 23:58:49 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4595ea32f49af4c6ab5f3ad874a31849659140a662c92abb107f020a6ac50a5b`  
		Last Modified: Tue, 09 Apr 2019 23:58:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:67ccdc26e267b6f0b52ab47295cf04cda7ea418c9016fd3065622b515a8ff402
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26862144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d20599ff7d9e2c84022b1dae837122780f406539570599bd05f33f984ab70f`
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
# Wed, 10 Apr 2019 09:03:11 GMT
ENV PG_VERSION=11.2
# Wed, 10 Apr 2019 09:03:11 GMT
ENV PG_SHA256=2676b9ce09c21978032070b6794696e0aa5a476e3d21d60afc036dc0a9c09405
# Wed, 10 Apr 2019 09:05:09 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 10 Apr 2019 09:05:11 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 10 Apr 2019 09:05:12 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 10 Apr 2019 09:05:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 10 Apr 2019 09:05:14 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 10 Apr 2019 09:05:14 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 10 Apr 2019 09:05:15 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Wed, 10 Apr 2019 09:05:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 10 Apr 2019 09:05:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 09:05:17 GMT
EXPOSE 5432
# Wed, 10 Apr 2019 09:05:17 GMT
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
	-	`sha256:c7267cab417347629f098d57e82964f448ecf4ef099039189dd6809b6ebaf7b1`  
		Last Modified: Wed, 10 Apr 2019 09:14:24 GMT  
		Size: 24.3 MB (24307991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3ed19dad3792c602ff7453bb4b9dac1dd819180b6b0193f8d1c7ca6627e2e8`  
		Last Modified: Wed, 10 Apr 2019 09:14:15 GMT  
		Size: 7.5 KB (7524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d72bc580d56a7f88f4e9de256bd668b005d40af42b8eb3a4dbf489cd7bd442`  
		Last Modified: Wed, 10 Apr 2019 09:14:14 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e21a7cc8c3e1deeebba2abe7f476e8e75d216e4dcee577e6cb8d8296d8b337c`  
		Last Modified: Wed, 10 Apr 2019 09:14:15 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078b6d20ec133b0fbe91913c8e81245e7a72dffb0da380cc462d671579210e4b`  
		Last Modified: Wed, 10 Apr 2019 09:14:15 GMT  
		Size: 2.4 KB (2373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ce6cbdeba3ef92ed5f6446560d4f69daed4626d800b28a3178a01dacb11b0b`  
		Last Modified: Wed, 10 Apr 2019 09:14:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-alpine` - linux; arm variant v7

```console
$ docker pull postgres@sha256:cfe39bb1ec3cc3e772a1d5148d4dec179faad080ef6e99d57567885fa8025333
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25834471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52c6163d65098afe14d90090120cc8183a979077a13811df214725089c4d04cd`
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
# Tue, 12 Mar 2019 12:25:44 GMT
ENV PG_MAJOR=11
# Tue, 12 Mar 2019 12:25:45 GMT
ENV PG_VERSION=11.2
# Tue, 12 Mar 2019 12:25:46 GMT
ENV PG_SHA256=2676b9ce09c21978032070b6794696e0aa5a476e3d21d60afc036dc0a9c09405
# Tue, 12 Mar 2019 12:27:54 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 12 Mar 2019 12:27:56 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 12 Mar 2019 12:27:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 12 Mar 2019 12:27:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 12 Mar 2019 12:27:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 12 Mar 2019 12:27:59 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 12 Mar 2019 12:28:00 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Tue, 12 Mar 2019 12:28:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 12:28:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 12:28:02 GMT
EXPOSE 5432
# Tue, 12 Mar 2019 12:28:02 GMT
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
	-	`sha256:fdcd47fe7c89d3e87fadc369b6ecb7ad04c1ec66943078a47f4848a8228dc7d9`  
		Last Modified: Tue, 12 Mar 2019 12:37:13 GMT  
		Size: 23.5 MB (23475185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff72048a546518c1d0d764bdd9739f6a893ddde348607545c12b14fea2172372`  
		Last Modified: Tue, 12 Mar 2019 12:37:04 GMT  
		Size: 7.5 KB (7521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9ae6bc71bb70f00b0f7eb27e88af58f4b0a227b7e69875295b7e81da099f58`  
		Last Modified: Tue, 12 Mar 2019 12:37:04 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c88f2c4024de3292b5b15d7e5f8459a636f561333f4a5998a4eed94214fd7a`  
		Last Modified: Tue, 12 Mar 2019 12:37:04 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09266c0bcc4c04e5b59061cddf622b18e96f3ec82e462f3de162cf31930f3c6`  
		Last Modified: Tue, 12 Mar 2019 12:37:04 GMT  
		Size: 2.4 KB (2372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd00354cc946beab66d9e64e97530de1e3de91f37e62dd682db74dac1237b13`  
		Last Modified: Tue, 12 Mar 2019 12:37:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:18233aa8cb75357b558a46504839fa10cd214f0cbc5d9da5efa9eb7a7dacb331
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27685185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bee6ced4d8c9320a1caa1036f4335203d7392e0f9d09b21e77509c244b05d324`
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
# Fri, 08 Mar 2019 09:00:36 GMT
ENV PG_MAJOR=11
# Fri, 08 Mar 2019 09:00:37 GMT
ENV PG_VERSION=11.2
# Fri, 08 Mar 2019 09:00:38 GMT
ENV PG_SHA256=2676b9ce09c21978032070b6794696e0aa5a476e3d21d60afc036dc0a9c09405
# Fri, 08 Mar 2019 09:07:39 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 08 Mar 2019 09:07:42 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 08 Mar 2019 09:07:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Mar 2019 09:07:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Mar 2019 09:07:49 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Mar 2019 09:07:50 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Mar 2019 09:07:51 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 09:07:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Mar 2019 09:07:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 09:07:56 GMT
EXPOSE 5432
# Fri, 08 Mar 2019 09:07:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fd31e7de4892a842e7528e486c54c4503434b878071b6e3ad48d50b4fe4a55`  
		Last Modified: Fri, 08 Mar 2019 09:36:18 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5973af3fce929722a75fe9ca5b363881c81266ff8a7c1bff6c2408a0997bd11a`  
		Last Modified: Fri, 08 Mar 2019 09:36:18 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ea84efd0e4d5526e2454a0d02078a7728086daa1ec48ecd9737d5731d09158`  
		Last Modified: Fri, 08 Mar 2019 09:36:34 GMT  
		Size: 25.0 MB (24986670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4bce73c0ac0a2dfc5a29f1cfc7e2dce1b6ed5aa94d7082a5b85914f88b6e61`  
		Last Modified: Fri, 08 Mar 2019 09:36:15 GMT  
		Size: 7.5 KB (7520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12219f88406396bff9a8be4ec867803dab5f975461db5fadd6998592d6e609a7`  
		Last Modified: Fri, 08 Mar 2019 09:36:15 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3831f9a1442a9240dc031b438cb7180482aef447f99842cd9a1d404f1b45ff8b`  
		Last Modified: Fri, 08 Mar 2019 09:36:15 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07fe611ad57af3aa48449bd0f1162bf3983652734a9b65ba3a0478e906d29aa`  
		Last Modified: Fri, 08 Mar 2019 09:36:15 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f4b0efd0092e216a403b1c88c339205f02224f18388a8b7866a50ca762951d`  
		Last Modified: Fri, 08 Mar 2019 09:36:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-alpine` - linux; 386

```console
$ docker pull postgres@sha256:b54fe5b6624faeb64a906105addb22d84c69b317214ed8845b04a4577a256074
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.7 MB (28658241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f5534f2afa7ef382460e011c240692cf83fe4eeaa6789455799dd49ce315b7`
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
# Fri, 08 Mar 2019 04:52:47 GMT
ENV PG_MAJOR=11
# Fri, 08 Mar 2019 04:52:47 GMT
ENV PG_VERSION=11.2
# Fri, 08 Mar 2019 04:52:47 GMT
ENV PG_SHA256=2676b9ce09c21978032070b6794696e0aa5a476e3d21d60afc036dc0a9c09405
# Fri, 08 Mar 2019 04:57:09 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 08 Mar 2019 04:57:10 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 08 Mar 2019 04:57:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Mar 2019 04:57:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Mar 2019 04:57:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Mar 2019 04:57:12 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Mar 2019 04:57:12 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:57:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Mar 2019 04:57:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:57:13 GMT
EXPOSE 5432
# Fri, 08 Mar 2019 04:57:14 GMT
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
	-	`sha256:e37944c9bac80231d35f18b9bf5110073bf576b507d6d3a8cdb02ed908bfc317`  
		Last Modified: Fri, 08 Mar 2019 05:13:48 GMT  
		Size: 25.9 MB (25898306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eabd22600700bd35c707d4dfe602885006f3014e7ae4853e7cedab33c2b416be`  
		Last Modified: Fri, 08 Mar 2019 05:13:39 GMT  
		Size: 7.5 KB (7525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5942cf1137c4fef078d110866e2bb478b6531c375d7fd86b7ee54abe9dc4efeb`  
		Last Modified: Fri, 08 Mar 2019 05:13:38 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2d235823e3ddcffe7d3b921128216b9dfa8a5aa6a6ffeb0d1fc089353d9625`  
		Last Modified: Fri, 08 Mar 2019 05:13:38 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d415cbbb7b99c5f5edd5268379c82afc74ae7e6e1e82b4154a23cbb27c9d031`  
		Last Modified: Fri, 08 Mar 2019 05:13:38 GMT  
		Size: 2.4 KB (2373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e4495d5912283b88270493307b9163a863f720eeb226aa38868e3379414b3a`  
		Last Modified: Fri, 08 Mar 2019 05:13:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:b2a5e94fce650613cfb3678cd4f2b7c8efc2c7ba3e4a57d7b16b42cf419abf8e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.2 MB (29172233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:304f9ff5ffbb3796374987c043336f8ff9297ca05e3c02cdaf0e2761c52065d0`
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
# Fri, 08 Mar 2019 06:29:11 GMT
ENV PG_MAJOR=11
# Fri, 08 Mar 2019 06:29:17 GMT
ENV PG_VERSION=11.2
# Fri, 08 Mar 2019 06:29:23 GMT
ENV PG_SHA256=2676b9ce09c21978032070b6794696e0aa5a476e3d21d60afc036dc0a9c09405
# Fri, 08 Mar 2019 06:32:42 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 08 Mar 2019 06:32:46 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 08 Mar 2019 06:32:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Mar 2019 06:32:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Mar 2019 06:32:54 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Mar 2019 06:32:56 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Mar 2019 06:32:58 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 06:33:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Mar 2019 06:33:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 06:33:05 GMT
EXPOSE 5432
# Fri, 08 Mar 2019 06:33:07 GMT
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
	-	`sha256:91baa449b8bd019effab4e55380a1ea182aa1ec8d982cb157fd7ea3099fbd8d8`  
		Last Modified: Fri, 08 Mar 2019 06:49:00 GMT  
		Size: 26.4 MB (26382892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91dbaa1c9234eac69d9d01e88275b8d77b0b99c7608693d0143157bea4c19144`  
		Last Modified: Fri, 08 Mar 2019 06:48:52 GMT  
		Size: 7.5 KB (7518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9155645dad8ed6cd22130ace51c764415846d228108d412b106c67b11efd23`  
		Last Modified: Fri, 08 Mar 2019 06:48:52 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89674f7dcb89837761f1c75568923c590ec0f5744486c0d129eea498cefdaff`  
		Last Modified: Fri, 08 Mar 2019 06:48:52 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df6429e1e276e8a4b2fd42d11ed6347483c4b4d4903b407c9b543e25e297947`  
		Last Modified: Fri, 08 Mar 2019 06:48:52 GMT  
		Size: 2.4 KB (2372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f3c8d165e641b0024ae732abebe6aee2fe6528c3fbe3e62f5a036707679c12`  
		Last Modified: Fri, 08 Mar 2019 06:48:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:c0626d99b5811b866bff3773c214e0dc2cbf1be474ed36a2d19020440d6c93fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 MB (27583854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26a603f5542f5bb45d4ed3eb1732ab6a0cd895026abd2bf42fe3dd08b96798c`
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
# Fri, 08 Mar 2019 04:45:30 GMT
ENV PG_MAJOR=11
# Fri, 08 Mar 2019 04:45:30 GMT
ENV PG_VERSION=11.2
# Fri, 08 Mar 2019 04:45:30 GMT
ENV PG_SHA256=2676b9ce09c21978032070b6794696e0aa5a476e3d21d60afc036dc0a9c09405
# Fri, 08 Mar 2019 04:48:48 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 08 Mar 2019 04:48:49 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 08 Mar 2019 04:48:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 08 Mar 2019 04:48:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 08 Mar 2019 04:48:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 08 Mar 2019 04:48:51 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 08 Mar 2019 04:48:51 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:48:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Mar 2019 04:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:48:52 GMT
EXPOSE 5432
# Fri, 08 Mar 2019 04:48:53 GMT
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
	-	`sha256:376afe5a2214f7c2b07d769e68c15d2febd602ecd7b3c7cfdf65856a4a34de83`  
		Last Modified: Fri, 08 Mar 2019 05:03:39 GMT  
		Size: 25.0 MB (25031972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb4741c0ac050ec0d79f936af1b5f3590719950eaa89d98992a3d20ef792d0b`  
		Last Modified: Fri, 08 Mar 2019 05:03:32 GMT  
		Size: 7.5 KB (7520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9978059f1fd3e076ea7e3ba5835de3a507830c9e6adb78e3a4e73dcca909e56a`  
		Last Modified: Fri, 08 Mar 2019 05:03:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92feeebcfeea5fc1b641fa0e2c9aec3a7b804b0d49fb78dcfcd2e3e7cb3864f5`  
		Last Modified: Fri, 08 Mar 2019 05:03:32 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83520b4a39c35a5ea2f12162ec8ecad126a82f5944504742f01e06c9c1732632`  
		Last Modified: Fri, 08 Mar 2019 05:03:32 GMT  
		Size: 2.4 KB (2372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d554c6074cc5a0d261626a8b9446db498a490bdb1c967ccbc4a41b8e18ffa80`  
		Last Modified: Fri, 08 Mar 2019 05:03:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
