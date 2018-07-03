## `postgres:11-beta2-alpine`

```console
$ docker pull postgres@sha256:3c242759294f91661a3ec55af763ff7aebb0f8cc06cfd86904a21fb71c9b74a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:11-beta2-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:713eeb74ab3f244dbba3c93bfbb56ae10b5ac2c127c63200c7cc0a789b9472fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15237737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb194b5fc3c4e4f517ca82ae834a8a1767b7f5c4352b3f643fcfaaf18af0b4b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Sat, 09 Jun 2018 00:28:45 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 09 Jun 2018 00:28:46 GMT
ENV LANG=en_US.utf8
# Sat, 09 Jun 2018 00:28:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 09 Jun 2018 00:28:46 GMT
ENV PG_MAJOR=11
# Mon, 02 Jul 2018 23:36:04 GMT
ENV PG_VERSION=11beta2
# Mon, 02 Jul 2018 23:36:05 GMT
ENV PG_SHA256=31e28f46b0529e5be937423bc040eff2787bc399ba0ebd725510aea30274b463
# Mon, 02 Jul 2018 23:38:30 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 02 Jul 2018 23:38:35 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 02 Jul 2018 23:38:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 02 Jul 2018 23:38:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 02 Jul 2018 23:38:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 02 Jul 2018 23:38:36 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 02 Jul 2018 23:38:45 GMT
COPY file:ea83254240307acb41cff4ba67980cb25f52871869af6e6c49a729ba283f82ed in /usr/local/bin/ 
# Mon, 02 Jul 2018 23:38:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 02 Jul 2018 23:38:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Jul 2018 23:38:48 GMT
EXPOSE 5432/tcp
# Mon, 02 Jul 2018 23:38:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05bfd6c2e78801ba4b48ab4d15039b8819edd6b6d125e550766c31c595b90127`  
		Last Modified: Sat, 09 Jun 2018 00:53:56 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55463cefa11003f68b41776d9951bc17e2a22f2e572f240780ffedbc4318ade6`  
		Last Modified: Sat, 09 Jun 2018 00:53:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e11151c0bfad246cb0b2cf41a3882850ba56b92c7cb70c96b12964bb3d47f3d`  
		Last Modified: Mon, 02 Jul 2018 23:45:45 GMT  
		Size: 13.2 MB (13161787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8411ea54bd89044652104fa01586436567614eed6c5b83c32258696e1a8a5ef4`  
		Last Modified: Mon, 02 Jul 2018 23:45:37 GMT  
		Size: 7.5 KB (7496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43277cf3353672a99267e49d64cd6caf37b80c0c059af0976c3ee837170c6577`  
		Last Modified: Mon, 02 Jul 2018 23:45:37 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88cbeef86f1799bb0ecf2d377333ca95c4f457288937aa19ab5a751dafb9334`  
		Last Modified: Mon, 02 Jul 2018 23:45:37 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024b87c1893ef70b695cb30250713863a63595f41a90cf7453c9f4271bbd3afb`  
		Last Modified: Mon, 02 Jul 2018 23:45:37 GMT  
		Size: 2.2 KB (2232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77cb8ba941b677847f6a1d4b89a570b4e5b91b5591e940e311a6d7f48020e26f`  
		Last Modified: Mon, 02 Jul 2018 23:45:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
