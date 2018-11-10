<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `postgres`

-	[`postgres:10`](#postgres10)
-	[`postgres:10.6`](#postgres106)
-	[`postgres:10.6-alpine`](#postgres106-alpine)
-	[`postgres:10-alpine`](#postgres10-alpine)
-	[`postgres:11`](#postgres11)
-	[`postgres:11.1`](#postgres111)
-	[`postgres:11.1-alpine`](#postgres111-alpine)
-	[`postgres:11-alpine`](#postgres11-alpine)
-	[`postgres:9`](#postgres9)
-	[`postgres:9.3`](#postgres93)
-	[`postgres:9.3.25`](#postgres9325)
-	[`postgres:9.3.25-alpine`](#postgres9325-alpine)
-	[`postgres:9.3-alpine`](#postgres93-alpine)
-	[`postgres:9.4`](#postgres94)
-	[`postgres:9.4.20`](#postgres9420)
-	[`postgres:9.4.20-alpine`](#postgres9420-alpine)
-	[`postgres:9.4-alpine`](#postgres94-alpine)
-	[`postgres:9.5`](#postgres95)
-	[`postgres:9.5.15`](#postgres9515)
-	[`postgres:9.5.15-alpine`](#postgres9515-alpine)
-	[`postgres:9.5-alpine`](#postgres95-alpine)
-	[`postgres:9.6`](#postgres96)
-	[`postgres:9.6.11`](#postgres9611)
-	[`postgres:9.6.11-alpine`](#postgres9611-alpine)
-	[`postgres:9.6-alpine`](#postgres96-alpine)
-	[`postgres:9-alpine`](#postgres9-alpine)
-	[`postgres:alpine`](#postgresalpine)
-	[`postgres:latest`](#postgreslatest)

## `postgres:10`

```console
$ docker pull postgres@sha256:dc4838cff5c96a83fbd6b97a55b2be08577e951ee51c870eb46eac8651a7c79e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:10` - linux; amd64

```console
$ docker pull postgres@sha256:bd8c460d69506c8f792c16919001d43e332dcb422cc449e030ee102670dd2a47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.3 MB (83253689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6785cf0e01c9507454887eb7d89c8144c7f30cd6bed292edd60ad132b2b537f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:03:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:03:28 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 16 Oct 2018 05:03:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 05:03:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 05:03:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 16 Oct 2018 05:03:48 GMT
ENV LANG=en_US.utf8
# Tue, 16 Oct 2018 05:03:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:03:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 05:03:55 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 05:05:02 GMT
ENV PG_MAJOR=10
# Fri, 09 Nov 2018 23:16:18 GMT
ENV PG_VERSION=10.6-1.pgdg90+1
# Fri, 09 Nov 2018 23:17:01 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 09 Nov 2018 23:17:02 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:17:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:17:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 09 Nov 2018 23:17:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:17:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:17:04 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:17:05 GMT
COPY file:8679fccc32fd3636a9beb8295538f82d9b1466e95ef6111e8c677c558ba9cb1e in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:17:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:17:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:17:06 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:17:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f213be5edb0d58a76b07e70b67bdd451fad3ae77b5b61eda447d78b2bd19c0`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 4.5 MB (4498513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79723dc5107ebf180e7d4093d2d0e11c77c033f2204cb6d32fb0829b6f926a`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 1.8 KB (1780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603a66804109ee3bac87b3e90af8bc6b6324033b583865ba11e3522d766d87b1`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 951.9 KB (951874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f1b901e523f1d7e8d4fb3c58476cc8124d1d3ef2ccfd482106d18817a84725`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 6.2 MB (6182618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d9650419dec4ee4dc0a9f1d0e15687003bb5bbfba6c48b73aa1470a0d3456b`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 295.4 KB (295448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d87bb25bad9acad0898fd2f526f00bc84b2cd8f5e11f9a722d0176f27ae92c`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333a24caa91e9f50f31c74bb7a146770ce4be6c4ef74cff977f034c084bbd760`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77dc1153041a3798165215671dd27128c0ed9283a4e9837d9ec206d21197f340`  
		Last Modified: Fri, 09 Nov 2018 23:45:55 GMT  
		Size: 48.8 MB (48822574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4506d95456955a0a3f72253d14adba1815c346c4bf61c1c6a24b3965bd990e1f`  
		Last Modified: Fri, 09 Nov 2018 23:45:41 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc9be39e93319ee7d679e60ab580d9c2c8c6f48675132ce20a03a21ebc51414`  
		Last Modified: Fri, 09 Nov 2018 23:45:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c118f79391cc764bd01b2453229e470369ec8248230e4b1aaccb8313d0ed227`  
		Last Modified: Fri, 09 Nov 2018 23:45:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1917bf3eda4304c02307be33aac64aa33978b4336d53dd852a914f84494389d6`  
		Last Modified: Fri, 09 Nov 2018 23:45:41 GMT  
		Size: 2.2 KB (2220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d3857878729eb167238271ba9e1ab0c960e9b8a228bcde9e34fd17650649f4`  
		Last Modified: Fri, 09 Nov 2018 23:45:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10.6`

```console
$ docker pull postgres@sha256:dc4838cff5c96a83fbd6b97a55b2be08577e951ee51c870eb46eac8651a7c79e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:10.6` - linux; amd64

```console
$ docker pull postgres@sha256:bd8c460d69506c8f792c16919001d43e332dcb422cc449e030ee102670dd2a47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.3 MB (83253689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6785cf0e01c9507454887eb7d89c8144c7f30cd6bed292edd60ad132b2b537f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:03:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:03:28 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 16 Oct 2018 05:03:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 05:03:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 05:03:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 16 Oct 2018 05:03:48 GMT
ENV LANG=en_US.utf8
# Tue, 16 Oct 2018 05:03:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:03:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 05:03:55 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 05:05:02 GMT
ENV PG_MAJOR=10
# Fri, 09 Nov 2018 23:16:18 GMT
ENV PG_VERSION=10.6-1.pgdg90+1
# Fri, 09 Nov 2018 23:17:01 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 09 Nov 2018 23:17:02 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:17:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:17:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 09 Nov 2018 23:17:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:17:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:17:04 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:17:05 GMT
COPY file:8679fccc32fd3636a9beb8295538f82d9b1466e95ef6111e8c677c558ba9cb1e in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:17:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:17:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:17:06 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:17:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f213be5edb0d58a76b07e70b67bdd451fad3ae77b5b61eda447d78b2bd19c0`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 4.5 MB (4498513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79723dc5107ebf180e7d4093d2d0e11c77c033f2204cb6d32fb0829b6f926a`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 1.8 KB (1780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603a66804109ee3bac87b3e90af8bc6b6324033b583865ba11e3522d766d87b1`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 951.9 KB (951874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f1b901e523f1d7e8d4fb3c58476cc8124d1d3ef2ccfd482106d18817a84725`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 6.2 MB (6182618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d9650419dec4ee4dc0a9f1d0e15687003bb5bbfba6c48b73aa1470a0d3456b`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 295.4 KB (295448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d87bb25bad9acad0898fd2f526f00bc84b2cd8f5e11f9a722d0176f27ae92c`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333a24caa91e9f50f31c74bb7a146770ce4be6c4ef74cff977f034c084bbd760`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77dc1153041a3798165215671dd27128c0ed9283a4e9837d9ec206d21197f340`  
		Last Modified: Fri, 09 Nov 2018 23:45:55 GMT  
		Size: 48.8 MB (48822574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4506d95456955a0a3f72253d14adba1815c346c4bf61c1c6a24b3965bd990e1f`  
		Last Modified: Fri, 09 Nov 2018 23:45:41 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc9be39e93319ee7d679e60ab580d9c2c8c6f48675132ce20a03a21ebc51414`  
		Last Modified: Fri, 09 Nov 2018 23:45:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c118f79391cc764bd01b2453229e470369ec8248230e4b1aaccb8313d0ed227`  
		Last Modified: Fri, 09 Nov 2018 23:45:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1917bf3eda4304c02307be33aac64aa33978b4336d53dd852a914f84494389d6`  
		Last Modified: Fri, 09 Nov 2018 23:45:41 GMT  
		Size: 2.2 KB (2220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d3857878729eb167238271ba9e1ab0c960e9b8a228bcde9e34fd17650649f4`  
		Last Modified: Fri, 09 Nov 2018 23:45:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10.6-alpine`

```console
$ docker pull postgres@sha256:35fa2d54b873e43dccc31f51992f44b903841c6ed8684356f29576767a1b17fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:10.6-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:9e2e9b8ea7ad97a2acee15d6d6df4e7de8e30d20c5d1681bf3de50dd3d917544
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 MB (28223109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:787004db496a65b949515e809683667ed7c4b566fd27b3dc6ed46b322575f278`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 01:37:36 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 12 Sep 2018 01:37:36 GMT
ENV LANG=en_US.utf8
# Wed, 12 Sep 2018 01:37:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 12 Sep 2018 01:42:49 GMT
ENV PG_MAJOR=10
# Fri, 09 Nov 2018 23:17:23 GMT
ENV PG_VERSION=10.6
# Fri, 09 Nov 2018 23:17:23 GMT
ENV PG_SHA256=68a8276f08bda8fbefe562faaf8831cb20664a7a1d3ffdbbcc5b83e08637624b
# Fri, 09 Nov 2018 23:21:14 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 09 Nov 2018 23:21:15 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:21:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:21:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:21:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:21:18 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:21:18 GMT
COPY file:e4d1cf3be629c43237bbb1e31a071c44ad8c72b8285cb3fb00c70144997dbdb8 in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:21:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:21:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:21:20 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:21:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cf8c12f47e64151935f8d8ea6529409384c9c0b753ef0df7df7711d35fe033`  
		Last Modified: Wed, 12 Sep 2018 02:03:23 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451b995b6a91a797f19b87bc008422c652e8a565818e0de3e794da96c08e4030`  
		Last Modified: Wed, 12 Sep 2018 02:03:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56438f3b51557ef6ec2b053d8c5c69711a19b3c9996d350b3250a11f530ea333`  
		Last Modified: Fri, 09 Nov 2018 23:46:41 GMT  
		Size: 26.0 MB (26006011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14082938c27b709d7481387fc4ece602ee38a5831ada6817d8210a19be77b250`  
		Last Modified: Fri, 09 Nov 2018 23:46:36 GMT  
		Size: 7.3 KB (7270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ec87702c404bee9bf6d0f556bfe2cfbca3d6b7af2c3f53600a58f43e699038`  
		Last Modified: Fri, 09 Nov 2018 23:46:36 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b5d0112c09f1e035c53e522a5433dabe7ee65bde086732918759381e08488b`  
		Last Modified: Fri, 09 Nov 2018 23:46:36 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923bab078d08d604b77502c840e2b1fa8b5f760700ea6d7d94384e4eda04708f`  
		Last Modified: Fri, 09 Nov 2018 23:46:35 GMT  
		Size: 2.2 KB (2215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e34758ca38c793310f73394d7e41c237768c92703005cfba77b162c60c17f73`  
		Last Modified: Fri, 09 Nov 2018 23:46:35 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10-alpine`

```console
$ docker pull postgres@sha256:35fa2d54b873e43dccc31f51992f44b903841c6ed8684356f29576767a1b17fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:10-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:9e2e9b8ea7ad97a2acee15d6d6df4e7de8e30d20c5d1681bf3de50dd3d917544
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.2 MB (28223109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:787004db496a65b949515e809683667ed7c4b566fd27b3dc6ed46b322575f278`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 01:37:36 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 12 Sep 2018 01:37:36 GMT
ENV LANG=en_US.utf8
# Wed, 12 Sep 2018 01:37:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 12 Sep 2018 01:42:49 GMT
ENV PG_MAJOR=10
# Fri, 09 Nov 2018 23:17:23 GMT
ENV PG_VERSION=10.6
# Fri, 09 Nov 2018 23:17:23 GMT
ENV PG_SHA256=68a8276f08bda8fbefe562faaf8831cb20664a7a1d3ffdbbcc5b83e08637624b
# Fri, 09 Nov 2018 23:21:14 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 09 Nov 2018 23:21:15 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:21:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:21:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:21:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:21:18 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:21:18 GMT
COPY file:e4d1cf3be629c43237bbb1e31a071c44ad8c72b8285cb3fb00c70144997dbdb8 in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:21:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:21:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:21:20 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:21:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cf8c12f47e64151935f8d8ea6529409384c9c0b753ef0df7df7711d35fe033`  
		Last Modified: Wed, 12 Sep 2018 02:03:23 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451b995b6a91a797f19b87bc008422c652e8a565818e0de3e794da96c08e4030`  
		Last Modified: Wed, 12 Sep 2018 02:03:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56438f3b51557ef6ec2b053d8c5c69711a19b3c9996d350b3250a11f530ea333`  
		Last Modified: Fri, 09 Nov 2018 23:46:41 GMT  
		Size: 26.0 MB (26006011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14082938c27b709d7481387fc4ece602ee38a5831ada6817d8210a19be77b250`  
		Last Modified: Fri, 09 Nov 2018 23:46:36 GMT  
		Size: 7.3 KB (7270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ec87702c404bee9bf6d0f556bfe2cfbca3d6b7af2c3f53600a58f43e699038`  
		Last Modified: Fri, 09 Nov 2018 23:46:36 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b5d0112c09f1e035c53e522a5433dabe7ee65bde086732918759381e08488b`  
		Last Modified: Fri, 09 Nov 2018 23:46:36 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923bab078d08d604b77502c840e2b1fa8b5f760700ea6d7d94384e4eda04708f`  
		Last Modified: Fri, 09 Nov 2018 23:46:35 GMT  
		Size: 2.2 KB (2215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e34758ca38c793310f73394d7e41c237768c92703005cfba77b162c60c17f73`  
		Last Modified: Fri, 09 Nov 2018 23:46:35 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:11`

```console
$ docker pull postgres@sha256:4c9112088eee606b003ae3ed6ba562bd59affae2fe6de3c86e0140e3226c498e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:11` - linux; amd64

```console
$ docker pull postgres@sha256:d8dac2938e46ffa34558574ef63ad213989bc69be9c0f487d00a08057c4f21ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116398689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39dfbcb5424b271c8992c1a8d30539afd548723a8c63da44c1f07b59ee75ef59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:03:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:03:28 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 16 Oct 2018 05:03:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 05:03:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 05:03:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 16 Oct 2018 05:03:48 GMT
ENV LANG=en_US.utf8
# Tue, 16 Oct 2018 05:03:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:03:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 05:03:55 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 05:03:56 GMT
ENV PG_MAJOR=11
# Fri, 09 Nov 2018 23:09:11 GMT
ENV PG_VERSION=11.1-1.pgdg90+1
# Fri, 09 Nov 2018 23:10:07 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 09 Nov 2018 23:10:09 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:10:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:10:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 09 Nov 2018 23:10:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:10:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:10:11 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:10:12 GMT
COPY file:8679fccc32fd3636a9beb8295538f82d9b1466e95ef6111e8c677c558ba9cb1e in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:10:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:10:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:10:13 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:10:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f213be5edb0d58a76b07e70b67bdd451fad3ae77b5b61eda447d78b2bd19c0`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 4.5 MB (4498513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79723dc5107ebf180e7d4093d2d0e11c77c033f2204cb6d32fb0829b6f926a`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 1.8 KB (1780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603a66804109ee3bac87b3e90af8bc6b6324033b583865ba11e3522d766d87b1`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 951.9 KB (951874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f1b901e523f1d7e8d4fb3c58476cc8124d1d3ef2ccfd482106d18817a84725`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 6.2 MB (6182618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d9650419dec4ee4dc0a9f1d0e15687003bb5bbfba6c48b73aa1470a0d3456b`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 295.4 KB (295448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d87bb25bad9acad0898fd2f526f00bc84b2cd8f5e11f9a722d0176f27ae92c`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333a24caa91e9f50f31c74bb7a146770ce4be6c4ef74cff977f034c084bbd760`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7e740c127fefebb50103b95d531d843a97e470cca75371aea650c7eb86e610`  
		Last Modified: Fri, 09 Nov 2018 23:43:29 GMT  
		Size: 82.0 MB (81967345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d55070c373eea7f242e6f1e1735610d48c22695ba957ac8ebdacea580a39090`  
		Last Modified: Fri, 09 Nov 2018 23:43:13 GMT  
		Size: 7.5 KB (7520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0831b17f07a34a76578b55253d4e1f34a275d38bb117e88806e4afab0b1d69`  
		Last Modified: Fri, 09 Nov 2018 23:43:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a917aee9e309902e01522c0d96a7caaa954f2f0af085d07371c553fc794b8677`  
		Last Modified: Fri, 09 Nov 2018 23:43:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b34f1eb023b4be59e10b5438bfae76aff4c628a9b8712da5a6a5ab43cedc207`  
		Last Modified: Fri, 09 Nov 2018 23:43:12 GMT  
		Size: 2.2 KB (2224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22f9971e744fe14fe71dec47c0fbb864d4d72874e251a632d664d66ca27e837`  
		Last Modified: Fri, 09 Nov 2018 23:43:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:11.1`

```console
$ docker pull postgres@sha256:4c9112088eee606b003ae3ed6ba562bd59affae2fe6de3c86e0140e3226c498e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:11.1` - linux; amd64

```console
$ docker pull postgres@sha256:d8dac2938e46ffa34558574ef63ad213989bc69be9c0f487d00a08057c4f21ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116398689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39dfbcb5424b271c8992c1a8d30539afd548723a8c63da44c1f07b59ee75ef59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:03:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:03:28 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 16 Oct 2018 05:03:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 05:03:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 05:03:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 16 Oct 2018 05:03:48 GMT
ENV LANG=en_US.utf8
# Tue, 16 Oct 2018 05:03:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:03:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 05:03:55 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 05:03:56 GMT
ENV PG_MAJOR=11
# Fri, 09 Nov 2018 23:09:11 GMT
ENV PG_VERSION=11.1-1.pgdg90+1
# Fri, 09 Nov 2018 23:10:07 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 09 Nov 2018 23:10:09 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:10:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:10:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 09 Nov 2018 23:10:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:10:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:10:11 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:10:12 GMT
COPY file:8679fccc32fd3636a9beb8295538f82d9b1466e95ef6111e8c677c558ba9cb1e in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:10:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:10:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:10:13 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:10:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f213be5edb0d58a76b07e70b67bdd451fad3ae77b5b61eda447d78b2bd19c0`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 4.5 MB (4498513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79723dc5107ebf180e7d4093d2d0e11c77c033f2204cb6d32fb0829b6f926a`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 1.8 KB (1780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603a66804109ee3bac87b3e90af8bc6b6324033b583865ba11e3522d766d87b1`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 951.9 KB (951874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f1b901e523f1d7e8d4fb3c58476cc8124d1d3ef2ccfd482106d18817a84725`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 6.2 MB (6182618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d9650419dec4ee4dc0a9f1d0e15687003bb5bbfba6c48b73aa1470a0d3456b`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 295.4 KB (295448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d87bb25bad9acad0898fd2f526f00bc84b2cd8f5e11f9a722d0176f27ae92c`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333a24caa91e9f50f31c74bb7a146770ce4be6c4ef74cff977f034c084bbd760`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7e740c127fefebb50103b95d531d843a97e470cca75371aea650c7eb86e610`  
		Last Modified: Fri, 09 Nov 2018 23:43:29 GMT  
		Size: 82.0 MB (81967345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d55070c373eea7f242e6f1e1735610d48c22695ba957ac8ebdacea580a39090`  
		Last Modified: Fri, 09 Nov 2018 23:43:13 GMT  
		Size: 7.5 KB (7520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0831b17f07a34a76578b55253d4e1f34a275d38bb117e88806e4afab0b1d69`  
		Last Modified: Fri, 09 Nov 2018 23:43:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a917aee9e309902e01522c0d96a7caaa954f2f0af085d07371c553fc794b8677`  
		Last Modified: Fri, 09 Nov 2018 23:43:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b34f1eb023b4be59e10b5438bfae76aff4c628a9b8712da5a6a5ab43cedc207`  
		Last Modified: Fri, 09 Nov 2018 23:43:12 GMT  
		Size: 2.2 KB (2224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22f9971e744fe14fe71dec47c0fbb864d4d72874e251a632d664d66ca27e837`  
		Last Modified: Fri, 09 Nov 2018 23:43:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:11.1-alpine`

```console
$ docker pull postgres@sha256:3eed68fc085fcbac75f627f2869483533c001e08c60101ae76725cef5042c199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:11.1-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:be9f99ed5409b32091f9d1eb6b6b56b7c12873f00d9869e1437abca39b44c70e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28440289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daa3d8ceab8fb20db958591d5c00f3a8dfedeb544d050ea4b24b77fa64e0f12e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 01:37:36 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 12 Sep 2018 01:37:36 GMT
ENV LANG=en_US.utf8
# Wed, 12 Sep 2018 01:37:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 12 Sep 2018 01:37:37 GMT
ENV PG_MAJOR=11
# Fri, 09 Nov 2018 23:10:41 GMT
ENV PG_VERSION=11.1
# Fri, 09 Nov 2018 23:10:41 GMT
ENV PG_SHA256=90815e812874831e9a4bf6e1136bf73bc2c5a0464ef142e2dfea40cda206db08
# Fri, 09 Nov 2018 23:15:42 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 09 Nov 2018 23:15:44 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:15:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:15:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:15:46 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:15:46 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:15:47 GMT
COPY file:e4d1cf3be629c43237bbb1e31a071c44ad8c72b8285cb3fb00c70144997dbdb8 in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:15:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:15:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:15:48 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:15:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cf8c12f47e64151935f8d8ea6529409384c9c0b753ef0df7df7711d35fe033`  
		Last Modified: Wed, 12 Sep 2018 02:03:23 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451b995b6a91a797f19b87bc008422c652e8a565818e0de3e794da96c08e4030`  
		Last Modified: Wed, 12 Sep 2018 02:03:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda9a808783224eb0ce089f3aaa181d456292eec737451d880e292889c9f89da`  
		Last Modified: Fri, 09 Nov 2018 23:44:34 GMT  
		Size: 26.2 MB (26222976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617cfb2ad78c053f64645902cbf4ee714c48460f31fcc076a88df9cf741503ce`  
		Last Modified: Fri, 09 Nov 2018 23:44:26 GMT  
		Size: 7.5 KB (7483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927e03469ddb087d2b951b16dfeaa4545ba0adeb744d3a92e8a050ba564068a2`  
		Last Modified: Fri, 09 Nov 2018 23:44:26 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ecfe99aa65a12315cd3a9be746588a7fe03871bab699cde44f8fb93d990518`  
		Last Modified: Fri, 09 Nov 2018 23:44:26 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c3bbab9cdb53216eff8078a3938db1b185faa63ac1c2c96dd2f91ca5ffcdcc`  
		Last Modified: Fri, 09 Nov 2018 23:44:26 GMT  
		Size: 2.2 KB (2217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a598e91f7f461e3a03ee9fe2804e9427396e5bf33054ffa047e1511c01f0acee`  
		Last Modified: Fri, 09 Nov 2018 23:44:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:11-alpine`

```console
$ docker pull postgres@sha256:3eed68fc085fcbac75f627f2869483533c001e08c60101ae76725cef5042c199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:11-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:be9f99ed5409b32091f9d1eb6b6b56b7c12873f00d9869e1437abca39b44c70e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28440289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daa3d8ceab8fb20db958591d5c00f3a8dfedeb544d050ea4b24b77fa64e0f12e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 01:37:36 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 12 Sep 2018 01:37:36 GMT
ENV LANG=en_US.utf8
# Wed, 12 Sep 2018 01:37:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 12 Sep 2018 01:37:37 GMT
ENV PG_MAJOR=11
# Fri, 09 Nov 2018 23:10:41 GMT
ENV PG_VERSION=11.1
# Fri, 09 Nov 2018 23:10:41 GMT
ENV PG_SHA256=90815e812874831e9a4bf6e1136bf73bc2c5a0464ef142e2dfea40cda206db08
# Fri, 09 Nov 2018 23:15:42 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 09 Nov 2018 23:15:44 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:15:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:15:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:15:46 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:15:46 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:15:47 GMT
COPY file:e4d1cf3be629c43237bbb1e31a071c44ad8c72b8285cb3fb00c70144997dbdb8 in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:15:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:15:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:15:48 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:15:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cf8c12f47e64151935f8d8ea6529409384c9c0b753ef0df7df7711d35fe033`  
		Last Modified: Wed, 12 Sep 2018 02:03:23 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451b995b6a91a797f19b87bc008422c652e8a565818e0de3e794da96c08e4030`  
		Last Modified: Wed, 12 Sep 2018 02:03:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda9a808783224eb0ce089f3aaa181d456292eec737451d880e292889c9f89da`  
		Last Modified: Fri, 09 Nov 2018 23:44:34 GMT  
		Size: 26.2 MB (26222976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617cfb2ad78c053f64645902cbf4ee714c48460f31fcc076a88df9cf741503ce`  
		Last Modified: Fri, 09 Nov 2018 23:44:26 GMT  
		Size: 7.5 KB (7483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927e03469ddb087d2b951b16dfeaa4545ba0adeb744d3a92e8a050ba564068a2`  
		Last Modified: Fri, 09 Nov 2018 23:44:26 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ecfe99aa65a12315cd3a9be746588a7fe03871bab699cde44f8fb93d990518`  
		Last Modified: Fri, 09 Nov 2018 23:44:26 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c3bbab9cdb53216eff8078a3938db1b185faa63ac1c2c96dd2f91ca5ffcdcc`  
		Last Modified: Fri, 09 Nov 2018 23:44:26 GMT  
		Size: 2.2 KB (2217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a598e91f7f461e3a03ee9fe2804e9427396e5bf33054ffa047e1511c01f0acee`  
		Last Modified: Fri, 09 Nov 2018 23:44:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:e90ba01cfa3a8a6da689736ba695ede17c16a8064a58d8010e89844ba3efc007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

```console
$ docker pull postgres@sha256:d97d63c9f3fb24efd0e74d5a84ec96747c5605c4d199cd007c8ff42db65bd6c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.7 MB (83728989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5ab22916de0216cadb5cede09095d907dac1abfcea016627d2c2a93d2bd7e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:03:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:03:28 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 16 Oct 2018 05:03:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 05:03:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 05:03:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 16 Oct 2018 05:03:48 GMT
ENV LANG=en_US.utf8
# Tue, 16 Oct 2018 05:03:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:03:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 05:03:55 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 05:06:14 GMT
ENV PG_MAJOR=9.6
# Fri, 09 Nov 2018 23:21:58 GMT
ENV PG_VERSION=9.6.11-1.pgdg90+1
# Fri, 09 Nov 2018 23:22:49 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 09 Nov 2018 23:22:50 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:22:51 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:22:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 09 Nov 2018 23:22:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:22:53 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:22:53 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:22:54 GMT
COPY file:0b5c59faae377c8c5f1c14e4b8fb087129dc09b0ce713733a5e3564e0bb210cb in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:22:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:22:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:22:55 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:22:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f213be5edb0d58a76b07e70b67bdd451fad3ae77b5b61eda447d78b2bd19c0`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 4.5 MB (4498513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79723dc5107ebf180e7d4093d2d0e11c77c033f2204cb6d32fb0829b6f926a`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 1.8 KB (1780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603a66804109ee3bac87b3e90af8bc6b6324033b583865ba11e3522d766d87b1`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 951.9 KB (951874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f1b901e523f1d7e8d4fb3c58476cc8124d1d3ef2ccfd482106d18817a84725`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 6.2 MB (6182618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d9650419dec4ee4dc0a9f1d0e15687003bb5bbfba6c48b73aa1470a0d3456b`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 295.4 KB (295448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d87bb25bad9acad0898fd2f526f00bc84b2cd8f5e11f9a722d0176f27ae92c`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333a24caa91e9f50f31c74bb7a146770ce4be6c4ef74cff977f034c084bbd760`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd7bb21889bf1ccb053fa8f94dada70c7dd9fd88e91a9a44328438a580e6fb4`  
		Last Modified: Fri, 09 Nov 2018 23:47:18 GMT  
		Size: 49.3 MB (49298050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5bf0f84359f669bbe8a34020595acc244f4b4d586c2e830cfd61a6850e9ea4f`  
		Last Modified: Fri, 09 Nov 2018 23:47:07 GMT  
		Size: 7.1 KB (7111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07038c5d9314d56eaa6612ace61d5b82d2e722e828fdbfaa174a74a12ee07dc7`  
		Last Modified: Fri, 09 Nov 2018 23:47:07 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92d5784ce82b39935b7d4891440c9631ddadd9cac0534c72e39ac7640b00f74`  
		Last Modified: Fri, 09 Nov 2018 23:47:07 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b40b826c74cf9dded5dc906b10f4746ba548dfa6975a095babf417c4ef88eec`  
		Last Modified: Fri, 09 Nov 2018 23:47:07 GMT  
		Size: 2.2 KB (2229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ae0559596e72b71648e68f3c274d377b64e8e35bb3e1e5e7ef52639a55d9e4`  
		Last Modified: Fri, 09 Nov 2018 23:47:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:9b15d9e95ea495a8a03f2b12ad20abb81398fad180f379555380c3530486e76c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

```console
$ docker pull postgres@sha256:9ba48014a96384d2c292277e966f19b4dcb5bbfb89e23fda08961777e0ca0c37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.0 MB (81977145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983aa737b30d1ddd24af55f0c82fc29c3e37a7c4d4d863c36f00a84eba3b706a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:03:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:03:28 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 16 Oct 2018 05:03:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 05:03:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 05:03:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 16 Oct 2018 05:03:48 GMT
ENV LANG=en_US.utf8
# Tue, 16 Oct 2018 05:03:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:03:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 05:03:55 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 05:09:17 GMT
ENV PG_MAJOR=9.3
# Fri, 09 Nov 2018 23:38:00 GMT
ENV PG_VERSION=9.3.25-1.pgdg90+1
# Fri, 09 Nov 2018 23:38:49 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 09 Nov 2018 23:38:50 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:38:51 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:38:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Fri, 09 Nov 2018 23:38:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:38:53 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:38:53 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:38:54 GMT
COPY file:0b5c59faae377c8c5f1c14e4b8fb087129dc09b0ce713733a5e3564e0bb210cb in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:38:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:38:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:38:55 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:38:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f213be5edb0d58a76b07e70b67bdd451fad3ae77b5b61eda447d78b2bd19c0`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 4.5 MB (4498513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79723dc5107ebf180e7d4093d2d0e11c77c033f2204cb6d32fb0829b6f926a`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 1.8 KB (1780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603a66804109ee3bac87b3e90af8bc6b6324033b583865ba11e3522d766d87b1`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 951.9 KB (951874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f1b901e523f1d7e8d4fb3c58476cc8124d1d3ef2ccfd482106d18817a84725`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 6.2 MB (6182618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d9650419dec4ee4dc0a9f1d0e15687003bb5bbfba6c48b73aa1470a0d3456b`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 295.4 KB (295448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d87bb25bad9acad0898fd2f526f00bc84b2cd8f5e11f9a722d0176f27ae92c`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333a24caa91e9f50f31c74bb7a146770ce4be6c4ef74cff977f034c084bbd760`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a4dac334c3ccf48cd787e3caa0edd2e94c08772453d2604b4f4d4881bf6d64`  
		Last Modified: Fri, 09 Nov 2018 23:52:41 GMT  
		Size: 47.5 MB (47546805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75530273a0981ddf2464c77636864c1a28ad2eb543a6aae1a081941f7d06b30d`  
		Last Modified: Fri, 09 Nov 2018 23:52:27 GMT  
		Size: 6.5 KB (6512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ea3546b688123ae97013ae039bae0d27e6479c9f3a01b57951ab319c465f80`  
		Last Modified: Fri, 09 Nov 2018 23:52:27 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3758d46e56dc20a253371a6ac9f61d45cc2fd56988d019f68d9e06872131651e`  
		Last Modified: Fri, 09 Nov 2018 23:52:27 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae12971636bfa5a18b4da235c25c1fe5273d868dac974a6fc0680e21e35e005`  
		Last Modified: Fri, 09 Nov 2018 23:52:27 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d46539df54a03e9947f7a4d2f150fb27a6c8a6b098a0f70f0407f64c4d7d25`  
		Last Modified: Fri, 09 Nov 2018 23:52:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.25`

```console
$ docker pull postgres@sha256:9b15d9e95ea495a8a03f2b12ad20abb81398fad180f379555380c3530486e76c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.3.25` - linux; amd64

```console
$ docker pull postgres@sha256:9ba48014a96384d2c292277e966f19b4dcb5bbfb89e23fda08961777e0ca0c37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.0 MB (81977145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983aa737b30d1ddd24af55f0c82fc29c3e37a7c4d4d863c36f00a84eba3b706a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:03:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:03:28 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 16 Oct 2018 05:03:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 05:03:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 05:03:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 16 Oct 2018 05:03:48 GMT
ENV LANG=en_US.utf8
# Tue, 16 Oct 2018 05:03:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:03:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 05:03:55 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 05:09:17 GMT
ENV PG_MAJOR=9.3
# Fri, 09 Nov 2018 23:38:00 GMT
ENV PG_VERSION=9.3.25-1.pgdg90+1
# Fri, 09 Nov 2018 23:38:49 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 09 Nov 2018 23:38:50 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:38:51 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:38:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Fri, 09 Nov 2018 23:38:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:38:53 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:38:53 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:38:54 GMT
COPY file:0b5c59faae377c8c5f1c14e4b8fb087129dc09b0ce713733a5e3564e0bb210cb in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:38:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:38:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:38:55 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:38:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f213be5edb0d58a76b07e70b67bdd451fad3ae77b5b61eda447d78b2bd19c0`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 4.5 MB (4498513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79723dc5107ebf180e7d4093d2d0e11c77c033f2204cb6d32fb0829b6f926a`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 1.8 KB (1780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603a66804109ee3bac87b3e90af8bc6b6324033b583865ba11e3522d766d87b1`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 951.9 KB (951874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f1b901e523f1d7e8d4fb3c58476cc8124d1d3ef2ccfd482106d18817a84725`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 6.2 MB (6182618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d9650419dec4ee4dc0a9f1d0e15687003bb5bbfba6c48b73aa1470a0d3456b`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 295.4 KB (295448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d87bb25bad9acad0898fd2f526f00bc84b2cd8f5e11f9a722d0176f27ae92c`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333a24caa91e9f50f31c74bb7a146770ce4be6c4ef74cff977f034c084bbd760`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a4dac334c3ccf48cd787e3caa0edd2e94c08772453d2604b4f4d4881bf6d64`  
		Last Modified: Fri, 09 Nov 2018 23:52:41 GMT  
		Size: 47.5 MB (47546805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75530273a0981ddf2464c77636864c1a28ad2eb543a6aae1a081941f7d06b30d`  
		Last Modified: Fri, 09 Nov 2018 23:52:27 GMT  
		Size: 6.5 KB (6512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ea3546b688123ae97013ae039bae0d27e6479c9f3a01b57951ab319c465f80`  
		Last Modified: Fri, 09 Nov 2018 23:52:27 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3758d46e56dc20a253371a6ac9f61d45cc2fd56988d019f68d9e06872131651e`  
		Last Modified: Fri, 09 Nov 2018 23:52:27 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae12971636bfa5a18b4da235c25c1fe5273d868dac974a6fc0680e21e35e005`  
		Last Modified: Fri, 09 Nov 2018 23:52:27 GMT  
		Size: 2.2 KB (2227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d46539df54a03e9947f7a4d2f150fb27a6c8a6b098a0f70f0407f64c4d7d25`  
		Last Modified: Fri, 09 Nov 2018 23:52:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.25-alpine`

```console
$ docker pull postgres@sha256:f11403f288fe109e16d0d813bf849659d4dc4a41efe8b5c4b962ec4f638a1d5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.3.25-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:094358a1a64da927d5c26dcac9dad022cf0db840b6b627b143e5e4fd9adf982b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14417387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e26433e300a445e3ee2b6d8a73ffe1828a53995c3469bb47a574d88456d17e41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 01:37:36 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 12 Sep 2018 01:37:36 GMT
ENV LANG=en_US.utf8
# Wed, 12 Sep 2018 01:37:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 12 Sep 2018 01:58:46 GMT
ENV PG_MAJOR=9.3
# Fri, 09 Nov 2018 23:39:23 GMT
ENV PG_VERSION=9.3.25
# Fri, 09 Nov 2018 23:39:23 GMT
ENV PG_SHA256=e4953e80415d039ccd33d34be74526a090fd585cf93f296cd9c593972504b6db
# Fri, 09 Nov 2018 23:39:23 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Fri, 09 Nov 2018 23:39:24 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Fri, 09 Nov 2018 23:42:35 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 09 Nov 2018 23:42:44 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:42:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:42:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:42:46 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:42:46 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:42:47 GMT
COPY file:433e69abe3111480b9ab7a66c431215e594d273aab16b3294422463bbdc123b6 in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:42:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:42:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:42:48 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:42:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cf8c12f47e64151935f8d8ea6529409384c9c0b753ef0df7df7711d35fe033`  
		Last Modified: Wed, 12 Sep 2018 02:03:23 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451b995b6a91a797f19b87bc008422c652e8a565818e0de3e794da96c08e4030`  
		Last Modified: Wed, 12 Sep 2018 02:03:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2719899cb10539f9e11a7e041e8af64e2593ff4ed33aa2bd2657c6b92e68151c`  
		Last Modified: Fri, 09 Nov 2018 23:53:27 GMT  
		Size: 12.2 MB (12201082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3bdfb5bfba2d14f786e0f8282897cb921a99264be604f6ba93fa55ea2071c2`  
		Last Modified: Fri, 09 Nov 2018 23:53:23 GMT  
		Size: 6.5 KB (6476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0896d132aeec108f505b86b5f8675b37d2590f8a9ff174b397de930849f763f1`  
		Last Modified: Fri, 09 Nov 2018 23:53:24 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c22c5e707d9a934236dc5b99e20f96d9194428599cdfb5e8667e155ef69a50c`  
		Last Modified: Fri, 09 Nov 2018 23:53:23 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9be062ee990e01c77ab5ef0a0d9dcd1c3aaf54bc5bf56706c3101c263ebda5`  
		Last Modified: Fri, 09 Nov 2018 23:53:23 GMT  
		Size: 2.2 KB (2216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dea0f1c435452bb05dce869064a3049c0a74ebac8ad88b4eaf329230dd3d94`  
		Last Modified: Fri, 09 Nov 2018 23:53:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:f11403f288fe109e16d0d813bf849659d4dc4a41efe8b5c4b962ec4f638a1d5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:094358a1a64da927d5c26dcac9dad022cf0db840b6b627b143e5e4fd9adf982b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14417387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e26433e300a445e3ee2b6d8a73ffe1828a53995c3469bb47a574d88456d17e41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 01:37:36 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 12 Sep 2018 01:37:36 GMT
ENV LANG=en_US.utf8
# Wed, 12 Sep 2018 01:37:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 12 Sep 2018 01:58:46 GMT
ENV PG_MAJOR=9.3
# Fri, 09 Nov 2018 23:39:23 GMT
ENV PG_VERSION=9.3.25
# Fri, 09 Nov 2018 23:39:23 GMT
ENV PG_SHA256=e4953e80415d039ccd33d34be74526a090fd585cf93f296cd9c593972504b6db
# Fri, 09 Nov 2018 23:39:23 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Fri, 09 Nov 2018 23:39:24 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Fri, 09 Nov 2018 23:42:35 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 09 Nov 2018 23:42:44 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:42:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:42:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:42:46 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:42:46 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:42:47 GMT
COPY file:433e69abe3111480b9ab7a66c431215e594d273aab16b3294422463bbdc123b6 in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:42:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:42:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:42:48 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:42:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cf8c12f47e64151935f8d8ea6529409384c9c0b753ef0df7df7711d35fe033`  
		Last Modified: Wed, 12 Sep 2018 02:03:23 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451b995b6a91a797f19b87bc008422c652e8a565818e0de3e794da96c08e4030`  
		Last Modified: Wed, 12 Sep 2018 02:03:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2719899cb10539f9e11a7e041e8af64e2593ff4ed33aa2bd2657c6b92e68151c`  
		Last Modified: Fri, 09 Nov 2018 23:53:27 GMT  
		Size: 12.2 MB (12201082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3bdfb5bfba2d14f786e0f8282897cb921a99264be604f6ba93fa55ea2071c2`  
		Last Modified: Fri, 09 Nov 2018 23:53:23 GMT  
		Size: 6.5 KB (6476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0896d132aeec108f505b86b5f8675b37d2590f8a9ff174b397de930849f763f1`  
		Last Modified: Fri, 09 Nov 2018 23:53:24 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c22c5e707d9a934236dc5b99e20f96d9194428599cdfb5e8667e155ef69a50c`  
		Last Modified: Fri, 09 Nov 2018 23:53:23 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9be062ee990e01c77ab5ef0a0d9dcd1c3aaf54bc5bf56706c3101c263ebda5`  
		Last Modified: Fri, 09 Nov 2018 23:53:23 GMT  
		Size: 2.2 KB (2216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dea0f1c435452bb05dce869064a3049c0a74ebac8ad88b4eaf329230dd3d94`  
		Last Modified: Fri, 09 Nov 2018 23:53:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:d5b0443bf36d2f7cd6cefb6da6d2bb03411fb6165f1d25ef7583205b48b05581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

```console
$ docker pull postgres@sha256:b0a223308c15c8eece9c8cd9ead1d9ec8250540889fb1ae629c895b3f1b606e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82364867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2e7d4a4752b4bb0dc33bf54d69a33604557d07c58fa2ab1405de9e44c2926f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:03:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:03:28 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 16 Oct 2018 05:03:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 05:03:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 05:03:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 16 Oct 2018 05:03:48 GMT
ENV LANG=en_US.utf8
# Tue, 16 Oct 2018 05:03:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:03:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 05:03:55 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 05:08:11 GMT
ENV PG_MAJOR=9.4
# Fri, 09 Nov 2018 23:33:34 GMT
ENV PG_VERSION=9.4.20-1.pgdg90+1
# Fri, 09 Nov 2018 23:34:05 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 09 Nov 2018 23:34:06 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:34:07 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:34:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 09 Nov 2018 23:34:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:34:08 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:34:08 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:34:08 GMT
COPY file:0b5c59faae377c8c5f1c14e4b8fb087129dc09b0ce713733a5e3564e0bb210cb in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:34:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:34:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:34:10 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:34:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f213be5edb0d58a76b07e70b67bdd451fad3ae77b5b61eda447d78b2bd19c0`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 4.5 MB (4498513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79723dc5107ebf180e7d4093d2d0e11c77c033f2204cb6d32fb0829b6f926a`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 1.8 KB (1780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603a66804109ee3bac87b3e90af8bc6b6324033b583865ba11e3522d766d87b1`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 951.9 KB (951874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f1b901e523f1d7e8d4fb3c58476cc8124d1d3ef2ccfd482106d18817a84725`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 6.2 MB (6182618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d9650419dec4ee4dc0a9f1d0e15687003bb5bbfba6c48b73aa1470a0d3456b`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 295.4 KB (295448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d87bb25bad9acad0898fd2f526f00bc84b2cd8f5e11f9a722d0176f27ae92c`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333a24caa91e9f50f31c74bb7a146770ce4be6c4ef74cff977f034c084bbd760`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4f66c062e31ed41ff26e153a56940469db897791279bcfabaef989382c93ff`  
		Last Modified: Fri, 09 Nov 2018 23:50:54 GMT  
		Size: 47.9 MB (47934355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7790e1ec50a4647f50feaf1d7ca1f7068e64f73650c705e3d4ef9a0cbe68fb36`  
		Last Modified: Fri, 09 Nov 2018 23:50:40 GMT  
		Size: 6.7 KB (6688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b260809220fe36df6879e70f7bef01c711111b87969a36b23bbc71779acfa5bd`  
		Last Modified: Fri, 09 Nov 2018 23:50:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424d3ce4d44907171bd295ef713ddbeda36eeab1d2fcd722f33093d55d204adf`  
		Last Modified: Fri, 09 Nov 2018 23:50:40 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a9a80f66707d4d3352c90383760bd643d5562c00734e95064023a07eeb6978`  
		Last Modified: Fri, 09 Nov 2018 23:50:40 GMT  
		Size: 2.2 KB (2226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109f7ef72f58d6d75283c9c782a8a994ed50c2fb1d650e428f7f7e54206892da`  
		Last Modified: Fri, 09 Nov 2018 23:50:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.20`

```console
$ docker pull postgres@sha256:d5b0443bf36d2f7cd6cefb6da6d2bb03411fb6165f1d25ef7583205b48b05581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4.20` - linux; amd64

```console
$ docker pull postgres@sha256:b0a223308c15c8eece9c8cd9ead1d9ec8250540889fb1ae629c895b3f1b606e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82364867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2e7d4a4752b4bb0dc33bf54d69a33604557d07c58fa2ab1405de9e44c2926f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:03:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:03:28 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 16 Oct 2018 05:03:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 05:03:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 05:03:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 16 Oct 2018 05:03:48 GMT
ENV LANG=en_US.utf8
# Tue, 16 Oct 2018 05:03:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:03:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 05:03:55 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 05:08:11 GMT
ENV PG_MAJOR=9.4
# Fri, 09 Nov 2018 23:33:34 GMT
ENV PG_VERSION=9.4.20-1.pgdg90+1
# Fri, 09 Nov 2018 23:34:05 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 09 Nov 2018 23:34:06 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:34:07 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:34:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 09 Nov 2018 23:34:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:34:08 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:34:08 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:34:08 GMT
COPY file:0b5c59faae377c8c5f1c14e4b8fb087129dc09b0ce713733a5e3564e0bb210cb in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:34:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:34:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:34:10 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:34:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f213be5edb0d58a76b07e70b67bdd451fad3ae77b5b61eda447d78b2bd19c0`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 4.5 MB (4498513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79723dc5107ebf180e7d4093d2d0e11c77c033f2204cb6d32fb0829b6f926a`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 1.8 KB (1780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603a66804109ee3bac87b3e90af8bc6b6324033b583865ba11e3522d766d87b1`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 951.9 KB (951874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f1b901e523f1d7e8d4fb3c58476cc8124d1d3ef2ccfd482106d18817a84725`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 6.2 MB (6182618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d9650419dec4ee4dc0a9f1d0e15687003bb5bbfba6c48b73aa1470a0d3456b`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 295.4 KB (295448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d87bb25bad9acad0898fd2f526f00bc84b2cd8f5e11f9a722d0176f27ae92c`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333a24caa91e9f50f31c74bb7a146770ce4be6c4ef74cff977f034c084bbd760`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4f66c062e31ed41ff26e153a56940469db897791279bcfabaef989382c93ff`  
		Last Modified: Fri, 09 Nov 2018 23:50:54 GMT  
		Size: 47.9 MB (47934355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7790e1ec50a4647f50feaf1d7ca1f7068e64f73650c705e3d4ef9a0cbe68fb36`  
		Last Modified: Fri, 09 Nov 2018 23:50:40 GMT  
		Size: 6.7 KB (6688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b260809220fe36df6879e70f7bef01c711111b87969a36b23bbc71779acfa5bd`  
		Last Modified: Fri, 09 Nov 2018 23:50:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424d3ce4d44907171bd295ef713ddbeda36eeab1d2fcd722f33093d55d204adf`  
		Last Modified: Fri, 09 Nov 2018 23:50:40 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a9a80f66707d4d3352c90383760bd643d5562c00734e95064023a07eeb6978`  
		Last Modified: Fri, 09 Nov 2018 23:50:40 GMT  
		Size: 2.2 KB (2226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109f7ef72f58d6d75283c9c782a8a994ed50c2fb1d650e428f7f7e54206892da`  
		Last Modified: Fri, 09 Nov 2018 23:50:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.20-alpine`

```console
$ docker pull postgres@sha256:996235b7301005c21de2e62f37b0f8cd605b7f6ca9283765c4fdf6c7341b7f53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4.20-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:4491d2bb450e5d0731357fb87bb2d7ef575d5ea629a39a26a10baeeeaea01ede
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14722608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b9bdafd0dadb5011e925b46471dbbd61f63e6933a699515438d99d4acddab5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 01:37:36 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 12 Sep 2018 01:37:36 GMT
ENV LANG=en_US.utf8
# Wed, 12 Sep 2018 01:37:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 12 Sep 2018 01:55:50 GMT
ENV PG_MAJOR=9.4
# Fri, 09 Nov 2018 23:34:24 GMT
ENV PG_VERSION=9.4.20
# Fri, 09 Nov 2018 23:34:24 GMT
ENV PG_SHA256=eeb1d8ddb2854c9e4d8b5cbd65665260c0ae8cbcb911003f24c2d82ccb97f87f
# Fri, 09 Nov 2018 23:37:18 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 09 Nov 2018 23:37:19 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:37:20 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:37:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:37:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:37:22 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:37:22 GMT
COPY file:433e69abe3111480b9ab7a66c431215e594d273aab16b3294422463bbdc123b6 in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:37:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:37:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:37:24 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:37:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cf8c12f47e64151935f8d8ea6529409384c9c0b753ef0df7df7711d35fe033`  
		Last Modified: Wed, 12 Sep 2018 02:03:23 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451b995b6a91a797f19b87bc008422c652e8a565818e0de3e794da96c08e4030`  
		Last Modified: Wed, 12 Sep 2018 02:03:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffdfa1f52cfe7415b1a0983ddc473b92cdf47380852ae31d7d638f96aeee89d7`  
		Last Modified: Fri, 09 Nov 2018 23:51:43 GMT  
		Size: 12.5 MB (12506113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf2b13540c33d6eab60893030caabb89772b5c994cea9a15aa25421e520a027`  
		Last Modified: Fri, 09 Nov 2018 23:51:38 GMT  
		Size: 6.7 KB (6662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd7a9c57924a5bcf5affce02823a6688b95be74f2c8d7e664ba511266c5a816`  
		Last Modified: Fri, 09 Nov 2018 23:51:38 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4858a787905ca339e47f877bb612e3a4035400aef48aa7d9a5ca8f6d4fb25375`  
		Last Modified: Fri, 09 Nov 2018 23:51:39 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1849a7f2a4da1b547cfb5af81865a7611bda0950f83844f36a7ea70236b7ed6`  
		Last Modified: Fri, 09 Nov 2018 23:51:38 GMT  
		Size: 2.2 KB (2220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57794294708e614a690bb2abf0dbbda85a5b78d79b5fcfb37250bf0d3fc41c18`  
		Last Modified: Fri, 09 Nov 2018 23:51:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:996235b7301005c21de2e62f37b0f8cd605b7f6ca9283765c4fdf6c7341b7f53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:4491d2bb450e5d0731357fb87bb2d7ef575d5ea629a39a26a10baeeeaea01ede
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14722608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b9bdafd0dadb5011e925b46471dbbd61f63e6933a699515438d99d4acddab5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 01:37:36 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 12 Sep 2018 01:37:36 GMT
ENV LANG=en_US.utf8
# Wed, 12 Sep 2018 01:37:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 12 Sep 2018 01:55:50 GMT
ENV PG_MAJOR=9.4
# Fri, 09 Nov 2018 23:34:24 GMT
ENV PG_VERSION=9.4.20
# Fri, 09 Nov 2018 23:34:24 GMT
ENV PG_SHA256=eeb1d8ddb2854c9e4d8b5cbd65665260c0ae8cbcb911003f24c2d82ccb97f87f
# Fri, 09 Nov 2018 23:37:18 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 09 Nov 2018 23:37:19 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:37:20 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:37:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:37:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:37:22 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:37:22 GMT
COPY file:433e69abe3111480b9ab7a66c431215e594d273aab16b3294422463bbdc123b6 in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:37:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:37:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:37:24 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:37:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cf8c12f47e64151935f8d8ea6529409384c9c0b753ef0df7df7711d35fe033`  
		Last Modified: Wed, 12 Sep 2018 02:03:23 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451b995b6a91a797f19b87bc008422c652e8a565818e0de3e794da96c08e4030`  
		Last Modified: Wed, 12 Sep 2018 02:03:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffdfa1f52cfe7415b1a0983ddc473b92cdf47380852ae31d7d638f96aeee89d7`  
		Last Modified: Fri, 09 Nov 2018 23:51:43 GMT  
		Size: 12.5 MB (12506113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf2b13540c33d6eab60893030caabb89772b5c994cea9a15aa25421e520a027`  
		Last Modified: Fri, 09 Nov 2018 23:51:38 GMT  
		Size: 6.7 KB (6662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd7a9c57924a5bcf5affce02823a6688b95be74f2c8d7e664ba511266c5a816`  
		Last Modified: Fri, 09 Nov 2018 23:51:38 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4858a787905ca339e47f877bb612e3a4035400aef48aa7d9a5ca8f6d4fb25375`  
		Last Modified: Fri, 09 Nov 2018 23:51:39 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1849a7f2a4da1b547cfb5af81865a7611bda0950f83844f36a7ea70236b7ed6`  
		Last Modified: Fri, 09 Nov 2018 23:51:38 GMT  
		Size: 2.2 KB (2220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57794294708e614a690bb2abf0dbbda85a5b78d79b5fcfb37250bf0d3fc41c18`  
		Last Modified: Fri, 09 Nov 2018 23:51:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:2d0acbd6a1fdfcb491000b8e3167c2a97f5957b3960fae68d2d8a1fafa198c79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

```console
$ docker pull postgres@sha256:8ea7f2518189638b2f4ba373e7099e61713d5899d82478a1ab2682ad3ab19e45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82733371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51968ef30878517de42f8b375f2dd0d1fd50f052900a5aa9bb29ab2d28c56a10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:03:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:03:28 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 16 Oct 2018 05:03:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 05:03:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 05:03:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 16 Oct 2018 05:03:48 GMT
ENV LANG=en_US.utf8
# Tue, 16 Oct 2018 05:03:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:03:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 05:03:55 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 05:07:11 GMT
ENV PG_MAJOR=9.5
# Fri, 09 Nov 2018 23:27:25 GMT
ENV PG_VERSION=9.5.15-1.pgdg90+1
# Fri, 09 Nov 2018 23:28:17 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 09 Nov 2018 23:28:18 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:28:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:28:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 09 Nov 2018 23:28:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:28:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:28:21 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:28:22 GMT
COPY file:0b5c59faae377c8c5f1c14e4b8fb087129dc09b0ce713733a5e3564e0bb210cb in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:28:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:28:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:28:23 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:28:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f213be5edb0d58a76b07e70b67bdd451fad3ae77b5b61eda447d78b2bd19c0`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 4.5 MB (4498513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79723dc5107ebf180e7d4093d2d0e11c77c033f2204cb6d32fb0829b6f926a`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 1.8 KB (1780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603a66804109ee3bac87b3e90af8bc6b6324033b583865ba11e3522d766d87b1`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 951.9 KB (951874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f1b901e523f1d7e8d4fb3c58476cc8124d1d3ef2ccfd482106d18817a84725`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 6.2 MB (6182618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d9650419dec4ee4dc0a9f1d0e15687003bb5bbfba6c48b73aa1470a0d3456b`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 295.4 KB (295448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d87bb25bad9acad0898fd2f526f00bc84b2cd8f5e11f9a722d0176f27ae92c`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333a24caa91e9f50f31c74bb7a146770ce4be6c4ef74cff977f034c084bbd760`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8666b953fb5faa02d9eebd33406881bce98636f8ffef875dfd3d1285ffb04cce`  
		Last Modified: Fri, 09 Nov 2018 23:49:07 GMT  
		Size: 48.3 MB (48302705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb6167a811fc53651f60b96c40e4f6b701a3a36e22ffe4e48c6029b55bb7960`  
		Last Modified: Fri, 09 Nov 2018 23:48:53 GMT  
		Size: 6.8 KB (6839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b5d127eda458ceef25bf0242878b4205e3d25ed3977de4bda594580117cf8c`  
		Last Modified: Fri, 09 Nov 2018 23:48:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5095abe3c3f9bf0bca971ab8473ebccebff412133ed820ff15b3ed68c9a877e3`  
		Last Modified: Fri, 09 Nov 2018 23:48:53 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35844f73cb5167c47028bd8910c9d37c067e9024c0062bef16ed1c8b3d94d6ec`  
		Last Modified: Fri, 09 Nov 2018 23:48:53 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5849a565230c734ab9d1ee6e9876192f7fa06483d2a256fbd85ec15d48a958f3`  
		Last Modified: Fri, 09 Nov 2018 23:48:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.15`

```console
$ docker pull postgres@sha256:2d0acbd6a1fdfcb491000b8e3167c2a97f5957b3960fae68d2d8a1fafa198c79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5.15` - linux; amd64

```console
$ docker pull postgres@sha256:8ea7f2518189638b2f4ba373e7099e61713d5899d82478a1ab2682ad3ab19e45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82733371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51968ef30878517de42f8b375f2dd0d1fd50f052900a5aa9bb29ab2d28c56a10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:03:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:03:28 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 16 Oct 2018 05:03:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 05:03:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 05:03:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 16 Oct 2018 05:03:48 GMT
ENV LANG=en_US.utf8
# Tue, 16 Oct 2018 05:03:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:03:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 05:03:55 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 05:07:11 GMT
ENV PG_MAJOR=9.5
# Fri, 09 Nov 2018 23:27:25 GMT
ENV PG_VERSION=9.5.15-1.pgdg90+1
# Fri, 09 Nov 2018 23:28:17 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 09 Nov 2018 23:28:18 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:28:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:28:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 09 Nov 2018 23:28:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:28:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:28:21 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:28:22 GMT
COPY file:0b5c59faae377c8c5f1c14e4b8fb087129dc09b0ce713733a5e3564e0bb210cb in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:28:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:28:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:28:23 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:28:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f213be5edb0d58a76b07e70b67bdd451fad3ae77b5b61eda447d78b2bd19c0`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 4.5 MB (4498513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79723dc5107ebf180e7d4093d2d0e11c77c033f2204cb6d32fb0829b6f926a`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 1.8 KB (1780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603a66804109ee3bac87b3e90af8bc6b6324033b583865ba11e3522d766d87b1`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 951.9 KB (951874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f1b901e523f1d7e8d4fb3c58476cc8124d1d3ef2ccfd482106d18817a84725`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 6.2 MB (6182618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d9650419dec4ee4dc0a9f1d0e15687003bb5bbfba6c48b73aa1470a0d3456b`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 295.4 KB (295448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d87bb25bad9acad0898fd2f526f00bc84b2cd8f5e11f9a722d0176f27ae92c`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333a24caa91e9f50f31c74bb7a146770ce4be6c4ef74cff977f034c084bbd760`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8666b953fb5faa02d9eebd33406881bce98636f8ffef875dfd3d1285ffb04cce`  
		Last Modified: Fri, 09 Nov 2018 23:49:07 GMT  
		Size: 48.3 MB (48302705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb6167a811fc53651f60b96c40e4f6b701a3a36e22ffe4e48c6029b55bb7960`  
		Last Modified: Fri, 09 Nov 2018 23:48:53 GMT  
		Size: 6.8 KB (6839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b5d127eda458ceef25bf0242878b4205e3d25ed3977de4bda594580117cf8c`  
		Last Modified: Fri, 09 Nov 2018 23:48:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5095abe3c3f9bf0bca971ab8473ebccebff412133ed820ff15b3ed68c9a877e3`  
		Last Modified: Fri, 09 Nov 2018 23:48:53 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35844f73cb5167c47028bd8910c9d37c067e9024c0062bef16ed1c8b3d94d6ec`  
		Last Modified: Fri, 09 Nov 2018 23:48:53 GMT  
		Size: 2.2 KB (2228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5849a565230c734ab9d1ee6e9876192f7fa06483d2a256fbd85ec15d48a958f3`  
		Last Modified: Fri, 09 Nov 2018 23:48:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.15-alpine`

```console
$ docker pull postgres@sha256:8b5739925004825966aa0d09e9b244850d950ed18c31576f90be5baafdf71868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5.15-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:79bff93a4739978216315ee937b3032767ff30a98486222d3a4918ef1dfbb560
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14860432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8caf8a6e9a7bebfebefb9a3cb2a4ce707f54a3f40fafe437ab922a6a61f99183`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 01:37:36 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 12 Sep 2018 01:37:36 GMT
ENV LANG=en_US.utf8
# Wed, 12 Sep 2018 01:37:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 12 Sep 2018 01:51:26 GMT
ENV PG_MAJOR=9.5
# Fri, 09 Nov 2018 23:28:49 GMT
ENV PG_VERSION=9.5.15
# Fri, 09 Nov 2018 23:28:50 GMT
ENV PG_SHA256=dbda3fdefd7f9fd5359a7989085aaef25c9f9d08816eda6378c2575d1ff55444
# Fri, 09 Nov 2018 23:33:03 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 09 Nov 2018 23:33:04 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:33:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:33:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:33:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:33:07 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:33:08 GMT
COPY file:433e69abe3111480b9ab7a66c431215e594d273aab16b3294422463bbdc123b6 in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:33:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:33:10 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:33:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cf8c12f47e64151935f8d8ea6529409384c9c0b753ef0df7df7711d35fe033`  
		Last Modified: Wed, 12 Sep 2018 02:03:23 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451b995b6a91a797f19b87bc008422c652e8a565818e0de3e794da96c08e4030`  
		Last Modified: Wed, 12 Sep 2018 02:03:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c84c66a2818fc2c63c485a7468031042151a265efd1eca35de39f32e14e53c6`  
		Last Modified: Fri, 09 Nov 2018 23:49:56 GMT  
		Size: 12.6 MB (12643807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a83feb5c2339f72a720cc29a437dd860f472a4bad00a96b26e6056ad6e12587f`  
		Last Modified: Fri, 09 Nov 2018 23:49:51 GMT  
		Size: 6.8 KB (6798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04e96c16a6a58e8e54ebb95310d73b182feabba68cc97caf238fb982c6e8d8d0`  
		Last Modified: Fri, 09 Nov 2018 23:49:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b763409c5fdf5d4d95bb1676a8de2d90d79d43a1f4f7814f22000a954d5c031`  
		Last Modified: Fri, 09 Nov 2018 23:49:51 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510ca7827a39619dcf1a939945738842f1806e1ef1e4b756462e5a3629bf29e2`  
		Last Modified: Fri, 09 Nov 2018 23:49:51 GMT  
		Size: 2.2 KB (2214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec788075346f269c50de179c8f2aca5d45867e18764af3710eef645b147606b1`  
		Last Modified: Fri, 09 Nov 2018 23:49:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:8b5739925004825966aa0d09e9b244850d950ed18c31576f90be5baafdf71868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:79bff93a4739978216315ee937b3032767ff30a98486222d3a4918ef1dfbb560
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14860432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8caf8a6e9a7bebfebefb9a3cb2a4ce707f54a3f40fafe437ab922a6a61f99183`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 01:37:36 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 12 Sep 2018 01:37:36 GMT
ENV LANG=en_US.utf8
# Wed, 12 Sep 2018 01:37:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 12 Sep 2018 01:51:26 GMT
ENV PG_MAJOR=9.5
# Fri, 09 Nov 2018 23:28:49 GMT
ENV PG_VERSION=9.5.15
# Fri, 09 Nov 2018 23:28:50 GMT
ENV PG_SHA256=dbda3fdefd7f9fd5359a7989085aaef25c9f9d08816eda6378c2575d1ff55444
# Fri, 09 Nov 2018 23:33:03 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 09 Nov 2018 23:33:04 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:33:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:33:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:33:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:33:07 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:33:08 GMT
COPY file:433e69abe3111480b9ab7a66c431215e594d273aab16b3294422463bbdc123b6 in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:33:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:33:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:33:10 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:33:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cf8c12f47e64151935f8d8ea6529409384c9c0b753ef0df7df7711d35fe033`  
		Last Modified: Wed, 12 Sep 2018 02:03:23 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451b995b6a91a797f19b87bc008422c652e8a565818e0de3e794da96c08e4030`  
		Last Modified: Wed, 12 Sep 2018 02:03:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c84c66a2818fc2c63c485a7468031042151a265efd1eca35de39f32e14e53c6`  
		Last Modified: Fri, 09 Nov 2018 23:49:56 GMT  
		Size: 12.6 MB (12643807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a83feb5c2339f72a720cc29a437dd860f472a4bad00a96b26e6056ad6e12587f`  
		Last Modified: Fri, 09 Nov 2018 23:49:51 GMT  
		Size: 6.8 KB (6798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04e96c16a6a58e8e54ebb95310d73b182feabba68cc97caf238fb982c6e8d8d0`  
		Last Modified: Fri, 09 Nov 2018 23:49:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b763409c5fdf5d4d95bb1676a8de2d90d79d43a1f4f7814f22000a954d5c031`  
		Last Modified: Fri, 09 Nov 2018 23:49:51 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510ca7827a39619dcf1a939945738842f1806e1ef1e4b756462e5a3629bf29e2`  
		Last Modified: Fri, 09 Nov 2018 23:49:51 GMT  
		Size: 2.2 KB (2214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec788075346f269c50de179c8f2aca5d45867e18764af3710eef645b147606b1`  
		Last Modified: Fri, 09 Nov 2018 23:49:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:e90ba01cfa3a8a6da689736ba695ede17c16a8064a58d8010e89844ba3efc007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

```console
$ docker pull postgres@sha256:d97d63c9f3fb24efd0e74d5a84ec96747c5605c4d199cd007c8ff42db65bd6c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.7 MB (83728989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5ab22916de0216cadb5cede09095d907dac1abfcea016627d2c2a93d2bd7e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:03:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:03:28 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 16 Oct 2018 05:03:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 05:03:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 05:03:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 16 Oct 2018 05:03:48 GMT
ENV LANG=en_US.utf8
# Tue, 16 Oct 2018 05:03:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:03:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 05:03:55 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 05:06:14 GMT
ENV PG_MAJOR=9.6
# Fri, 09 Nov 2018 23:21:58 GMT
ENV PG_VERSION=9.6.11-1.pgdg90+1
# Fri, 09 Nov 2018 23:22:49 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 09 Nov 2018 23:22:50 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:22:51 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:22:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 09 Nov 2018 23:22:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:22:53 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:22:53 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:22:54 GMT
COPY file:0b5c59faae377c8c5f1c14e4b8fb087129dc09b0ce713733a5e3564e0bb210cb in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:22:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:22:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:22:55 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:22:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f213be5edb0d58a76b07e70b67bdd451fad3ae77b5b61eda447d78b2bd19c0`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 4.5 MB (4498513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79723dc5107ebf180e7d4093d2d0e11c77c033f2204cb6d32fb0829b6f926a`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 1.8 KB (1780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603a66804109ee3bac87b3e90af8bc6b6324033b583865ba11e3522d766d87b1`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 951.9 KB (951874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f1b901e523f1d7e8d4fb3c58476cc8124d1d3ef2ccfd482106d18817a84725`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 6.2 MB (6182618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d9650419dec4ee4dc0a9f1d0e15687003bb5bbfba6c48b73aa1470a0d3456b`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 295.4 KB (295448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d87bb25bad9acad0898fd2f526f00bc84b2cd8f5e11f9a722d0176f27ae92c`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333a24caa91e9f50f31c74bb7a146770ce4be6c4ef74cff977f034c084bbd760`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd7bb21889bf1ccb053fa8f94dada70c7dd9fd88e91a9a44328438a580e6fb4`  
		Last Modified: Fri, 09 Nov 2018 23:47:18 GMT  
		Size: 49.3 MB (49298050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5bf0f84359f669bbe8a34020595acc244f4b4d586c2e830cfd61a6850e9ea4f`  
		Last Modified: Fri, 09 Nov 2018 23:47:07 GMT  
		Size: 7.1 KB (7111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07038c5d9314d56eaa6612ace61d5b82d2e722e828fdbfaa174a74a12ee07dc7`  
		Last Modified: Fri, 09 Nov 2018 23:47:07 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92d5784ce82b39935b7d4891440c9631ddadd9cac0534c72e39ac7640b00f74`  
		Last Modified: Fri, 09 Nov 2018 23:47:07 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b40b826c74cf9dded5dc906b10f4746ba548dfa6975a095babf417c4ef88eec`  
		Last Modified: Fri, 09 Nov 2018 23:47:07 GMT  
		Size: 2.2 KB (2229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ae0559596e72b71648e68f3c274d377b64e8e35bb3e1e5e7ef52639a55d9e4`  
		Last Modified: Fri, 09 Nov 2018 23:47:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.11`

```console
$ docker pull postgres@sha256:e90ba01cfa3a8a6da689736ba695ede17c16a8064a58d8010e89844ba3efc007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6.11` - linux; amd64

```console
$ docker pull postgres@sha256:d97d63c9f3fb24efd0e74d5a84ec96747c5605c4d199cd007c8ff42db65bd6c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.7 MB (83728989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5ab22916de0216cadb5cede09095d907dac1abfcea016627d2c2a93d2bd7e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:03:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:03:28 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 16 Oct 2018 05:03:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 05:03:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 05:03:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 16 Oct 2018 05:03:48 GMT
ENV LANG=en_US.utf8
# Tue, 16 Oct 2018 05:03:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:03:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 05:03:55 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 05:06:14 GMT
ENV PG_MAJOR=9.6
# Fri, 09 Nov 2018 23:21:58 GMT
ENV PG_VERSION=9.6.11-1.pgdg90+1
# Fri, 09 Nov 2018 23:22:49 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 09 Nov 2018 23:22:50 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:22:51 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:22:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 09 Nov 2018 23:22:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:22:53 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:22:53 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:22:54 GMT
COPY file:0b5c59faae377c8c5f1c14e4b8fb087129dc09b0ce713733a5e3564e0bb210cb in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:22:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:22:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:22:55 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:22:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f213be5edb0d58a76b07e70b67bdd451fad3ae77b5b61eda447d78b2bd19c0`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 4.5 MB (4498513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79723dc5107ebf180e7d4093d2d0e11c77c033f2204cb6d32fb0829b6f926a`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 1.8 KB (1780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603a66804109ee3bac87b3e90af8bc6b6324033b583865ba11e3522d766d87b1`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 951.9 KB (951874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f1b901e523f1d7e8d4fb3c58476cc8124d1d3ef2ccfd482106d18817a84725`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 6.2 MB (6182618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d9650419dec4ee4dc0a9f1d0e15687003bb5bbfba6c48b73aa1470a0d3456b`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 295.4 KB (295448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d87bb25bad9acad0898fd2f526f00bc84b2cd8f5e11f9a722d0176f27ae92c`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333a24caa91e9f50f31c74bb7a146770ce4be6c4ef74cff977f034c084bbd760`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd7bb21889bf1ccb053fa8f94dada70c7dd9fd88e91a9a44328438a580e6fb4`  
		Last Modified: Fri, 09 Nov 2018 23:47:18 GMT  
		Size: 49.3 MB (49298050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5bf0f84359f669bbe8a34020595acc244f4b4d586c2e830cfd61a6850e9ea4f`  
		Last Modified: Fri, 09 Nov 2018 23:47:07 GMT  
		Size: 7.1 KB (7111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07038c5d9314d56eaa6612ace61d5b82d2e722e828fdbfaa174a74a12ee07dc7`  
		Last Modified: Fri, 09 Nov 2018 23:47:07 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92d5784ce82b39935b7d4891440c9631ddadd9cac0534c72e39ac7640b00f74`  
		Last Modified: Fri, 09 Nov 2018 23:47:07 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b40b826c74cf9dded5dc906b10f4746ba548dfa6975a095babf417c4ef88eec`  
		Last Modified: Fri, 09 Nov 2018 23:47:07 GMT  
		Size: 2.2 KB (2229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ae0559596e72b71648e68f3c274d377b64e8e35bb3e1e5e7ef52639a55d9e4`  
		Last Modified: Fri, 09 Nov 2018 23:47:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.11-alpine`

```console
$ docker pull postgres@sha256:c75f155e6135cc00c8e75670be32912e94c438054a561b20d3e7af553333d4e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6.11-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:34212631a8d9f812d388d74471d39dba8092939d62a7a418118561ba0237e6ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15133257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca7199e23213b124274f2625034ac9e399ca1040ce4b9362220c336718dee3fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 01:37:36 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 12 Sep 2018 01:37:36 GMT
ENV LANG=en_US.utf8
# Wed, 12 Sep 2018 01:37:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 12 Sep 2018 01:46:59 GMT
ENV PG_MAJOR=9.6
# Fri, 09 Nov 2018 23:23:21 GMT
ENV PG_VERSION=9.6.11
# Fri, 09 Nov 2018 23:23:21 GMT
ENV PG_SHA256=38250adc69a1e8613fb926c894cda1d01031391a03648894b9a6e13ff354a530
# Fri, 09 Nov 2018 23:26:47 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 09 Nov 2018 23:26:48 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:26:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:26:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:26:49 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:26:50 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:26:50 GMT
COPY file:433e69abe3111480b9ab7a66c431215e594d273aab16b3294422463bbdc123b6 in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:26:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:26:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:26:52 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:26:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cf8c12f47e64151935f8d8ea6529409384c9c0b753ef0df7df7711d35fe033`  
		Last Modified: Wed, 12 Sep 2018 02:03:23 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451b995b6a91a797f19b87bc008422c652e8a565818e0de3e794da96c08e4030`  
		Last Modified: Wed, 12 Sep 2018 02:03:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5c502a4ec29c71c375d0ec7856af66c13bc8fef0c651c810494129e54a9975`  
		Last Modified: Fri, 09 Nov 2018 23:48:08 GMT  
		Size: 12.9 MB (12916350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1fdd7652e25c976770037c4fb97b0468e5cc3a680f27456184fdff00323d9f`  
		Last Modified: Fri, 09 Nov 2018 23:48:04 GMT  
		Size: 7.1 KB (7077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9d9a649f3c9476d65a3f879fe5f19c1324c545cca222f3361d40dc60dabfd2`  
		Last Modified: Fri, 09 Nov 2018 23:48:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2754939e9d14e4009026b0748f04f59f539e770bcc958b9bd0b43d2fbbd67a`  
		Last Modified: Fri, 09 Nov 2018 23:48:04 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e76355a10e2eac9b99a1bab8fce3c005439c23658e7ed88a389b7ae7550ffd`  
		Last Modified: Fri, 09 Nov 2018 23:48:04 GMT  
		Size: 2.2 KB (2216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8839f4153ad948308afcd478a6c4183a09787f4c16cb67b04bb113c41e8f2ab`  
		Last Modified: Fri, 09 Nov 2018 23:48:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:c75f155e6135cc00c8e75670be32912e94c438054a561b20d3e7af553333d4e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:34212631a8d9f812d388d74471d39dba8092939d62a7a418118561ba0237e6ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15133257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca7199e23213b124274f2625034ac9e399ca1040ce4b9362220c336718dee3fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 01:37:36 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 12 Sep 2018 01:37:36 GMT
ENV LANG=en_US.utf8
# Wed, 12 Sep 2018 01:37:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 12 Sep 2018 01:46:59 GMT
ENV PG_MAJOR=9.6
# Fri, 09 Nov 2018 23:23:21 GMT
ENV PG_VERSION=9.6.11
# Fri, 09 Nov 2018 23:23:21 GMT
ENV PG_SHA256=38250adc69a1e8613fb926c894cda1d01031391a03648894b9a6e13ff354a530
# Fri, 09 Nov 2018 23:26:47 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 09 Nov 2018 23:26:48 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:26:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:26:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:26:49 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:26:50 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:26:50 GMT
COPY file:433e69abe3111480b9ab7a66c431215e594d273aab16b3294422463bbdc123b6 in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:26:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:26:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:26:52 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:26:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cf8c12f47e64151935f8d8ea6529409384c9c0b753ef0df7df7711d35fe033`  
		Last Modified: Wed, 12 Sep 2018 02:03:23 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451b995b6a91a797f19b87bc008422c652e8a565818e0de3e794da96c08e4030`  
		Last Modified: Wed, 12 Sep 2018 02:03:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5c502a4ec29c71c375d0ec7856af66c13bc8fef0c651c810494129e54a9975`  
		Last Modified: Fri, 09 Nov 2018 23:48:08 GMT  
		Size: 12.9 MB (12916350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1fdd7652e25c976770037c4fb97b0468e5cc3a680f27456184fdff00323d9f`  
		Last Modified: Fri, 09 Nov 2018 23:48:04 GMT  
		Size: 7.1 KB (7077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9d9a649f3c9476d65a3f879fe5f19c1324c545cca222f3361d40dc60dabfd2`  
		Last Modified: Fri, 09 Nov 2018 23:48:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2754939e9d14e4009026b0748f04f59f539e770bcc958b9bd0b43d2fbbd67a`  
		Last Modified: Fri, 09 Nov 2018 23:48:04 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e76355a10e2eac9b99a1bab8fce3c005439c23658e7ed88a389b7ae7550ffd`  
		Last Modified: Fri, 09 Nov 2018 23:48:04 GMT  
		Size: 2.2 KB (2216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8839f4153ad948308afcd478a6c4183a09787f4c16cb67b04bb113c41e8f2ab`  
		Last Modified: Fri, 09 Nov 2018 23:48:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:c75f155e6135cc00c8e75670be32912e94c438054a561b20d3e7af553333d4e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:34212631a8d9f812d388d74471d39dba8092939d62a7a418118561ba0237e6ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15133257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca7199e23213b124274f2625034ac9e399ca1040ce4b9362220c336718dee3fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 01:37:36 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 12 Sep 2018 01:37:36 GMT
ENV LANG=en_US.utf8
# Wed, 12 Sep 2018 01:37:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 12 Sep 2018 01:46:59 GMT
ENV PG_MAJOR=9.6
# Fri, 09 Nov 2018 23:23:21 GMT
ENV PG_VERSION=9.6.11
# Fri, 09 Nov 2018 23:23:21 GMT
ENV PG_SHA256=38250adc69a1e8613fb926c894cda1d01031391a03648894b9a6e13ff354a530
# Fri, 09 Nov 2018 23:26:47 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 09 Nov 2018 23:26:48 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:26:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:26:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:26:49 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:26:50 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:26:50 GMT
COPY file:433e69abe3111480b9ab7a66c431215e594d273aab16b3294422463bbdc123b6 in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:26:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:26:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:26:52 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:26:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cf8c12f47e64151935f8d8ea6529409384c9c0b753ef0df7df7711d35fe033`  
		Last Modified: Wed, 12 Sep 2018 02:03:23 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451b995b6a91a797f19b87bc008422c652e8a565818e0de3e794da96c08e4030`  
		Last Modified: Wed, 12 Sep 2018 02:03:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5c502a4ec29c71c375d0ec7856af66c13bc8fef0c651c810494129e54a9975`  
		Last Modified: Fri, 09 Nov 2018 23:48:08 GMT  
		Size: 12.9 MB (12916350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1fdd7652e25c976770037c4fb97b0468e5cc3a680f27456184fdff00323d9f`  
		Last Modified: Fri, 09 Nov 2018 23:48:04 GMT  
		Size: 7.1 KB (7077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9d9a649f3c9476d65a3f879fe5f19c1324c545cca222f3361d40dc60dabfd2`  
		Last Modified: Fri, 09 Nov 2018 23:48:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2754939e9d14e4009026b0748f04f59f539e770bcc958b9bd0b43d2fbbd67a`  
		Last Modified: Fri, 09 Nov 2018 23:48:04 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e76355a10e2eac9b99a1bab8fce3c005439c23658e7ed88a389b7ae7550ffd`  
		Last Modified: Fri, 09 Nov 2018 23:48:04 GMT  
		Size: 2.2 KB (2216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8839f4153ad948308afcd478a6c4183a09787f4c16cb67b04bb113c41e8f2ab`  
		Last Modified: Fri, 09 Nov 2018 23:48:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:3eed68fc085fcbac75f627f2869483533c001e08c60101ae76725cef5042c199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

```console
$ docker pull postgres@sha256:be9f99ed5409b32091f9d1eb6b6b56b7c12873f00d9869e1437abca39b44c70e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28440289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daa3d8ceab8fb20db958591d5c00f3a8dfedeb544d050ea4b24b77fa64e0f12e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 01:37:36 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 12 Sep 2018 01:37:36 GMT
ENV LANG=en_US.utf8
# Wed, 12 Sep 2018 01:37:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 12 Sep 2018 01:37:37 GMT
ENV PG_MAJOR=11
# Fri, 09 Nov 2018 23:10:41 GMT
ENV PG_VERSION=11.1
# Fri, 09 Nov 2018 23:10:41 GMT
ENV PG_SHA256=90815e812874831e9a4bf6e1136bf73bc2c5a0464ef142e2dfea40cda206db08
# Fri, 09 Nov 2018 23:15:42 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 09 Nov 2018 23:15:44 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:15:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:15:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:15:46 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:15:46 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:15:47 GMT
COPY file:e4d1cf3be629c43237bbb1e31a071c44ad8c72b8285cb3fb00c70144997dbdb8 in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:15:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:15:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:15:48 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:15:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cf8c12f47e64151935f8d8ea6529409384c9c0b753ef0df7df7711d35fe033`  
		Last Modified: Wed, 12 Sep 2018 02:03:23 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:451b995b6a91a797f19b87bc008422c652e8a565818e0de3e794da96c08e4030`  
		Last Modified: Wed, 12 Sep 2018 02:03:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda9a808783224eb0ce089f3aaa181d456292eec737451d880e292889c9f89da`  
		Last Modified: Fri, 09 Nov 2018 23:44:34 GMT  
		Size: 26.2 MB (26222976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617cfb2ad78c053f64645902cbf4ee714c48460f31fcc076a88df9cf741503ce`  
		Last Modified: Fri, 09 Nov 2018 23:44:26 GMT  
		Size: 7.5 KB (7483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927e03469ddb087d2b951b16dfeaa4545ba0adeb744d3a92e8a050ba564068a2`  
		Last Modified: Fri, 09 Nov 2018 23:44:26 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ecfe99aa65a12315cd3a9be746588a7fe03871bab699cde44f8fb93d990518`  
		Last Modified: Fri, 09 Nov 2018 23:44:26 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c3bbab9cdb53216eff8078a3938db1b185faa63ac1c2c96dd2f91ca5ffcdcc`  
		Last Modified: Fri, 09 Nov 2018 23:44:26 GMT  
		Size: 2.2 KB (2217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a598e91f7f461e3a03ee9fe2804e9427396e5bf33054ffa047e1511c01f0acee`  
		Last Modified: Fri, 09 Nov 2018 23:44:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:4c9112088eee606b003ae3ed6ba562bd59affae2fe6de3c86e0140e3226c498e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

```console
$ docker pull postgres@sha256:d8dac2938e46ffa34558574ef63ad213989bc69be9c0f487d00a08057c4f21ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116398689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39dfbcb5424b271c8992c1a8d30539afd548723a8c63da44c1f07b59ee75ef59`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:03:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:03:28 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 16 Oct 2018 05:03:28 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 05:03:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 05:03:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 16 Oct 2018 05:03:48 GMT
ENV LANG=en_US.utf8
# Tue, 16 Oct 2018 05:03:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:03:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 05:03:55 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 16 Oct 2018 05:03:56 GMT
ENV PG_MAJOR=11
# Fri, 09 Nov 2018 23:09:11 GMT
ENV PG_VERSION=11.1-1.pgdg90+1
# Fri, 09 Nov 2018 23:10:07 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 09 Nov 2018 23:10:09 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 09 Nov 2018 23:10:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Nov 2018 23:10:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 09 Nov 2018 23:10:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Nov 2018 23:10:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Nov 2018 23:10:11 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Nov 2018 23:10:12 GMT
COPY file:8679fccc32fd3636a9beb8295538f82d9b1466e95ef6111e8c677c558ba9cb1e in /usr/local/bin/ 
# Fri, 09 Nov 2018 23:10:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Nov 2018 23:10:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Nov 2018 23:10:13 GMT
EXPOSE 5432/tcp
# Fri, 09 Nov 2018 23:10:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f213be5edb0d58a76b07e70b67bdd451fad3ae77b5b61eda447d78b2bd19c0`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 4.5 MB (4498513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c79723dc5107ebf180e7d4093d2d0e11c77c033f2204cb6d32fb0829b6f926a`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 1.8 KB (1780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603a66804109ee3bac87b3e90af8bc6b6324033b583865ba11e3522d766d87b1`  
		Last Modified: Tue, 16 Oct 2018 05:10:38 GMT  
		Size: 951.9 KB (951874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f1b901e523f1d7e8d4fb3c58476cc8124d1d3ef2ccfd482106d18817a84725`  
		Last Modified: Tue, 16 Oct 2018 05:10:40 GMT  
		Size: 6.2 MB (6182618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d9650419dec4ee4dc0a9f1d0e15687003bb5bbfba6c48b73aa1470a0d3456b`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 295.4 KB (295448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d87bb25bad9acad0898fd2f526f00bc84b2cd8f5e11f9a722d0176f27ae92c`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333a24caa91e9f50f31c74bb7a146770ce4be6c4ef74cff977f034c084bbd760`  
		Last Modified: Tue, 16 Oct 2018 05:10:37 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7e740c127fefebb50103b95d531d843a97e470cca75371aea650c7eb86e610`  
		Last Modified: Fri, 09 Nov 2018 23:43:29 GMT  
		Size: 82.0 MB (81967345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d55070c373eea7f242e6f1e1735610d48c22695ba957ac8ebdacea580a39090`  
		Last Modified: Fri, 09 Nov 2018 23:43:13 GMT  
		Size: 7.5 KB (7520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0831b17f07a34a76578b55253d4e1f34a275d38bb117e88806e4afab0b1d69`  
		Last Modified: Fri, 09 Nov 2018 23:43:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a917aee9e309902e01522c0d96a7caaa954f2f0af085d07371c553fc794b8677`  
		Last Modified: Fri, 09 Nov 2018 23:43:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b34f1eb023b4be59e10b5438bfae76aff4c628a9b8712da5a6a5ab43cedc207`  
		Last Modified: Fri, 09 Nov 2018 23:43:12 GMT  
		Size: 2.2 KB (2224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22f9971e744fe14fe71dec47c0fbb864d4d72874e251a632d664d66ca27e837`  
		Last Modified: Fri, 09 Nov 2018 23:43:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
