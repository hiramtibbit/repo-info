<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `postgres`

-	[`postgres:10`](#postgres10)
-	[`postgres:10.7`](#postgres107)
-	[`postgres:10.7-alpine`](#postgres107-alpine)
-	[`postgres:10-alpine`](#postgres10-alpine)
-	[`postgres:11`](#postgres11)
-	[`postgres:11.2`](#postgres112)
-	[`postgres:11.2-alpine`](#postgres112-alpine)
-	[`postgres:11-alpine`](#postgres11-alpine)
-	[`postgres:9`](#postgres9)
-	[`postgres:9.4`](#postgres94)
-	[`postgres:9.4.21`](#postgres9421)
-	[`postgres:9.4.21-alpine`](#postgres9421-alpine)
-	[`postgres:9.4-alpine`](#postgres94-alpine)
-	[`postgres:9.5`](#postgres95)
-	[`postgres:9.5.16`](#postgres9516)
-	[`postgres:9.5.16-alpine`](#postgres9516-alpine)
-	[`postgres:9.5-alpine`](#postgres95-alpine)
-	[`postgres:9.6`](#postgres96)
-	[`postgres:9.6.12`](#postgres9612)
-	[`postgres:9.6.12-alpine`](#postgres9612-alpine)
-	[`postgres:9.6-alpine`](#postgres96-alpine)
-	[`postgres:9-alpine`](#postgres9-alpine)
-	[`postgres:alpine`](#postgresalpine)
-	[`postgres:latest`](#postgreslatest)

## `postgres:10`

```console
$ docker pull postgres@sha256:bc146d7aa61839cf5db2ecf6a6ab3b7aa2bd433580e6f7f2f19fb5dbd8c4111d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:10` - linux; amd64

```console
$ docker pull postgres@sha256:6889c87b641288ef3af7dec419539100457bc7beeff691dabe567a77e2535f04
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.7 MB (83695946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1116039845792a4fb7733d71ceefcf84475bfa96bdbff0edd3a3ab512bb3ce5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:14:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:14:58 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 06 Feb 2019 08:14:58 GMT
ENV GOSU_VERSION=1.11
# Wed, 06 Feb 2019 08:15:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 08:15:28 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 06 Feb 2019 08:15:28 GMT
ENV LANG=en_US.utf8
# Wed, 06 Feb 2019 08:15:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:15:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 08:15:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 06 Feb 2019 08:17:05 GMT
ENV PG_MAJOR=10
# Fri, 15 Feb 2019 01:23:55 GMT
ENV PG_VERSION=10.7-1.pgdg90+1
# Fri, 15 Feb 2019 01:24:28 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 15 Feb 2019 01:24:29 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 01:24:29 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 01:24:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 15 Feb 2019 01:24:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 01:24:30 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 01:24:31 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 01:24:31 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 15 Feb 2019 01:24:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 01:24:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 01:24:32 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 01:24:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060245e5c0563270b03cc4af67a284bdce3f58983be3e71eb9d60190861ebcb7`  
		Last Modified: Wed, 06 Feb 2019 08:21:40 GMT  
		Size: 4.5 MB (4500991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c2e60cfc1cadc1b6e05d2f900f6a3302e61c6c57170c14c32d289551109c68`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.8 KB (1779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d23c24a9df2e81119a9939efbd3c42ea5eb664dd65b7fafdf399a773f3be2f`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.4 MB (1351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9998068fb35e68d9829cbb1a7a37589ff48b2aebaf3194b545d50609760e3482`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 6.2 MB (6182731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb2385a4bb96be7e220e8faec376295e847f784bf576f261f83b774d7b4a4b6`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 295.5 KB (295468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad14c51497d15dcaf0e6fd47457de1aee3eab7a1170bda4610dc9cd89c34c8a`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77519615ed405dfd5cdfd9d24a1e1865a74852d29efb6203415bfbd2e88487d5`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e2ab5a42c2bda808e514a7d3ba07d841a955e93c6649830a9ad7a878c04463`  
		Last Modified: Fri, 15 Feb 2019 01:39:25 GMT  
		Size: 48.8 MB (48847652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e716618888a96949e7f3ce8c629b9c2e49ec6cc9da8d1ec9e52c9fcad4c0b792`  
		Last Modified: Fri, 15 Feb 2019 01:39:14 GMT  
		Size: 8.0 KB (7977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4827cc0f8dc3abcb4d8d2413c9a467e07613fa25f67d545ddbcfff76d702a953`  
		Last Modified: Fri, 15 Feb 2019 01:39:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e5e073a788e81e111e6b9e035e3800f0e94575bf79237548a896b019465061`  
		Last Modified: Fri, 15 Feb 2019 01:39:14 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a68e12be87a94c5566b89522e83c554b14564ce05311498a12fb6ab1d30aab`  
		Last Modified: Fri, 15 Feb 2019 01:39:14 GMT  
		Size: 2.4 KB (2380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c51e8f2226c3f0d221a0c80d0639a86f463f0086fea271c620b6894ae47772a`  
		Last Modified: Fri, 15 Feb 2019 01:39:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10.7`

```console
$ docker pull postgres@sha256:bc146d7aa61839cf5db2ecf6a6ab3b7aa2bd433580e6f7f2f19fb5dbd8c4111d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:10.7` - linux; amd64

```console
$ docker pull postgres@sha256:6889c87b641288ef3af7dec419539100457bc7beeff691dabe567a77e2535f04
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.7 MB (83695946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1116039845792a4fb7733d71ceefcf84475bfa96bdbff0edd3a3ab512bb3ce5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:14:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:14:58 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 06 Feb 2019 08:14:58 GMT
ENV GOSU_VERSION=1.11
# Wed, 06 Feb 2019 08:15:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 08:15:28 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 06 Feb 2019 08:15:28 GMT
ENV LANG=en_US.utf8
# Wed, 06 Feb 2019 08:15:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:15:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 08:15:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 06 Feb 2019 08:17:05 GMT
ENV PG_MAJOR=10
# Fri, 15 Feb 2019 01:23:55 GMT
ENV PG_VERSION=10.7-1.pgdg90+1
# Fri, 15 Feb 2019 01:24:28 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 15 Feb 2019 01:24:29 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 01:24:29 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 01:24:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 15 Feb 2019 01:24:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 01:24:30 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 01:24:31 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 01:24:31 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 15 Feb 2019 01:24:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 01:24:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 01:24:32 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 01:24:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060245e5c0563270b03cc4af67a284bdce3f58983be3e71eb9d60190861ebcb7`  
		Last Modified: Wed, 06 Feb 2019 08:21:40 GMT  
		Size: 4.5 MB (4500991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c2e60cfc1cadc1b6e05d2f900f6a3302e61c6c57170c14c32d289551109c68`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.8 KB (1779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d23c24a9df2e81119a9939efbd3c42ea5eb664dd65b7fafdf399a773f3be2f`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.4 MB (1351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9998068fb35e68d9829cbb1a7a37589ff48b2aebaf3194b545d50609760e3482`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 6.2 MB (6182731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb2385a4bb96be7e220e8faec376295e847f784bf576f261f83b774d7b4a4b6`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 295.5 KB (295468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad14c51497d15dcaf0e6fd47457de1aee3eab7a1170bda4610dc9cd89c34c8a`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77519615ed405dfd5cdfd9d24a1e1865a74852d29efb6203415bfbd2e88487d5`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e2ab5a42c2bda808e514a7d3ba07d841a955e93c6649830a9ad7a878c04463`  
		Last Modified: Fri, 15 Feb 2019 01:39:25 GMT  
		Size: 48.8 MB (48847652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e716618888a96949e7f3ce8c629b9c2e49ec6cc9da8d1ec9e52c9fcad4c0b792`  
		Last Modified: Fri, 15 Feb 2019 01:39:14 GMT  
		Size: 8.0 KB (7977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4827cc0f8dc3abcb4d8d2413c9a467e07613fa25f67d545ddbcfff76d702a953`  
		Last Modified: Fri, 15 Feb 2019 01:39:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e5e073a788e81e111e6b9e035e3800f0e94575bf79237548a896b019465061`  
		Last Modified: Fri, 15 Feb 2019 01:39:14 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a68e12be87a94c5566b89522e83c554b14564ce05311498a12fb6ab1d30aab`  
		Last Modified: Fri, 15 Feb 2019 01:39:14 GMT  
		Size: 2.4 KB (2380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c51e8f2226c3f0d221a0c80d0639a86f463f0086fea271c620b6894ae47772a`  
		Last Modified: Fri, 15 Feb 2019 01:39:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10.7-alpine`

```console
$ docker pull postgres@sha256:733cf6bb2540370c1b4d657e6849cb9fb56c5674ef6b04e5eb0abb514732d0a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:10.7-alpine` - linux; amd64

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

## `postgres:10-alpine`

```console
$ docker pull postgres@sha256:733cf6bb2540370c1b4d657e6849cb9fb56c5674ef6b04e5eb0abb514732d0a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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

## `postgres:11`

```console
$ docker pull postgres@sha256:b7697fe780265144ae86403e36510c783e560030d144f43f436c4a83d4882250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:11` - linux; amd64

```console
$ docker pull postgres@sha256:a204a7544c05f1dd417fd5734dc79de7f6de5d785650237217928bd570d2a83e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116879260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f97a959a7d9ca63f108b845d6feb6fc6d9dda0914e47899bec625cee855165c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:14:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:14:58 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 06 Feb 2019 08:14:58 GMT
ENV GOSU_VERSION=1.11
# Wed, 06 Feb 2019 08:15:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 08:15:28 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 06 Feb 2019 08:15:28 GMT
ENV LANG=en_US.utf8
# Wed, 06 Feb 2019 08:15:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:15:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 08:15:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 06 Feb 2019 08:15:39 GMT
ENV PG_MAJOR=11
# Fri, 15 Feb 2019 01:19:48 GMT
ENV PG_VERSION=11.2-1.pgdg90+1
# Fri, 15 Feb 2019 01:20:33 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 15 Feb 2019 01:20:34 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 01:20:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 01:20:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 15 Feb 2019 01:20:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 01:20:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 01:20:36 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 01:20:36 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 15 Feb 2019 01:20:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 01:20:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 01:20:37 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 01:20:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060245e5c0563270b03cc4af67a284bdce3f58983be3e71eb9d60190861ebcb7`  
		Last Modified: Wed, 06 Feb 2019 08:21:40 GMT  
		Size: 4.5 MB (4500991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c2e60cfc1cadc1b6e05d2f900f6a3302e61c6c57170c14c32d289551109c68`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.8 KB (1779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d23c24a9df2e81119a9939efbd3c42ea5eb664dd65b7fafdf399a773f3be2f`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.4 MB (1351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9998068fb35e68d9829cbb1a7a37589ff48b2aebaf3194b545d50609760e3482`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 6.2 MB (6182731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb2385a4bb96be7e220e8faec376295e847f784bf576f261f83b774d7b4a4b6`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 295.5 KB (295468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad14c51497d15dcaf0e6fd47457de1aee3eab7a1170bda4610dc9cd89c34c8a`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77519615ed405dfd5cdfd9d24a1e1865a74852d29efb6203415bfbd2e88487d5`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef70912f86de53c644f47f81f1bd394364aa19101a273b71d2a3b57b2fd9261`  
		Last Modified: Fri, 15 Feb 2019 01:38:58 GMT  
		Size: 82.0 MB (82030707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cab331a5d3f88b0989b28e5d0d4bac798e765544800c009af5325281f2c1eb`  
		Last Modified: Fri, 15 Feb 2019 01:38:42 GMT  
		Size: 8.2 KB (8237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdf28fbe06fe5c13755fac7756d5a95c7d86516435046414ba24052db01c619`  
		Last Modified: Fri, 15 Feb 2019 01:38:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c6c5ea887a3f2fb71ffe0f36bb73f3a042230c3103d2c0cea177cdd60b32eb`  
		Last Modified: Fri, 15 Feb 2019 01:38:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae19128049b6e26a33d99822261cdb73b51369cbb32582fe9281b748ab78fc4c`  
		Last Modified: Fri, 15 Feb 2019 01:38:42 GMT  
		Size: 2.4 KB (2378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3968885a0fc08227f55c1ca1d0174784f1e5c2e97dbd8f291c1d93f173a306e8`  
		Last Modified: Fri, 15 Feb 2019 01:38:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:11.2`

```console
$ docker pull postgres@sha256:b7697fe780265144ae86403e36510c783e560030d144f43f436c4a83d4882250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:11.2` - linux; amd64

```console
$ docker pull postgres@sha256:a204a7544c05f1dd417fd5734dc79de7f6de5d785650237217928bd570d2a83e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116879260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f97a959a7d9ca63f108b845d6feb6fc6d9dda0914e47899bec625cee855165c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:14:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:14:58 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 06 Feb 2019 08:14:58 GMT
ENV GOSU_VERSION=1.11
# Wed, 06 Feb 2019 08:15:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 08:15:28 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 06 Feb 2019 08:15:28 GMT
ENV LANG=en_US.utf8
# Wed, 06 Feb 2019 08:15:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:15:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 08:15:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 06 Feb 2019 08:15:39 GMT
ENV PG_MAJOR=11
# Fri, 15 Feb 2019 01:19:48 GMT
ENV PG_VERSION=11.2-1.pgdg90+1
# Fri, 15 Feb 2019 01:20:33 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 15 Feb 2019 01:20:34 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 01:20:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 01:20:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 15 Feb 2019 01:20:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 01:20:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 01:20:36 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 01:20:36 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 15 Feb 2019 01:20:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 01:20:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 01:20:37 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 01:20:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060245e5c0563270b03cc4af67a284bdce3f58983be3e71eb9d60190861ebcb7`  
		Last Modified: Wed, 06 Feb 2019 08:21:40 GMT  
		Size: 4.5 MB (4500991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c2e60cfc1cadc1b6e05d2f900f6a3302e61c6c57170c14c32d289551109c68`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.8 KB (1779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d23c24a9df2e81119a9939efbd3c42ea5eb664dd65b7fafdf399a773f3be2f`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.4 MB (1351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9998068fb35e68d9829cbb1a7a37589ff48b2aebaf3194b545d50609760e3482`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 6.2 MB (6182731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb2385a4bb96be7e220e8faec376295e847f784bf576f261f83b774d7b4a4b6`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 295.5 KB (295468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad14c51497d15dcaf0e6fd47457de1aee3eab7a1170bda4610dc9cd89c34c8a`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77519615ed405dfd5cdfd9d24a1e1865a74852d29efb6203415bfbd2e88487d5`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef70912f86de53c644f47f81f1bd394364aa19101a273b71d2a3b57b2fd9261`  
		Last Modified: Fri, 15 Feb 2019 01:38:58 GMT  
		Size: 82.0 MB (82030707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cab331a5d3f88b0989b28e5d0d4bac798e765544800c009af5325281f2c1eb`  
		Last Modified: Fri, 15 Feb 2019 01:38:42 GMT  
		Size: 8.2 KB (8237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdf28fbe06fe5c13755fac7756d5a95c7d86516435046414ba24052db01c619`  
		Last Modified: Fri, 15 Feb 2019 01:38:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c6c5ea887a3f2fb71ffe0f36bb73f3a042230c3103d2c0cea177cdd60b32eb`  
		Last Modified: Fri, 15 Feb 2019 01:38:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae19128049b6e26a33d99822261cdb73b51369cbb32582fe9281b748ab78fc4c`  
		Last Modified: Fri, 15 Feb 2019 01:38:42 GMT  
		Size: 2.4 KB (2378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3968885a0fc08227f55c1ca1d0174784f1e5c2e97dbd8f291c1d93f173a306e8`  
		Last Modified: Fri, 15 Feb 2019 01:38:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:11.2-alpine`

```console
$ docker pull postgres@sha256:c78925f2cfdf276cedacec60244ab8dc6c21a23d99f7c4a4c3c1d5cf18683218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:11.2-alpine` - linux; amd64

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

## `postgres:11-alpine`

```console
$ docker pull postgres@sha256:c78925f2cfdf276cedacec60244ab8dc6c21a23d99f7c4a4c3c1d5cf18683218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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

## `postgres:9`

```console
$ docker pull postgres@sha256:3166fa713d455fdd18330d339e4bb9777be2450ec1c50bb460a8308704798a6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

```console
$ docker pull postgres@sha256:b0a41878db9ad7476b9a7c62bbddf6328eb8ca59e9c9fe2e173f7fe5cc06e912
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.2 MB (84163780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee5bfb5ec09669f4c90d9cbab577884843a3194dfc1e87bd0531b82c3fc4b71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:14:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:14:58 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 06 Feb 2019 08:14:58 GMT
ENV GOSU_VERSION=1.11
# Wed, 06 Feb 2019 08:15:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 08:15:28 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 06 Feb 2019 08:15:28 GMT
ENV LANG=en_US.utf8
# Wed, 06 Feb 2019 08:15:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:15:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 08:15:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 06 Feb 2019 08:18:10 GMT
ENV PG_MAJOR=9.6
# Fri, 15 Feb 2019 01:27:53 GMT
ENV PG_VERSION=9.6.12-1.pgdg90+1
# Fri, 15 Feb 2019 01:28:30 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 15 Feb 2019 01:28:31 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 01:28:32 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 01:28:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 15 Feb 2019 01:28:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 01:28:33 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 01:28:33 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 01:28:33 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 15 Feb 2019 01:28:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 01:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 01:28:34 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 01:28:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060245e5c0563270b03cc4af67a284bdce3f58983be3e71eb9d60190861ebcb7`  
		Last Modified: Wed, 06 Feb 2019 08:21:40 GMT  
		Size: 4.5 MB (4500991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c2e60cfc1cadc1b6e05d2f900f6a3302e61c6c57170c14c32d289551109c68`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.8 KB (1779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d23c24a9df2e81119a9939efbd3c42ea5eb664dd65b7fafdf399a773f3be2f`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.4 MB (1351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9998068fb35e68d9829cbb1a7a37589ff48b2aebaf3194b545d50609760e3482`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 6.2 MB (6182731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb2385a4bb96be7e220e8faec376295e847f784bf576f261f83b774d7b4a4b6`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 295.5 KB (295468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad14c51497d15dcaf0e6fd47457de1aee3eab7a1170bda4610dc9cd89c34c8a`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77519615ed405dfd5cdfd9d24a1e1865a74852d29efb6203415bfbd2e88487d5`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2583d86b10ce18c9db0373f690f372aacbdb920753c9ddddd3df0248292a0e23`  
		Last Modified: Fri, 15 Feb 2019 01:39:50 GMT  
		Size: 49.3 MB (49315672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b38b000c07d7a68f949e377b461b8e11eadf76100ad7588ce3cd407cf80b67`  
		Last Modified: Fri, 15 Feb 2019 01:39:40 GMT  
		Size: 7.8 KB (7787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07db5af498df7eea591c829fc3b5721ef081e44b480bc48ed4b41bc70b6b38a8`  
		Last Modified: Fri, 15 Feb 2019 01:39:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb47c09fd88e2086a2690e66475af48d734e113fb83c6afc313a491e0241636`  
		Last Modified: Fri, 15 Feb 2019 01:39:40 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438be684c73b6eeeb788bdd1f3901634ba9deae7a43b9dc98d54579d18540191`  
		Last Modified: Fri, 15 Feb 2019 01:39:40 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ccd7a501a5dad3e54968c1b4f6cbe777d9ad8773b2c213db73c119f71ee276`  
		Last Modified: Fri, 15 Feb 2019 01:39:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:df4ba773a3a3f15a4dc695b8e2302aa74629badb0b60c6bab1c2ba353d8686ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

```console
$ docker pull postgres@sha256:b3cdd7690fcd5f8f8a700aececfe4375094d8240438c68b39d13187cb3e5058a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82795371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cd7076dec7536e1a2fa598d7c23c39bd304e2840dc82b1f16e6086c6491e309`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:14:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:14:58 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 06 Feb 2019 08:14:58 GMT
ENV GOSU_VERSION=1.11
# Wed, 06 Feb 2019 08:15:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 08:15:28 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 06 Feb 2019 08:15:28 GMT
ENV LANG=en_US.utf8
# Wed, 06 Feb 2019 08:15:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:15:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 08:15:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 06 Feb 2019 08:20:21 GMT
ENV PG_MAJOR=9.4
# Fri, 15 Feb 2019 01:35:20 GMT
ENV PG_VERSION=9.4.21-1.pgdg90+1
# Fri, 15 Feb 2019 01:35:52 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 15 Feb 2019 01:35:53 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 01:35:54 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 01:35:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 15 Feb 2019 01:35:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 01:35:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 01:35:55 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 01:35:55 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 15 Feb 2019 01:35:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 01:35:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 01:35:56 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 01:35:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060245e5c0563270b03cc4af67a284bdce3f58983be3e71eb9d60190861ebcb7`  
		Last Modified: Wed, 06 Feb 2019 08:21:40 GMT  
		Size: 4.5 MB (4500991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c2e60cfc1cadc1b6e05d2f900f6a3302e61c6c57170c14c32d289551109c68`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.8 KB (1779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d23c24a9df2e81119a9939efbd3c42ea5eb664dd65b7fafdf399a773f3be2f`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.4 MB (1351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9998068fb35e68d9829cbb1a7a37589ff48b2aebaf3194b545d50609760e3482`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 6.2 MB (6182731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb2385a4bb96be7e220e8faec376295e847f784bf576f261f83b774d7b4a4b6`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 295.5 KB (295468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad14c51497d15dcaf0e6fd47457de1aee3eab7a1170bda4610dc9cd89c34c8a`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77519615ed405dfd5cdfd9d24a1e1865a74852d29efb6203415bfbd2e88487d5`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532c705012dd4cd96d78b641c55f715bbdce81d1cd6d7dbb1afc07e4608d7ce6`  
		Last Modified: Fri, 15 Feb 2019 01:40:42 GMT  
		Size: 47.9 MB (47947682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25389b0be4fb3b11adf208cd37e958c43fb38ecb06bd489218d4df18ae57962`  
		Last Modified: Fri, 15 Feb 2019 01:40:32 GMT  
		Size: 7.4 KB (7370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05646b11ab9a56fd577731605a8bb2ad31a70a5bfa738f8a83e36203218f39c0`  
		Last Modified: Fri, 15 Feb 2019 01:40:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafb52aa677bb40f975ba0314c85ea52c9f5ea65bee2c7e73f5f55e225bb9dfc`  
		Last Modified: Fri, 15 Feb 2019 01:40:32 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c5de2f401c7686689edd4702259fb7ef306007b5c30f0b190e66eecf640aa3`  
		Last Modified: Fri, 15 Feb 2019 01:40:32 GMT  
		Size: 2.4 KB (2380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84558ac1077e786cefb7fa63d0dc07e712b046e6eb403547fa9e8ed22157842`  
		Last Modified: Fri, 15 Feb 2019 01:40:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.21`

```console
$ docker pull postgres@sha256:df4ba773a3a3f15a4dc695b8e2302aa74629badb0b60c6bab1c2ba353d8686ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4.21` - linux; amd64

```console
$ docker pull postgres@sha256:b3cdd7690fcd5f8f8a700aececfe4375094d8240438c68b39d13187cb3e5058a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82795371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cd7076dec7536e1a2fa598d7c23c39bd304e2840dc82b1f16e6086c6491e309`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:14:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:14:58 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 06 Feb 2019 08:14:58 GMT
ENV GOSU_VERSION=1.11
# Wed, 06 Feb 2019 08:15:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 08:15:28 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 06 Feb 2019 08:15:28 GMT
ENV LANG=en_US.utf8
# Wed, 06 Feb 2019 08:15:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:15:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 08:15:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 06 Feb 2019 08:20:21 GMT
ENV PG_MAJOR=9.4
# Fri, 15 Feb 2019 01:35:20 GMT
ENV PG_VERSION=9.4.21-1.pgdg90+1
# Fri, 15 Feb 2019 01:35:52 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 15 Feb 2019 01:35:53 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 01:35:54 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 01:35:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 15 Feb 2019 01:35:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 01:35:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 01:35:55 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 01:35:55 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 15 Feb 2019 01:35:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 01:35:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 01:35:56 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 01:35:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060245e5c0563270b03cc4af67a284bdce3f58983be3e71eb9d60190861ebcb7`  
		Last Modified: Wed, 06 Feb 2019 08:21:40 GMT  
		Size: 4.5 MB (4500991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c2e60cfc1cadc1b6e05d2f900f6a3302e61c6c57170c14c32d289551109c68`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.8 KB (1779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d23c24a9df2e81119a9939efbd3c42ea5eb664dd65b7fafdf399a773f3be2f`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.4 MB (1351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9998068fb35e68d9829cbb1a7a37589ff48b2aebaf3194b545d50609760e3482`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 6.2 MB (6182731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb2385a4bb96be7e220e8faec376295e847f784bf576f261f83b774d7b4a4b6`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 295.5 KB (295468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad14c51497d15dcaf0e6fd47457de1aee3eab7a1170bda4610dc9cd89c34c8a`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77519615ed405dfd5cdfd9d24a1e1865a74852d29efb6203415bfbd2e88487d5`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532c705012dd4cd96d78b641c55f715bbdce81d1cd6d7dbb1afc07e4608d7ce6`  
		Last Modified: Fri, 15 Feb 2019 01:40:42 GMT  
		Size: 47.9 MB (47947682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25389b0be4fb3b11adf208cd37e958c43fb38ecb06bd489218d4df18ae57962`  
		Last Modified: Fri, 15 Feb 2019 01:40:32 GMT  
		Size: 7.4 KB (7370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05646b11ab9a56fd577731605a8bb2ad31a70a5bfa738f8a83e36203218f39c0`  
		Last Modified: Fri, 15 Feb 2019 01:40:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafb52aa677bb40f975ba0314c85ea52c9f5ea65bee2c7e73f5f55e225bb9dfc`  
		Last Modified: Fri, 15 Feb 2019 01:40:32 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c5de2f401c7686689edd4702259fb7ef306007b5c30f0b190e66eecf640aa3`  
		Last Modified: Fri, 15 Feb 2019 01:40:32 GMT  
		Size: 2.4 KB (2380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84558ac1077e786cefb7fa63d0dc07e712b046e6eb403547fa9e8ed22157842`  
		Last Modified: Fri, 15 Feb 2019 01:40:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.21-alpine`

```console
$ docker pull postgres@sha256:b69bd890db26d9c8319f53ace6b889a7da321a2f573983a88d0971dbc9b16d68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4.21-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:330e5e5e17539f16632368c73430916090abf38cf5bca87749532489530961cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14012122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6910614b4b58fe79ae6bd4fda256f444ddd5e8ad30af8c9e599e2c39b39fbeb2`
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
# Tue, 05 Feb 2019 20:47:18 GMT
ENV PG_MAJOR=9.4
# Fri, 15 Feb 2019 01:36:04 GMT
ENV PG_VERSION=9.4.21
# Fri, 15 Feb 2019 01:36:05 GMT
ENV PG_SHA256=0049b4d239a00654e792997aff32a0be7a6bdd922b5ca97f1a06797cd4d06006
# Fri, 15 Feb 2019 01:38:24 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 15 Feb 2019 01:38:25 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 01:38:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 01:38:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 01:38:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 01:38:26 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 01:38:27 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 15 Feb 2019 01:38:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 01:38:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 01:38:28 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 01:38:28 GMT
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
	-	`sha256:e42f49229d841692b386e59902793b14ba97d7340a26bfd43086f38edaa49ca0`  
		Last Modified: Fri, 15 Feb 2019 01:40:49 GMT  
		Size: 11.2 MB (11247646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2129d219d0170ed19b192386edf3b783d545a1a762118994999fb3c731675070`  
		Last Modified: Fri, 15 Feb 2019 01:40:46 GMT  
		Size: 6.7 KB (6692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6682a1c6fe960108c851e6514179ce1a2e31f38044b28a3610c12083af853e`  
		Last Modified: Fri, 15 Feb 2019 01:40:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23ef3fef0595879a1ad67d4cecf51b025ffb3e95d4384bcb16364b5a1411a86`  
		Last Modified: Fri, 15 Feb 2019 01:40:46 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b29a973f78a89a30f458b95f807fa9dc4b00ae9bdb71134fb3c3cc3922226cc`  
		Last Modified: Fri, 15 Feb 2019 01:40:46 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e080693946917aa1e8dfb0abedb3bb19579b760253239448d0f5a31f3ba33d76`  
		Last Modified: Fri, 15 Feb 2019 01:40:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:b69bd890db26d9c8319f53ace6b889a7da321a2f573983a88d0971dbc9b16d68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:330e5e5e17539f16632368c73430916090abf38cf5bca87749532489530961cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14012122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6910614b4b58fe79ae6bd4fda256f444ddd5e8ad30af8c9e599e2c39b39fbeb2`
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
# Tue, 05 Feb 2019 20:47:18 GMT
ENV PG_MAJOR=9.4
# Fri, 15 Feb 2019 01:36:04 GMT
ENV PG_VERSION=9.4.21
# Fri, 15 Feb 2019 01:36:05 GMT
ENV PG_SHA256=0049b4d239a00654e792997aff32a0be7a6bdd922b5ca97f1a06797cd4d06006
# Fri, 15 Feb 2019 01:38:24 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 15 Feb 2019 01:38:25 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 01:38:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 01:38:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 01:38:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 01:38:26 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 01:38:27 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 15 Feb 2019 01:38:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 01:38:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 01:38:28 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 01:38:28 GMT
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
	-	`sha256:e42f49229d841692b386e59902793b14ba97d7340a26bfd43086f38edaa49ca0`  
		Last Modified: Fri, 15 Feb 2019 01:40:49 GMT  
		Size: 11.2 MB (11247646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2129d219d0170ed19b192386edf3b783d545a1a762118994999fb3c731675070`  
		Last Modified: Fri, 15 Feb 2019 01:40:46 GMT  
		Size: 6.7 KB (6692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6682a1c6fe960108c851e6514179ce1a2e31f38044b28a3610c12083af853e`  
		Last Modified: Fri, 15 Feb 2019 01:40:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23ef3fef0595879a1ad67d4cecf51b025ffb3e95d4384bcb16364b5a1411a86`  
		Last Modified: Fri, 15 Feb 2019 01:40:46 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b29a973f78a89a30f458b95f807fa9dc4b00ae9bdb71134fb3c3cc3922226cc`  
		Last Modified: Fri, 15 Feb 2019 01:40:46 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e080693946917aa1e8dfb0abedb3bb19579b760253239448d0f5a31f3ba33d76`  
		Last Modified: Fri, 15 Feb 2019 01:40:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:67e6428afeefe772d54840dd8ea3dabb21f7f4de29e17cea67dd518374d54920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

```console
$ docker pull postgres@sha256:d5d81deba377bb26bbb3311ea9c67c9ac0260ed4fc757a6e83408cadce07d172
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83163176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb5a9a1cdb803a39762ab35380083ef164bf0c886d4193851d0c42de156fc73a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:14:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:14:58 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 06 Feb 2019 08:14:58 GMT
ENV GOSU_VERSION=1.11
# Wed, 06 Feb 2019 08:15:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 08:15:28 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 06 Feb 2019 08:15:28 GMT
ENV LANG=en_US.utf8
# Wed, 06 Feb 2019 08:15:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:15:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 08:15:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 06 Feb 2019 08:19:16 GMT
ENV PG_MAJOR=9.5
# Fri, 15 Feb 2019 01:31:52 GMT
ENV PG_VERSION=9.5.16-1.pgdg90+1
# Fri, 15 Feb 2019 01:32:24 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 15 Feb 2019 01:32:25 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 01:32:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 01:32:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 15 Feb 2019 01:32:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 01:32:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 01:32:27 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 01:32:27 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 15 Feb 2019 01:32:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 01:32:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 01:32:28 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 01:32:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060245e5c0563270b03cc4af67a284bdce3f58983be3e71eb9d60190861ebcb7`  
		Last Modified: Wed, 06 Feb 2019 08:21:40 GMT  
		Size: 4.5 MB (4500991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c2e60cfc1cadc1b6e05d2f900f6a3302e61c6c57170c14c32d289551109c68`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.8 KB (1779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d23c24a9df2e81119a9939efbd3c42ea5eb664dd65b7fafdf399a773f3be2f`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.4 MB (1351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9998068fb35e68d9829cbb1a7a37589ff48b2aebaf3194b545d50609760e3482`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 6.2 MB (6182731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb2385a4bb96be7e220e8faec376295e847f784bf576f261f83b774d7b4a4b6`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 295.5 KB (295468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad14c51497d15dcaf0e6fd47457de1aee3eab7a1170bda4610dc9cd89c34c8a`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77519615ed405dfd5cdfd9d24a1e1865a74852d29efb6203415bfbd2e88487d5`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff04480e5634b02694aeaaa2c5dfda4a7d6326c7f4b27987e2cd7ab2d0fc8e0`  
		Last Modified: Fri, 15 Feb 2019 01:40:16 GMT  
		Size: 48.3 MB (48315359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916e7e892f3f5e5a23f9078cfec48187b51ef5600b88942d8c53ff2cb9c80b6f`  
		Last Modified: Fri, 15 Feb 2019 01:40:04 GMT  
		Size: 7.5 KB (7500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fd8fcc5eac8516d1c4c05fa3fafa5820cfd184041b7487c08f798d82510d72`  
		Last Modified: Fri, 15 Feb 2019 01:40:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5992aefdef8951564332018bfbfce00427bb776ec6199c88d59257606f2717`  
		Last Modified: Fri, 15 Feb 2019 01:40:04 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f03e4556d63d0df7b3fa80f9b8a3e03d6fe8c211c462aedd5f0e41436ea9f73`  
		Last Modified: Fri, 15 Feb 2019 01:40:05 GMT  
		Size: 2.4 KB (2380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ca8439424b33a45ffef7f9d208190a5eb1e5fc4769e6a55bc1591c610bc05d`  
		Last Modified: Fri, 15 Feb 2019 01:40:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.16`

```console
$ docker pull postgres@sha256:67e6428afeefe772d54840dd8ea3dabb21f7f4de29e17cea67dd518374d54920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5.16` - linux; amd64

```console
$ docker pull postgres@sha256:d5d81deba377bb26bbb3311ea9c67c9ac0260ed4fc757a6e83408cadce07d172
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83163176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb5a9a1cdb803a39762ab35380083ef164bf0c886d4193851d0c42de156fc73a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:14:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:14:58 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 06 Feb 2019 08:14:58 GMT
ENV GOSU_VERSION=1.11
# Wed, 06 Feb 2019 08:15:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 08:15:28 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 06 Feb 2019 08:15:28 GMT
ENV LANG=en_US.utf8
# Wed, 06 Feb 2019 08:15:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:15:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 08:15:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 06 Feb 2019 08:19:16 GMT
ENV PG_MAJOR=9.5
# Fri, 15 Feb 2019 01:31:52 GMT
ENV PG_VERSION=9.5.16-1.pgdg90+1
# Fri, 15 Feb 2019 01:32:24 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 15 Feb 2019 01:32:25 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 01:32:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 01:32:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 15 Feb 2019 01:32:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 01:32:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 01:32:27 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 01:32:27 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 15 Feb 2019 01:32:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 01:32:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 01:32:28 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 01:32:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060245e5c0563270b03cc4af67a284bdce3f58983be3e71eb9d60190861ebcb7`  
		Last Modified: Wed, 06 Feb 2019 08:21:40 GMT  
		Size: 4.5 MB (4500991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c2e60cfc1cadc1b6e05d2f900f6a3302e61c6c57170c14c32d289551109c68`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.8 KB (1779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d23c24a9df2e81119a9939efbd3c42ea5eb664dd65b7fafdf399a773f3be2f`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.4 MB (1351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9998068fb35e68d9829cbb1a7a37589ff48b2aebaf3194b545d50609760e3482`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 6.2 MB (6182731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb2385a4bb96be7e220e8faec376295e847f784bf576f261f83b774d7b4a4b6`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 295.5 KB (295468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad14c51497d15dcaf0e6fd47457de1aee3eab7a1170bda4610dc9cd89c34c8a`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77519615ed405dfd5cdfd9d24a1e1865a74852d29efb6203415bfbd2e88487d5`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff04480e5634b02694aeaaa2c5dfda4a7d6326c7f4b27987e2cd7ab2d0fc8e0`  
		Last Modified: Fri, 15 Feb 2019 01:40:16 GMT  
		Size: 48.3 MB (48315359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916e7e892f3f5e5a23f9078cfec48187b51ef5600b88942d8c53ff2cb9c80b6f`  
		Last Modified: Fri, 15 Feb 2019 01:40:04 GMT  
		Size: 7.5 KB (7500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fd8fcc5eac8516d1c4c05fa3fafa5820cfd184041b7487c08f798d82510d72`  
		Last Modified: Fri, 15 Feb 2019 01:40:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b5992aefdef8951564332018bfbfce00427bb776ec6199c88d59257606f2717`  
		Last Modified: Fri, 15 Feb 2019 01:40:04 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f03e4556d63d0df7b3fa80f9b8a3e03d6fe8c211c462aedd5f0e41436ea9f73`  
		Last Modified: Fri, 15 Feb 2019 01:40:05 GMT  
		Size: 2.4 KB (2380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ca8439424b33a45ffef7f9d208190a5eb1e5fc4769e6a55bc1591c610bc05d`  
		Last Modified: Fri, 15 Feb 2019 01:40:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.16-alpine`

```console
$ docker pull postgres@sha256:c17a9787a128528b4f10b1e69ade681a4778b4e167f2b027e0e635a13c4401eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5.16-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:bc99773085c94b41bc9a440c86f7d1dc1a5affd23ab29eb3b5410a89161c180a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14158033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6024545cb8a2ef7a844d2ee788191386daad502847e94ccf3676518b5cf53159`
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
# Tue, 05 Feb 2019 20:44:17 GMT
ENV PG_MAJOR=9.5
# Fri, 15 Feb 2019 01:32:36 GMT
ENV PG_VERSION=9.5.16
# Fri, 15 Feb 2019 01:32:37 GMT
ENV PG_SHA256=a4576c95d4dcee8d4b7835b333d38e909848222e4b87895878bb1c026206e131
# Fri, 15 Feb 2019 01:35:06 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 15 Feb 2019 01:35:07 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 01:35:07 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 01:35:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 01:35:08 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 01:35:08 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 01:35:09 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 15 Feb 2019 01:35:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 01:35:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 01:35:10 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 01:35:10 GMT
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
	-	`sha256:89d40ad608a9c991c5cf4fb031ad75e09d4bb87614977755a484431f15a23b5e`  
		Last Modified: Fri, 15 Feb 2019 01:40:29 GMT  
		Size: 11.4 MB (11393410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669cce620208224b682284fcf3e2cd04cbd1acc2124bce94a83c45e5ca387f01`  
		Last Modified: Fri, 15 Feb 2019 01:40:25 GMT  
		Size: 6.8 KB (6838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083dc4fa5bacf0d92db1dc496be2d97356589b15000227e0a849dbb0371062d5`  
		Last Modified: Fri, 15 Feb 2019 01:40:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c60465c0f191c0eee67da979779c9999952931f579ddb40844c2a9f46bb56d`  
		Last Modified: Fri, 15 Feb 2019 01:40:24 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd264835658a798768069c024fc31b85e1d3200898843bbcb2e7693f9c7bcd8`  
		Last Modified: Fri, 15 Feb 2019 01:40:25 GMT  
		Size: 2.4 KB (2372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbea960719617c70119c955acae9a614a601b4c8154f9c999572ab7a62fb752d`  
		Last Modified: Fri, 15 Feb 2019 01:40:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:c17a9787a128528b4f10b1e69ade681a4778b4e167f2b027e0e635a13c4401eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:bc99773085c94b41bc9a440c86f7d1dc1a5affd23ab29eb3b5410a89161c180a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14158033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6024545cb8a2ef7a844d2ee788191386daad502847e94ccf3676518b5cf53159`
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
# Tue, 05 Feb 2019 20:44:17 GMT
ENV PG_MAJOR=9.5
# Fri, 15 Feb 2019 01:32:36 GMT
ENV PG_VERSION=9.5.16
# Fri, 15 Feb 2019 01:32:37 GMT
ENV PG_SHA256=a4576c95d4dcee8d4b7835b333d38e909848222e4b87895878bb1c026206e131
# Fri, 15 Feb 2019 01:35:06 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 15 Feb 2019 01:35:07 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 01:35:07 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 01:35:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 01:35:08 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 01:35:08 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 01:35:09 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 15 Feb 2019 01:35:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 01:35:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 01:35:10 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 01:35:10 GMT
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
	-	`sha256:89d40ad608a9c991c5cf4fb031ad75e09d4bb87614977755a484431f15a23b5e`  
		Last Modified: Fri, 15 Feb 2019 01:40:29 GMT  
		Size: 11.4 MB (11393410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669cce620208224b682284fcf3e2cd04cbd1acc2124bce94a83c45e5ca387f01`  
		Last Modified: Fri, 15 Feb 2019 01:40:25 GMT  
		Size: 6.8 KB (6838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083dc4fa5bacf0d92db1dc496be2d97356589b15000227e0a849dbb0371062d5`  
		Last Modified: Fri, 15 Feb 2019 01:40:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c60465c0f191c0eee67da979779c9999952931f579ddb40844c2a9f46bb56d`  
		Last Modified: Fri, 15 Feb 2019 01:40:24 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd264835658a798768069c024fc31b85e1d3200898843bbcb2e7693f9c7bcd8`  
		Last Modified: Fri, 15 Feb 2019 01:40:25 GMT  
		Size: 2.4 KB (2372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbea960719617c70119c955acae9a614a601b4c8154f9c999572ab7a62fb752d`  
		Last Modified: Fri, 15 Feb 2019 01:40:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:3166fa713d455fdd18330d339e4bb9777be2450ec1c50bb460a8308704798a6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

```console
$ docker pull postgres@sha256:b0a41878db9ad7476b9a7c62bbddf6328eb8ca59e9c9fe2e173f7fe5cc06e912
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.2 MB (84163780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee5bfb5ec09669f4c90d9cbab577884843a3194dfc1e87bd0531b82c3fc4b71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:14:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:14:58 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 06 Feb 2019 08:14:58 GMT
ENV GOSU_VERSION=1.11
# Wed, 06 Feb 2019 08:15:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 08:15:28 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 06 Feb 2019 08:15:28 GMT
ENV LANG=en_US.utf8
# Wed, 06 Feb 2019 08:15:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:15:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 08:15:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 06 Feb 2019 08:18:10 GMT
ENV PG_MAJOR=9.6
# Fri, 15 Feb 2019 01:27:53 GMT
ENV PG_VERSION=9.6.12-1.pgdg90+1
# Fri, 15 Feb 2019 01:28:30 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 15 Feb 2019 01:28:31 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 01:28:32 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 01:28:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 15 Feb 2019 01:28:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 01:28:33 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 01:28:33 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 01:28:33 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 15 Feb 2019 01:28:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 01:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 01:28:34 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 01:28:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060245e5c0563270b03cc4af67a284bdce3f58983be3e71eb9d60190861ebcb7`  
		Last Modified: Wed, 06 Feb 2019 08:21:40 GMT  
		Size: 4.5 MB (4500991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c2e60cfc1cadc1b6e05d2f900f6a3302e61c6c57170c14c32d289551109c68`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.8 KB (1779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d23c24a9df2e81119a9939efbd3c42ea5eb664dd65b7fafdf399a773f3be2f`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.4 MB (1351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9998068fb35e68d9829cbb1a7a37589ff48b2aebaf3194b545d50609760e3482`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 6.2 MB (6182731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb2385a4bb96be7e220e8faec376295e847f784bf576f261f83b774d7b4a4b6`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 295.5 KB (295468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad14c51497d15dcaf0e6fd47457de1aee3eab7a1170bda4610dc9cd89c34c8a`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77519615ed405dfd5cdfd9d24a1e1865a74852d29efb6203415bfbd2e88487d5`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2583d86b10ce18c9db0373f690f372aacbdb920753c9ddddd3df0248292a0e23`  
		Last Modified: Fri, 15 Feb 2019 01:39:50 GMT  
		Size: 49.3 MB (49315672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b38b000c07d7a68f949e377b461b8e11eadf76100ad7588ce3cd407cf80b67`  
		Last Modified: Fri, 15 Feb 2019 01:39:40 GMT  
		Size: 7.8 KB (7787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07db5af498df7eea591c829fc3b5721ef081e44b480bc48ed4b41bc70b6b38a8`  
		Last Modified: Fri, 15 Feb 2019 01:39:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb47c09fd88e2086a2690e66475af48d734e113fb83c6afc313a491e0241636`  
		Last Modified: Fri, 15 Feb 2019 01:39:40 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438be684c73b6eeeb788bdd1f3901634ba9deae7a43b9dc98d54579d18540191`  
		Last Modified: Fri, 15 Feb 2019 01:39:40 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ccd7a501a5dad3e54968c1b4f6cbe777d9ad8773b2c213db73c119f71ee276`  
		Last Modified: Fri, 15 Feb 2019 01:39:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.12`

```console
$ docker pull postgres@sha256:3166fa713d455fdd18330d339e4bb9777be2450ec1c50bb460a8308704798a6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6.12` - linux; amd64

```console
$ docker pull postgres@sha256:b0a41878db9ad7476b9a7c62bbddf6328eb8ca59e9c9fe2e173f7fe5cc06e912
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.2 MB (84163780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee5bfb5ec09669f4c90d9cbab577884843a3194dfc1e87bd0531b82c3fc4b71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:14:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:14:58 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 06 Feb 2019 08:14:58 GMT
ENV GOSU_VERSION=1.11
# Wed, 06 Feb 2019 08:15:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 08:15:28 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 06 Feb 2019 08:15:28 GMT
ENV LANG=en_US.utf8
# Wed, 06 Feb 2019 08:15:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:15:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 08:15:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 06 Feb 2019 08:18:10 GMT
ENV PG_MAJOR=9.6
# Fri, 15 Feb 2019 01:27:53 GMT
ENV PG_VERSION=9.6.12-1.pgdg90+1
# Fri, 15 Feb 2019 01:28:30 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 15 Feb 2019 01:28:31 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 01:28:32 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 01:28:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 15 Feb 2019 01:28:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 01:28:33 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 01:28:33 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 01:28:33 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 15 Feb 2019 01:28:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 01:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 01:28:34 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 01:28:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060245e5c0563270b03cc4af67a284bdce3f58983be3e71eb9d60190861ebcb7`  
		Last Modified: Wed, 06 Feb 2019 08:21:40 GMT  
		Size: 4.5 MB (4500991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c2e60cfc1cadc1b6e05d2f900f6a3302e61c6c57170c14c32d289551109c68`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.8 KB (1779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d23c24a9df2e81119a9939efbd3c42ea5eb664dd65b7fafdf399a773f3be2f`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.4 MB (1351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9998068fb35e68d9829cbb1a7a37589ff48b2aebaf3194b545d50609760e3482`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 6.2 MB (6182731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb2385a4bb96be7e220e8faec376295e847f784bf576f261f83b774d7b4a4b6`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 295.5 KB (295468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad14c51497d15dcaf0e6fd47457de1aee3eab7a1170bda4610dc9cd89c34c8a`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77519615ed405dfd5cdfd9d24a1e1865a74852d29efb6203415bfbd2e88487d5`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2583d86b10ce18c9db0373f690f372aacbdb920753c9ddddd3df0248292a0e23`  
		Last Modified: Fri, 15 Feb 2019 01:39:50 GMT  
		Size: 49.3 MB (49315672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b38b000c07d7a68f949e377b461b8e11eadf76100ad7588ce3cd407cf80b67`  
		Last Modified: Fri, 15 Feb 2019 01:39:40 GMT  
		Size: 7.8 KB (7787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07db5af498df7eea591c829fc3b5721ef081e44b480bc48ed4b41bc70b6b38a8`  
		Last Modified: Fri, 15 Feb 2019 01:39:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb47c09fd88e2086a2690e66475af48d734e113fb83c6afc313a491e0241636`  
		Last Modified: Fri, 15 Feb 2019 01:39:40 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438be684c73b6eeeb788bdd1f3901634ba9deae7a43b9dc98d54579d18540191`  
		Last Modified: Fri, 15 Feb 2019 01:39:40 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ccd7a501a5dad3e54968c1b4f6cbe777d9ad8773b2c213db73c119f71ee276`  
		Last Modified: Fri, 15 Feb 2019 01:39:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.12-alpine`

```console
$ docker pull postgres@sha256:adb8a415ad2686d76bd083b3d6928bf5645ba306f5b57b359c137f9c0193b4bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6.12-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:42202f4dfcf1b34f568bcfac9b9c24457924fdd3afe5b0d4e7ad83534ccdcdab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14440012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ef5b42f785224f125c818c3b38be84170e7f6a8b404ecee97c0984178a1392`
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
# Tue, 05 Feb 2019 20:41:00 GMT
ENV PG_MAJOR=9.6
# Fri, 15 Feb 2019 01:28:38 GMT
ENV PG_VERSION=9.6.12
# Fri, 15 Feb 2019 01:28:38 GMT
ENV PG_SHA256=2e8c8446ba94767bda8a26cf5a2152bf0ae68a86aaebf894132a763084579d84
# Fri, 15 Feb 2019 01:31:32 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 15 Feb 2019 01:31:32 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 01:31:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 01:31:33 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 01:31:34 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 01:31:34 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 01:31:34 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 15 Feb 2019 01:31:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 01:31:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 01:31:35 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 01:31:36 GMT
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
	-	`sha256:eb2d56ef9a960d2014e9c33296c0d1fb3b5a35968f0b8c8b3163a45620c28db2`  
		Last Modified: Fri, 15 Feb 2019 01:39:59 GMT  
		Size: 11.7 MB (11675115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4e0ef1270a13d67d1445bf3305261a304ada24997ae7660313f93a8d09de77`  
		Last Modified: Fri, 15 Feb 2019 01:39:55 GMT  
		Size: 7.1 KB (7112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad54f9c97b21bab5f8c40141c4ab7cbff0a011726672d0a8b1054fa8e0ff46b`  
		Last Modified: Fri, 15 Feb 2019 01:39:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42b6e0f3ebbc20e8ea4707bba4519c411072284af92e0fbaf3ded3cb720141d`  
		Last Modified: Fri, 15 Feb 2019 01:39:55 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8eea6cb61759cbbd8b8db486da67a0faf2ddcb440ab2d90a1225ed063789fef`  
		Last Modified: Fri, 15 Feb 2019 01:39:55 GMT  
		Size: 2.4 KB (2372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51965c33bfa27093d65cfee6deea59563378aa628dda5c27f8d7235ca8ef3662`  
		Last Modified: Fri, 15 Feb 2019 01:39:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:adb8a415ad2686d76bd083b3d6928bf5645ba306f5b57b359c137f9c0193b4bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:42202f4dfcf1b34f568bcfac9b9c24457924fdd3afe5b0d4e7ad83534ccdcdab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14440012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ef5b42f785224f125c818c3b38be84170e7f6a8b404ecee97c0984178a1392`
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
# Tue, 05 Feb 2019 20:41:00 GMT
ENV PG_MAJOR=9.6
# Fri, 15 Feb 2019 01:28:38 GMT
ENV PG_VERSION=9.6.12
# Fri, 15 Feb 2019 01:28:38 GMT
ENV PG_SHA256=2e8c8446ba94767bda8a26cf5a2152bf0ae68a86aaebf894132a763084579d84
# Fri, 15 Feb 2019 01:31:32 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 15 Feb 2019 01:31:32 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 01:31:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 01:31:33 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 01:31:34 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 01:31:34 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 01:31:34 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 15 Feb 2019 01:31:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 01:31:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 01:31:35 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 01:31:36 GMT
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
	-	`sha256:eb2d56ef9a960d2014e9c33296c0d1fb3b5a35968f0b8c8b3163a45620c28db2`  
		Last Modified: Fri, 15 Feb 2019 01:39:59 GMT  
		Size: 11.7 MB (11675115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4e0ef1270a13d67d1445bf3305261a304ada24997ae7660313f93a8d09de77`  
		Last Modified: Fri, 15 Feb 2019 01:39:55 GMT  
		Size: 7.1 KB (7112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad54f9c97b21bab5f8c40141c4ab7cbff0a011726672d0a8b1054fa8e0ff46b`  
		Last Modified: Fri, 15 Feb 2019 01:39:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42b6e0f3ebbc20e8ea4707bba4519c411072284af92e0fbaf3ded3cb720141d`  
		Last Modified: Fri, 15 Feb 2019 01:39:55 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8eea6cb61759cbbd8b8db486da67a0faf2ddcb440ab2d90a1225ed063789fef`  
		Last Modified: Fri, 15 Feb 2019 01:39:55 GMT  
		Size: 2.4 KB (2372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51965c33bfa27093d65cfee6deea59563378aa628dda5c27f8d7235ca8ef3662`  
		Last Modified: Fri, 15 Feb 2019 01:39:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:adb8a415ad2686d76bd083b3d6928bf5645ba306f5b57b359c137f9c0193b4bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:42202f4dfcf1b34f568bcfac9b9c24457924fdd3afe5b0d4e7ad83534ccdcdab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14440012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ef5b42f785224f125c818c3b38be84170e7f6a8b404ecee97c0984178a1392`
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
# Tue, 05 Feb 2019 20:41:00 GMT
ENV PG_MAJOR=9.6
# Fri, 15 Feb 2019 01:28:38 GMT
ENV PG_VERSION=9.6.12
# Fri, 15 Feb 2019 01:28:38 GMT
ENV PG_SHA256=2e8c8446ba94767bda8a26cf5a2152bf0ae68a86aaebf894132a763084579d84
# Fri, 15 Feb 2019 01:31:32 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 15 Feb 2019 01:31:32 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 01:31:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 01:31:33 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 01:31:34 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 01:31:34 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 01:31:34 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 15 Feb 2019 01:31:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 01:31:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 01:31:35 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 01:31:36 GMT
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
	-	`sha256:eb2d56ef9a960d2014e9c33296c0d1fb3b5a35968f0b8c8b3163a45620c28db2`  
		Last Modified: Fri, 15 Feb 2019 01:39:59 GMT  
		Size: 11.7 MB (11675115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4e0ef1270a13d67d1445bf3305261a304ada24997ae7660313f93a8d09de77`  
		Last Modified: Fri, 15 Feb 2019 01:39:55 GMT  
		Size: 7.1 KB (7112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad54f9c97b21bab5f8c40141c4ab7cbff0a011726672d0a8b1054fa8e0ff46b`  
		Last Modified: Fri, 15 Feb 2019 01:39:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42b6e0f3ebbc20e8ea4707bba4519c411072284af92e0fbaf3ded3cb720141d`  
		Last Modified: Fri, 15 Feb 2019 01:39:55 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8eea6cb61759cbbd8b8db486da67a0faf2ddcb440ab2d90a1225ed063789fef`  
		Last Modified: Fri, 15 Feb 2019 01:39:55 GMT  
		Size: 2.4 KB (2372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51965c33bfa27093d65cfee6deea59563378aa628dda5c27f8d7235ca8ef3662`  
		Last Modified: Fri, 15 Feb 2019 01:39:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:c78925f2cfdf276cedacec60244ab8dc6c21a23d99f7c4a4c3c1d5cf18683218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

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

## `postgres:latest`

```console
$ docker pull postgres@sha256:b7697fe780265144ae86403e36510c783e560030d144f43f436c4a83d4882250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

```console
$ docker pull postgres@sha256:a204a7544c05f1dd417fd5734dc79de7f6de5d785650237217928bd570d2a83e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116879260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f97a959a7d9ca63f108b845d6feb6fc6d9dda0914e47899bec625cee855165c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:14:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:14:58 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 06 Feb 2019 08:14:58 GMT
ENV GOSU_VERSION=1.11
# Wed, 06 Feb 2019 08:15:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 08:15:28 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 06 Feb 2019 08:15:28 GMT
ENV LANG=en_US.utf8
# Wed, 06 Feb 2019 08:15:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:15:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 08:15:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 06 Feb 2019 08:15:39 GMT
ENV PG_MAJOR=11
# Fri, 15 Feb 2019 01:19:48 GMT
ENV PG_VERSION=11.2-1.pgdg90+1
# Fri, 15 Feb 2019 01:20:33 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 15 Feb 2019 01:20:34 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 01:20:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 01:20:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 15 Feb 2019 01:20:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 01:20:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 01:20:36 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 01:20:36 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 15 Feb 2019 01:20:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 01:20:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 01:20:37 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 01:20:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060245e5c0563270b03cc4af67a284bdce3f58983be3e71eb9d60190861ebcb7`  
		Last Modified: Wed, 06 Feb 2019 08:21:40 GMT  
		Size: 4.5 MB (4500991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c2e60cfc1cadc1b6e05d2f900f6a3302e61c6c57170c14c32d289551109c68`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.8 KB (1779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d23c24a9df2e81119a9939efbd3c42ea5eb664dd65b7fafdf399a773f3be2f`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 1.4 MB (1351356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9998068fb35e68d9829cbb1a7a37589ff48b2aebaf3194b545d50609760e3482`  
		Last Modified: Wed, 06 Feb 2019 08:21:39 GMT  
		Size: 6.2 MB (6182731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb2385a4bb96be7e220e8faec376295e847f784bf576f261f83b774d7b4a4b6`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 295.5 KB (295468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad14c51497d15dcaf0e6fd47457de1aee3eab7a1170bda4610dc9cd89c34c8a`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77519615ed405dfd5cdfd9d24a1e1865a74852d29efb6203415bfbd2e88487d5`  
		Last Modified: Wed, 06 Feb 2019 08:21:38 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef70912f86de53c644f47f81f1bd394364aa19101a273b71d2a3b57b2fd9261`  
		Last Modified: Fri, 15 Feb 2019 01:38:58 GMT  
		Size: 82.0 MB (82030707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cab331a5d3f88b0989b28e5d0d4bac798e765544800c009af5325281f2c1eb`  
		Last Modified: Fri, 15 Feb 2019 01:38:42 GMT  
		Size: 8.2 KB (8237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdf28fbe06fe5c13755fac7756d5a95c7d86516435046414ba24052db01c619`  
		Last Modified: Fri, 15 Feb 2019 01:38:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c6c5ea887a3f2fb71ffe0f36bb73f3a042230c3103d2c0cea177cdd60b32eb`  
		Last Modified: Fri, 15 Feb 2019 01:38:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae19128049b6e26a33d99822261cdb73b51369cbb32582fe9281b748ab78fc4c`  
		Last Modified: Fri, 15 Feb 2019 01:38:42 GMT  
		Size: 2.4 KB (2378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3968885a0fc08227f55c1ca1d0174784f1e5c2e97dbd8f291c1d93f173a306e8`  
		Last Modified: Fri, 15 Feb 2019 01:38:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
