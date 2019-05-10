<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `postgres`

-	[`postgres:10`](#postgres10)
-	[`postgres:10.8`](#postgres108)
-	[`postgres:10.8-alpine`](#postgres108-alpine)
-	[`postgres:10-alpine`](#postgres10-alpine)
-	[`postgres:11`](#postgres11)
-	[`postgres:11.3`](#postgres113)
-	[`postgres:11.3-alpine`](#postgres113-alpine)
-	[`postgres:11-alpine`](#postgres11-alpine)
-	[`postgres:9`](#postgres9)
-	[`postgres:9.4`](#postgres94)
-	[`postgres:9.4.22`](#postgres9422)
-	[`postgres:9.4.22-alpine`](#postgres9422-alpine)
-	[`postgres:9.4-alpine`](#postgres94-alpine)
-	[`postgres:9.5`](#postgres95)
-	[`postgres:9.5.17`](#postgres9517)
-	[`postgres:9.5.17-alpine`](#postgres9517-alpine)
-	[`postgres:9.5-alpine`](#postgres95-alpine)
-	[`postgres:9.6`](#postgres96)
-	[`postgres:9.6.13`](#postgres9613)
-	[`postgres:9.6.13-alpine`](#postgres9613-alpine)
-	[`postgres:9.6-alpine`](#postgres96-alpine)
-	[`postgres:9-alpine`](#postgres9-alpine)
-	[`postgres:alpine`](#postgresalpine)
-	[`postgres:latest`](#postgreslatest)

## `postgres:10`

```console
$ docker pull postgres@sha256:ea314bc88c8b63e28b4cb345e0de2a19de0e372b3f1369113c53285dc840482b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386
	-	linux; ppc64le

### `postgres:10` - linux; amd64

```console
$ docker pull postgres@sha256:66cb3499ba39f0637055b755240042c1b39ff798211b69ca5d19b0eae12940b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.7 MB (83741572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57f72dd0497da96b94f5a08fba2af940fde9e0175a0ab80cf96db9e4b3a4ba99`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:49:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 02:49:37 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 02:49:37 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 02:49:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 02:50:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 02:50:00 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 02:50:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:50:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 02:50:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 02:51:32 GMT
ENV PG_MAJOR=10
# Fri, 10 May 2019 01:30:46 GMT
ENV PG_VERSION=10.8-1.pgdg90+1
# Fri, 10 May 2019 01:31:17 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 01:31:17 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:31:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:31:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 10 May 2019 01:31:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:31:19 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:31:19 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:31:19 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 10 May 2019 01:31:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:31:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:31:20 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:31:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d307000f290b09bb80a73255a5f5283d8722a100fd6730a5bccb3d2107afbce`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 4.5 MB (4501147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29837b5e9b7858633f7eda8bf8ebfeb2645be36cb62444532708917ff5871714`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.8 KB (1778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3090df5740389c8cfd6ef31b4a402ff8b26aed9d6e014e929e78f962807240a0`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.4 MB (1351331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0b4463fa0e3a96b78c37ac3989ae8908d8a1694ea8659a11f4fc90f7850159`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 6.2 MB (6182629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb834895f5964d99726df2dbef0ecf74f0a57a510301a551afbe7d917107c79`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 295.5 KB (295498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59169bd605be847833d9103cf774c2fe0444fcdaf5fc6478aa17fd0535c38f4a`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a950d631bfe9946149640c92a3130d1129c2e1ee2cab48284b2e5bf02a64ac83`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b6483ea19c3fb98d883393861b5b851c21a810003572455c793203c6c37206`  
		Last Modified: Fri, 10 May 2019 01:45:09 GMT  
		Size: 48.9 MB (48904177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad18e8e9dc5907ea4fdf77717267a0891dde62820da8990bd51e95b8742a98d`  
		Last Modified: Fri, 10 May 2019 01:44:58 GMT  
		Size: 8.0 KB (7961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a7dfa855c0b58977a5256c6399d9c635e20cd5bc0abca1471ed9c6fc246523`  
		Last Modified: Fri, 10 May 2019 01:44:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0479e2bcb8dd68f77dd34c9d48a236e39eb479249c99f9859a21c2d32205299c`  
		Last Modified: Fri, 10 May 2019 01:44:58 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8fcbf931f4b07fd8cbdd415d6457eed1d755b0cd8cdcf690873c140ec5dd0a`  
		Last Modified: Fri, 10 May 2019 01:44:58 GMT  
		Size: 2.4 KB (2378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85578dafa9a5854dab58f41486e7c8f59b8b5b26fad6d1fe62762705a3d164b2`  
		Last Modified: Fri, 10 May 2019 01:44:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; arm variant v5

```console
$ docker pull postgres@sha256:9380df35deb913fdea5e36dd2b808a795eab49ddb4e260553350eb568683b870
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80770128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eed6001ca7795b2c59d8ff77bbc4e44663f4c31a6eac5a7f8a8d143723032bda`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 10:18:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 10:18:18 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 10:18:18 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 10:18:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 10:18:52 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 10:18:52 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 10:19:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:19:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 10:19:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 10:39:35 GMT
ENV PG_MAJOR=10
# Fri, 10 May 2019 09:16:46 GMT
ENV PG_VERSION=10.8-1.pgdg90+1
# Fri, 10 May 2019 09:36:37 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 09:36:39 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:36:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:36:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 10 May 2019 09:36:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:36:42 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:36:43 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:36:43 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 10 May 2019 09:36:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:36:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:36:45 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:36:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6187b1cd4a95f897462bf15d322cb0217f0c2791306dfff3c1423177cbb7d9b8`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 4.2 MB (4236743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddde74d7be81b59c81d4499012020625d3725398d78cbf1204c2c4be2233912`  
		Last Modified: Wed, 08 May 2019 11:55:47 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083493bcd809f21abd38be158d1a882018cac97fdb1c1623b01ff0cbb51678ba`  
		Last Modified: Wed, 08 May 2019 11:55:48 GMT  
		Size: 1.3 MB (1311102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c86e195c35acfc6137a34ac656751ac9b1af86d8ac7d168865f0ad66ae94a96`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 6.2 MB (6185276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e8457b4ad61904543662dbd3f7bbd85e1fbc740e7f3f7fe7fe110615bbecda`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 293.4 KB (293384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900f2045d1e883d0f818f35e24c911130e6e5a5008e3aca61624c3aca81a7369`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42085a2db16d24361b3410bd829b1e5f3007c7616d2925ed14887d88399bcea0`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a12b57715b7aff345a8957dec8f68362dbbbd65ac5b2e2325bf4cb140217770`  
		Last Modified: Fri, 10 May 2019 10:33:00 GMT  
		Size: 47.6 MB (47570218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f88021012cfa3f0be931e034c45a952397407702160b8e2ca80b037209313f`  
		Last Modified: Fri, 10 May 2019 10:32:39 GMT  
		Size: 8.0 KB (7967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d795c22499a58a17d375c5a2beef3cee0e1c23cfbbc68a9e0bde09d9d1859b4b`  
		Last Modified: Fri, 10 May 2019 10:32:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5454dece3765d7f26f7e316d45a4df8578d9c61d3191415a999213c0a5487012`  
		Last Modified: Fri, 10 May 2019 10:32:39 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3491330d22d9e66746a953f71b8046c83d13f46934070d74eba1fe78801f52b`  
		Last Modified: Fri, 10 May 2019 10:32:39 GMT  
		Size: 2.4 KB (2380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd88afeaa89995fbbb2c424f6a0487afab8425cae25ab3ee7f42273063ea844`  
		Last Modified: Fri, 10 May 2019 10:32:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; 386

```console
$ docker pull postgres@sha256:63177b6701b2afb7eb93ab3ca484fa4dab4354a216f4c96c5b6cd55af1faa700
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85731049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:491b9c23abd83359d6d77a343fc0d63b4689b4dfbcd09df2188455f27c8b6123`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:43:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 18:43:29 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 18:43:29 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 18:43:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 18:43:49 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 18:43:49 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 18:43:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:43:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 18:43:58 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 18:45:02 GMT
ENV PG_MAJOR=10
# Fri, 10 May 2019 11:06:43 GMT
ENV PG_VERSION=10.8-1.pgdg90+1
# Fri, 10 May 2019 11:07:19 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 11:07:20 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:07:21 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:07:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 10 May 2019 11:07:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:07:22 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:07:22 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:07:22 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 10 May 2019 11:07:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:07:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:07:23 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:07:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81cd933aa2c67d2892f2712457502eb1f14e9cf143632e3757b514814e2d0cc`  
		Last Modified: Wed, 08 May 2019 18:48:22 GMT  
		Size: 4.8 MB (4807726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67eda6906616ad50be4bb49e0402248f269055c4ed9add6a4bf1ddebe9f4dd9`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afc4a215cbbb60825914510f45abec3fd6d492fe234a32d366bb4d13f9e4869`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.3 MB (1317837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9955ce1ee330f61bfc01d81d2c1e2c3fb9b393588dc8069db8d6fa97177e52d7`  
		Last Modified: Wed, 08 May 2019 18:48:25 GMT  
		Size: 6.2 MB (6182590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920eeda872ac67d0fb5b1c35d25de9078176c64d8a791511d54f7f900f0989a0`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 296.6 KB (296556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa8e3df0dcb82be7e7e46edeb230cc94cc5c3bfc028ce06b9de49a581163676`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef37a66833579f324fda5db062d1a3a9739e036f3bd4c2c73cc75956b2908e3`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 4.8 KB (4793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e9c024bf7ad8901872293b9b907690f84d68fab7c5ab6fbdd4f9883c791a5c`  
		Last Modified: Fri, 10 May 2019 11:23:00 GMT  
		Size: 50.0 MB (49988057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ee4741c4248adc947acd6bbce2f60aa6d07327023793da970fa6169bf120c1`  
		Last Modified: Fri, 10 May 2019 11:22:46 GMT  
		Size: 8.0 KB (7960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e902adba645cd80eaca4b4bb8905e77ed9d669ede9892eec332001737e8dfa6`  
		Last Modified: Fri, 10 May 2019 11:22:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38f7639b94b511ad38a9b28bd429b9fc76679d8e0eb52897e24dd08f3f4ede9`  
		Last Modified: Fri, 10 May 2019 11:22:46 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6119b5bd391c444ecd373ba82b66803f79954f6b9e3fb96bd7d72babc1194d01`  
		Last Modified: Fri, 10 May 2019 11:22:46 GMT  
		Size: 2.4 KB (2378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f3272dfcfc7883decbe120f9f02208ea53efcff7f5360b3f8a2b6bed117393`  
		Last Modified: Fri, 10 May 2019 11:22:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; ppc64le

```console
$ docker pull postgres@sha256:6cd57f7c13f6838a6589baf268727531e3dc345c71a68c7ac9646ad74bdfb64e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.6 MB (83622368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:644d3ac2f8491f459733608b63ddbc5c799ecfb2e1b02feacd96b071e90339be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 14:12:57 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 14:13:03 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 14:14:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 14:15:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 14:15:04 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 14:15:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:15:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 14:15:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 14:29:40 GMT
ENV PG_MAJOR=10
# Fri, 10 May 2019 09:28:45 GMT
ENV PG_VERSION=10.8-1.pgdg90+1
# Fri, 10 May 2019 09:32:09 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 09:32:18 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:32:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:32:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 10 May 2019 09:32:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:32:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:32:42 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:32:45 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 10 May 2019 09:32:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:32:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:33:02 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:33:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31400e35e62100e129401e0db5744f08520633fcd8149b26792c502d6965a61a`  
		Last Modified: Wed, 08 May 2019 15:02:16 GMT  
		Size: 4.4 MB (4365081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14e987e87b91351d930ff69141b31e6f6cc42800361352f755c4d544be69833`  
		Last Modified: Wed, 08 May 2019 15:02:10 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3828e738a494793ba3c87812cd102699d9aa31b6399251598924f5e6a61a41`  
		Last Modified: Wed, 08 May 2019 15:02:11 GMT  
		Size: 1.3 MB (1275138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7689166881ea41e235b80b7cc77476488e89fde7331df69bc36b0e9800984f4`  
		Last Modified: Wed, 08 May 2019 15:02:18 GMT  
		Size: 6.2 MB (6185656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37c7521930e2ff2f9ac90f7f5a145d600542e7199588caacabe24b807a40dff`  
		Last Modified: Wed, 08 May 2019 15:02:08 GMT  
		Size: 293.6 KB (293607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82eed40867cae9111c7c7eff5a0ea33186f39ce68ca04b47112537c45dbabde6`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a30cf417536dec1e834bf421984eaee716ac1ec169275b7243755022b5474ce`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20a073a06cd567e3ca31036fe18b7f520d14416e47854682b9c99ac775980e0`  
		Last Modified: Fri, 10 May 2019 10:17:56 GMT  
		Size: 48.7 MB (48740409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ba18558cf698b4e8bbc847ea8af56bd0cbdba2ffb130f0059d55679e552076`  
		Last Modified: Fri, 10 May 2019 10:16:50 GMT  
		Size: 8.0 KB (7966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3a1c7ec52ef6567736188fa169f49c823534aeda77d8fbadcb2b71004ab677`  
		Last Modified: Fri, 10 May 2019 10:16:49 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39784d584e7d7715aa351086fc9ae10adb4dc855569c903b1dd9608991c546e`  
		Last Modified: Fri, 10 May 2019 10:16:49 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c546197e5ebcdfeec41be4e9c2b89b71f10ad79525e6c3539f6ae6a7bb46c1`  
		Last Modified: Fri, 10 May 2019 10:16:49 GMT  
		Size: 2.4 KB (2379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5bfd0fd7110bede1d5ed85091aed4a151e762858192772452ad228bec4ad25a`  
		Last Modified: Fri, 10 May 2019 10:16:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10.8`

```console
$ docker pull postgres@sha256:ea314bc88c8b63e28b4cb345e0de2a19de0e372b3f1369113c53285dc840482b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386
	-	linux; ppc64le

### `postgres:10.8` - linux; amd64

```console
$ docker pull postgres@sha256:66cb3499ba39f0637055b755240042c1b39ff798211b69ca5d19b0eae12940b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.7 MB (83741572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57f72dd0497da96b94f5a08fba2af940fde9e0175a0ab80cf96db9e4b3a4ba99`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:49:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 02:49:37 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 02:49:37 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 02:49:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 02:50:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 02:50:00 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 02:50:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:50:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 02:50:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 02:51:32 GMT
ENV PG_MAJOR=10
# Fri, 10 May 2019 01:30:46 GMT
ENV PG_VERSION=10.8-1.pgdg90+1
# Fri, 10 May 2019 01:31:17 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 01:31:17 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:31:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:31:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 10 May 2019 01:31:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:31:19 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:31:19 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:31:19 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 10 May 2019 01:31:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:31:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:31:20 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:31:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d307000f290b09bb80a73255a5f5283d8722a100fd6730a5bccb3d2107afbce`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 4.5 MB (4501147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29837b5e9b7858633f7eda8bf8ebfeb2645be36cb62444532708917ff5871714`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.8 KB (1778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3090df5740389c8cfd6ef31b4a402ff8b26aed9d6e014e929e78f962807240a0`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.4 MB (1351331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0b4463fa0e3a96b78c37ac3989ae8908d8a1694ea8659a11f4fc90f7850159`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 6.2 MB (6182629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb834895f5964d99726df2dbef0ecf74f0a57a510301a551afbe7d917107c79`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 295.5 KB (295498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59169bd605be847833d9103cf774c2fe0444fcdaf5fc6478aa17fd0535c38f4a`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a950d631bfe9946149640c92a3130d1129c2e1ee2cab48284b2e5bf02a64ac83`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b6483ea19c3fb98d883393861b5b851c21a810003572455c793203c6c37206`  
		Last Modified: Fri, 10 May 2019 01:45:09 GMT  
		Size: 48.9 MB (48904177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad18e8e9dc5907ea4fdf77717267a0891dde62820da8990bd51e95b8742a98d`  
		Last Modified: Fri, 10 May 2019 01:44:58 GMT  
		Size: 8.0 KB (7961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a7dfa855c0b58977a5256c6399d9c635e20cd5bc0abca1471ed9c6fc246523`  
		Last Modified: Fri, 10 May 2019 01:44:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0479e2bcb8dd68f77dd34c9d48a236e39eb479249c99f9859a21c2d32205299c`  
		Last Modified: Fri, 10 May 2019 01:44:58 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8fcbf931f4b07fd8cbdd415d6457eed1d755b0cd8cdcf690873c140ec5dd0a`  
		Last Modified: Fri, 10 May 2019 01:44:58 GMT  
		Size: 2.4 KB (2378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85578dafa9a5854dab58f41486e7c8f59b8b5b26fad6d1fe62762705a3d164b2`  
		Last Modified: Fri, 10 May 2019 01:44:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.8` - linux; arm variant v5

```console
$ docker pull postgres@sha256:9380df35deb913fdea5e36dd2b808a795eab49ddb4e260553350eb568683b870
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80770128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eed6001ca7795b2c59d8ff77bbc4e44663f4c31a6eac5a7f8a8d143723032bda`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 10:18:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 10:18:18 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 10:18:18 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 10:18:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 10:18:52 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 10:18:52 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 10:19:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:19:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 10:19:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 10:39:35 GMT
ENV PG_MAJOR=10
# Fri, 10 May 2019 09:16:46 GMT
ENV PG_VERSION=10.8-1.pgdg90+1
# Fri, 10 May 2019 09:36:37 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 09:36:39 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:36:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:36:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 10 May 2019 09:36:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:36:42 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:36:43 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:36:43 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 10 May 2019 09:36:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:36:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:36:45 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:36:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6187b1cd4a95f897462bf15d322cb0217f0c2791306dfff3c1423177cbb7d9b8`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 4.2 MB (4236743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddde74d7be81b59c81d4499012020625d3725398d78cbf1204c2c4be2233912`  
		Last Modified: Wed, 08 May 2019 11:55:47 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083493bcd809f21abd38be158d1a882018cac97fdb1c1623b01ff0cbb51678ba`  
		Last Modified: Wed, 08 May 2019 11:55:48 GMT  
		Size: 1.3 MB (1311102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c86e195c35acfc6137a34ac656751ac9b1af86d8ac7d168865f0ad66ae94a96`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 6.2 MB (6185276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e8457b4ad61904543662dbd3f7bbd85e1fbc740e7f3f7fe7fe110615bbecda`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 293.4 KB (293384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900f2045d1e883d0f818f35e24c911130e6e5a5008e3aca61624c3aca81a7369`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42085a2db16d24361b3410bd829b1e5f3007c7616d2925ed14887d88399bcea0`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a12b57715b7aff345a8957dec8f68362dbbbd65ac5b2e2325bf4cb140217770`  
		Last Modified: Fri, 10 May 2019 10:33:00 GMT  
		Size: 47.6 MB (47570218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f88021012cfa3f0be931e034c45a952397407702160b8e2ca80b037209313f`  
		Last Modified: Fri, 10 May 2019 10:32:39 GMT  
		Size: 8.0 KB (7967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d795c22499a58a17d375c5a2beef3cee0e1c23cfbbc68a9e0bde09d9d1859b4b`  
		Last Modified: Fri, 10 May 2019 10:32:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5454dece3765d7f26f7e316d45a4df8578d9c61d3191415a999213c0a5487012`  
		Last Modified: Fri, 10 May 2019 10:32:39 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3491330d22d9e66746a953f71b8046c83d13f46934070d74eba1fe78801f52b`  
		Last Modified: Fri, 10 May 2019 10:32:39 GMT  
		Size: 2.4 KB (2380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd88afeaa89995fbbb2c424f6a0487afab8425cae25ab3ee7f42273063ea844`  
		Last Modified: Fri, 10 May 2019 10:32:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.8` - linux; 386

```console
$ docker pull postgres@sha256:63177b6701b2afb7eb93ab3ca484fa4dab4354a216f4c96c5b6cd55af1faa700
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85731049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:491b9c23abd83359d6d77a343fc0d63b4689b4dfbcd09df2188455f27c8b6123`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:43:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 18:43:29 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 18:43:29 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 18:43:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 18:43:49 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 18:43:49 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 18:43:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:43:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 18:43:58 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 18:45:02 GMT
ENV PG_MAJOR=10
# Fri, 10 May 2019 11:06:43 GMT
ENV PG_VERSION=10.8-1.pgdg90+1
# Fri, 10 May 2019 11:07:19 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 11:07:20 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:07:21 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:07:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 10 May 2019 11:07:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:07:22 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:07:22 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:07:22 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 10 May 2019 11:07:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:07:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:07:23 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:07:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81cd933aa2c67d2892f2712457502eb1f14e9cf143632e3757b514814e2d0cc`  
		Last Modified: Wed, 08 May 2019 18:48:22 GMT  
		Size: 4.8 MB (4807726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67eda6906616ad50be4bb49e0402248f269055c4ed9add6a4bf1ddebe9f4dd9`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afc4a215cbbb60825914510f45abec3fd6d492fe234a32d366bb4d13f9e4869`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.3 MB (1317837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9955ce1ee330f61bfc01d81d2c1e2c3fb9b393588dc8069db8d6fa97177e52d7`  
		Last Modified: Wed, 08 May 2019 18:48:25 GMT  
		Size: 6.2 MB (6182590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920eeda872ac67d0fb5b1c35d25de9078176c64d8a791511d54f7f900f0989a0`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 296.6 KB (296556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa8e3df0dcb82be7e7e46edeb230cc94cc5c3bfc028ce06b9de49a581163676`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef37a66833579f324fda5db062d1a3a9739e036f3bd4c2c73cc75956b2908e3`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 4.8 KB (4793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e9c024bf7ad8901872293b9b907690f84d68fab7c5ab6fbdd4f9883c791a5c`  
		Last Modified: Fri, 10 May 2019 11:23:00 GMT  
		Size: 50.0 MB (49988057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ee4741c4248adc947acd6bbce2f60aa6d07327023793da970fa6169bf120c1`  
		Last Modified: Fri, 10 May 2019 11:22:46 GMT  
		Size: 8.0 KB (7960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e902adba645cd80eaca4b4bb8905e77ed9d669ede9892eec332001737e8dfa6`  
		Last Modified: Fri, 10 May 2019 11:22:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38f7639b94b511ad38a9b28bd429b9fc76679d8e0eb52897e24dd08f3f4ede9`  
		Last Modified: Fri, 10 May 2019 11:22:46 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6119b5bd391c444ecd373ba82b66803f79954f6b9e3fb96bd7d72babc1194d01`  
		Last Modified: Fri, 10 May 2019 11:22:46 GMT  
		Size: 2.4 KB (2378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f3272dfcfc7883decbe120f9f02208ea53efcff7f5360b3f8a2b6bed117393`  
		Last Modified: Fri, 10 May 2019 11:22:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.8` - linux; ppc64le

```console
$ docker pull postgres@sha256:6cd57f7c13f6838a6589baf268727531e3dc345c71a68c7ac9646ad74bdfb64e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.6 MB (83622368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:644d3ac2f8491f459733608b63ddbc5c799ecfb2e1b02feacd96b071e90339be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 14:12:57 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 14:13:03 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 14:14:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 14:15:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 14:15:04 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 14:15:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:15:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 14:15:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 14:29:40 GMT
ENV PG_MAJOR=10
# Fri, 10 May 2019 09:28:45 GMT
ENV PG_VERSION=10.8-1.pgdg90+1
# Fri, 10 May 2019 09:32:09 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 09:32:18 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:32:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:32:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 10 May 2019 09:32:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:32:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:32:42 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:32:45 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 10 May 2019 09:32:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:32:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:33:02 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:33:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31400e35e62100e129401e0db5744f08520633fcd8149b26792c502d6965a61a`  
		Last Modified: Wed, 08 May 2019 15:02:16 GMT  
		Size: 4.4 MB (4365081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14e987e87b91351d930ff69141b31e6f6cc42800361352f755c4d544be69833`  
		Last Modified: Wed, 08 May 2019 15:02:10 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3828e738a494793ba3c87812cd102699d9aa31b6399251598924f5e6a61a41`  
		Last Modified: Wed, 08 May 2019 15:02:11 GMT  
		Size: 1.3 MB (1275138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7689166881ea41e235b80b7cc77476488e89fde7331df69bc36b0e9800984f4`  
		Last Modified: Wed, 08 May 2019 15:02:18 GMT  
		Size: 6.2 MB (6185656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37c7521930e2ff2f9ac90f7f5a145d600542e7199588caacabe24b807a40dff`  
		Last Modified: Wed, 08 May 2019 15:02:08 GMT  
		Size: 293.6 KB (293607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82eed40867cae9111c7c7eff5a0ea33186f39ce68ca04b47112537c45dbabde6`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a30cf417536dec1e834bf421984eaee716ac1ec169275b7243755022b5474ce`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20a073a06cd567e3ca31036fe18b7f520d14416e47854682b9c99ac775980e0`  
		Last Modified: Fri, 10 May 2019 10:17:56 GMT  
		Size: 48.7 MB (48740409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ba18558cf698b4e8bbc847ea8af56bd0cbdba2ffb130f0059d55679e552076`  
		Last Modified: Fri, 10 May 2019 10:16:50 GMT  
		Size: 8.0 KB (7966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3a1c7ec52ef6567736188fa169f49c823534aeda77d8fbadcb2b71004ab677`  
		Last Modified: Fri, 10 May 2019 10:16:49 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39784d584e7d7715aa351086fc9ae10adb4dc855569c903b1dd9608991c546e`  
		Last Modified: Fri, 10 May 2019 10:16:49 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c546197e5ebcdfeec41be4e9c2b89b71f10ad79525e6c3539f6ae6a7bb46c1`  
		Last Modified: Fri, 10 May 2019 10:16:49 GMT  
		Size: 2.4 KB (2379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5bfd0fd7110bede1d5ed85091aed4a151e762858192772452ad228bec4ad25a`  
		Last Modified: Fri, 10 May 2019 10:16:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10.8-alpine`

```console
$ docker pull postgres@sha256:ef020e970b67d45c9cf835a6dcf55b7d56283a59f5d789b864d01bc9e07a010b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `postgres:10.8-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:0b5031e82f83e04b92698c6a91a4e48095c83f5b9fbbae7685ee84d4d0475466
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 MB (27598098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72ef7d0071c015d5a242d952a259ef23ff5d4014a75200fc9c566b1169e7cb86`
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
# Tue, 09 Apr 2019 23:44:47 GMT
ENV PG_MAJOR=10
# Fri, 10 May 2019 01:31:24 GMT
ENV PG_VERSION=10.8
# Fri, 10 May 2019 01:31:24 GMT
ENV PG_SHA256=b198c2aadf1d68308127a0f5b51dbe798958ffe60dd999134f6495c489afcd5d
# Fri, 10 May 2019 01:34:10 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 01:34:11 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:34:12 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:34:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:34:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:34:13 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:34:13 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 01:34:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:34:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:34:14 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:34:14 GMT
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
	-	`sha256:99227acb3655cac410c85bacf1c58205630d93840933b1405732e0da244df288`  
		Last Modified: Fri, 10 May 2019 01:45:28 GMT  
		Size: 24.8 MB (24830739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d95f4aeaf4310670e8b6c7813da48311e0b980d904afae4657f4596bd9404b3`  
		Last Modified: Fri, 10 May 2019 01:45:22 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e429e4116e171e2e13e5bc2973b5eb4c089ce02dae36c38ea9d4bf3c84e53b`  
		Last Modified: Fri, 10 May 2019 01:45:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9796534cfdf3170cd4334727bc9913e2f3e2c00b2b5fd84641329e8978bc6eba`  
		Last Modified: Fri, 10 May 2019 01:45:22 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6ee173bbf8f8e3b36ca1fa37a719ebce16391be27ecb7423005798b5637c11`  
		Last Modified: Fri, 10 May 2019 01:45:22 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceecd59b4255dc63bae9cdb86b2aa0ad1f35d4ed71704cdda904503ae1678a9e`  
		Last Modified: Fri, 10 May 2019 01:45:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.8-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:d7d89cad851f662b48fe9566dc71364db99509d06e7d82c5e5ce4013ee9f4cdf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26666975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ddc5fe36998583463c231e40175c399106be4bc25677d8b97c0c7bbcb461799`
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
# Wed, 10 Apr 2019 09:05:36 GMT
ENV PG_MAJOR=10
# Fri, 10 May 2019 07:55:06 GMT
ENV PG_VERSION=10.8
# Fri, 10 May 2019 07:55:06 GMT
ENV PG_SHA256=b198c2aadf1d68308127a0f5b51dbe798958ffe60dd999134f6495c489afcd5d
# Fri, 10 May 2019 07:56:53 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 07:56:55 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 07:56:56 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 07:56:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 07:56:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 07:56:58 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 07:56:58 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 07:57:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 07:57:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 07:57:00 GMT
EXPOSE 5432
# Fri, 10 May 2019 07:57:01 GMT
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
	-	`sha256:af38756eaf2833ffc52cf8f1c4d499ec2e6f3794cdc53e67ead3b4d965011307`  
		Last Modified: Fri, 10 May 2019 08:03:28 GMT  
		Size: 24.1 MB (24113049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ceda9ada72ae2e61c79affce0ab6558fbe000aa62f97cd00fd83094c4fc60b2`  
		Last Modified: Fri, 10 May 2019 08:03:19 GMT  
		Size: 7.3 KB (7299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f054221e045061339d12ad4446bfb06f971d26be1ce562bff5a36f7724349c7f`  
		Last Modified: Fri, 10 May 2019 08:03:19 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fcd203b9989ef3edf2510312749314e572db55d9d95ea67fe7af30f91b76b40`  
		Last Modified: Fri, 10 May 2019 08:03:19 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06769639e996c6901bd7a2726ff697d3b959d319c6007ea47455baaf68f72a5f`  
		Last Modified: Fri, 10 May 2019 08:03:19 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f59aff430ff77aef98fca03e4e9a768c4fc936beaa6fbed1a6c1593f42d98c`  
		Last Modified: Fri, 10 May 2019 08:03:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.8-alpine` - linux; 386

```console
$ docker pull postgres@sha256:2cbb289d4dce96d113c153dc9985ac99009ca9590bd2c56a6ad2eea6d507a5cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28426018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca1c75a240ea51cc63973e3b2fbd7356a662731c290e8d52a7f6e3b26933fd81`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:28:03 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 14:28:03 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 14:28:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 14:31:34 GMT
ENV PG_MAJOR=10
# Fri, 10 May 2019 11:07:28 GMT
ENV PG_VERSION=10.8
# Fri, 10 May 2019 11:07:28 GMT
ENV PG_SHA256=b198c2aadf1d68308127a0f5b51dbe798958ffe60dd999134f6495c489afcd5d
# Fri, 10 May 2019 11:10:35 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 11:10:36 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:10:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:10:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:10:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:10:38 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:10:38 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 11:10:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:10:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:10:39 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:10:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df8da713ae1263f84fd0cae748880b9bd3c3aa4619279b1b972976cdd7d4933`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60005ea8fc190aec4ebdcb14ff51e60c24531718c56530053e1321be67ccc37a`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc92cac12d7daef7e8a8a66bdefa5bc964fc03e691ced285ad216a5e3f688f54`  
		Last Modified: Fri, 10 May 2019 11:23:16 GMT  
		Size: 25.7 MB (25663502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5b685896b751b975f44d3d2d246b7088318a6d248fca53caad376b67ec3941`  
		Last Modified: Fri, 10 May 2019 11:23:08 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534beb8aa49ff2065257bb6c2748e9115e05637091bbb6901ba56fbcffd890eb`  
		Last Modified: Fri, 10 May 2019 11:23:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f743d5101c9cd673cf00f7242c3379becbc248703417daa0951e22e4aae5d64`  
		Last Modified: Fri, 10 May 2019 11:23:08 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b38680b8151bc051d2f7c9981ce64176fdd6fa3d1dc3681c0dbeeeab19f076`  
		Last Modified: Fri, 10 May 2019 11:23:08 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4dfc66430d3b6801a8c050402fed1af6de4daf25dba191085dd3c28ad6d95d9`  
		Last Modified: Fri, 10 May 2019 11:23:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.8-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:42d65b50f2571e0e61f7d717b468ac7d83c37a49e0c9d1f4e66ca4cca1698c4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.9 MB (28877474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0545e5ff541fe94aec0927db5dc7cffe1e786d1e066926797ccef052df7344e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:40:21 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 10:40:26 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 10:40:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 10:44:52 GMT
ENV PG_MAJOR=10
# Fri, 10 May 2019 09:33:31 GMT
ENV PG_VERSION=10.8
# Fri, 10 May 2019 09:33:37 GMT
ENV PG_SHA256=b198c2aadf1d68308127a0f5b51dbe798958ffe60dd999134f6495c489afcd5d
# Fri, 10 May 2019 09:36:58 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 09:37:08 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:37:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:37:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:37:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:37:29 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:37:30 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 09:37:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:37:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:37:44 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:37:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fadc09892703ded74da3266e56d7cf5631a32b6afc741c5d73cd181c7fcf26`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d903923d54c1aec0b4affbfa3483f2a737879e509527322b1f68fde697c40acf`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c662a82fda466abc0f2c89471ec0c00b04c0810151c18d826328705573f74fd1`  
		Last Modified: Fri, 10 May 2019 10:18:48 GMT  
		Size: 26.1 MB (26085975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975898739bc321a624d7882eca8aec5ad964e0d0d722924da335f34c79514613`  
		Last Modified: Fri, 10 May 2019 10:18:10 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2deb9566f3d3eed31de3942f237eb9f284fec5d41256140ca681177f7caded4`  
		Last Modified: Fri, 10 May 2019 10:18:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c9d5aa6392b713d140a60ffba5dccac72baf7030d664176def438d690af60b`  
		Last Modified: Fri, 10 May 2019 10:18:10 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea71710e6017eb2b159cd4367bb16b8b7e4ed0c12159456b9395b760d84f739`  
		Last Modified: Fri, 10 May 2019 10:18:10 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e273d4fa31b7937d20f34a55215691c5aad37bb0633a120b9471a2cc8408ac`  
		Last Modified: Fri, 10 May 2019 10:18:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10-alpine`

```console
$ docker pull postgres@sha256:ef020e970b67d45c9cf835a6dcf55b7d56283a59f5d789b864d01bc9e07a010b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `postgres:10-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:0b5031e82f83e04b92698c6a91a4e48095c83f5b9fbbae7685ee84d4d0475466
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 MB (27598098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72ef7d0071c015d5a242d952a259ef23ff5d4014a75200fc9c566b1169e7cb86`
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
# Tue, 09 Apr 2019 23:44:47 GMT
ENV PG_MAJOR=10
# Fri, 10 May 2019 01:31:24 GMT
ENV PG_VERSION=10.8
# Fri, 10 May 2019 01:31:24 GMT
ENV PG_SHA256=b198c2aadf1d68308127a0f5b51dbe798958ffe60dd999134f6495c489afcd5d
# Fri, 10 May 2019 01:34:10 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 01:34:11 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:34:12 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:34:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:34:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:34:13 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:34:13 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 01:34:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:34:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:34:14 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:34:14 GMT
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
	-	`sha256:99227acb3655cac410c85bacf1c58205630d93840933b1405732e0da244df288`  
		Last Modified: Fri, 10 May 2019 01:45:28 GMT  
		Size: 24.8 MB (24830739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d95f4aeaf4310670e8b6c7813da48311e0b980d904afae4657f4596bd9404b3`  
		Last Modified: Fri, 10 May 2019 01:45:22 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e429e4116e171e2e13e5bc2973b5eb4c089ce02dae36c38ea9d4bf3c84e53b`  
		Last Modified: Fri, 10 May 2019 01:45:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9796534cfdf3170cd4334727bc9913e2f3e2c00b2b5fd84641329e8978bc6eba`  
		Last Modified: Fri, 10 May 2019 01:45:22 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6ee173bbf8f8e3b36ca1fa37a719ebce16391be27ecb7423005798b5637c11`  
		Last Modified: Fri, 10 May 2019 01:45:22 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceecd59b4255dc63bae9cdb86b2aa0ad1f35d4ed71704cdda904503ae1678a9e`  
		Last Modified: Fri, 10 May 2019 01:45:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:d7d89cad851f662b48fe9566dc71364db99509d06e7d82c5e5ce4013ee9f4cdf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26666975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ddc5fe36998583463c231e40175c399106be4bc25677d8b97c0c7bbcb461799`
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
# Wed, 10 Apr 2019 09:05:36 GMT
ENV PG_MAJOR=10
# Fri, 10 May 2019 07:55:06 GMT
ENV PG_VERSION=10.8
# Fri, 10 May 2019 07:55:06 GMT
ENV PG_SHA256=b198c2aadf1d68308127a0f5b51dbe798958ffe60dd999134f6495c489afcd5d
# Fri, 10 May 2019 07:56:53 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 07:56:55 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 07:56:56 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 07:56:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 07:56:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 07:56:58 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 07:56:58 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 07:57:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 07:57:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 07:57:00 GMT
EXPOSE 5432
# Fri, 10 May 2019 07:57:01 GMT
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
	-	`sha256:af38756eaf2833ffc52cf8f1c4d499ec2e6f3794cdc53e67ead3b4d965011307`  
		Last Modified: Fri, 10 May 2019 08:03:28 GMT  
		Size: 24.1 MB (24113049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ceda9ada72ae2e61c79affce0ab6558fbe000aa62f97cd00fd83094c4fc60b2`  
		Last Modified: Fri, 10 May 2019 08:03:19 GMT  
		Size: 7.3 KB (7299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f054221e045061339d12ad4446bfb06f971d26be1ce562bff5a36f7724349c7f`  
		Last Modified: Fri, 10 May 2019 08:03:19 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fcd203b9989ef3edf2510312749314e572db55d9d95ea67fe7af30f91b76b40`  
		Last Modified: Fri, 10 May 2019 08:03:19 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06769639e996c6901bd7a2726ff697d3b959d319c6007ea47455baaf68f72a5f`  
		Last Modified: Fri, 10 May 2019 08:03:19 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f59aff430ff77aef98fca03e4e9a768c4fc936beaa6fbed1a6c1593f42d98c`  
		Last Modified: Fri, 10 May 2019 08:03:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; 386

```console
$ docker pull postgres@sha256:2cbb289d4dce96d113c153dc9985ac99009ca9590bd2c56a6ad2eea6d507a5cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28426018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca1c75a240ea51cc63973e3b2fbd7356a662731c290e8d52a7f6e3b26933fd81`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:28:03 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 14:28:03 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 14:28:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 14:31:34 GMT
ENV PG_MAJOR=10
# Fri, 10 May 2019 11:07:28 GMT
ENV PG_VERSION=10.8
# Fri, 10 May 2019 11:07:28 GMT
ENV PG_SHA256=b198c2aadf1d68308127a0f5b51dbe798958ffe60dd999134f6495c489afcd5d
# Fri, 10 May 2019 11:10:35 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 11:10:36 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:10:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:10:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:10:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:10:38 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:10:38 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 11:10:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:10:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:10:39 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:10:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df8da713ae1263f84fd0cae748880b9bd3c3aa4619279b1b972976cdd7d4933`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60005ea8fc190aec4ebdcb14ff51e60c24531718c56530053e1321be67ccc37a`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc92cac12d7daef7e8a8a66bdefa5bc964fc03e691ced285ad216a5e3f688f54`  
		Last Modified: Fri, 10 May 2019 11:23:16 GMT  
		Size: 25.7 MB (25663502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5b685896b751b975f44d3d2d246b7088318a6d248fca53caad376b67ec3941`  
		Last Modified: Fri, 10 May 2019 11:23:08 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534beb8aa49ff2065257bb6c2748e9115e05637091bbb6901ba56fbcffd890eb`  
		Last Modified: Fri, 10 May 2019 11:23:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f743d5101c9cd673cf00f7242c3379becbc248703417daa0951e22e4aae5d64`  
		Last Modified: Fri, 10 May 2019 11:23:08 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b38680b8151bc051d2f7c9981ce64176fdd6fa3d1dc3681c0dbeeeab19f076`  
		Last Modified: Fri, 10 May 2019 11:23:08 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4dfc66430d3b6801a8c050402fed1af6de4daf25dba191085dd3c28ad6d95d9`  
		Last Modified: Fri, 10 May 2019 11:23:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:42d65b50f2571e0e61f7d717b468ac7d83c37a49e0c9d1f4e66ca4cca1698c4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.9 MB (28877474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0545e5ff541fe94aec0927db5dc7cffe1e786d1e066926797ccef052df7344e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:40:21 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 10:40:26 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 10:40:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 10:44:52 GMT
ENV PG_MAJOR=10
# Fri, 10 May 2019 09:33:31 GMT
ENV PG_VERSION=10.8
# Fri, 10 May 2019 09:33:37 GMT
ENV PG_SHA256=b198c2aadf1d68308127a0f5b51dbe798958ffe60dd999134f6495c489afcd5d
# Fri, 10 May 2019 09:36:58 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 09:37:08 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:37:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:37:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:37:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:37:29 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:37:30 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 09:37:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:37:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:37:44 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:37:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fadc09892703ded74da3266e56d7cf5631a32b6afc741c5d73cd181c7fcf26`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d903923d54c1aec0b4affbfa3483f2a737879e509527322b1f68fde697c40acf`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c662a82fda466abc0f2c89471ec0c00b04c0810151c18d826328705573f74fd1`  
		Last Modified: Fri, 10 May 2019 10:18:48 GMT  
		Size: 26.1 MB (26085975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975898739bc321a624d7882eca8aec5ad964e0d0d722924da335f34c79514613`  
		Last Modified: Fri, 10 May 2019 10:18:10 GMT  
		Size: 7.3 KB (7295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2deb9566f3d3eed31de3942f237eb9f284fec5d41256140ca681177f7caded4`  
		Last Modified: Fri, 10 May 2019 10:18:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c9d5aa6392b713d140a60ffba5dccac72baf7030d664176def438d690af60b`  
		Last Modified: Fri, 10 May 2019 10:18:10 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea71710e6017eb2b159cd4367bb16b8b7e4ed0c12159456b9395b760d84f739`  
		Last Modified: Fri, 10 May 2019 10:18:10 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e273d4fa31b7937d20f34a55215691c5aad37bb0633a120b9471a2cc8408ac`  
		Last Modified: Fri, 10 May 2019 10:18:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:11`

```console
$ docker pull postgres@sha256:30ec90a6a3f8fa736d6a00f590c0190a77c191ea914b2179d9d5bd04ad1125e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386
	-	linux; ppc64le

### `postgres:11` - linux; amd64

```console
$ docker pull postgres@sha256:5fbf1b1f27f29dea756bd11d406c943e4a5ad5c9d3a6c0d6745c9105a887100e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116978302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587aa1d0e58645b9709bb72a9886faf7d6627a3e07af20aded79d27f1dc0e79c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:49:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 02:49:37 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 02:49:37 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 02:49:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 02:50:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 02:50:00 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 02:50:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:50:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 02:50:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 02:50:12 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 01:19:55 GMT
ENV PG_VERSION=11.3-1.pgdg90+1
# Fri, 10 May 2019 01:21:18 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 01:21:19 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:21:20 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:21:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 10 May 2019 01:21:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:21:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:21:21 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:21:21 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 10 May 2019 01:21:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:21:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:21:22 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:21:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d307000f290b09bb80a73255a5f5283d8722a100fd6730a5bccb3d2107afbce`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 4.5 MB (4501147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29837b5e9b7858633f7eda8bf8ebfeb2645be36cb62444532708917ff5871714`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.8 KB (1778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3090df5740389c8cfd6ef31b4a402ff8b26aed9d6e014e929e78f962807240a0`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.4 MB (1351331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0b4463fa0e3a96b78c37ac3989ae8908d8a1694ea8659a11f4fc90f7850159`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 6.2 MB (6182629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb834895f5964d99726df2dbef0ecf74f0a57a510301a551afbe7d917107c79`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 295.5 KB (295498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59169bd605be847833d9103cf774c2fe0444fcdaf5fc6478aa17fd0535c38f4a`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a950d631bfe9946149640c92a3130d1129c2e1ee2cab48284b2e5bf02a64ac83`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db7e3522bac125058a57cc53c0aed9a07d5be8a1c30056f9bf9321adf2a8277`  
		Last Modified: Fri, 10 May 2019 01:44:38 GMT  
		Size: 82.1 MB (82140653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bc301cd1669f01e6d1213fcf66d0cdeecf3ff302a221b78a5bf591e978426f`  
		Last Modified: Fri, 10 May 2019 01:44:20 GMT  
		Size: 8.2 KB (8211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8614737f74278d363e4b9aa04acfbaf8a981814bbeb1c1bf70e29d7662d325`  
		Last Modified: Fri, 10 May 2019 01:44:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad575a1ac336be9aa368bc83721b489bbd282cdbaec7fc1d189f383a09299239`  
		Last Modified: Fri, 10 May 2019 01:44:20 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6431194f8846aa22653d4cbb09cabd42981f9f521df2988803dacd33e7739a4`  
		Last Modified: Fri, 10 May 2019 01:44:20 GMT  
		Size: 2.4 KB (2380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4501fbec177e0960dd9f9bbeeafd723696236e3c467c88354c1e5c7763c0cd3`  
		Last Modified: Fri, 10 May 2019 01:44:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11` - linux; arm variant v5

```console
$ docker pull postgres@sha256:6d8cf635cc45891da5be4f71c3c25ec431c5ac9638a8a4da4392a2653c6e0918
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81177111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4296319e2c8009671cd26c5b43d502567922a895368de32ff06d0a224e2140f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 10:18:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 10:18:18 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 10:18:18 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 10:18:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 10:18:52 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 10:18:52 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 10:19:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:19:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 10:19:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 10:19:07 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 08:55:58 GMT
ENV PG_VERSION=11.3-1.pgdg90+1
# Fri, 10 May 2019 09:16:31 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 09:16:33 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:16:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:16:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 10 May 2019 09:16:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:16:37 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:16:37 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:16:37 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 10 May 2019 09:16:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:16:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:16:39 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:16:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6187b1cd4a95f897462bf15d322cb0217f0c2791306dfff3c1423177cbb7d9b8`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 4.2 MB (4236743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddde74d7be81b59c81d4499012020625d3725398d78cbf1204c2c4be2233912`  
		Last Modified: Wed, 08 May 2019 11:55:47 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083493bcd809f21abd38be158d1a882018cac97fdb1c1623b01ff0cbb51678ba`  
		Last Modified: Wed, 08 May 2019 11:55:48 GMT  
		Size: 1.3 MB (1311102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c86e195c35acfc6137a34ac656751ac9b1af86d8ac7d168865f0ad66ae94a96`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 6.2 MB (6185276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e8457b4ad61904543662dbd3f7bbd85e1fbc740e7f3f7fe7fe110615bbecda`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 293.4 KB (293384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900f2045d1e883d0f818f35e24c911130e6e5a5008e3aca61624c3aca81a7369`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42085a2db16d24361b3410bd829b1e5f3007c7616d2925ed14887d88399bcea0`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e64d80554f21b2ae8dac10c94f710c1ce0f4ca24208eb17d72667fd4bff89ee`  
		Last Modified: Fri, 10 May 2019 10:32:31 GMT  
		Size: 48.0 MB (47976955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8091bf6996279c47e8d39995d22f89066388e26e9b2d47a7923cb7540cca86b`  
		Last Modified: Fri, 10 May 2019 10:32:13 GMT  
		Size: 8.2 KB (8212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ede6d917bcd9865904c3692257f281e7da7ee834bf3f13674fab56e3ca8bd25`  
		Last Modified: Fri, 10 May 2019 10:32:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8c0449cc818910a1797eff46e49332870cdb9a010e35ac5e8c2e9d2a28f89a`  
		Last Modified: Fri, 10 May 2019 10:32:13 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81eacf4db6655c064deff0f5bb619ffd12f2be6ebfc2cad019a6097c29ecdfb4`  
		Last Modified: Fri, 10 May 2019 10:32:13 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924185eb6f5ba7d8d90f905499747bebd7511193b94cc99836488d556ffd922a`  
		Last Modified: Fri, 10 May 2019 10:32:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11` - linux; 386

```console
$ docker pull postgres@sha256:874d9231ef408708f388454a3b5e2bbd5c9561dae4f04460d8a3c7a62a258bf5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121237862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aae025e847eb0d8d9318cfc707895052404df2d8d2c107398bcbdd8399fff15f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:43:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 18:43:29 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 18:43:29 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 18:43:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 18:43:49 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 18:43:49 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 18:43:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:43:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 18:43:58 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 18:43:58 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 11:02:11 GMT
ENV PG_VERSION=11.3-1.pgdg90+1
# Fri, 10 May 2019 11:03:00 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 11:03:01 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:03:02 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:03:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 10 May 2019 11:03:02 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:03:03 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:03:03 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:03:04 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 10 May 2019 11:03:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:03:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:03:05 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:03:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81cd933aa2c67d2892f2712457502eb1f14e9cf143632e3757b514814e2d0cc`  
		Last Modified: Wed, 08 May 2019 18:48:22 GMT  
		Size: 4.8 MB (4807726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67eda6906616ad50be4bb49e0402248f269055c4ed9add6a4bf1ddebe9f4dd9`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afc4a215cbbb60825914510f45abec3fd6d492fe234a32d366bb4d13f9e4869`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.3 MB (1317837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9955ce1ee330f61bfc01d81d2c1e2c3fb9b393588dc8069db8d6fa97177e52d7`  
		Last Modified: Wed, 08 May 2019 18:48:25 GMT  
		Size: 6.2 MB (6182590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920eeda872ac67d0fb5b1c35d25de9078176c64d8a791511d54f7f900f0989a0`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 296.6 KB (296556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa8e3df0dcb82be7e7e46edeb230cc94cc5c3bfc028ce06b9de49a581163676`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef37a66833579f324fda5db062d1a3a9739e036f3bd4c2c73cc75956b2908e3`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 4.8 KB (4793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e830508f968b3eac9a5b9d56c22c38d392647ed620f395fe06a2538134f1360`  
		Last Modified: Fri, 10 May 2019 11:22:23 GMT  
		Size: 85.5 MB (85494623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06932bb01719a542921c7d9ffd5799a2047984bc374af8b2f6fdb22a3af7a570`  
		Last Modified: Fri, 10 May 2019 11:22:02 GMT  
		Size: 8.2 KB (8209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dced3d489ad327e0163d42593d2275846143cb59f28f3a79fd39d65f68ee1b`  
		Last Modified: Fri, 10 May 2019 11:22:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79608b85bfa0f6d3fc37d04e4747dc554dfadc17c79b68f9188f8bc30b737e7`  
		Last Modified: Fri, 10 May 2019 11:22:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e2a091a255f7603ca6121df84d97694385a341d39a8e5dc5f9bccb3ccbf53c`  
		Last Modified: Fri, 10 May 2019 11:22:02 GMT  
		Size: 2.4 KB (2380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735b797cb1912b9911b74970ad0d458d16c6aaedefb3b4c55b89b70d9541d722`  
		Last Modified: Fri, 10 May 2019 11:22:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11` - linux; ppc64le

```console
$ docker pull postgres@sha256:ae5fcff5cab56b5a125e2cf078feee677d781c8e80d900b3fb2c9e419b9a2130
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (84027540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa48bea2ff8b3d64996bc033520fc4f0fc917adf7ad2d2522ca946328f01b60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 14:12:57 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 14:13:03 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 14:14:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 14:15:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 14:15:04 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 14:15:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:15:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 14:15:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 14:15:51 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 09:17:56 GMT
ENV PG_VERSION=11.3-1.pgdg90+1
# Fri, 10 May 2019 09:21:27 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 09:21:43 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:21:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:22:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 10 May 2019 09:22:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:22:16 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:22:22 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:22:24 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 10 May 2019 09:22:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:22:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:22:47 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:22:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31400e35e62100e129401e0db5744f08520633fcd8149b26792c502d6965a61a`  
		Last Modified: Wed, 08 May 2019 15:02:16 GMT  
		Size: 4.4 MB (4365081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14e987e87b91351d930ff69141b31e6f6cc42800361352f755c4d544be69833`  
		Last Modified: Wed, 08 May 2019 15:02:10 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3828e738a494793ba3c87812cd102699d9aa31b6399251598924f5e6a61a41`  
		Last Modified: Wed, 08 May 2019 15:02:11 GMT  
		Size: 1.3 MB (1275138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7689166881ea41e235b80b7cc77476488e89fde7331df69bc36b0e9800984f4`  
		Last Modified: Wed, 08 May 2019 15:02:18 GMT  
		Size: 6.2 MB (6185656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37c7521930e2ff2f9ac90f7f5a145d600542e7199588caacabe24b807a40dff`  
		Last Modified: Wed, 08 May 2019 15:02:08 GMT  
		Size: 293.6 KB (293607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82eed40867cae9111c7c7eff5a0ea33186f39ce68ca04b47112537c45dbabde6`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a30cf417536dec1e834bf421984eaee716ac1ec169275b7243755022b5474ce`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bbf353e2d2ce101f9d1f519a096860ff328a5fc712b0179a4c9d1ed1b817ab`  
		Last Modified: Fri, 10 May 2019 10:15:48 GMT  
		Size: 49.1 MB (49145336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4b8bc3ad4c792d13855ca18a5c832c9f64e6139b8623f20d48d695a0d0d49a`  
		Last Modified: Fri, 10 May 2019 10:14:52 GMT  
		Size: 8.2 KB (8212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95466a80a3ce2ea0a3aaac6288e7154d6c526bf345925ccc707674d4093e4a8b`  
		Last Modified: Fri, 10 May 2019 10:14:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea52f4248116efedbed56234e4f2ce32f1186c4e0467331c617fdb11bcb8347`  
		Last Modified: Fri, 10 May 2019 10:14:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7f522ce443363bf8cf162979af6381bea82cd563fc00aab5b504041e91adbb`  
		Last Modified: Fri, 10 May 2019 10:14:52 GMT  
		Size: 2.4 KB (2379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f555dc1046a85f51b21c4561f5a6f2ab695bc05065bb567aa317248b4c9bbd`  
		Last Modified: Fri, 10 May 2019 10:14:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:11.3`

```console
$ docker pull postgres@sha256:30ec90a6a3f8fa736d6a00f590c0190a77c191ea914b2179d9d5bd04ad1125e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386
	-	linux; ppc64le

### `postgres:11.3` - linux; amd64

```console
$ docker pull postgres@sha256:5fbf1b1f27f29dea756bd11d406c943e4a5ad5c9d3a6c0d6745c9105a887100e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116978302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587aa1d0e58645b9709bb72a9886faf7d6627a3e07af20aded79d27f1dc0e79c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:49:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 02:49:37 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 02:49:37 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 02:49:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 02:50:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 02:50:00 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 02:50:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:50:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 02:50:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 02:50:12 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 01:19:55 GMT
ENV PG_VERSION=11.3-1.pgdg90+1
# Fri, 10 May 2019 01:21:18 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 01:21:19 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:21:20 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:21:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 10 May 2019 01:21:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:21:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:21:21 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:21:21 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 10 May 2019 01:21:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:21:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:21:22 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:21:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d307000f290b09bb80a73255a5f5283d8722a100fd6730a5bccb3d2107afbce`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 4.5 MB (4501147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29837b5e9b7858633f7eda8bf8ebfeb2645be36cb62444532708917ff5871714`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.8 KB (1778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3090df5740389c8cfd6ef31b4a402ff8b26aed9d6e014e929e78f962807240a0`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.4 MB (1351331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0b4463fa0e3a96b78c37ac3989ae8908d8a1694ea8659a11f4fc90f7850159`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 6.2 MB (6182629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb834895f5964d99726df2dbef0ecf74f0a57a510301a551afbe7d917107c79`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 295.5 KB (295498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59169bd605be847833d9103cf774c2fe0444fcdaf5fc6478aa17fd0535c38f4a`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a950d631bfe9946149640c92a3130d1129c2e1ee2cab48284b2e5bf02a64ac83`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db7e3522bac125058a57cc53c0aed9a07d5be8a1c30056f9bf9321adf2a8277`  
		Last Modified: Fri, 10 May 2019 01:44:38 GMT  
		Size: 82.1 MB (82140653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bc301cd1669f01e6d1213fcf66d0cdeecf3ff302a221b78a5bf591e978426f`  
		Last Modified: Fri, 10 May 2019 01:44:20 GMT  
		Size: 8.2 KB (8211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8614737f74278d363e4b9aa04acfbaf8a981814bbeb1c1bf70e29d7662d325`  
		Last Modified: Fri, 10 May 2019 01:44:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad575a1ac336be9aa368bc83721b489bbd282cdbaec7fc1d189f383a09299239`  
		Last Modified: Fri, 10 May 2019 01:44:20 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6431194f8846aa22653d4cbb09cabd42981f9f521df2988803dacd33e7739a4`  
		Last Modified: Fri, 10 May 2019 01:44:20 GMT  
		Size: 2.4 KB (2380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4501fbec177e0960dd9f9bbeeafd723696236e3c467c88354c1e5c7763c0cd3`  
		Last Modified: Fri, 10 May 2019 01:44:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11.3` - linux; arm variant v5

```console
$ docker pull postgres@sha256:6d8cf635cc45891da5be4f71c3c25ec431c5ac9638a8a4da4392a2653c6e0918
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81177111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4296319e2c8009671cd26c5b43d502567922a895368de32ff06d0a224e2140f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 10:18:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 10:18:18 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 10:18:18 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 10:18:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 10:18:52 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 10:18:52 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 10:19:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:19:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 10:19:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 10:19:07 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 08:55:58 GMT
ENV PG_VERSION=11.3-1.pgdg90+1
# Fri, 10 May 2019 09:16:31 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 09:16:33 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:16:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:16:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 10 May 2019 09:16:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:16:37 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:16:37 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:16:37 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 10 May 2019 09:16:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:16:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:16:39 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:16:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6187b1cd4a95f897462bf15d322cb0217f0c2791306dfff3c1423177cbb7d9b8`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 4.2 MB (4236743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddde74d7be81b59c81d4499012020625d3725398d78cbf1204c2c4be2233912`  
		Last Modified: Wed, 08 May 2019 11:55:47 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083493bcd809f21abd38be158d1a882018cac97fdb1c1623b01ff0cbb51678ba`  
		Last Modified: Wed, 08 May 2019 11:55:48 GMT  
		Size: 1.3 MB (1311102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c86e195c35acfc6137a34ac656751ac9b1af86d8ac7d168865f0ad66ae94a96`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 6.2 MB (6185276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e8457b4ad61904543662dbd3f7bbd85e1fbc740e7f3f7fe7fe110615bbecda`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 293.4 KB (293384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900f2045d1e883d0f818f35e24c911130e6e5a5008e3aca61624c3aca81a7369`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42085a2db16d24361b3410bd829b1e5f3007c7616d2925ed14887d88399bcea0`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e64d80554f21b2ae8dac10c94f710c1ce0f4ca24208eb17d72667fd4bff89ee`  
		Last Modified: Fri, 10 May 2019 10:32:31 GMT  
		Size: 48.0 MB (47976955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8091bf6996279c47e8d39995d22f89066388e26e9b2d47a7923cb7540cca86b`  
		Last Modified: Fri, 10 May 2019 10:32:13 GMT  
		Size: 8.2 KB (8212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ede6d917bcd9865904c3692257f281e7da7ee834bf3f13674fab56e3ca8bd25`  
		Last Modified: Fri, 10 May 2019 10:32:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8c0449cc818910a1797eff46e49332870cdb9a010e35ac5e8c2e9d2a28f89a`  
		Last Modified: Fri, 10 May 2019 10:32:13 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81eacf4db6655c064deff0f5bb619ffd12f2be6ebfc2cad019a6097c29ecdfb4`  
		Last Modified: Fri, 10 May 2019 10:32:13 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924185eb6f5ba7d8d90f905499747bebd7511193b94cc99836488d556ffd922a`  
		Last Modified: Fri, 10 May 2019 10:32:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11.3` - linux; 386

```console
$ docker pull postgres@sha256:874d9231ef408708f388454a3b5e2bbd5c9561dae4f04460d8a3c7a62a258bf5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121237862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aae025e847eb0d8d9318cfc707895052404df2d8d2c107398bcbdd8399fff15f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:43:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 18:43:29 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 18:43:29 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 18:43:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 18:43:49 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 18:43:49 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 18:43:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:43:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 18:43:58 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 18:43:58 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 11:02:11 GMT
ENV PG_VERSION=11.3-1.pgdg90+1
# Fri, 10 May 2019 11:03:00 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 11:03:01 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:03:02 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:03:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 10 May 2019 11:03:02 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:03:03 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:03:03 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:03:04 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 10 May 2019 11:03:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:03:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:03:05 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:03:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81cd933aa2c67d2892f2712457502eb1f14e9cf143632e3757b514814e2d0cc`  
		Last Modified: Wed, 08 May 2019 18:48:22 GMT  
		Size: 4.8 MB (4807726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67eda6906616ad50be4bb49e0402248f269055c4ed9add6a4bf1ddebe9f4dd9`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afc4a215cbbb60825914510f45abec3fd6d492fe234a32d366bb4d13f9e4869`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.3 MB (1317837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9955ce1ee330f61bfc01d81d2c1e2c3fb9b393588dc8069db8d6fa97177e52d7`  
		Last Modified: Wed, 08 May 2019 18:48:25 GMT  
		Size: 6.2 MB (6182590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920eeda872ac67d0fb5b1c35d25de9078176c64d8a791511d54f7f900f0989a0`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 296.6 KB (296556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa8e3df0dcb82be7e7e46edeb230cc94cc5c3bfc028ce06b9de49a581163676`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef37a66833579f324fda5db062d1a3a9739e036f3bd4c2c73cc75956b2908e3`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 4.8 KB (4793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e830508f968b3eac9a5b9d56c22c38d392647ed620f395fe06a2538134f1360`  
		Last Modified: Fri, 10 May 2019 11:22:23 GMT  
		Size: 85.5 MB (85494623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06932bb01719a542921c7d9ffd5799a2047984bc374af8b2f6fdb22a3af7a570`  
		Last Modified: Fri, 10 May 2019 11:22:02 GMT  
		Size: 8.2 KB (8209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dced3d489ad327e0163d42593d2275846143cb59f28f3a79fd39d65f68ee1b`  
		Last Modified: Fri, 10 May 2019 11:22:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79608b85bfa0f6d3fc37d04e4747dc554dfadc17c79b68f9188f8bc30b737e7`  
		Last Modified: Fri, 10 May 2019 11:22:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e2a091a255f7603ca6121df84d97694385a341d39a8e5dc5f9bccb3ccbf53c`  
		Last Modified: Fri, 10 May 2019 11:22:02 GMT  
		Size: 2.4 KB (2380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735b797cb1912b9911b74970ad0d458d16c6aaedefb3b4c55b89b70d9541d722`  
		Last Modified: Fri, 10 May 2019 11:22:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11.3` - linux; ppc64le

```console
$ docker pull postgres@sha256:ae5fcff5cab56b5a125e2cf078feee677d781c8e80d900b3fb2c9e419b9a2130
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (84027540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa48bea2ff8b3d64996bc033520fc4f0fc917adf7ad2d2522ca946328f01b60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 14:12:57 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 14:13:03 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 14:14:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 14:15:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 14:15:04 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 14:15:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:15:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 14:15:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 14:15:51 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 09:17:56 GMT
ENV PG_VERSION=11.3-1.pgdg90+1
# Fri, 10 May 2019 09:21:27 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 09:21:43 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:21:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:22:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 10 May 2019 09:22:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:22:16 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:22:22 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:22:24 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 10 May 2019 09:22:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:22:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:22:47 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:22:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31400e35e62100e129401e0db5744f08520633fcd8149b26792c502d6965a61a`  
		Last Modified: Wed, 08 May 2019 15:02:16 GMT  
		Size: 4.4 MB (4365081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14e987e87b91351d930ff69141b31e6f6cc42800361352f755c4d544be69833`  
		Last Modified: Wed, 08 May 2019 15:02:10 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3828e738a494793ba3c87812cd102699d9aa31b6399251598924f5e6a61a41`  
		Last Modified: Wed, 08 May 2019 15:02:11 GMT  
		Size: 1.3 MB (1275138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7689166881ea41e235b80b7cc77476488e89fde7331df69bc36b0e9800984f4`  
		Last Modified: Wed, 08 May 2019 15:02:18 GMT  
		Size: 6.2 MB (6185656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37c7521930e2ff2f9ac90f7f5a145d600542e7199588caacabe24b807a40dff`  
		Last Modified: Wed, 08 May 2019 15:02:08 GMT  
		Size: 293.6 KB (293607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82eed40867cae9111c7c7eff5a0ea33186f39ce68ca04b47112537c45dbabde6`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a30cf417536dec1e834bf421984eaee716ac1ec169275b7243755022b5474ce`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bbf353e2d2ce101f9d1f519a096860ff328a5fc712b0179a4c9d1ed1b817ab`  
		Last Modified: Fri, 10 May 2019 10:15:48 GMT  
		Size: 49.1 MB (49145336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4b8bc3ad4c792d13855ca18a5c832c9f64e6139b8623f20d48d695a0d0d49a`  
		Last Modified: Fri, 10 May 2019 10:14:52 GMT  
		Size: 8.2 KB (8212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95466a80a3ce2ea0a3aaac6288e7154d6c526bf345925ccc707674d4093e4a8b`  
		Last Modified: Fri, 10 May 2019 10:14:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea52f4248116efedbed56234e4f2ce32f1186c4e0467331c617fdb11bcb8347`  
		Last Modified: Fri, 10 May 2019 10:14:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7f522ce443363bf8cf162979af6381bea82cd563fc00aab5b504041e91adbb`  
		Last Modified: Fri, 10 May 2019 10:14:52 GMT  
		Size: 2.4 KB (2379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f555dc1046a85f51b21c4561f5a6f2ab695bc05065bb567aa317248b4c9bbd`  
		Last Modified: Fri, 10 May 2019 10:14:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:11.3-alpine`

```console
$ docker pull postgres@sha256:8132bf2cd553068adcb7775a85456aa7835463158f24224b5a5fd79e2536c89c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `postgres:11.3-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:13d0ad40bc15e61f01e3337e7a025e2e9084ba2c4d761f10128e925b30af9036
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27817722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb5d401e0b1f5ca5647e0ed6a15763c01dbb733b14097a5cbd98258b116751df`
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
# Fri, 10 May 2019 01:21:38 GMT
ENV PG_VERSION=11.3
# Fri, 10 May 2019 01:21:38 GMT
ENV PG_SHA256=2a85e082fc225944821dfd23990e32dfcd2284c19060864b0ad4ca537d30522d
# Fri, 10 May 2019 01:30:27 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 01:30:28 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:30:29 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:30:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:30:30 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:30:30 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:30:30 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 01:30:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:30:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:30:31 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:30:31 GMT
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
	-	`sha256:e4d8ff647bb9df49b527c63eafd83b60d3b24d1967070da1ebeeb812d88ec9b8`  
		Last Modified: Fri, 10 May 2019 01:44:49 GMT  
		Size: 25.1 MB (25050145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dce7216c02334b1e04dc1340f7c1776cd6061da58fbb36a237a1eec99f59c04`  
		Last Modified: Fri, 10 May 2019 01:44:43 GMT  
		Size: 7.5 KB (7514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285adb082cef36886eb4e5e808611f64c05831d7f893a380a2c124d94b06c2cd`  
		Last Modified: Fri, 10 May 2019 01:44:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6a2311d7dbd3e3f9fec7a214a2960b5e3168eab253d0c2c4c6349a66ce534e`  
		Last Modified: Fri, 10 May 2019 01:44:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344a76561445b1132deb51ec6eaa17885c710ff6e07ef2bbb671f818b5d1b9ff`  
		Last Modified: Fri, 10 May 2019 01:44:43 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f7dd572e9362f033e8bcf9eb0923f6f2ccecf0f2ca96695fd0e7abb253b715`  
		Last Modified: Fri, 10 May 2019 01:44:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11.3-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:c9d0db378fb2b7a5a8cf4c00a96c2f1c055faccab2139a516bff9e496271df87
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26869682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4279d5a7aa907e478910e02e4fe99a94aecae6c86c8d2cb1844be6d140357361`
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
# Fri, 10 May 2019 07:52:35 GMT
ENV PG_VERSION=11.3
# Fri, 10 May 2019 07:52:35 GMT
ENV PG_SHA256=2a85e082fc225944821dfd23990e32dfcd2284c19060864b0ad4ca537d30522d
# Fri, 10 May 2019 07:54:50 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 07:54:52 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 07:54:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 07:54:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 07:54:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 07:54:55 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 07:54:55 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 07:54:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 07:54:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 07:54:57 GMT
EXPOSE 5432
# Fri, 10 May 2019 07:54:58 GMT
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
	-	`sha256:80094f284e20db2bba9db3c61541b80a27547f7894d06f073a3c293646eb2b21`  
		Last Modified: Fri, 10 May 2019 08:03:09 GMT  
		Size: 24.3 MB (24315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8ac7c3a4c1c74f4b9546ab4efa4956d2da16e1c09da82e75b923f075b35592`  
		Last Modified: Fri, 10 May 2019 08:03:00 GMT  
		Size: 7.5 KB (7514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9eb2c37c18dda5a5c5fffda8e93bb7a2b37532fd052482965145f94931a10a`  
		Last Modified: Fri, 10 May 2019 08:02:59 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc23116ff08cdec19edf61ae2c8054fb93fe4ee6e04b05cb1658afdc5802e82`  
		Last Modified: Fri, 10 May 2019 08:02:59 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8dfcb5ca64a381677091db8eb7179ce8eab369531a02dc335d164410e6fc9e`  
		Last Modified: Fri, 10 May 2019 08:02:59 GMT  
		Size: 2.4 KB (2370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6777efc82185ef79fe843d6a78e8ba773113e3b33222f915b6e95b1caaa881`  
		Last Modified: Fri, 10 May 2019 08:02:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11.3-alpine` - linux; 386

```console
$ docker pull postgres@sha256:d085e5c6f0481c428116b391cc18ef102ffc393935b8808d45db362cfdc30421
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.7 MB (28664142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb44b5f2e5150947206273596fc41996675b53c1694583081151d798a98b2261`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:28:03 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 14:28:03 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 14:28:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 14:28:04 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 11:03:14 GMT
ENV PG_VERSION=11.3
# Fri, 10 May 2019 11:03:14 GMT
ENV PG_SHA256=2a85e082fc225944821dfd23990e32dfcd2284c19060864b0ad4ca537d30522d
# Fri, 10 May 2019 11:06:35 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 11:06:36 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:06:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:06:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:06:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:06:38 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:06:38 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 11:06:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:06:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:06:39 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:06:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df8da713ae1263f84fd0cae748880b9bd3c3aa4619279b1b972976cdd7d4933`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60005ea8fc190aec4ebdcb14ff51e60c24531718c56530053e1321be67ccc37a`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb40771b304246f6e4b108c58ac5e184bc4aaf7d5bae347e550eb0c7a782852`  
		Last Modified: Fri, 10 May 2019 11:22:42 GMT  
		Size: 25.9 MB (25901411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdfb0cf7fa1d129d54f22a439ed64ff1ed8675b7573e1cadbb03ec002b7ae19`  
		Last Modified: Fri, 10 May 2019 11:22:32 GMT  
		Size: 7.5 KB (7517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65dba1d909297ea1da3f95ac3d45df0566a128d79d36cd9bd409b0a348fc8880`  
		Last Modified: Fri, 10 May 2019 11:22:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b496853f8598bb3ea34405ed8c3215ced6057b23a3ca183dc7596a2c8ac587ef`  
		Last Modified: Fri, 10 May 2019 11:22:32 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8317001c434890bd09d989f02b62480d439b4830965fe3be3c61f67cc5c9c27`  
		Last Modified: Fri, 10 May 2019 11:22:32 GMT  
		Size: 2.4 KB (2369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8045362602544e5ccd8729392701331a0d92953e303507068475817db3c47e7`  
		Last Modified: Fri, 10 May 2019 11:22:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11.3-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:4394407feb73d2b7dea72b184bd260f03f201a123e0e3bebeec33ebfae034baf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29128932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e02013fc9643f619de60e7a77ca558b7ab4d1d433e46051efecbdb01cf887f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:40:21 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 10:40:26 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 10:40:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 10:40:34 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 09:23:10 GMT
ENV PG_VERSION=11.3
# Fri, 10 May 2019 09:23:16 GMT
ENV PG_SHA256=2a85e082fc225944821dfd23990e32dfcd2284c19060864b0ad4ca537d30522d
# Fri, 10 May 2019 09:27:39 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 09:27:47 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:27:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:27:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:28:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:28:10 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:28:12 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 09:28:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:28:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:28:28 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:28:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fadc09892703ded74da3266e56d7cf5631a32b6afc741c5d73cd181c7fcf26`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d903923d54c1aec0b4affbfa3483f2a737879e509527322b1f68fde697c40acf`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f7544c7b295507148a492cf3da081da4cd5dbc16e52872d6a67a72f7b835e2`  
		Last Modified: Fri, 10 May 2019 10:16:33 GMT  
		Size: 26.3 MB (26337207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ffbd3658d305dc5485a143d060245bb4fb1d5ffb95a2664a88458447e140c3`  
		Last Modified: Fri, 10 May 2019 10:16:05 GMT  
		Size: 7.5 KB (7517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbee7340d39239b1c16f3ad86748f8a349c003467e06bd7ad53c07c84b93313`  
		Last Modified: Fri, 10 May 2019 10:16:04 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92750866a61ffcda6f4d601dc2c72f66aff369b4a04610e035b3b0933f4c301b`  
		Last Modified: Fri, 10 May 2019 10:16:05 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1e23fe874cd3f8c8c68945798e57a4f8acb93c76dd942abfe3abe07d94b3e6`  
		Last Modified: Fri, 10 May 2019 10:16:04 GMT  
		Size: 2.4 KB (2373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c34e012df252b58bcc1f493fb37d33b6cb8222d092d656f79537a9965c7f46`  
		Last Modified: Fri, 10 May 2019 10:16:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:11-alpine`

```console
$ docker pull postgres@sha256:8132bf2cd553068adcb7775a85456aa7835463158f24224b5a5fd79e2536c89c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `postgres:11-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:13d0ad40bc15e61f01e3337e7a025e2e9084ba2c4d761f10128e925b30af9036
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27817722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb5d401e0b1f5ca5647e0ed6a15763c01dbb733b14097a5cbd98258b116751df`
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
# Fri, 10 May 2019 01:21:38 GMT
ENV PG_VERSION=11.3
# Fri, 10 May 2019 01:21:38 GMT
ENV PG_SHA256=2a85e082fc225944821dfd23990e32dfcd2284c19060864b0ad4ca537d30522d
# Fri, 10 May 2019 01:30:27 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 01:30:28 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:30:29 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:30:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:30:30 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:30:30 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:30:30 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 01:30:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:30:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:30:31 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:30:31 GMT
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
	-	`sha256:e4d8ff647bb9df49b527c63eafd83b60d3b24d1967070da1ebeeb812d88ec9b8`  
		Last Modified: Fri, 10 May 2019 01:44:49 GMT  
		Size: 25.1 MB (25050145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dce7216c02334b1e04dc1340f7c1776cd6061da58fbb36a237a1eec99f59c04`  
		Last Modified: Fri, 10 May 2019 01:44:43 GMT  
		Size: 7.5 KB (7514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285adb082cef36886eb4e5e808611f64c05831d7f893a380a2c124d94b06c2cd`  
		Last Modified: Fri, 10 May 2019 01:44:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6a2311d7dbd3e3f9fec7a214a2960b5e3168eab253d0c2c4c6349a66ce534e`  
		Last Modified: Fri, 10 May 2019 01:44:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344a76561445b1132deb51ec6eaa17885c710ff6e07ef2bbb671f818b5d1b9ff`  
		Last Modified: Fri, 10 May 2019 01:44:43 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f7dd572e9362f033e8bcf9eb0923f6f2ccecf0f2ca96695fd0e7abb253b715`  
		Last Modified: Fri, 10 May 2019 01:44:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:c9d0db378fb2b7a5a8cf4c00a96c2f1c055faccab2139a516bff9e496271df87
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26869682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4279d5a7aa907e478910e02e4fe99a94aecae6c86c8d2cb1844be6d140357361`
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
# Fri, 10 May 2019 07:52:35 GMT
ENV PG_VERSION=11.3
# Fri, 10 May 2019 07:52:35 GMT
ENV PG_SHA256=2a85e082fc225944821dfd23990e32dfcd2284c19060864b0ad4ca537d30522d
# Fri, 10 May 2019 07:54:50 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 07:54:52 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 07:54:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 07:54:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 07:54:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 07:54:55 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 07:54:55 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 07:54:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 07:54:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 07:54:57 GMT
EXPOSE 5432
# Fri, 10 May 2019 07:54:58 GMT
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
	-	`sha256:80094f284e20db2bba9db3c61541b80a27547f7894d06f073a3c293646eb2b21`  
		Last Modified: Fri, 10 May 2019 08:03:09 GMT  
		Size: 24.3 MB (24315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8ac7c3a4c1c74f4b9546ab4efa4956d2da16e1c09da82e75b923f075b35592`  
		Last Modified: Fri, 10 May 2019 08:03:00 GMT  
		Size: 7.5 KB (7514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9eb2c37c18dda5a5c5fffda8e93bb7a2b37532fd052482965145f94931a10a`  
		Last Modified: Fri, 10 May 2019 08:02:59 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc23116ff08cdec19edf61ae2c8054fb93fe4ee6e04b05cb1658afdc5802e82`  
		Last Modified: Fri, 10 May 2019 08:02:59 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8dfcb5ca64a381677091db8eb7179ce8eab369531a02dc335d164410e6fc9e`  
		Last Modified: Fri, 10 May 2019 08:02:59 GMT  
		Size: 2.4 KB (2370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6777efc82185ef79fe843d6a78e8ba773113e3b33222f915b6e95b1caaa881`  
		Last Modified: Fri, 10 May 2019 08:02:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-alpine` - linux; 386

```console
$ docker pull postgres@sha256:d085e5c6f0481c428116b391cc18ef102ffc393935b8808d45db362cfdc30421
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.7 MB (28664142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb44b5f2e5150947206273596fc41996675b53c1694583081151d798a98b2261`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:28:03 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 14:28:03 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 14:28:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 14:28:04 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 11:03:14 GMT
ENV PG_VERSION=11.3
# Fri, 10 May 2019 11:03:14 GMT
ENV PG_SHA256=2a85e082fc225944821dfd23990e32dfcd2284c19060864b0ad4ca537d30522d
# Fri, 10 May 2019 11:06:35 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 11:06:36 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:06:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:06:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:06:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:06:38 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:06:38 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 11:06:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:06:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:06:39 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:06:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df8da713ae1263f84fd0cae748880b9bd3c3aa4619279b1b972976cdd7d4933`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60005ea8fc190aec4ebdcb14ff51e60c24531718c56530053e1321be67ccc37a`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb40771b304246f6e4b108c58ac5e184bc4aaf7d5bae347e550eb0c7a782852`  
		Last Modified: Fri, 10 May 2019 11:22:42 GMT  
		Size: 25.9 MB (25901411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdfb0cf7fa1d129d54f22a439ed64ff1ed8675b7573e1cadbb03ec002b7ae19`  
		Last Modified: Fri, 10 May 2019 11:22:32 GMT  
		Size: 7.5 KB (7517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65dba1d909297ea1da3f95ac3d45df0566a128d79d36cd9bd409b0a348fc8880`  
		Last Modified: Fri, 10 May 2019 11:22:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b496853f8598bb3ea34405ed8c3215ced6057b23a3ca183dc7596a2c8ac587ef`  
		Last Modified: Fri, 10 May 2019 11:22:32 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8317001c434890bd09d989f02b62480d439b4830965fe3be3c61f67cc5c9c27`  
		Last Modified: Fri, 10 May 2019 11:22:32 GMT  
		Size: 2.4 KB (2369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8045362602544e5ccd8729392701331a0d92953e303507068475817db3c47e7`  
		Last Modified: Fri, 10 May 2019 11:22:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:4394407feb73d2b7dea72b184bd260f03f201a123e0e3bebeec33ebfae034baf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29128932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e02013fc9643f619de60e7a77ca558b7ab4d1d433e46051efecbdb01cf887f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:40:21 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 10:40:26 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 10:40:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 10:40:34 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 09:23:10 GMT
ENV PG_VERSION=11.3
# Fri, 10 May 2019 09:23:16 GMT
ENV PG_SHA256=2a85e082fc225944821dfd23990e32dfcd2284c19060864b0ad4ca537d30522d
# Fri, 10 May 2019 09:27:39 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 09:27:47 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:27:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:27:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:28:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:28:10 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:28:12 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 09:28:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:28:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:28:28 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:28:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fadc09892703ded74da3266e56d7cf5631a32b6afc741c5d73cd181c7fcf26`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d903923d54c1aec0b4affbfa3483f2a737879e509527322b1f68fde697c40acf`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f7544c7b295507148a492cf3da081da4cd5dbc16e52872d6a67a72f7b835e2`  
		Last Modified: Fri, 10 May 2019 10:16:33 GMT  
		Size: 26.3 MB (26337207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ffbd3658d305dc5485a143d060245bb4fb1d5ffb95a2664a88458447e140c3`  
		Last Modified: Fri, 10 May 2019 10:16:05 GMT  
		Size: 7.5 KB (7517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbee7340d39239b1c16f3ad86748f8a349c003467e06bd7ad53c07c84b93313`  
		Last Modified: Fri, 10 May 2019 10:16:04 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92750866a61ffcda6f4d601dc2c72f66aff369b4a04610e035b3b0933f4c301b`  
		Last Modified: Fri, 10 May 2019 10:16:05 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1e23fe874cd3f8c8c68945798e57a4f8acb93c76dd942abfe3abe07d94b3e6`  
		Last Modified: Fri, 10 May 2019 10:16:04 GMT  
		Size: 2.4 KB (2373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c34e012df252b58bcc1f493fb37d33b6cb8222d092d656f79537a9965c7f46`  
		Last Modified: Fri, 10 May 2019 10:16:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:622d42b50689747e78ca6081485b0cc097a89b3880f1999d507b2dd4ca0c908b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386
	-	linux; ppc64le

### `postgres:9` - linux; amd64

```console
$ docker pull postgres@sha256:2f07d16f388adac3eec9f29a7f6056259b619951b3e9d1a4be3816f28839a912
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.2 MB (84170614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d9572468d971c3b761ae8e59328a9e7cafd26affba2f2ef4646cd3bdf97b37d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:49:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 02:49:37 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 02:49:37 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 02:49:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 02:50:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 02:50:00 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 02:50:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:50:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 02:50:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 02:52:39 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 01:34:22 GMT
ENV PG_VERSION=9.6.13-1.pgdg90+1
# Fri, 10 May 2019 01:34:53 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 01:34:54 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:34:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:34:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 10 May 2019 01:34:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:34:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:34:56 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:34:56 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 01:34:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:34:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:34:57 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:34:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d307000f290b09bb80a73255a5f5283d8722a100fd6730a5bccb3d2107afbce`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 4.5 MB (4501147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29837b5e9b7858633f7eda8bf8ebfeb2645be36cb62444532708917ff5871714`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.8 KB (1778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3090df5740389c8cfd6ef31b4a402ff8b26aed9d6e014e929e78f962807240a0`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.4 MB (1351331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0b4463fa0e3a96b78c37ac3989ae8908d8a1694ea8659a11f4fc90f7850159`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 6.2 MB (6182629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb834895f5964d99726df2dbef0ecf74f0a57a510301a551afbe7d917107c79`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 295.5 KB (295498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59169bd605be847833d9103cf774c2fe0444fcdaf5fc6478aa17fd0535c38f4a`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a950d631bfe9946149640c92a3130d1129c2e1ee2cab48284b2e5bf02a64ac83`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de13bddd861ec874fc70cc89b668f312bde29da16ec2c8e5e59b3a16d2657d8a`  
		Last Modified: Fri, 10 May 2019 01:45:43 GMT  
		Size: 49.3 MB (49333420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d927ac55bb77591fc5b29960d2c2daf9be55b456372aa3913b64227f6a54ac`  
		Last Modified: Fri, 10 May 2019 01:45:32 GMT  
		Size: 7.8 KB (7754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd90504b6086a3e94157907f66a333193c7c49ebe86b303bf83c5dd9fb554d86`  
		Last Modified: Fri, 10 May 2019 01:45:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1817e506cb0868e75edf77b46fa2f829d35d48b6197ab458aa248ed79662f92c`  
		Last Modified: Fri, 10 May 2019 01:45:32 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ea2bd116a57936f614a46cd384be4f7983b37082b48c4651a58b627b201c15`  
		Last Modified: Fri, 10 May 2019 01:45:32 GMT  
		Size: 2.4 KB (2379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d177a7b6aef123ad6147e0c59988e17f6f1c962851617c03616f4f3d25a24c`  
		Last Modified: Fri, 10 May 2019 01:45:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; arm variant v5

```console
$ docker pull postgres@sha256:d1df2d9f65df6456bd07ce7d204245bc49373f6aad4a89585bc400cf17bd8051
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81154208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f0b93ee773c6c6c4c8954cd23f65edbc85d113b4d30a5c50f0eaaecd933db1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 10:18:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 10:18:18 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 10:18:18 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 10:18:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 10:18:52 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 10:18:52 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 10:19:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:19:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 10:19:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 10:59:53 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 09:37:03 GMT
ENV PG_VERSION=9.6.13-1.pgdg90+1
# Fri, 10 May 2019 09:55:52 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 09:55:54 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:55:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:55:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 10 May 2019 09:55:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:55:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:55:57 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:55:57 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 09:55:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:55:59 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:56:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6187b1cd4a95f897462bf15d322cb0217f0c2791306dfff3c1423177cbb7d9b8`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 4.2 MB (4236743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddde74d7be81b59c81d4499012020625d3725398d78cbf1204c2c4be2233912`  
		Last Modified: Wed, 08 May 2019 11:55:47 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083493bcd809f21abd38be158d1a882018cac97fdb1c1623b01ff0cbb51678ba`  
		Last Modified: Wed, 08 May 2019 11:55:48 GMT  
		Size: 1.3 MB (1311102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c86e195c35acfc6137a34ac656751ac9b1af86d8ac7d168865f0ad66ae94a96`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 6.2 MB (6185276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e8457b4ad61904543662dbd3f7bbd85e1fbc740e7f3f7fe7fe110615bbecda`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 293.4 KB (293384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900f2045d1e883d0f818f35e24c911130e6e5a5008e3aca61624c3aca81a7369`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42085a2db16d24361b3410bd829b1e5f3007c7616d2925ed14887d88399bcea0`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb16be586a16acf1c4e00881860a7bec17054b7ef084ae22eca9159feb1d69f8`  
		Last Modified: Fri, 10 May 2019 10:33:24 GMT  
		Size: 48.0 MB (47954503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da49ba382aebe8d18ac2ab916391850c72d5d3dc819d054ac38c3e17b92446e7`  
		Last Modified: Fri, 10 May 2019 10:33:06 GMT  
		Size: 7.8 KB (7761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e362b63070424558134a660d52e107d5a7f234dd54925e2ca0a17a5248740c5d`  
		Last Modified: Fri, 10 May 2019 10:33:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75aafcabe5573bcae7a7e4a4e239f543827047b733e330f90ad0c598da4ccf70`  
		Last Modified: Fri, 10 May 2019 10:33:06 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3335436f1678dcf7d81635541a589826275b784f61eb823a1b1000f923ee3824`  
		Last Modified: Fri, 10 May 2019 10:33:06 GMT  
		Size: 2.4 KB (2382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efdf61fb470f72d86b76b9bf498e951e4f5455573eeea73e8317c41f88f4eecd`  
		Last Modified: Fri, 10 May 2019 10:33:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; 386

```console
$ docker pull postgres@sha256:656396b2aaf0b78a9e46099802fbee978f6aaff44321b7f8e50dfe0e924f77b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.1 MB (86113961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df36d2b5faf1c01a06f5bc687db71973c9ac23a1230b344904c63beb08c88c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:43:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 18:43:29 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 18:43:29 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 18:43:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 18:43:49 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 18:43:49 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 18:43:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:43:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 18:43:58 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 18:45:49 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 11:10:42 GMT
ENV PG_VERSION=9.6.13-1.pgdg90+1
# Fri, 10 May 2019 11:11:16 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 11:11:17 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:11:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:11:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 10 May 2019 11:11:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:11:19 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:11:19 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:11:19 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 11:11:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:11:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:11:20 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:11:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81cd933aa2c67d2892f2712457502eb1f14e9cf143632e3757b514814e2d0cc`  
		Last Modified: Wed, 08 May 2019 18:48:22 GMT  
		Size: 4.8 MB (4807726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67eda6906616ad50be4bb49e0402248f269055c4ed9add6a4bf1ddebe9f4dd9`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afc4a215cbbb60825914510f45abec3fd6d492fe234a32d366bb4d13f9e4869`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.3 MB (1317837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9955ce1ee330f61bfc01d81d2c1e2c3fb9b393588dc8069db8d6fa97177e52d7`  
		Last Modified: Wed, 08 May 2019 18:48:25 GMT  
		Size: 6.2 MB (6182590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920eeda872ac67d0fb5b1c35d25de9078176c64d8a791511d54f7f900f0989a0`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 296.6 KB (296556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa8e3df0dcb82be7e7e46edeb230cc94cc5c3bfc028ce06b9de49a581163676`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef37a66833579f324fda5db062d1a3a9739e036f3bd4c2c73cc75956b2908e3`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 4.8 KB (4793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e5465b17cfbea495e0bbd2b829583b09972e65d27b2e7ab215116b2b602aa0`  
		Last Modified: Fri, 10 May 2019 11:23:34 GMT  
		Size: 50.4 MB (50371170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a254d33df706ea7f19493d7771ae80759442876b0d5fedb54f60365d7442c6fe`  
		Last Modified: Fri, 10 May 2019 11:23:20 GMT  
		Size: 7.8 KB (7759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f93389af5e34b4b0bbde0dfb1adebd0bdca63edb38f1603f33eac41cd8e4c0`  
		Last Modified: Fri, 10 May 2019 11:23:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ae48d6f18d260f4959254e2a8e4553459b84092c5aa1b1d621d1fd3ce9055c`  
		Last Modified: Fri, 10 May 2019 11:23:20 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c583fc1ba0d827f3f823aa747dfed7c366851f63fca0e50858ab792c1937da`  
		Last Modified: Fri, 10 May 2019 11:23:20 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb5e997956cd6deb376d18c5a29f9f4c112874c236f55d1f2b8f474b49e51bc`  
		Last Modified: Fri, 10 May 2019 11:23:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; ppc64le

```console
$ docker pull postgres@sha256:9f742975a8579b2e775a97df4873513a7ac4fdad593d0f04091373525fc3f62f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84053391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20b70a67fe64a2c749510f7b6f12a94fb98b680c5fb97be40fb2b7b85cf8dc86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 14:12:57 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 14:13:03 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 14:14:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 14:15:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 14:15:04 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 14:15:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:15:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 14:15:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 14:40:12 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 09:38:06 GMT
ENV PG_VERSION=9.6.13-1.pgdg90+1
# Fri, 10 May 2019 09:43:03 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 09:43:16 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:43:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:43:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 10 May 2019 09:43:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:43:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:43:54 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:43:56 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 09:44:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:44:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:44:12 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:44:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31400e35e62100e129401e0db5744f08520633fcd8149b26792c502d6965a61a`  
		Last Modified: Wed, 08 May 2019 15:02:16 GMT  
		Size: 4.4 MB (4365081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14e987e87b91351d930ff69141b31e6f6cc42800361352f755c4d544be69833`  
		Last Modified: Wed, 08 May 2019 15:02:10 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3828e738a494793ba3c87812cd102699d9aa31b6399251598924f5e6a61a41`  
		Last Modified: Wed, 08 May 2019 15:02:11 GMT  
		Size: 1.3 MB (1275138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7689166881ea41e235b80b7cc77476488e89fde7331df69bc36b0e9800984f4`  
		Last Modified: Wed, 08 May 2019 15:02:18 GMT  
		Size: 6.2 MB (6185656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37c7521930e2ff2f9ac90f7f5a145d600542e7199588caacabe24b807a40dff`  
		Last Modified: Wed, 08 May 2019 15:02:08 GMT  
		Size: 293.6 KB (293607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82eed40867cae9111c7c7eff5a0ea33186f39ce68ca04b47112537c45dbabde6`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a30cf417536dec1e834bf421984eaee716ac1ec169275b7243755022b5474ce`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bb42dcf20397f9669ef8b7bf9076fd0f253a84278a1cf999d764c1a01788a2`  
		Last Modified: Fri, 10 May 2019 10:20:02 GMT  
		Size: 49.2 MB (49171632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee9e04b82ec4dd344d6b56a150a0719921a59ede6683d9010d5e7597c8e3700`  
		Last Modified: Fri, 10 May 2019 10:19:01 GMT  
		Size: 7.8 KB (7763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1ca6469c95597e48dcebc784c29bdccd22473e407b6ffa2f9cf9b79deafe3b`  
		Last Modified: Fri, 10 May 2019 10:19:00 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac89144a792746efadba0cd19f48306e850d540a570241d6e42538d3ba40b05a`  
		Last Modified: Fri, 10 May 2019 10:19:00 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033afb130c535ef665ed30ccc2781fa0ca653c530e1a7050c65b1655a7c89b75`  
		Last Modified: Fri, 10 May 2019 10:19:00 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8088950f1bf813767839a2782d0f114113f30aca83d1c109f2e82a58e83a932e`  
		Last Modified: Fri, 10 May 2019 10:19:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:80fb46f2bb2fd2dfabf51b3c1756dde55cd61e0f217bc11ea44790bbe1a3b4c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386
	-	linux; ppc64le

### `postgres:9.4` - linux; amd64

```console
$ docker pull postgres@sha256:ee504cc59602a38367d50d8a29aa28bad1f65da637b58cc05b863e6799e656e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82782407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8854ac6fdc436421cda3c881a38ec08e6b67ef09f02f6bcd530c1189e8c15259`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:49:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 02:49:37 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 02:49:37 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 02:49:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 02:50:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 02:50:00 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 02:50:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:50:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 02:50:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 02:54:51 GMT
ENV PG_MAJOR=9.4
# Fri, 10 May 2019 01:41:05 GMT
ENV PG_VERSION=9.4.22-1.pgdg90+1
# Fri, 10 May 2019 01:41:35 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 01:41:36 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:41:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:41:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 10 May 2019 01:41:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:41:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:41:38 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:41:38 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 01:41:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:41:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:41:39 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:41:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d307000f290b09bb80a73255a5f5283d8722a100fd6730a5bccb3d2107afbce`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 4.5 MB (4501147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29837b5e9b7858633f7eda8bf8ebfeb2645be36cb62444532708917ff5871714`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.8 KB (1778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3090df5740389c8cfd6ef31b4a402ff8b26aed9d6e014e929e78f962807240a0`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.4 MB (1351331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0b4463fa0e3a96b78c37ac3989ae8908d8a1694ea8659a11f4fc90f7850159`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 6.2 MB (6182629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb834895f5964d99726df2dbef0ecf74f0a57a510301a551afbe7d917107c79`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 295.5 KB (295498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59169bd605be847833d9103cf774c2fe0444fcdaf5fc6478aa17fd0535c38f4a`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a950d631bfe9946149640c92a3130d1129c2e1ee2cab48284b2e5bf02a64ac83`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd63d0eef95c3748020a752789e4285f383640342c974dbf8deb10716799aaa8`  
		Last Modified: Fri, 10 May 2019 01:46:39 GMT  
		Size: 47.9 MB (47945620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7997bbf6f5a01844aadb9799a7ac4f3bf91d105f852c39d6cee3e6bb69e18b`  
		Last Modified: Fri, 10 May 2019 01:46:28 GMT  
		Size: 7.3 KB (7346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2c73f6269a2c07492dfdb45baa31f4d8c57337ff3929510957d0fb22d4d09e`  
		Last Modified: Fri, 10 May 2019 01:46:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c05a910a7c1daaae4f8509078d700b7e9bb2c0d46ec831c68f02a9ab2e53327`  
		Last Modified: Fri, 10 May 2019 01:46:29 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9391e420ba9f125c92276f39ce907f4d9efa0793ceb43ff739cc5ab7ada6ccdf`  
		Last Modified: Fri, 10 May 2019 01:46:28 GMT  
		Size: 2.4 KB (2382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deedc4705470d3489cbb0b8103c4441d18b3630b9d112296d61d2642c7ffed34`  
		Last Modified: Fri, 10 May 2019 01:46:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; arm variant v5

```console
$ docker pull postgres@sha256:e878482e792a40a9d1197645989ebf264b0706e23347fd0e45dd2e419ef64170
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79829316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09cde8cdff66b5d6c4bb8096092f8dfe0629f9157d356da618849b840c2cb37d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 10:18:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 10:18:18 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 10:18:18 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 10:18:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 10:18:52 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 10:18:52 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 10:19:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:19:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 10:19:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 11:38:07 GMT
ENV PG_MAJOR=9.4
# Fri, 10 May 2019 10:14:37 GMT
ENV PG_VERSION=9.4.22-1.pgdg90+1
# Fri, 10 May 2019 10:31:49 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 10:31:51 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 10:31:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 10:31:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 10 May 2019 10:31:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 10:31:54 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 10:31:54 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 10:31:55 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 10:31:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 10:31:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 10:31:56 GMT
EXPOSE 5432
# Fri, 10 May 2019 10:31:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6187b1cd4a95f897462bf15d322cb0217f0c2791306dfff3c1423177cbb7d9b8`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 4.2 MB (4236743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddde74d7be81b59c81d4499012020625d3725398d78cbf1204c2c4be2233912`  
		Last Modified: Wed, 08 May 2019 11:55:47 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083493bcd809f21abd38be158d1a882018cac97fdb1c1623b01ff0cbb51678ba`  
		Last Modified: Wed, 08 May 2019 11:55:48 GMT  
		Size: 1.3 MB (1311102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c86e195c35acfc6137a34ac656751ac9b1af86d8ac7d168865f0ad66ae94a96`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 6.2 MB (6185276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e8457b4ad61904543662dbd3f7bbd85e1fbc740e7f3f7fe7fe110615bbecda`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 293.4 KB (293384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900f2045d1e883d0f818f35e24c911130e6e5a5008e3aca61624c3aca81a7369`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42085a2db16d24361b3410bd829b1e5f3007c7616d2925ed14887d88399bcea0`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a90bbb138aa50b21e9d98f14908b9500ea64e10d442f22b99f320c9bfd46cb1`  
		Last Modified: Fri, 10 May 2019 10:34:13 GMT  
		Size: 46.6 MB (46630025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1876057db84ba60e3c85f08c97035186d6000cd300da9ca4f83a680422f231d`  
		Last Modified: Fri, 10 May 2019 10:33:55 GMT  
		Size: 7.3 KB (7346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612571656407d813a323a3be74a4f7b5f7395eeae958ad19d08da6f18690857c`  
		Last Modified: Fri, 10 May 2019 10:33:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde6e348d4d18680450501d1d13269513872ba39a21ca77567499baefe44d8b1`  
		Last Modified: Fri, 10 May 2019 10:33:55 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8131aaae14a77a2880b7b23a90d95970be5e038ef2eb3ff91d1aab09d49843c`  
		Last Modified: Fri, 10 May 2019 10:33:55 GMT  
		Size: 2.4 KB (2383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ef2a7fd6e27fd82335204b40242e46d4e76ed0990a39db04784ee10a1e7e10`  
		Last Modified: Fri, 10 May 2019 10:33:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; 386

```console
$ docker pull postgres@sha256:039825524eedd83fd0afeabbddce82efc9623f65e2b74343193709c068d0f880
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84725970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eccee17b03800473b87fdb6923b378ccfa1750d2a7c983fdef60de99194a895`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:43:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 18:43:29 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 18:43:29 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 18:43:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 18:43:49 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 18:43:49 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 18:43:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:43:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 18:43:58 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 18:47:23 GMT
ENV PG_MAJOR=9.4
# Fri, 10 May 2019 11:18:24 GMT
ENV PG_VERSION=9.4.22-1.pgdg90+1
# Fri, 10 May 2019 11:18:59 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 11:19:00 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:19:01 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:19:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 10 May 2019 11:19:01 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:19:02 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:19:02 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:19:02 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 11:19:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:19:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:19:03 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:19:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81cd933aa2c67d2892f2712457502eb1f14e9cf143632e3757b514814e2d0cc`  
		Last Modified: Wed, 08 May 2019 18:48:22 GMT  
		Size: 4.8 MB (4807726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67eda6906616ad50be4bb49e0402248f269055c4ed9add6a4bf1ddebe9f4dd9`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afc4a215cbbb60825914510f45abec3fd6d492fe234a32d366bb4d13f9e4869`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.3 MB (1317837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9955ce1ee330f61bfc01d81d2c1e2c3fb9b393588dc8069db8d6fa97177e52d7`  
		Last Modified: Wed, 08 May 2019 18:48:25 GMT  
		Size: 6.2 MB (6182590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920eeda872ac67d0fb5b1c35d25de9078176c64d8a791511d54f7f900f0989a0`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 296.6 KB (296556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa8e3df0dcb82be7e7e46edeb230cc94cc5c3bfc028ce06b9de49a581163676`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef37a66833579f324fda5db062d1a3a9739e036f3bd4c2c73cc75956b2908e3`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 4.8 KB (4793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bfc2b4ceeafea751f4239685bf137d383dcc884009dcec103f8305070548b11`  
		Last Modified: Fri, 10 May 2019 11:24:35 GMT  
		Size: 49.0 MB (48983589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc13b5501805ca760d58b5004a682726b03b2b09ecd50b48a464ba1d8c95855a`  
		Last Modified: Fri, 10 May 2019 11:24:21 GMT  
		Size: 7.3 KB (7349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ce1ddc3376de7ba92926fc12bbeee7fb62343b4ce8dec803ac55cc5c6e4132`  
		Last Modified: Fri, 10 May 2019 11:24:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fb7847681e716a8c6355ac6e9cc9a49a5999e90110dd3e7b85a3cf71533d1e`  
		Last Modified: Fri, 10 May 2019 11:24:22 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd99a071cb3f663c239ac6d6dca34b5537da8d83bc9fddcae3be4b044663dd92`  
		Last Modified: Fri, 10 May 2019 11:24:21 GMT  
		Size: 2.4 KB (2379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074beb94188d7526725d7c08b6c8beb1bb6b9532e5379c702cfd6a15d9b0aaf7`  
		Last Modified: Fri, 10 May 2019 11:24:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; ppc64le

```console
$ docker pull postgres@sha256:4cf090cc65c8d97c8f740f5a59247ca58aebcd25026c5afac54dd8ee57d90f17
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82715962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ce54263328be2ce0a699f965853d27913336bef9f75ea8d161e03608ca99de7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 14:12:57 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 14:13:03 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 14:14:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 14:15:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 14:15:04 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 14:15:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:15:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 14:15:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 14:54:36 GMT
ENV PG_MAJOR=9.4
# Fri, 10 May 2019 10:00:43 GMT
ENV PG_VERSION=9.4.22-1.pgdg90+1
# Fri, 10 May 2019 10:07:11 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 10:07:26 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 10:07:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 10:07:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 10 May 2019 10:07:47 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 10:07:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 10:08:04 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 10:08:06 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 10:08:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 10:08:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 10:08:29 GMT
EXPOSE 5432
# Fri, 10 May 2019 10:08:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31400e35e62100e129401e0db5744f08520633fcd8149b26792c502d6965a61a`  
		Last Modified: Wed, 08 May 2019 15:02:16 GMT  
		Size: 4.4 MB (4365081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14e987e87b91351d930ff69141b31e6f6cc42800361352f755c4d544be69833`  
		Last Modified: Wed, 08 May 2019 15:02:10 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3828e738a494793ba3c87812cd102699d9aa31b6399251598924f5e6a61a41`  
		Last Modified: Wed, 08 May 2019 15:02:11 GMT  
		Size: 1.3 MB (1275138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7689166881ea41e235b80b7cc77476488e89fde7331df69bc36b0e9800984f4`  
		Last Modified: Wed, 08 May 2019 15:02:18 GMT  
		Size: 6.2 MB (6185656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37c7521930e2ff2f9ac90f7f5a145d600542e7199588caacabe24b807a40dff`  
		Last Modified: Wed, 08 May 2019 15:02:08 GMT  
		Size: 293.6 KB (293607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82eed40867cae9111c7c7eff5a0ea33186f39ce68ca04b47112537c45dbabde6`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a30cf417536dec1e834bf421984eaee716ac1ec169275b7243755022b5474ce`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45857fddbf7d268aab351dfdaa67e2a46b8fe2e4db86778d266c33b89ea8afa5`  
		Last Modified: Fri, 10 May 2019 10:23:37 GMT  
		Size: 47.8 MB (47834618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ed988f8fc5def217f2f6f8f80c801da44c6c54006cf773391357d0cde19ca0`  
		Last Modified: Fri, 10 May 2019 10:22:48 GMT  
		Size: 7.3 KB (7347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1435b310401daf94b6ecbcdc2d372e924df0274ddc1d78307375537043ebe5bf`  
		Last Modified: Fri, 10 May 2019 10:22:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b3d03b2af2062bfe8dcdabcb7e0b60126a97bd00e819e747e2abd41a3b2757`  
		Last Modified: Fri, 10 May 2019 10:22:48 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9dc63dedfaa7e9f53a6f691f4028e4047b44ab734fcbd90f6c4dd802c8fe4d`  
		Last Modified: Fri, 10 May 2019 10:22:48 GMT  
		Size: 2.4 KB (2382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f930989b66c660cd03040da83632433d8af5e4926d14a67b67f35bcb5fe1918`  
		Last Modified: Fri, 10 May 2019 10:22:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.22`

```console
$ docker pull postgres@sha256:80fb46f2bb2fd2dfabf51b3c1756dde55cd61e0f217bc11ea44790bbe1a3b4c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386
	-	linux; ppc64le

### `postgres:9.4.22` - linux; amd64

```console
$ docker pull postgres@sha256:ee504cc59602a38367d50d8a29aa28bad1f65da637b58cc05b863e6799e656e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82782407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8854ac6fdc436421cda3c881a38ec08e6b67ef09f02f6bcd530c1189e8c15259`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:49:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 02:49:37 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 02:49:37 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 02:49:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 02:50:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 02:50:00 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 02:50:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:50:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 02:50:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 02:54:51 GMT
ENV PG_MAJOR=9.4
# Fri, 10 May 2019 01:41:05 GMT
ENV PG_VERSION=9.4.22-1.pgdg90+1
# Fri, 10 May 2019 01:41:35 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 01:41:36 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:41:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:41:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 10 May 2019 01:41:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:41:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:41:38 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:41:38 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 01:41:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:41:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:41:39 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:41:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d307000f290b09bb80a73255a5f5283d8722a100fd6730a5bccb3d2107afbce`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 4.5 MB (4501147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29837b5e9b7858633f7eda8bf8ebfeb2645be36cb62444532708917ff5871714`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.8 KB (1778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3090df5740389c8cfd6ef31b4a402ff8b26aed9d6e014e929e78f962807240a0`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.4 MB (1351331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0b4463fa0e3a96b78c37ac3989ae8908d8a1694ea8659a11f4fc90f7850159`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 6.2 MB (6182629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb834895f5964d99726df2dbef0ecf74f0a57a510301a551afbe7d917107c79`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 295.5 KB (295498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59169bd605be847833d9103cf774c2fe0444fcdaf5fc6478aa17fd0535c38f4a`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a950d631bfe9946149640c92a3130d1129c2e1ee2cab48284b2e5bf02a64ac83`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd63d0eef95c3748020a752789e4285f383640342c974dbf8deb10716799aaa8`  
		Last Modified: Fri, 10 May 2019 01:46:39 GMT  
		Size: 47.9 MB (47945620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7997bbf6f5a01844aadb9799a7ac4f3bf91d105f852c39d6cee3e6bb69e18b`  
		Last Modified: Fri, 10 May 2019 01:46:28 GMT  
		Size: 7.3 KB (7346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2c73f6269a2c07492dfdb45baa31f4d8c57337ff3929510957d0fb22d4d09e`  
		Last Modified: Fri, 10 May 2019 01:46:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c05a910a7c1daaae4f8509078d700b7e9bb2c0d46ec831c68f02a9ab2e53327`  
		Last Modified: Fri, 10 May 2019 01:46:29 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9391e420ba9f125c92276f39ce907f4d9efa0793ceb43ff739cc5ab7ada6ccdf`  
		Last Modified: Fri, 10 May 2019 01:46:28 GMT  
		Size: 2.4 KB (2382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deedc4705470d3489cbb0b8103c4441d18b3630b9d112296d61d2642c7ffed34`  
		Last Modified: Fri, 10 May 2019 01:46:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.22` - linux; arm variant v5

```console
$ docker pull postgres@sha256:e878482e792a40a9d1197645989ebf264b0706e23347fd0e45dd2e419ef64170
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79829316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09cde8cdff66b5d6c4bb8096092f8dfe0629f9157d356da618849b840c2cb37d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 10:18:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 10:18:18 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 10:18:18 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 10:18:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 10:18:52 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 10:18:52 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 10:19:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:19:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 10:19:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 11:38:07 GMT
ENV PG_MAJOR=9.4
# Fri, 10 May 2019 10:14:37 GMT
ENV PG_VERSION=9.4.22-1.pgdg90+1
# Fri, 10 May 2019 10:31:49 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 10:31:51 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 10:31:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 10:31:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 10 May 2019 10:31:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 10:31:54 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 10:31:54 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 10:31:55 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 10:31:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 10:31:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 10:31:56 GMT
EXPOSE 5432
# Fri, 10 May 2019 10:31:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6187b1cd4a95f897462bf15d322cb0217f0c2791306dfff3c1423177cbb7d9b8`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 4.2 MB (4236743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddde74d7be81b59c81d4499012020625d3725398d78cbf1204c2c4be2233912`  
		Last Modified: Wed, 08 May 2019 11:55:47 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083493bcd809f21abd38be158d1a882018cac97fdb1c1623b01ff0cbb51678ba`  
		Last Modified: Wed, 08 May 2019 11:55:48 GMT  
		Size: 1.3 MB (1311102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c86e195c35acfc6137a34ac656751ac9b1af86d8ac7d168865f0ad66ae94a96`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 6.2 MB (6185276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e8457b4ad61904543662dbd3f7bbd85e1fbc740e7f3f7fe7fe110615bbecda`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 293.4 KB (293384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900f2045d1e883d0f818f35e24c911130e6e5a5008e3aca61624c3aca81a7369`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42085a2db16d24361b3410bd829b1e5f3007c7616d2925ed14887d88399bcea0`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a90bbb138aa50b21e9d98f14908b9500ea64e10d442f22b99f320c9bfd46cb1`  
		Last Modified: Fri, 10 May 2019 10:34:13 GMT  
		Size: 46.6 MB (46630025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1876057db84ba60e3c85f08c97035186d6000cd300da9ca4f83a680422f231d`  
		Last Modified: Fri, 10 May 2019 10:33:55 GMT  
		Size: 7.3 KB (7346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:612571656407d813a323a3be74a4f7b5f7395eeae958ad19d08da6f18690857c`  
		Last Modified: Fri, 10 May 2019 10:33:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde6e348d4d18680450501d1d13269513872ba39a21ca77567499baefe44d8b1`  
		Last Modified: Fri, 10 May 2019 10:33:55 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8131aaae14a77a2880b7b23a90d95970be5e038ef2eb3ff91d1aab09d49843c`  
		Last Modified: Fri, 10 May 2019 10:33:55 GMT  
		Size: 2.4 KB (2383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ef2a7fd6e27fd82335204b40242e46d4e76ed0990a39db04784ee10a1e7e10`  
		Last Modified: Fri, 10 May 2019 10:33:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.22` - linux; 386

```console
$ docker pull postgres@sha256:039825524eedd83fd0afeabbddce82efc9623f65e2b74343193709c068d0f880
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84725970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eccee17b03800473b87fdb6923b378ccfa1750d2a7c983fdef60de99194a895`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:43:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 18:43:29 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 18:43:29 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 18:43:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 18:43:49 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 18:43:49 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 18:43:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:43:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 18:43:58 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 18:47:23 GMT
ENV PG_MAJOR=9.4
# Fri, 10 May 2019 11:18:24 GMT
ENV PG_VERSION=9.4.22-1.pgdg90+1
# Fri, 10 May 2019 11:18:59 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 11:19:00 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:19:01 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:19:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 10 May 2019 11:19:01 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:19:02 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:19:02 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:19:02 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 11:19:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:19:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:19:03 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:19:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81cd933aa2c67d2892f2712457502eb1f14e9cf143632e3757b514814e2d0cc`  
		Last Modified: Wed, 08 May 2019 18:48:22 GMT  
		Size: 4.8 MB (4807726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67eda6906616ad50be4bb49e0402248f269055c4ed9add6a4bf1ddebe9f4dd9`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afc4a215cbbb60825914510f45abec3fd6d492fe234a32d366bb4d13f9e4869`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.3 MB (1317837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9955ce1ee330f61bfc01d81d2c1e2c3fb9b393588dc8069db8d6fa97177e52d7`  
		Last Modified: Wed, 08 May 2019 18:48:25 GMT  
		Size: 6.2 MB (6182590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920eeda872ac67d0fb5b1c35d25de9078176c64d8a791511d54f7f900f0989a0`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 296.6 KB (296556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa8e3df0dcb82be7e7e46edeb230cc94cc5c3bfc028ce06b9de49a581163676`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef37a66833579f324fda5db062d1a3a9739e036f3bd4c2c73cc75956b2908e3`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 4.8 KB (4793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bfc2b4ceeafea751f4239685bf137d383dcc884009dcec103f8305070548b11`  
		Last Modified: Fri, 10 May 2019 11:24:35 GMT  
		Size: 49.0 MB (48983589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc13b5501805ca760d58b5004a682726b03b2b09ecd50b48a464ba1d8c95855a`  
		Last Modified: Fri, 10 May 2019 11:24:21 GMT  
		Size: 7.3 KB (7349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ce1ddc3376de7ba92926fc12bbeee7fb62343b4ce8dec803ac55cc5c6e4132`  
		Last Modified: Fri, 10 May 2019 11:24:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fb7847681e716a8c6355ac6e9cc9a49a5999e90110dd3e7b85a3cf71533d1e`  
		Last Modified: Fri, 10 May 2019 11:24:22 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd99a071cb3f663c239ac6d6dca34b5537da8d83bc9fddcae3be4b044663dd92`  
		Last Modified: Fri, 10 May 2019 11:24:21 GMT  
		Size: 2.4 KB (2379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074beb94188d7526725d7c08b6c8beb1bb6b9532e5379c702cfd6a15d9b0aaf7`  
		Last Modified: Fri, 10 May 2019 11:24:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.22` - linux; ppc64le

```console
$ docker pull postgres@sha256:4cf090cc65c8d97c8f740f5a59247ca58aebcd25026c5afac54dd8ee57d90f17
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82715962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ce54263328be2ce0a699f965853d27913336bef9f75ea8d161e03608ca99de7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 14:12:57 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 14:13:03 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 14:14:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 14:15:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 14:15:04 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 14:15:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:15:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 14:15:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 14:54:36 GMT
ENV PG_MAJOR=9.4
# Fri, 10 May 2019 10:00:43 GMT
ENV PG_VERSION=9.4.22-1.pgdg90+1
# Fri, 10 May 2019 10:07:11 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 10:07:26 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 10:07:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 10:07:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 10 May 2019 10:07:47 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 10:07:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 10:08:04 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 10:08:06 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 10:08:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 10:08:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 10:08:29 GMT
EXPOSE 5432
# Fri, 10 May 2019 10:08:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31400e35e62100e129401e0db5744f08520633fcd8149b26792c502d6965a61a`  
		Last Modified: Wed, 08 May 2019 15:02:16 GMT  
		Size: 4.4 MB (4365081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14e987e87b91351d930ff69141b31e6f6cc42800361352f755c4d544be69833`  
		Last Modified: Wed, 08 May 2019 15:02:10 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3828e738a494793ba3c87812cd102699d9aa31b6399251598924f5e6a61a41`  
		Last Modified: Wed, 08 May 2019 15:02:11 GMT  
		Size: 1.3 MB (1275138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7689166881ea41e235b80b7cc77476488e89fde7331df69bc36b0e9800984f4`  
		Last Modified: Wed, 08 May 2019 15:02:18 GMT  
		Size: 6.2 MB (6185656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37c7521930e2ff2f9ac90f7f5a145d600542e7199588caacabe24b807a40dff`  
		Last Modified: Wed, 08 May 2019 15:02:08 GMT  
		Size: 293.6 KB (293607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82eed40867cae9111c7c7eff5a0ea33186f39ce68ca04b47112537c45dbabde6`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a30cf417536dec1e834bf421984eaee716ac1ec169275b7243755022b5474ce`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45857fddbf7d268aab351dfdaa67e2a46b8fe2e4db86778d266c33b89ea8afa5`  
		Last Modified: Fri, 10 May 2019 10:23:37 GMT  
		Size: 47.8 MB (47834618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ed988f8fc5def217f2f6f8f80c801da44c6c54006cf773391357d0cde19ca0`  
		Last Modified: Fri, 10 May 2019 10:22:48 GMT  
		Size: 7.3 KB (7347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1435b310401daf94b6ecbcdc2d372e924df0274ddc1d78307375537043ebe5bf`  
		Last Modified: Fri, 10 May 2019 10:22:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b3d03b2af2062bfe8dcdabcb7e0b60126a97bd00e819e747e2abd41a3b2757`  
		Last Modified: Fri, 10 May 2019 10:22:48 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9dc63dedfaa7e9f53a6f691f4028e4047b44ab734fcbd90f6c4dd802c8fe4d`  
		Last Modified: Fri, 10 May 2019 10:22:48 GMT  
		Size: 2.4 KB (2382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f930989b66c660cd03040da83632433d8af5e4926d14a67b67f35bcb5fe1918`  
		Last Modified: Fri, 10 May 2019 10:22:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.22-alpine`

```console
$ docker pull postgres@sha256:8ae549fb06741e8d8b1e208e013a51a2f4711d13f6d6dfa17c7c458920cf47a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `postgres:9.4.22-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:099ad8ad0ad3a01576e5854b62ae084cf9c9923e7ec7e4788b520367c7178ab2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14018854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e7963b0724ded1be441ee10b6436a7cc945ce4578c0aee837c7d887d14b1907`
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
# Tue, 09 Apr 2019 23:55:23 GMT
ENV PG_MAJOR=9.4
# Fri, 10 May 2019 01:41:43 GMT
ENV PG_VERSION=9.4.22
# Fri, 10 May 2019 01:41:43 GMT
ENV PG_SHA256=d6aa4c2b9204e375545b9845b0e5957b34affff1783863a80a194f2b2833c66b
# Fri, 10 May 2019 01:43:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 01:43:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:43:58 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:43:59 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:43:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:43:59 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:44:00 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 01:44:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:44:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:44:01 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:44:01 GMT
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
	-	`sha256:7a757c2fc9b1ff6c4ba815ab4997bbfc376427a372e5152952983909d8ed0692`  
		Last Modified: Fri, 10 May 2019 01:46:58 GMT  
		Size: 11.3 MB (11252107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d86a3f94afe541359fbc209197801030e468a9dbe45a68a30acf96833f135e`  
		Last Modified: Fri, 10 May 2019 01:46:47 GMT  
		Size: 6.7 KB (6685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf6f53110111bf1b344b5b1dd011831e633a276ecd99c4a5e50fc92e2897513`  
		Last Modified: Fri, 10 May 2019 01:46:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382334c643534dfb5407e90d8e0642af32a08dddced4667fb61d3b060741fa1c`  
		Last Modified: Fri, 10 May 2019 01:46:47 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc040f40687a248becb818e168f59dc3ff515e5729d7a005f65f83ad3ab4f9a`  
		Last Modified: Fri, 10 May 2019 01:46:47 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92aacfcd9487dc5a61616554d18e0ab385da38b089cc90f635c85a529d9ab4b`  
		Last Modified: Fri, 10 May 2019 01:46:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.22-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:cb2e65f0583773722d669845c35c79561f0d560fe0ea37e0561666f741aa2877
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13392573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bd627049eb1947b88f06b522f38a78fced11114a64548ca7320beb11f19e31f`
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
# Wed, 10 Apr 2019 09:11:59 GMT
ENV PG_MAJOR=9.4
# Fri, 10 May 2019 08:01:07 GMT
ENV PG_VERSION=9.4.22
# Fri, 10 May 2019 08:01:07 GMT
ENV PG_SHA256=d6aa4c2b9204e375545b9845b0e5957b34affff1783863a80a194f2b2833c66b
# Fri, 10 May 2019 08:02:38 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 08:02:40 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 08:02:41 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 08:02:42 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 08:02:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 08:02:43 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 08:02:44 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 08:02:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 08:02:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 08:02:46 GMT
EXPOSE 5432
# Fri, 10 May 2019 08:02:46 GMT
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
	-	`sha256:0a860583a7337dc91a5df656cd454bc15ca064293e54855af40fcbd7c1d01408`  
		Last Modified: Fri, 10 May 2019 08:04:06 GMT  
		Size: 10.8 MB (10839258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6575190ef4cb4d12c5caf4a9d8694438e053a1053721711e62d161322ede347`  
		Last Modified: Fri, 10 May 2019 08:04:01 GMT  
		Size: 6.7 KB (6687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2e030e8280d23840fb127be2b97b4a9695606727f32282bd0436d1b542f5a0`  
		Last Modified: Fri, 10 May 2019 08:04:01 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c488c30d3686df8ca3fe8f966099ea168682b8d495104369a3591b2fdd370347`  
		Last Modified: Fri, 10 May 2019 08:04:01 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514a70ca828712e2ecc2a6501dc0aef1cef7208b6acb631327c95a86799e64bd`  
		Last Modified: Fri, 10 May 2019 08:04:01 GMT  
		Size: 2.4 KB (2372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc9f6ae08a4c4170a5504f757491fd991db129d6e8b2fed1059265c40cb4e7e`  
		Last Modified: Fri, 10 May 2019 08:04:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.22-alpine` - linux; 386

```console
$ docker pull postgres@sha256:ea239471257db51107bec33c948714d43114c34572194d582602d907c3e4cb85
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14571662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53ef8b94c642fa62b9def8baf5f812ed1f00690814ea397df0ff5eecd11ba6f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:28:03 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 14:28:03 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 14:28:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 14:41:23 GMT
ENV PG_MAJOR=9.4
# Fri, 10 May 2019 11:19:08 GMT
ENV PG_VERSION=9.4.22
# Fri, 10 May 2019 11:19:09 GMT
ENV PG_SHA256=d6aa4c2b9204e375545b9845b0e5957b34affff1783863a80a194f2b2833c66b
# Fri, 10 May 2019 11:21:41 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 11:21:42 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:21:43 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:21:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:21:44 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:21:44 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:21:44 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 11:21:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:21:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:21:45 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:21:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df8da713ae1263f84fd0cae748880b9bd3c3aa4619279b1b972976cdd7d4933`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60005ea8fc190aec4ebdcb14ff51e60c24531718c56530053e1321be67ccc37a`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce969cb03e35a5fcae197104402121251b72fb83f31ab8d17cf517300075a4e`  
		Last Modified: Fri, 10 May 2019 11:24:45 GMT  
		Size: 11.8 MB (11809760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af8630df4d88640de099d86ecddf6667d2f037283b021f08a819f60219f9f15`  
		Last Modified: Fri, 10 May 2019 11:24:39 GMT  
		Size: 6.7 KB (6687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6637f5939c36551e2afd2a6279e3fc5a27e3661a597fb4df9f5cf797abac1d52`  
		Last Modified: Fri, 10 May 2019 11:24:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5020c29db62ad51b48ad21a03bf77959884b7e0b017a887c177600507fe706a8`  
		Last Modified: Fri, 10 May 2019 11:24:39 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51813e03126d4d4801e03dc065a0c99e88b8e0f2a40bf345f8b4ae2221d99cfe`  
		Last Modified: Fri, 10 May 2019 11:24:39 GMT  
		Size: 2.4 KB (2369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72aa456f87ef9ae523833c3d599a7174ca9d082c2466052e3a0c3796135057f6`  
		Last Modified: Fri, 10 May 2019 11:24:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.22-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:2fd8fdcc063562edf36a8eea78dfeebb1d0d5e11108912c7b1de82acc3f1050a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15081375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1f0f243b507d22de47e10894dd432d46d6220aded1937658991a7150c3932e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:40:21 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 10:40:26 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 10:40:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 10:58:13 GMT
ENV PG_MAJOR=9.4
# Fri, 10 May 2019 10:09:17 GMT
ENV PG_VERSION=9.4.22
# Fri, 10 May 2019 10:09:23 GMT
ENV PG_SHA256=d6aa4c2b9204e375545b9845b0e5957b34affff1783863a80a194f2b2833c66b
# Fri, 10 May 2019 10:12:35 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 10:12:50 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 10:12:58 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 10:13:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 10:13:13 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 10:13:17 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 10:13:20 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 10:13:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 10:13:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 10:13:42 GMT
EXPOSE 5432
# Fri, 10 May 2019 10:13:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fadc09892703ded74da3266e56d7cf5631a32b6afc741c5d73cd181c7fcf26`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d903923d54c1aec0b4affbfa3483f2a737879e509527322b1f68fde697c40acf`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e04ed541cc9e6c4bc079cd2d1fe31b0b9ed052697353ef35b54059e8bc6031`  
		Last Modified: Fri, 10 May 2019 10:23:57 GMT  
		Size: 12.3 MB (12290480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49150a20d0852bcbb9089277d49d6ded16a5fb54dc0163740d8dcf627f51c29`  
		Last Modified: Fri, 10 May 2019 10:23:49 GMT  
		Size: 6.7 KB (6689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2847b5ecc41f167b9d1c731f741c9327aa1f5f3a6690f1d1e7c973f66167e7eb`  
		Last Modified: Fri, 10 May 2019 10:23:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb32ced3cbbb350db09fc0119976fc772e7955523e71306a4e9db15ce290642f`  
		Last Modified: Fri, 10 May 2019 10:23:49 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98daac9cc8df833ea01e0476f7370998b2635ae26e4e4e942576739cacedcfac`  
		Last Modified: Fri, 10 May 2019 10:23:49 GMT  
		Size: 2.4 KB (2372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4e89b64e97389fff39cebc529f7de686b3a570d9a7fdf58368bb5e6d14b2f47`  
		Last Modified: Fri, 10 May 2019 10:23:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:8ae549fb06741e8d8b1e208e013a51a2f4711d13f6d6dfa17c7c458920cf47a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `postgres:9.4-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:099ad8ad0ad3a01576e5854b62ae084cf9c9923e7ec7e4788b520367c7178ab2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14018854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e7963b0724ded1be441ee10b6436a7cc945ce4578c0aee837c7d887d14b1907`
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
# Tue, 09 Apr 2019 23:55:23 GMT
ENV PG_MAJOR=9.4
# Fri, 10 May 2019 01:41:43 GMT
ENV PG_VERSION=9.4.22
# Fri, 10 May 2019 01:41:43 GMT
ENV PG_SHA256=d6aa4c2b9204e375545b9845b0e5957b34affff1783863a80a194f2b2833c66b
# Fri, 10 May 2019 01:43:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 01:43:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:43:58 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:43:59 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:43:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:43:59 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:44:00 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 01:44:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:44:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:44:01 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:44:01 GMT
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
	-	`sha256:7a757c2fc9b1ff6c4ba815ab4997bbfc376427a372e5152952983909d8ed0692`  
		Last Modified: Fri, 10 May 2019 01:46:58 GMT  
		Size: 11.3 MB (11252107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d86a3f94afe541359fbc209197801030e468a9dbe45a68a30acf96833f135e`  
		Last Modified: Fri, 10 May 2019 01:46:47 GMT  
		Size: 6.7 KB (6685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf6f53110111bf1b344b5b1dd011831e633a276ecd99c4a5e50fc92e2897513`  
		Last Modified: Fri, 10 May 2019 01:46:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382334c643534dfb5407e90d8e0642af32a08dddced4667fb61d3b060741fa1c`  
		Last Modified: Fri, 10 May 2019 01:46:47 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc040f40687a248becb818e168f59dc3ff515e5729d7a005f65f83ad3ab4f9a`  
		Last Modified: Fri, 10 May 2019 01:46:47 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92aacfcd9487dc5a61616554d18e0ab385da38b089cc90f635c85a529d9ab4b`  
		Last Modified: Fri, 10 May 2019 01:46:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:cb2e65f0583773722d669845c35c79561f0d560fe0ea37e0561666f741aa2877
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13392573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bd627049eb1947b88f06b522f38a78fced11114a64548ca7320beb11f19e31f`
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
# Wed, 10 Apr 2019 09:11:59 GMT
ENV PG_MAJOR=9.4
# Fri, 10 May 2019 08:01:07 GMT
ENV PG_VERSION=9.4.22
# Fri, 10 May 2019 08:01:07 GMT
ENV PG_SHA256=d6aa4c2b9204e375545b9845b0e5957b34affff1783863a80a194f2b2833c66b
# Fri, 10 May 2019 08:02:38 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 08:02:40 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 08:02:41 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 08:02:42 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 08:02:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 08:02:43 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 08:02:44 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 08:02:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 08:02:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 08:02:46 GMT
EXPOSE 5432
# Fri, 10 May 2019 08:02:46 GMT
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
	-	`sha256:0a860583a7337dc91a5df656cd454bc15ca064293e54855af40fcbd7c1d01408`  
		Last Modified: Fri, 10 May 2019 08:04:06 GMT  
		Size: 10.8 MB (10839258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6575190ef4cb4d12c5caf4a9d8694438e053a1053721711e62d161322ede347`  
		Last Modified: Fri, 10 May 2019 08:04:01 GMT  
		Size: 6.7 KB (6687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2e030e8280d23840fb127be2b97b4a9695606727f32282bd0436d1b542f5a0`  
		Last Modified: Fri, 10 May 2019 08:04:01 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c488c30d3686df8ca3fe8f966099ea168682b8d495104369a3591b2fdd370347`  
		Last Modified: Fri, 10 May 2019 08:04:01 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514a70ca828712e2ecc2a6501dc0aef1cef7208b6acb631327c95a86799e64bd`  
		Last Modified: Fri, 10 May 2019 08:04:01 GMT  
		Size: 2.4 KB (2372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc9f6ae08a4c4170a5504f757491fd991db129d6e8b2fed1059265c40cb4e7e`  
		Last Modified: Fri, 10 May 2019 08:04:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4-alpine` - linux; 386

```console
$ docker pull postgres@sha256:ea239471257db51107bec33c948714d43114c34572194d582602d907c3e4cb85
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14571662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53ef8b94c642fa62b9def8baf5f812ed1f00690814ea397df0ff5eecd11ba6f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:28:03 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 14:28:03 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 14:28:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 14:41:23 GMT
ENV PG_MAJOR=9.4
# Fri, 10 May 2019 11:19:08 GMT
ENV PG_VERSION=9.4.22
# Fri, 10 May 2019 11:19:09 GMT
ENV PG_SHA256=d6aa4c2b9204e375545b9845b0e5957b34affff1783863a80a194f2b2833c66b
# Fri, 10 May 2019 11:21:41 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 11:21:42 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:21:43 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:21:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:21:44 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:21:44 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:21:44 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 11:21:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:21:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:21:45 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:21:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df8da713ae1263f84fd0cae748880b9bd3c3aa4619279b1b972976cdd7d4933`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60005ea8fc190aec4ebdcb14ff51e60c24531718c56530053e1321be67ccc37a`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce969cb03e35a5fcae197104402121251b72fb83f31ab8d17cf517300075a4e`  
		Last Modified: Fri, 10 May 2019 11:24:45 GMT  
		Size: 11.8 MB (11809760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af8630df4d88640de099d86ecddf6667d2f037283b021f08a819f60219f9f15`  
		Last Modified: Fri, 10 May 2019 11:24:39 GMT  
		Size: 6.7 KB (6687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6637f5939c36551e2afd2a6279e3fc5a27e3661a597fb4df9f5cf797abac1d52`  
		Last Modified: Fri, 10 May 2019 11:24:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5020c29db62ad51b48ad21a03bf77959884b7e0b017a887c177600507fe706a8`  
		Last Modified: Fri, 10 May 2019 11:24:39 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51813e03126d4d4801e03dc065a0c99e88b8e0f2a40bf345f8b4ae2221d99cfe`  
		Last Modified: Fri, 10 May 2019 11:24:39 GMT  
		Size: 2.4 KB (2369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72aa456f87ef9ae523833c3d599a7174ca9d082c2466052e3a0c3796135057f6`  
		Last Modified: Fri, 10 May 2019 11:24:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:2fd8fdcc063562edf36a8eea78dfeebb1d0d5e11108912c7b1de82acc3f1050a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15081375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1f0f243b507d22de47e10894dd432d46d6220aded1937658991a7150c3932e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:40:21 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 10:40:26 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 10:40:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 10:58:13 GMT
ENV PG_MAJOR=9.4
# Fri, 10 May 2019 10:09:17 GMT
ENV PG_VERSION=9.4.22
# Fri, 10 May 2019 10:09:23 GMT
ENV PG_SHA256=d6aa4c2b9204e375545b9845b0e5957b34affff1783863a80a194f2b2833c66b
# Fri, 10 May 2019 10:12:35 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 10:12:50 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 10:12:58 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 10:13:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 10:13:13 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 10:13:17 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 10:13:20 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 10:13:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 10:13:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 10:13:42 GMT
EXPOSE 5432
# Fri, 10 May 2019 10:13:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fadc09892703ded74da3266e56d7cf5631a32b6afc741c5d73cd181c7fcf26`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d903923d54c1aec0b4affbfa3483f2a737879e509527322b1f68fde697c40acf`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e04ed541cc9e6c4bc079cd2d1fe31b0b9ed052697353ef35b54059e8bc6031`  
		Last Modified: Fri, 10 May 2019 10:23:57 GMT  
		Size: 12.3 MB (12290480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49150a20d0852bcbb9089277d49d6ded16a5fb54dc0163740d8dcf627f51c29`  
		Last Modified: Fri, 10 May 2019 10:23:49 GMT  
		Size: 6.7 KB (6689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2847b5ecc41f167b9d1c731f741c9327aa1f5f3a6690f1d1e7c973f66167e7eb`  
		Last Modified: Fri, 10 May 2019 10:23:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb32ced3cbbb350db09fc0119976fc772e7955523e71306a4e9db15ce290642f`  
		Last Modified: Fri, 10 May 2019 10:23:49 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98daac9cc8df833ea01e0476f7370998b2635ae26e4e4e942576739cacedcfac`  
		Last Modified: Fri, 10 May 2019 10:23:49 GMT  
		Size: 2.4 KB (2372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4e89b64e97389fff39cebc529f7de686b3a570d9a7fdf58368bb5e6d14b2f47`  
		Last Modified: Fri, 10 May 2019 10:23:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:89368505d414ac3436f7e180d01cc68da7b48f2d1a92a0480933d9016ce9ff3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386
	-	linux; ppc64le

### `postgres:9.5` - linux; amd64

```console
$ docker pull postgres@sha256:7fd3934542861efb83658e615f24938e1d756822e9747d29e5b7f2156502fb9c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83163940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce795f8066a6ab07733b746df7ca0f61ab07eebb38a2c08b26fa29ba7f7b03af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:49:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 02:49:37 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 02:49:37 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 02:49:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 02:50:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 02:50:00 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 02:50:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:50:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 02:50:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 02:53:56 GMT
ENV PG_MAJOR=9.5
# Fri, 10 May 2019 01:37:44 GMT
ENV PG_VERSION=9.5.17-1.pgdg90+1
# Fri, 10 May 2019 01:38:15 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 01:38:15 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:38:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:38:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 10 May 2019 01:38:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:38:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:38:17 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:38:18 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 01:38:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:38:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:38:19 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:38:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d307000f290b09bb80a73255a5f5283d8722a100fd6730a5bccb3d2107afbce`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 4.5 MB (4501147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29837b5e9b7858633f7eda8bf8ebfeb2645be36cb62444532708917ff5871714`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.8 KB (1778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3090df5740389c8cfd6ef31b4a402ff8b26aed9d6e014e929e78f962807240a0`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.4 MB (1351331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0b4463fa0e3a96b78c37ac3989ae8908d8a1694ea8659a11f4fc90f7850159`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 6.2 MB (6182629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb834895f5964d99726df2dbef0ecf74f0a57a510301a551afbe7d917107c79`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 295.5 KB (295498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59169bd605be847833d9103cf774c2fe0444fcdaf5fc6478aa17fd0535c38f4a`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a950d631bfe9946149640c92a3130d1129c2e1ee2cab48284b2e5bf02a64ac83`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a63120eb50348657c259cd5f2738132da91aa755d6050baa3b749f2020b2eaf3`  
		Last Modified: Fri, 10 May 2019 01:46:08 GMT  
		Size: 48.3 MB (48327024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ea516579b2ec4469d62bb7fe5856b8a429fed8b6b17878c0d82839202c93a9`  
		Last Modified: Fri, 10 May 2019 01:45:57 GMT  
		Size: 7.5 KB (7475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34cabc5aef0ec6ecc10c30a161c94617238706db6ec7a3a03e15e22ce2e1256`  
		Last Modified: Fri, 10 May 2019 01:45:57 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6d4efda08bc1f551cd25b038b58af4df8e8db7210572f2e330694b154737b9`  
		Last Modified: Fri, 10 May 2019 01:45:58 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ec97e6829a668c553e7b20c92faa71085b290e1cee98d7b27285204baf961b`  
		Last Modified: Fri, 10 May 2019 01:45:57 GMT  
		Size: 2.4 KB (2380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33738e292ea12690eef59eebb0170d83b52a13f96b82a60830bff8b762097b3`  
		Last Modified: Fri, 10 May 2019 01:45:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; arm variant v5

```console
$ docker pull postgres@sha256:6097edd37a39db30321569211cb4d72b8ec45d107950a08145319f55400ec922
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80170984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5718f68cb8825971b5395c7b40b1eb70ea3f0d4de5e505f9575cae97caf1d951`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 10:18:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 10:18:18 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 10:18:18 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 10:18:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 10:18:52 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 10:18:52 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 10:19:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:19:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 10:19:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 11:19:39 GMT
ENV PG_MAJOR=9.5
# Fri, 10 May 2019 09:56:05 GMT
ENV PG_VERSION=9.5.17-1.pgdg90+1
# Fri, 10 May 2019 10:14:14 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 10:14:16 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 10:14:17 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 10:14:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 10 May 2019 10:14:17 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 10:14:19 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 10:14:19 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 10:14:19 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 10:14:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 10:14:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 10:14:21 GMT
EXPOSE 5432
# Fri, 10 May 2019 10:14:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6187b1cd4a95f897462bf15d322cb0217f0c2791306dfff3c1423177cbb7d9b8`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 4.2 MB (4236743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddde74d7be81b59c81d4499012020625d3725398d78cbf1204c2c4be2233912`  
		Last Modified: Wed, 08 May 2019 11:55:47 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083493bcd809f21abd38be158d1a882018cac97fdb1c1623b01ff0cbb51678ba`  
		Last Modified: Wed, 08 May 2019 11:55:48 GMT  
		Size: 1.3 MB (1311102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c86e195c35acfc6137a34ac656751ac9b1af86d8ac7d168865f0ad66ae94a96`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 6.2 MB (6185276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e8457b4ad61904543662dbd3f7bbd85e1fbc740e7f3f7fe7fe110615bbecda`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 293.4 KB (293384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900f2045d1e883d0f818f35e24c911130e6e5a5008e3aca61624c3aca81a7369`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42085a2db16d24361b3410bd829b1e5f3007c7616d2925ed14887d88399bcea0`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb763677c532a1019e5b40abf6c7986c5b7b16ae620dc2c08a594a52a0fe22c8`  
		Last Modified: Fri, 10 May 2019 10:33:49 GMT  
		Size: 47.0 MB (46971565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1a6e045f5afa473bebcad256490829a903968de00b59d9cefd7fe32dad000a`  
		Last Modified: Fri, 10 May 2019 10:33:31 GMT  
		Size: 7.5 KB (7476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b610f5910fd9121059ef9c1a963deb9d5f8b2a8f5cab4891122e338c299011b`  
		Last Modified: Fri, 10 May 2019 10:33:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b58995fd1df77a4865af902f158a3fcc989b3386aefe772be7e0ce4f64c51ad1`  
		Last Modified: Fri, 10 May 2019 10:33:32 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b23aaf76b7bbb9cbbcfd35ce7a2caa271418a516e5f2342595841eecacf451a`  
		Last Modified: Fri, 10 May 2019 10:33:32 GMT  
		Size: 2.4 KB (2383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21993b9e1461e4a77a74d56fec943ede0035e98940fd1f6069d8f2ac07e1ee2`  
		Last Modified: Fri, 10 May 2019 10:33:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; 386

```console
$ docker pull postgres@sha256:47204b0d00969b4c3a19ca448f5d281191df61e5ef3c625afe22bec9b73309d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.1 MB (85123619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc59376889c01e00790bedc86b4ce0ac3c572c268f92dd94b6d35864a27e7298`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:43:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 18:43:29 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 18:43:29 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 18:43:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 18:43:49 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 18:43:49 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 18:43:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:43:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 18:43:58 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 18:46:36 GMT
ENV PG_MAJOR=9.5
# Fri, 10 May 2019 11:14:40 GMT
ENV PG_VERSION=9.5.17-1.pgdg90+1
# Fri, 10 May 2019 11:15:16 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 11:15:17 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:15:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:15:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 10 May 2019 11:15:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:15:19 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:15:19 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:15:19 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 11:15:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:15:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:15:20 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:15:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81cd933aa2c67d2892f2712457502eb1f14e9cf143632e3757b514814e2d0cc`  
		Last Modified: Wed, 08 May 2019 18:48:22 GMT  
		Size: 4.8 MB (4807726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67eda6906616ad50be4bb49e0402248f269055c4ed9add6a4bf1ddebe9f4dd9`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afc4a215cbbb60825914510f45abec3fd6d492fe234a32d366bb4d13f9e4869`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.3 MB (1317837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9955ce1ee330f61bfc01d81d2c1e2c3fb9b393588dc8069db8d6fa97177e52d7`  
		Last Modified: Wed, 08 May 2019 18:48:25 GMT  
		Size: 6.2 MB (6182590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920eeda872ac67d0fb5b1c35d25de9078176c64d8a791511d54f7f900f0989a0`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 296.6 KB (296556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa8e3df0dcb82be7e7e46edeb230cc94cc5c3bfc028ce06b9de49a581163676`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef37a66833579f324fda5db062d1a3a9739e036f3bd4c2c73cc75956b2908e3`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 4.8 KB (4793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1051d80e5fee1ce3a8a828a52696cb9f67265a0a407fe4f6ca614a6a53fce96a`  
		Last Modified: Fri, 10 May 2019 11:24:08 GMT  
		Size: 49.4 MB (49381109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f182c1be2c3d898c1a0e1484c82b6abcfe3e80b9af79a5841d4d255132264304`  
		Last Modified: Fri, 10 May 2019 11:23:51 GMT  
		Size: 7.5 KB (7479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504fbc0bad5ca26070da105e8444c149a098adffa16dbba311f9270777e6c49f`  
		Last Modified: Fri, 10 May 2019 11:23:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25dc68f0dc0617947bee8161ecfcfd9e36f5b3399ae5bac1ac83783ca366531`  
		Last Modified: Fri, 10 May 2019 11:23:51 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd8a7447d499ab2f27985096337d9dd64d4d6bbb8b63c5a505859352c401cb4`  
		Last Modified: Fri, 10 May 2019 11:23:51 GMT  
		Size: 2.4 KB (2380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfecccdf89c73eaecbaa944aed447715f2face0bec21be3085f7c8fcf3a8924`  
		Last Modified: Fri, 10 May 2019 11:23:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; ppc64le

```console
$ docker pull postgres@sha256:359c80689dda13505949e2e2e64a32151301b79549db9a4bdcb9f6c32445e102
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83065823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7f0cf6393d3cc299d0807864225fad0b6437e83cfe26206e09210c67d9b6f84`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 14:12:57 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 14:13:03 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 14:14:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 14:15:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 14:15:04 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 14:15:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:15:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 14:15:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 14:47:48 GMT
ENV PG_MAJOR=9.5
# Fri, 10 May 2019 09:48:59 GMT
ENV PG_VERSION=9.5.17-1.pgdg90+1
# Fri, 10 May 2019 09:53:38 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 09:53:53 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:54:09 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:54:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 10 May 2019 09:54:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:54:34 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:54:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:54:43 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 09:54:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:54:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:55:02 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:55:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31400e35e62100e129401e0db5744f08520633fcd8149b26792c502d6965a61a`  
		Last Modified: Wed, 08 May 2019 15:02:16 GMT  
		Size: 4.4 MB (4365081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14e987e87b91351d930ff69141b31e6f6cc42800361352f755c4d544be69833`  
		Last Modified: Wed, 08 May 2019 15:02:10 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3828e738a494793ba3c87812cd102699d9aa31b6399251598924f5e6a61a41`  
		Last Modified: Wed, 08 May 2019 15:02:11 GMT  
		Size: 1.3 MB (1275138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7689166881ea41e235b80b7cc77476488e89fde7331df69bc36b0e9800984f4`  
		Last Modified: Wed, 08 May 2019 15:02:18 GMT  
		Size: 6.2 MB (6185656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37c7521930e2ff2f9ac90f7f5a145d600542e7199588caacabe24b807a40dff`  
		Last Modified: Wed, 08 May 2019 15:02:08 GMT  
		Size: 293.6 KB (293607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82eed40867cae9111c7c7eff5a0ea33186f39ce68ca04b47112537c45dbabde6`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a30cf417536dec1e834bf421984eaee716ac1ec169275b7243755022b5474ce`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a265af625d3c9c2b3312ec193aadbde07fd3dbef46a0dac141cfcde03208ceff`  
		Last Modified: Fri, 10 May 2019 10:21:58 GMT  
		Size: 48.2 MB (48184342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d89a02ea1bc0c228f96624be3e54712fc945ea8fce3c96b65bb70a70d3fe52f`  
		Last Modified: Fri, 10 May 2019 10:20:58 GMT  
		Size: 7.5 KB (7482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c3cfc418acf144f938a8e539fca9d9f57236dcd35118eb69f1059b2439cee9`  
		Last Modified: Fri, 10 May 2019 10:20:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284819fe73d164963126a6873dee6f36ebf41078bb16c26112bfbf6f685373ec`  
		Last Modified: Fri, 10 May 2019 10:20:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef12c0584202f9552cc35cf77212f20350c91bcd3836b14ade64da00827212b4`  
		Last Modified: Fri, 10 May 2019 10:20:58 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae33d3c2ef0bd7f698c44d36cc2e1aef6a506319db9e84b2ca6d756f938347e3`  
		Last Modified: Fri, 10 May 2019 10:20:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.17`

```console
$ docker pull postgres@sha256:89368505d414ac3436f7e180d01cc68da7b48f2d1a92a0480933d9016ce9ff3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386
	-	linux; ppc64le

### `postgres:9.5.17` - linux; amd64

```console
$ docker pull postgres@sha256:7fd3934542861efb83658e615f24938e1d756822e9747d29e5b7f2156502fb9c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83163940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce795f8066a6ab07733b746df7ca0f61ab07eebb38a2c08b26fa29ba7f7b03af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:49:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 02:49:37 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 02:49:37 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 02:49:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 02:50:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 02:50:00 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 02:50:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:50:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 02:50:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 02:53:56 GMT
ENV PG_MAJOR=9.5
# Fri, 10 May 2019 01:37:44 GMT
ENV PG_VERSION=9.5.17-1.pgdg90+1
# Fri, 10 May 2019 01:38:15 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 01:38:15 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:38:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:38:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 10 May 2019 01:38:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:38:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:38:17 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:38:18 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 01:38:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:38:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:38:19 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:38:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d307000f290b09bb80a73255a5f5283d8722a100fd6730a5bccb3d2107afbce`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 4.5 MB (4501147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29837b5e9b7858633f7eda8bf8ebfeb2645be36cb62444532708917ff5871714`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.8 KB (1778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3090df5740389c8cfd6ef31b4a402ff8b26aed9d6e014e929e78f962807240a0`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.4 MB (1351331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0b4463fa0e3a96b78c37ac3989ae8908d8a1694ea8659a11f4fc90f7850159`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 6.2 MB (6182629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb834895f5964d99726df2dbef0ecf74f0a57a510301a551afbe7d917107c79`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 295.5 KB (295498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59169bd605be847833d9103cf774c2fe0444fcdaf5fc6478aa17fd0535c38f4a`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a950d631bfe9946149640c92a3130d1129c2e1ee2cab48284b2e5bf02a64ac83`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a63120eb50348657c259cd5f2738132da91aa755d6050baa3b749f2020b2eaf3`  
		Last Modified: Fri, 10 May 2019 01:46:08 GMT  
		Size: 48.3 MB (48327024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12ea516579b2ec4469d62bb7fe5856b8a429fed8b6b17878c0d82839202c93a9`  
		Last Modified: Fri, 10 May 2019 01:45:57 GMT  
		Size: 7.5 KB (7475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b34cabc5aef0ec6ecc10c30a161c94617238706db6ec7a3a03e15e22ce2e1256`  
		Last Modified: Fri, 10 May 2019 01:45:57 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6d4efda08bc1f551cd25b038b58af4df8e8db7210572f2e330694b154737b9`  
		Last Modified: Fri, 10 May 2019 01:45:58 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ec97e6829a668c553e7b20c92faa71085b290e1cee98d7b27285204baf961b`  
		Last Modified: Fri, 10 May 2019 01:45:57 GMT  
		Size: 2.4 KB (2380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33738e292ea12690eef59eebb0170d83b52a13f96b82a60830bff8b762097b3`  
		Last Modified: Fri, 10 May 2019 01:45:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.17` - linux; arm variant v5

```console
$ docker pull postgres@sha256:6097edd37a39db30321569211cb4d72b8ec45d107950a08145319f55400ec922
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80170984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5718f68cb8825971b5395c7b40b1eb70ea3f0d4de5e505f9575cae97caf1d951`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 10:18:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 10:18:18 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 10:18:18 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 10:18:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 10:18:52 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 10:18:52 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 10:19:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:19:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 10:19:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 11:19:39 GMT
ENV PG_MAJOR=9.5
# Fri, 10 May 2019 09:56:05 GMT
ENV PG_VERSION=9.5.17-1.pgdg90+1
# Fri, 10 May 2019 10:14:14 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 10:14:16 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 10:14:17 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 10:14:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 10 May 2019 10:14:17 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 10:14:19 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 10:14:19 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 10:14:19 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 10:14:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 10:14:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 10:14:21 GMT
EXPOSE 5432
# Fri, 10 May 2019 10:14:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6187b1cd4a95f897462bf15d322cb0217f0c2791306dfff3c1423177cbb7d9b8`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 4.2 MB (4236743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddde74d7be81b59c81d4499012020625d3725398d78cbf1204c2c4be2233912`  
		Last Modified: Wed, 08 May 2019 11:55:47 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083493bcd809f21abd38be158d1a882018cac97fdb1c1623b01ff0cbb51678ba`  
		Last Modified: Wed, 08 May 2019 11:55:48 GMT  
		Size: 1.3 MB (1311102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c86e195c35acfc6137a34ac656751ac9b1af86d8ac7d168865f0ad66ae94a96`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 6.2 MB (6185276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e8457b4ad61904543662dbd3f7bbd85e1fbc740e7f3f7fe7fe110615bbecda`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 293.4 KB (293384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900f2045d1e883d0f818f35e24c911130e6e5a5008e3aca61624c3aca81a7369`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42085a2db16d24361b3410bd829b1e5f3007c7616d2925ed14887d88399bcea0`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb763677c532a1019e5b40abf6c7986c5b7b16ae620dc2c08a594a52a0fe22c8`  
		Last Modified: Fri, 10 May 2019 10:33:49 GMT  
		Size: 47.0 MB (46971565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1a6e045f5afa473bebcad256490829a903968de00b59d9cefd7fe32dad000a`  
		Last Modified: Fri, 10 May 2019 10:33:31 GMT  
		Size: 7.5 KB (7476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b610f5910fd9121059ef9c1a963deb9d5f8b2a8f5cab4891122e338c299011b`  
		Last Modified: Fri, 10 May 2019 10:33:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b58995fd1df77a4865af902f158a3fcc989b3386aefe772be7e0ce4f64c51ad1`  
		Last Modified: Fri, 10 May 2019 10:33:32 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b23aaf76b7bbb9cbbcfd35ce7a2caa271418a516e5f2342595841eecacf451a`  
		Last Modified: Fri, 10 May 2019 10:33:32 GMT  
		Size: 2.4 KB (2383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21993b9e1461e4a77a74d56fec943ede0035e98940fd1f6069d8f2ac07e1ee2`  
		Last Modified: Fri, 10 May 2019 10:33:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.17` - linux; 386

```console
$ docker pull postgres@sha256:47204b0d00969b4c3a19ca448f5d281191df61e5ef3c625afe22bec9b73309d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.1 MB (85123619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc59376889c01e00790bedc86b4ce0ac3c572c268f92dd94b6d35864a27e7298`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:43:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 18:43:29 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 18:43:29 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 18:43:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 18:43:49 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 18:43:49 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 18:43:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:43:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 18:43:58 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 18:46:36 GMT
ENV PG_MAJOR=9.5
# Fri, 10 May 2019 11:14:40 GMT
ENV PG_VERSION=9.5.17-1.pgdg90+1
# Fri, 10 May 2019 11:15:16 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 11:15:17 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:15:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:15:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 10 May 2019 11:15:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:15:19 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:15:19 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:15:19 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 11:15:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:15:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:15:20 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:15:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81cd933aa2c67d2892f2712457502eb1f14e9cf143632e3757b514814e2d0cc`  
		Last Modified: Wed, 08 May 2019 18:48:22 GMT  
		Size: 4.8 MB (4807726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67eda6906616ad50be4bb49e0402248f269055c4ed9add6a4bf1ddebe9f4dd9`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afc4a215cbbb60825914510f45abec3fd6d492fe234a32d366bb4d13f9e4869`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.3 MB (1317837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9955ce1ee330f61bfc01d81d2c1e2c3fb9b393588dc8069db8d6fa97177e52d7`  
		Last Modified: Wed, 08 May 2019 18:48:25 GMT  
		Size: 6.2 MB (6182590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920eeda872ac67d0fb5b1c35d25de9078176c64d8a791511d54f7f900f0989a0`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 296.6 KB (296556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa8e3df0dcb82be7e7e46edeb230cc94cc5c3bfc028ce06b9de49a581163676`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef37a66833579f324fda5db062d1a3a9739e036f3bd4c2c73cc75956b2908e3`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 4.8 KB (4793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1051d80e5fee1ce3a8a828a52696cb9f67265a0a407fe4f6ca614a6a53fce96a`  
		Last Modified: Fri, 10 May 2019 11:24:08 GMT  
		Size: 49.4 MB (49381109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f182c1be2c3d898c1a0e1484c82b6abcfe3e80b9af79a5841d4d255132264304`  
		Last Modified: Fri, 10 May 2019 11:23:51 GMT  
		Size: 7.5 KB (7479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504fbc0bad5ca26070da105e8444c149a098adffa16dbba311f9270777e6c49f`  
		Last Modified: Fri, 10 May 2019 11:23:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25dc68f0dc0617947bee8161ecfcfd9e36f5b3399ae5bac1ac83783ca366531`  
		Last Modified: Fri, 10 May 2019 11:23:51 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd8a7447d499ab2f27985096337d9dd64d4d6bbb8b63c5a505859352c401cb4`  
		Last Modified: Fri, 10 May 2019 11:23:51 GMT  
		Size: 2.4 KB (2380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfecccdf89c73eaecbaa944aed447715f2face0bec21be3085f7c8fcf3a8924`  
		Last Modified: Fri, 10 May 2019 11:23:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.17` - linux; ppc64le

```console
$ docker pull postgres@sha256:359c80689dda13505949e2e2e64a32151301b79549db9a4bdcb9f6c32445e102
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83065823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7f0cf6393d3cc299d0807864225fad0b6437e83cfe26206e09210c67d9b6f84`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 14:12:57 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 14:13:03 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 14:14:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 14:15:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 14:15:04 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 14:15:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:15:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 14:15:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 14:47:48 GMT
ENV PG_MAJOR=9.5
# Fri, 10 May 2019 09:48:59 GMT
ENV PG_VERSION=9.5.17-1.pgdg90+1
# Fri, 10 May 2019 09:53:38 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 09:53:53 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:54:09 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:54:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 10 May 2019 09:54:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:54:34 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:54:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:54:43 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 09:54:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:54:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:55:02 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:55:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31400e35e62100e129401e0db5744f08520633fcd8149b26792c502d6965a61a`  
		Last Modified: Wed, 08 May 2019 15:02:16 GMT  
		Size: 4.4 MB (4365081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14e987e87b91351d930ff69141b31e6f6cc42800361352f755c4d544be69833`  
		Last Modified: Wed, 08 May 2019 15:02:10 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3828e738a494793ba3c87812cd102699d9aa31b6399251598924f5e6a61a41`  
		Last Modified: Wed, 08 May 2019 15:02:11 GMT  
		Size: 1.3 MB (1275138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7689166881ea41e235b80b7cc77476488e89fde7331df69bc36b0e9800984f4`  
		Last Modified: Wed, 08 May 2019 15:02:18 GMT  
		Size: 6.2 MB (6185656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37c7521930e2ff2f9ac90f7f5a145d600542e7199588caacabe24b807a40dff`  
		Last Modified: Wed, 08 May 2019 15:02:08 GMT  
		Size: 293.6 KB (293607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82eed40867cae9111c7c7eff5a0ea33186f39ce68ca04b47112537c45dbabde6`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a30cf417536dec1e834bf421984eaee716ac1ec169275b7243755022b5474ce`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a265af625d3c9c2b3312ec193aadbde07fd3dbef46a0dac141cfcde03208ceff`  
		Last Modified: Fri, 10 May 2019 10:21:58 GMT  
		Size: 48.2 MB (48184342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d89a02ea1bc0c228f96624be3e54712fc945ea8fce3c96b65bb70a70d3fe52f`  
		Last Modified: Fri, 10 May 2019 10:20:58 GMT  
		Size: 7.5 KB (7482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c3cfc418acf144f938a8e539fca9d9f57236dcd35118eb69f1059b2439cee9`  
		Last Modified: Fri, 10 May 2019 10:20:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284819fe73d164963126a6873dee6f36ebf41078bb16c26112bfbf6f685373ec`  
		Last Modified: Fri, 10 May 2019 10:20:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef12c0584202f9552cc35cf77212f20350c91bcd3836b14ade64da00827212b4`  
		Last Modified: Fri, 10 May 2019 10:20:58 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae33d3c2ef0bd7f698c44d36cc2e1aef6a506319db9e84b2ca6d756f938347e3`  
		Last Modified: Fri, 10 May 2019 10:20:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.17-alpine`

```console
$ docker pull postgres@sha256:b3cce74e4aa8ca6cf29f26416dbd2729c73af71fa08b09e2ed1efd6ded9a5333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `postgres:9.5.17-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:56ef99794e7ff091432a16cf6d590d94fcab9ca66e4c8c15dbc7fdf31d45a4dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14162752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a5282c325b0cb4c6e62b0b1a447a71cc54bc90a700cfa5862bd11ffd7702b47`
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
# Tue, 09 Apr 2019 23:51:51 GMT
ENV PG_MAJOR=9.5
# Fri, 10 May 2019 01:38:21 GMT
ENV PG_VERSION=9.5.17
# Fri, 10 May 2019 01:38:21 GMT
ENV PG_SHA256=88f9e37a0069f2fd4442d1d0d5d811d3121cac685514435b0248d0674723f705
# Fri, 10 May 2019 01:40:47 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 01:40:47 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:40:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:40:48 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:40:49 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:40:49 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:40:49 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 01:40:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:40:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:40:50 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:40:50 GMT
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
	-	`sha256:decd11c6edb7a5e637bcc88f3a647865e7dad454a02e3e7433f720235af2f713`  
		Last Modified: Fri, 10 May 2019 01:46:25 GMT  
		Size: 11.4 MB (11395863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17281d6cb7aa2b67bc8a20ab94eb57cff368539cb36b17f47df09cf6a65720f7`  
		Last Modified: Fri, 10 May 2019 01:46:20 GMT  
		Size: 6.8 KB (6827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b30d3bf667ed5c08c183803bc4da8c5616ccfe8ef7a08ae065b0bf8af0738fe`  
		Last Modified: Fri, 10 May 2019 01:46:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ecc5d3accb6ae6771ffe2607f3c80f3a4c2c9f166eda2084944d300b630c6f`  
		Last Modified: Fri, 10 May 2019 01:46:21 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efecc3f37bc16b29d33cbcba26058886113c4fb7c0f6d3a98b6086ed0edbe8ca`  
		Last Modified: Fri, 10 May 2019 01:46:20 GMT  
		Size: 2.4 KB (2369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e7eca25e10efb49604629f53e9377ebc51bc86f64b582a751bf01704bc5806`  
		Last Modified: Fri, 10 May 2019 01:46:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.17-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:2176b8582c9b1d2f8dbc216f00e99fbba6492c93dc81110ce7fd12db0ee07894
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13522636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a7f3252678bb2ebeee69e03b4425572a6e9fbbee07ec2303167261e6601c113`
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
# Wed, 10 Apr 2019 09:09:50 GMT
ENV PG_MAJOR=9.5
# Fri, 10 May 2019 07:59:06 GMT
ENV PG_VERSION=9.5.17
# Fri, 10 May 2019 07:59:06 GMT
ENV PG_SHA256=88f9e37a0069f2fd4442d1d0d5d811d3121cac685514435b0248d0674723f705
# Fri, 10 May 2019 08:00:40 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 08:00:41 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 08:00:43 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 08:00:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 08:00:45 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 08:00:45 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 08:00:45 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 08:00:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 08:00:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 08:00:47 GMT
EXPOSE 5432
# Fri, 10 May 2019 08:00:48 GMT
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
	-	`sha256:8bbdd654dc0980139bfb452759bec8ed14ee9adb00b7a767c88e13408a778c72`  
		Last Modified: Fri, 10 May 2019 08:03:54 GMT  
		Size: 11.0 MB (10969175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5fb2b51f0c7869dd7a8f92b14166e2fcd705e09885926279107c1ee6a5adec5`  
		Last Modified: Fri, 10 May 2019 08:03:48 GMT  
		Size: 6.8 KB (6830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a370ba4fbd6cb33fca319d1ab1fc17741bcebfa35d268ff4a0f69831ea03a96`  
		Last Modified: Fri, 10 May 2019 08:03:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88536b6a4f4e290ce98e6556ffeea86149fb8006d7b9602db727ad12e8f1772`  
		Last Modified: Fri, 10 May 2019 08:03:48 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9fafb5322d239eca099de4279a3699a5dfb2254e1d2f1a3f0dbc488c250454`  
		Last Modified: Fri, 10 May 2019 08:03:49 GMT  
		Size: 2.4 KB (2372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe25c0845ace7ce1eeab83862db920a268b56720fd015ea51dfb580e17c405d`  
		Last Modified: Fri, 10 May 2019 08:03:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.17-alpine` - linux; 386

```console
$ docker pull postgres@sha256:13fae44e39dbd0d7e9c5db2d60dc15924dcf279f698eb2daf24b1ad2265337b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14745933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e7e5a641cfd8de0632e34b16e4d45e49b57d35145a5d740d345e171aef04426`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:28:03 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 14:28:03 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 14:28:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 14:38:22 GMT
ENV PG_MAJOR=9.5
# Fri, 10 May 2019 11:15:25 GMT
ENV PG_VERSION=9.5.17
# Fri, 10 May 2019 11:15:25 GMT
ENV PG_SHA256=88f9e37a0069f2fd4442d1d0d5d811d3121cac685514435b0248d0674723f705
# Fri, 10 May 2019 11:18:10 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 11:18:11 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:18:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:18:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:18:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:18:13 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:18:13 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 11:18:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:18:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:18:14 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:18:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df8da713ae1263f84fd0cae748880b9bd3c3aa4619279b1b972976cdd7d4933`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60005ea8fc190aec4ebdcb14ff51e60c24531718c56530053e1321be67ccc37a`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17db12f1be96d9e3853f6584887d5332f98a1f2825da849ee0577ae14b0c6a31`  
		Last Modified: Fri, 10 May 2019 11:24:18 GMT  
		Size: 12.0 MB (11983891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e47fce98a6018bc8986e491e1a1c2dd876f03af315ab2f6a407ab77b0a60c6`  
		Last Modified: Fri, 10 May 2019 11:24:12 GMT  
		Size: 6.8 KB (6829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7723e4856fce44a395032a376d427001f01a397061465ce98137fce7a1c889e3`  
		Last Modified: Fri, 10 May 2019 11:24:12 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b64e413f8553dc2093334e6c71f767024a8ca2caa9ceb66566d89db727d6e4e`  
		Last Modified: Fri, 10 May 2019 11:24:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abba6ea8e4c278b2ddb799e2972198ab8c1f9c0efc1b3b60ab8267cf7b6c3f5`  
		Last Modified: Fri, 10 May 2019 11:24:12 GMT  
		Size: 2.4 KB (2367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3078ae3228090cd28e814cecf993b69e078857ee7bdacd54cdb3e487a2bfe144`  
		Last Modified: Fri, 10 May 2019 11:24:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.17-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:3c3482202e70be70f2f316e16ee2fc61e94d967db6fff6df5fe37db9e050210b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15258024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edd548a6757349a08df656d8d85f9e3e91b499d0c545cb48df8664675ef6238b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:40:21 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 10:40:26 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 10:40:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 10:53:48 GMT
ENV PG_MAJOR=9.5
# Fri, 10 May 2019 09:55:26 GMT
ENV PG_VERSION=9.5.17
# Fri, 10 May 2019 09:55:31 GMT
ENV PG_SHA256=88f9e37a0069f2fd4442d1d0d5d811d3121cac685514435b0248d0674723f705
# Fri, 10 May 2019 09:58:40 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 09:58:52 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:59:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:59:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:59:31 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:59:40 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:59:43 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 09:59:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 10:00:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 10:00:12 GMT
EXPOSE 5432
# Fri, 10 May 2019 10:00:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fadc09892703ded74da3266e56d7cf5631a32b6afc741c5d73cd181c7fcf26`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d903923d54c1aec0b4affbfa3483f2a737879e509527322b1f68fde697c40acf`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e36d0aa6eeda7f001c06c42bfd1d69fdc01ca5c1618ef1459ffcd879feb5db`  
		Last Modified: Fri, 10 May 2019 10:22:36 GMT  
		Size: 12.5 MB (12466989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16e7226e68c52cb2ff8646f6d067f4758e470408c322347a69e34fbbd890a93`  
		Last Modified: Fri, 10 May 2019 10:22:12 GMT  
		Size: 6.8 KB (6833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4176d7fb0f58dc6106a773c29d4c63df1c4dbeaba7d4f33df18125be92c932`  
		Last Modified: Fri, 10 May 2019 10:22:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9df6d8e3bd7b60785e20d5714f310904b3019b5f5892da255d0551e973cf65d`  
		Last Modified: Fri, 10 May 2019 10:22:13 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8b86a4f1757aeb8d732e00964f2b8c43722d0b90f3c3ab5f7697a7263b3dbd`  
		Last Modified: Fri, 10 May 2019 10:22:13 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f84c8d3a65abb48c128067f61b093c1aae962e9d6904a74bb5ef60dcbae704a4`  
		Last Modified: Fri, 10 May 2019 10:22:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:b3cce74e4aa8ca6cf29f26416dbd2729c73af71fa08b09e2ed1efd6ded9a5333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `postgres:9.5-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:56ef99794e7ff091432a16cf6d590d94fcab9ca66e4c8c15dbc7fdf31d45a4dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14162752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a5282c325b0cb4c6e62b0b1a447a71cc54bc90a700cfa5862bd11ffd7702b47`
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
# Tue, 09 Apr 2019 23:51:51 GMT
ENV PG_MAJOR=9.5
# Fri, 10 May 2019 01:38:21 GMT
ENV PG_VERSION=9.5.17
# Fri, 10 May 2019 01:38:21 GMT
ENV PG_SHA256=88f9e37a0069f2fd4442d1d0d5d811d3121cac685514435b0248d0674723f705
# Fri, 10 May 2019 01:40:47 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 01:40:47 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:40:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:40:48 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:40:49 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:40:49 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:40:49 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 01:40:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:40:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:40:50 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:40:50 GMT
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
	-	`sha256:decd11c6edb7a5e637bcc88f3a647865e7dad454a02e3e7433f720235af2f713`  
		Last Modified: Fri, 10 May 2019 01:46:25 GMT  
		Size: 11.4 MB (11395863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17281d6cb7aa2b67bc8a20ab94eb57cff368539cb36b17f47df09cf6a65720f7`  
		Last Modified: Fri, 10 May 2019 01:46:20 GMT  
		Size: 6.8 KB (6827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b30d3bf667ed5c08c183803bc4da8c5616ccfe8ef7a08ae065b0bf8af0738fe`  
		Last Modified: Fri, 10 May 2019 01:46:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ecc5d3accb6ae6771ffe2607f3c80f3a4c2c9f166eda2084944d300b630c6f`  
		Last Modified: Fri, 10 May 2019 01:46:21 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efecc3f37bc16b29d33cbcba26058886113c4fb7c0f6d3a98b6086ed0edbe8ca`  
		Last Modified: Fri, 10 May 2019 01:46:20 GMT  
		Size: 2.4 KB (2369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e7eca25e10efb49604629f53e9377ebc51bc86f64b582a751bf01704bc5806`  
		Last Modified: Fri, 10 May 2019 01:46:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:2176b8582c9b1d2f8dbc216f00e99fbba6492c93dc81110ce7fd12db0ee07894
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13522636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a7f3252678bb2ebeee69e03b4425572a6e9fbbee07ec2303167261e6601c113`
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
# Wed, 10 Apr 2019 09:09:50 GMT
ENV PG_MAJOR=9.5
# Fri, 10 May 2019 07:59:06 GMT
ENV PG_VERSION=9.5.17
# Fri, 10 May 2019 07:59:06 GMT
ENV PG_SHA256=88f9e37a0069f2fd4442d1d0d5d811d3121cac685514435b0248d0674723f705
# Fri, 10 May 2019 08:00:40 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 08:00:41 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 08:00:43 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 08:00:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 08:00:45 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 08:00:45 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 08:00:45 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 08:00:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 08:00:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 08:00:47 GMT
EXPOSE 5432
# Fri, 10 May 2019 08:00:48 GMT
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
	-	`sha256:8bbdd654dc0980139bfb452759bec8ed14ee9adb00b7a767c88e13408a778c72`  
		Last Modified: Fri, 10 May 2019 08:03:54 GMT  
		Size: 11.0 MB (10969175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5fb2b51f0c7869dd7a8f92b14166e2fcd705e09885926279107c1ee6a5adec5`  
		Last Modified: Fri, 10 May 2019 08:03:48 GMT  
		Size: 6.8 KB (6830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a370ba4fbd6cb33fca319d1ab1fc17741bcebfa35d268ff4a0f69831ea03a96`  
		Last Modified: Fri, 10 May 2019 08:03:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88536b6a4f4e290ce98e6556ffeea86149fb8006d7b9602db727ad12e8f1772`  
		Last Modified: Fri, 10 May 2019 08:03:48 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9fafb5322d239eca099de4279a3699a5dfb2254e1d2f1a3f0dbc488c250454`  
		Last Modified: Fri, 10 May 2019 08:03:49 GMT  
		Size: 2.4 KB (2372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe25c0845ace7ce1eeab83862db920a268b56720fd015ea51dfb580e17c405d`  
		Last Modified: Fri, 10 May 2019 08:03:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5-alpine` - linux; 386

```console
$ docker pull postgres@sha256:13fae44e39dbd0d7e9c5db2d60dc15924dcf279f698eb2daf24b1ad2265337b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14745933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e7e5a641cfd8de0632e34b16e4d45e49b57d35145a5d740d345e171aef04426`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:28:03 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 14:28:03 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 14:28:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 14:38:22 GMT
ENV PG_MAJOR=9.5
# Fri, 10 May 2019 11:15:25 GMT
ENV PG_VERSION=9.5.17
# Fri, 10 May 2019 11:15:25 GMT
ENV PG_SHA256=88f9e37a0069f2fd4442d1d0d5d811d3121cac685514435b0248d0674723f705
# Fri, 10 May 2019 11:18:10 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 11:18:11 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:18:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:18:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:18:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:18:13 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:18:13 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 11:18:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:18:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:18:14 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:18:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df8da713ae1263f84fd0cae748880b9bd3c3aa4619279b1b972976cdd7d4933`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60005ea8fc190aec4ebdcb14ff51e60c24531718c56530053e1321be67ccc37a`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17db12f1be96d9e3853f6584887d5332f98a1f2825da849ee0577ae14b0c6a31`  
		Last Modified: Fri, 10 May 2019 11:24:18 GMT  
		Size: 12.0 MB (11983891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e47fce98a6018bc8986e491e1a1c2dd876f03af315ab2f6a407ab77b0a60c6`  
		Last Modified: Fri, 10 May 2019 11:24:12 GMT  
		Size: 6.8 KB (6829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7723e4856fce44a395032a376d427001f01a397061465ce98137fce7a1c889e3`  
		Last Modified: Fri, 10 May 2019 11:24:12 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b64e413f8553dc2093334e6c71f767024a8ca2caa9ceb66566d89db727d6e4e`  
		Last Modified: Fri, 10 May 2019 11:24:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abba6ea8e4c278b2ddb799e2972198ab8c1f9c0efc1b3b60ab8267cf7b6c3f5`  
		Last Modified: Fri, 10 May 2019 11:24:12 GMT  
		Size: 2.4 KB (2367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3078ae3228090cd28e814cecf993b69e078857ee7bdacd54cdb3e487a2bfe144`  
		Last Modified: Fri, 10 May 2019 11:24:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:3c3482202e70be70f2f316e16ee2fc61e94d967db6fff6df5fe37db9e050210b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15258024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edd548a6757349a08df656d8d85f9e3e91b499d0c545cb48df8664675ef6238b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:40:21 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 10:40:26 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 10:40:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 10:53:48 GMT
ENV PG_MAJOR=9.5
# Fri, 10 May 2019 09:55:26 GMT
ENV PG_VERSION=9.5.17
# Fri, 10 May 2019 09:55:31 GMT
ENV PG_SHA256=88f9e37a0069f2fd4442d1d0d5d811d3121cac685514435b0248d0674723f705
# Fri, 10 May 2019 09:58:40 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 09:58:52 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:59:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:59:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:59:31 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:59:40 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:59:43 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 09:59:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 10:00:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 10:00:12 GMT
EXPOSE 5432
# Fri, 10 May 2019 10:00:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fadc09892703ded74da3266e56d7cf5631a32b6afc741c5d73cd181c7fcf26`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d903923d54c1aec0b4affbfa3483f2a737879e509527322b1f68fde697c40acf`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e36d0aa6eeda7f001c06c42bfd1d69fdc01ca5c1618ef1459ffcd879feb5db`  
		Last Modified: Fri, 10 May 2019 10:22:36 GMT  
		Size: 12.5 MB (12466989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16e7226e68c52cb2ff8646f6d067f4758e470408c322347a69e34fbbd890a93`  
		Last Modified: Fri, 10 May 2019 10:22:12 GMT  
		Size: 6.8 KB (6833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4176d7fb0f58dc6106a773c29d4c63df1c4dbeaba7d4f33df18125be92c932`  
		Last Modified: Fri, 10 May 2019 10:22:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9df6d8e3bd7b60785e20d5714f310904b3019b5f5892da255d0551e973cf65d`  
		Last Modified: Fri, 10 May 2019 10:22:13 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8b86a4f1757aeb8d732e00964f2b8c43722d0b90f3c3ab5f7697a7263b3dbd`  
		Last Modified: Fri, 10 May 2019 10:22:13 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f84c8d3a65abb48c128067f61b093c1aae962e9d6904a74bb5ef60dcbae704a4`  
		Last Modified: Fri, 10 May 2019 10:22:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:622d42b50689747e78ca6081485b0cc097a89b3880f1999d507b2dd4ca0c908b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386
	-	linux; ppc64le

### `postgres:9.6` - linux; amd64

```console
$ docker pull postgres@sha256:2f07d16f388adac3eec9f29a7f6056259b619951b3e9d1a4be3816f28839a912
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.2 MB (84170614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d9572468d971c3b761ae8e59328a9e7cafd26affba2f2ef4646cd3bdf97b37d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:49:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 02:49:37 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 02:49:37 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 02:49:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 02:50:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 02:50:00 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 02:50:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:50:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 02:50:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 02:52:39 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 01:34:22 GMT
ENV PG_VERSION=9.6.13-1.pgdg90+1
# Fri, 10 May 2019 01:34:53 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 01:34:54 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:34:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:34:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 10 May 2019 01:34:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:34:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:34:56 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:34:56 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 01:34:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:34:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:34:57 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:34:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d307000f290b09bb80a73255a5f5283d8722a100fd6730a5bccb3d2107afbce`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 4.5 MB (4501147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29837b5e9b7858633f7eda8bf8ebfeb2645be36cb62444532708917ff5871714`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.8 KB (1778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3090df5740389c8cfd6ef31b4a402ff8b26aed9d6e014e929e78f962807240a0`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.4 MB (1351331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0b4463fa0e3a96b78c37ac3989ae8908d8a1694ea8659a11f4fc90f7850159`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 6.2 MB (6182629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb834895f5964d99726df2dbef0ecf74f0a57a510301a551afbe7d917107c79`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 295.5 KB (295498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59169bd605be847833d9103cf774c2fe0444fcdaf5fc6478aa17fd0535c38f4a`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a950d631bfe9946149640c92a3130d1129c2e1ee2cab48284b2e5bf02a64ac83`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de13bddd861ec874fc70cc89b668f312bde29da16ec2c8e5e59b3a16d2657d8a`  
		Last Modified: Fri, 10 May 2019 01:45:43 GMT  
		Size: 49.3 MB (49333420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d927ac55bb77591fc5b29960d2c2daf9be55b456372aa3913b64227f6a54ac`  
		Last Modified: Fri, 10 May 2019 01:45:32 GMT  
		Size: 7.8 KB (7754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd90504b6086a3e94157907f66a333193c7c49ebe86b303bf83c5dd9fb554d86`  
		Last Modified: Fri, 10 May 2019 01:45:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1817e506cb0868e75edf77b46fa2f829d35d48b6197ab458aa248ed79662f92c`  
		Last Modified: Fri, 10 May 2019 01:45:32 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ea2bd116a57936f614a46cd384be4f7983b37082b48c4651a58b627b201c15`  
		Last Modified: Fri, 10 May 2019 01:45:32 GMT  
		Size: 2.4 KB (2379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d177a7b6aef123ad6147e0c59988e17f6f1c962851617c03616f4f3d25a24c`  
		Last Modified: Fri, 10 May 2019 01:45:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; arm variant v5

```console
$ docker pull postgres@sha256:d1df2d9f65df6456bd07ce7d204245bc49373f6aad4a89585bc400cf17bd8051
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81154208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f0b93ee773c6c6c4c8954cd23f65edbc85d113b4d30a5c50f0eaaecd933db1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 10:18:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 10:18:18 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 10:18:18 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 10:18:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 10:18:52 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 10:18:52 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 10:19:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:19:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 10:19:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 10:59:53 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 09:37:03 GMT
ENV PG_VERSION=9.6.13-1.pgdg90+1
# Fri, 10 May 2019 09:55:52 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 09:55:54 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:55:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:55:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 10 May 2019 09:55:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:55:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:55:57 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:55:57 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 09:55:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:55:59 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:56:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6187b1cd4a95f897462bf15d322cb0217f0c2791306dfff3c1423177cbb7d9b8`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 4.2 MB (4236743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddde74d7be81b59c81d4499012020625d3725398d78cbf1204c2c4be2233912`  
		Last Modified: Wed, 08 May 2019 11:55:47 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083493bcd809f21abd38be158d1a882018cac97fdb1c1623b01ff0cbb51678ba`  
		Last Modified: Wed, 08 May 2019 11:55:48 GMT  
		Size: 1.3 MB (1311102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c86e195c35acfc6137a34ac656751ac9b1af86d8ac7d168865f0ad66ae94a96`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 6.2 MB (6185276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e8457b4ad61904543662dbd3f7bbd85e1fbc740e7f3f7fe7fe110615bbecda`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 293.4 KB (293384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900f2045d1e883d0f818f35e24c911130e6e5a5008e3aca61624c3aca81a7369`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42085a2db16d24361b3410bd829b1e5f3007c7616d2925ed14887d88399bcea0`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb16be586a16acf1c4e00881860a7bec17054b7ef084ae22eca9159feb1d69f8`  
		Last Modified: Fri, 10 May 2019 10:33:24 GMT  
		Size: 48.0 MB (47954503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da49ba382aebe8d18ac2ab916391850c72d5d3dc819d054ac38c3e17b92446e7`  
		Last Modified: Fri, 10 May 2019 10:33:06 GMT  
		Size: 7.8 KB (7761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e362b63070424558134a660d52e107d5a7f234dd54925e2ca0a17a5248740c5d`  
		Last Modified: Fri, 10 May 2019 10:33:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75aafcabe5573bcae7a7e4a4e239f543827047b733e330f90ad0c598da4ccf70`  
		Last Modified: Fri, 10 May 2019 10:33:06 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3335436f1678dcf7d81635541a589826275b784f61eb823a1b1000f923ee3824`  
		Last Modified: Fri, 10 May 2019 10:33:06 GMT  
		Size: 2.4 KB (2382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efdf61fb470f72d86b76b9bf498e951e4f5455573eeea73e8317c41f88f4eecd`  
		Last Modified: Fri, 10 May 2019 10:33:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; 386

```console
$ docker pull postgres@sha256:656396b2aaf0b78a9e46099802fbee978f6aaff44321b7f8e50dfe0e924f77b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.1 MB (86113961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df36d2b5faf1c01a06f5bc687db71973c9ac23a1230b344904c63beb08c88c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:43:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 18:43:29 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 18:43:29 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 18:43:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 18:43:49 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 18:43:49 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 18:43:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:43:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 18:43:58 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 18:45:49 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 11:10:42 GMT
ENV PG_VERSION=9.6.13-1.pgdg90+1
# Fri, 10 May 2019 11:11:16 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 11:11:17 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:11:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:11:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 10 May 2019 11:11:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:11:19 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:11:19 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:11:19 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 11:11:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:11:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:11:20 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:11:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81cd933aa2c67d2892f2712457502eb1f14e9cf143632e3757b514814e2d0cc`  
		Last Modified: Wed, 08 May 2019 18:48:22 GMT  
		Size: 4.8 MB (4807726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67eda6906616ad50be4bb49e0402248f269055c4ed9add6a4bf1ddebe9f4dd9`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afc4a215cbbb60825914510f45abec3fd6d492fe234a32d366bb4d13f9e4869`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.3 MB (1317837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9955ce1ee330f61bfc01d81d2c1e2c3fb9b393588dc8069db8d6fa97177e52d7`  
		Last Modified: Wed, 08 May 2019 18:48:25 GMT  
		Size: 6.2 MB (6182590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920eeda872ac67d0fb5b1c35d25de9078176c64d8a791511d54f7f900f0989a0`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 296.6 KB (296556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa8e3df0dcb82be7e7e46edeb230cc94cc5c3bfc028ce06b9de49a581163676`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef37a66833579f324fda5db062d1a3a9739e036f3bd4c2c73cc75956b2908e3`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 4.8 KB (4793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e5465b17cfbea495e0bbd2b829583b09972e65d27b2e7ab215116b2b602aa0`  
		Last Modified: Fri, 10 May 2019 11:23:34 GMT  
		Size: 50.4 MB (50371170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a254d33df706ea7f19493d7771ae80759442876b0d5fedb54f60365d7442c6fe`  
		Last Modified: Fri, 10 May 2019 11:23:20 GMT  
		Size: 7.8 KB (7759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f93389af5e34b4b0bbde0dfb1adebd0bdca63edb38f1603f33eac41cd8e4c0`  
		Last Modified: Fri, 10 May 2019 11:23:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ae48d6f18d260f4959254e2a8e4553459b84092c5aa1b1d621d1fd3ce9055c`  
		Last Modified: Fri, 10 May 2019 11:23:20 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c583fc1ba0d827f3f823aa747dfed7c366851f63fca0e50858ab792c1937da`  
		Last Modified: Fri, 10 May 2019 11:23:20 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb5e997956cd6deb376d18c5a29f9f4c112874c236f55d1f2b8f474b49e51bc`  
		Last Modified: Fri, 10 May 2019 11:23:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; ppc64le

```console
$ docker pull postgres@sha256:9f742975a8579b2e775a97df4873513a7ac4fdad593d0f04091373525fc3f62f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84053391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20b70a67fe64a2c749510f7b6f12a94fb98b680c5fb97be40fb2b7b85cf8dc86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 14:12:57 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 14:13:03 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 14:14:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 14:15:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 14:15:04 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 14:15:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:15:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 14:15:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 14:40:12 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 09:38:06 GMT
ENV PG_VERSION=9.6.13-1.pgdg90+1
# Fri, 10 May 2019 09:43:03 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 09:43:16 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:43:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:43:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 10 May 2019 09:43:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:43:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:43:54 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:43:56 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 09:44:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:44:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:44:12 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:44:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31400e35e62100e129401e0db5744f08520633fcd8149b26792c502d6965a61a`  
		Last Modified: Wed, 08 May 2019 15:02:16 GMT  
		Size: 4.4 MB (4365081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14e987e87b91351d930ff69141b31e6f6cc42800361352f755c4d544be69833`  
		Last Modified: Wed, 08 May 2019 15:02:10 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3828e738a494793ba3c87812cd102699d9aa31b6399251598924f5e6a61a41`  
		Last Modified: Wed, 08 May 2019 15:02:11 GMT  
		Size: 1.3 MB (1275138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7689166881ea41e235b80b7cc77476488e89fde7331df69bc36b0e9800984f4`  
		Last Modified: Wed, 08 May 2019 15:02:18 GMT  
		Size: 6.2 MB (6185656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37c7521930e2ff2f9ac90f7f5a145d600542e7199588caacabe24b807a40dff`  
		Last Modified: Wed, 08 May 2019 15:02:08 GMT  
		Size: 293.6 KB (293607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82eed40867cae9111c7c7eff5a0ea33186f39ce68ca04b47112537c45dbabde6`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a30cf417536dec1e834bf421984eaee716ac1ec169275b7243755022b5474ce`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bb42dcf20397f9669ef8b7bf9076fd0f253a84278a1cf999d764c1a01788a2`  
		Last Modified: Fri, 10 May 2019 10:20:02 GMT  
		Size: 49.2 MB (49171632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee9e04b82ec4dd344d6b56a150a0719921a59ede6683d9010d5e7597c8e3700`  
		Last Modified: Fri, 10 May 2019 10:19:01 GMT  
		Size: 7.8 KB (7763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1ca6469c95597e48dcebc784c29bdccd22473e407b6ffa2f9cf9b79deafe3b`  
		Last Modified: Fri, 10 May 2019 10:19:00 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac89144a792746efadba0cd19f48306e850d540a570241d6e42538d3ba40b05a`  
		Last Modified: Fri, 10 May 2019 10:19:00 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033afb130c535ef665ed30ccc2781fa0ca653c530e1a7050c65b1655a7c89b75`  
		Last Modified: Fri, 10 May 2019 10:19:00 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8088950f1bf813767839a2782d0f114113f30aca83d1c109f2e82a58e83a932e`  
		Last Modified: Fri, 10 May 2019 10:19:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.13`

```console
$ docker pull postgres@sha256:622d42b50689747e78ca6081485b0cc097a89b3880f1999d507b2dd4ca0c908b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386
	-	linux; ppc64le

### `postgres:9.6.13` - linux; amd64

```console
$ docker pull postgres@sha256:2f07d16f388adac3eec9f29a7f6056259b619951b3e9d1a4be3816f28839a912
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.2 MB (84170614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d9572468d971c3b761ae8e59328a9e7cafd26affba2f2ef4646cd3bdf97b37d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:49:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 02:49:37 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 02:49:37 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 02:49:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 02:50:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 02:50:00 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 02:50:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:50:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 02:50:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 02:52:39 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 01:34:22 GMT
ENV PG_VERSION=9.6.13-1.pgdg90+1
# Fri, 10 May 2019 01:34:53 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 01:34:54 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:34:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:34:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 10 May 2019 01:34:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:34:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:34:56 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:34:56 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 01:34:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:34:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:34:57 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:34:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d307000f290b09bb80a73255a5f5283d8722a100fd6730a5bccb3d2107afbce`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 4.5 MB (4501147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29837b5e9b7858633f7eda8bf8ebfeb2645be36cb62444532708917ff5871714`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.8 KB (1778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3090df5740389c8cfd6ef31b4a402ff8b26aed9d6e014e929e78f962807240a0`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.4 MB (1351331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0b4463fa0e3a96b78c37ac3989ae8908d8a1694ea8659a11f4fc90f7850159`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 6.2 MB (6182629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb834895f5964d99726df2dbef0ecf74f0a57a510301a551afbe7d917107c79`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 295.5 KB (295498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59169bd605be847833d9103cf774c2fe0444fcdaf5fc6478aa17fd0535c38f4a`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a950d631bfe9946149640c92a3130d1129c2e1ee2cab48284b2e5bf02a64ac83`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de13bddd861ec874fc70cc89b668f312bde29da16ec2c8e5e59b3a16d2657d8a`  
		Last Modified: Fri, 10 May 2019 01:45:43 GMT  
		Size: 49.3 MB (49333420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d927ac55bb77591fc5b29960d2c2daf9be55b456372aa3913b64227f6a54ac`  
		Last Modified: Fri, 10 May 2019 01:45:32 GMT  
		Size: 7.8 KB (7754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd90504b6086a3e94157907f66a333193c7c49ebe86b303bf83c5dd9fb554d86`  
		Last Modified: Fri, 10 May 2019 01:45:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1817e506cb0868e75edf77b46fa2f829d35d48b6197ab458aa248ed79662f92c`  
		Last Modified: Fri, 10 May 2019 01:45:32 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ea2bd116a57936f614a46cd384be4f7983b37082b48c4651a58b627b201c15`  
		Last Modified: Fri, 10 May 2019 01:45:32 GMT  
		Size: 2.4 KB (2379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d177a7b6aef123ad6147e0c59988e17f6f1c962851617c03616f4f3d25a24c`  
		Last Modified: Fri, 10 May 2019 01:45:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.13` - linux; arm variant v5

```console
$ docker pull postgres@sha256:d1df2d9f65df6456bd07ce7d204245bc49373f6aad4a89585bc400cf17bd8051
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81154208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f0b93ee773c6c6c4c8954cd23f65edbc85d113b4d30a5c50f0eaaecd933db1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 10:18:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 10:18:18 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 10:18:18 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 10:18:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 10:18:52 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 10:18:52 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 10:19:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:19:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 10:19:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 10:59:53 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 09:37:03 GMT
ENV PG_VERSION=9.6.13-1.pgdg90+1
# Fri, 10 May 2019 09:55:52 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 09:55:54 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:55:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:55:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 10 May 2019 09:55:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:55:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:55:57 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:55:57 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 09:55:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:55:59 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:56:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6187b1cd4a95f897462bf15d322cb0217f0c2791306dfff3c1423177cbb7d9b8`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 4.2 MB (4236743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddde74d7be81b59c81d4499012020625d3725398d78cbf1204c2c4be2233912`  
		Last Modified: Wed, 08 May 2019 11:55:47 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083493bcd809f21abd38be158d1a882018cac97fdb1c1623b01ff0cbb51678ba`  
		Last Modified: Wed, 08 May 2019 11:55:48 GMT  
		Size: 1.3 MB (1311102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c86e195c35acfc6137a34ac656751ac9b1af86d8ac7d168865f0ad66ae94a96`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 6.2 MB (6185276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e8457b4ad61904543662dbd3f7bbd85e1fbc740e7f3f7fe7fe110615bbecda`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 293.4 KB (293384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900f2045d1e883d0f818f35e24c911130e6e5a5008e3aca61624c3aca81a7369`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42085a2db16d24361b3410bd829b1e5f3007c7616d2925ed14887d88399bcea0`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb16be586a16acf1c4e00881860a7bec17054b7ef084ae22eca9159feb1d69f8`  
		Last Modified: Fri, 10 May 2019 10:33:24 GMT  
		Size: 48.0 MB (47954503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da49ba382aebe8d18ac2ab916391850c72d5d3dc819d054ac38c3e17b92446e7`  
		Last Modified: Fri, 10 May 2019 10:33:06 GMT  
		Size: 7.8 KB (7761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e362b63070424558134a660d52e107d5a7f234dd54925e2ca0a17a5248740c5d`  
		Last Modified: Fri, 10 May 2019 10:33:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75aafcabe5573bcae7a7e4a4e239f543827047b733e330f90ad0c598da4ccf70`  
		Last Modified: Fri, 10 May 2019 10:33:06 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3335436f1678dcf7d81635541a589826275b784f61eb823a1b1000f923ee3824`  
		Last Modified: Fri, 10 May 2019 10:33:06 GMT  
		Size: 2.4 KB (2382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efdf61fb470f72d86b76b9bf498e951e4f5455573eeea73e8317c41f88f4eecd`  
		Last Modified: Fri, 10 May 2019 10:33:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.13` - linux; 386

```console
$ docker pull postgres@sha256:656396b2aaf0b78a9e46099802fbee978f6aaff44321b7f8e50dfe0e924f77b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.1 MB (86113961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df36d2b5faf1c01a06f5bc687db71973c9ac23a1230b344904c63beb08c88c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:43:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 18:43:29 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 18:43:29 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 18:43:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 18:43:49 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 18:43:49 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 18:43:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:43:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 18:43:58 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 18:45:49 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 11:10:42 GMT
ENV PG_VERSION=9.6.13-1.pgdg90+1
# Fri, 10 May 2019 11:11:16 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 11:11:17 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:11:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:11:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 10 May 2019 11:11:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:11:19 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:11:19 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:11:19 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 11:11:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:11:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:11:20 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:11:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81cd933aa2c67d2892f2712457502eb1f14e9cf143632e3757b514814e2d0cc`  
		Last Modified: Wed, 08 May 2019 18:48:22 GMT  
		Size: 4.8 MB (4807726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67eda6906616ad50be4bb49e0402248f269055c4ed9add6a4bf1ddebe9f4dd9`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afc4a215cbbb60825914510f45abec3fd6d492fe234a32d366bb4d13f9e4869`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.3 MB (1317837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9955ce1ee330f61bfc01d81d2c1e2c3fb9b393588dc8069db8d6fa97177e52d7`  
		Last Modified: Wed, 08 May 2019 18:48:25 GMT  
		Size: 6.2 MB (6182590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920eeda872ac67d0fb5b1c35d25de9078176c64d8a791511d54f7f900f0989a0`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 296.6 KB (296556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa8e3df0dcb82be7e7e46edeb230cc94cc5c3bfc028ce06b9de49a581163676`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef37a66833579f324fda5db062d1a3a9739e036f3bd4c2c73cc75956b2908e3`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 4.8 KB (4793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e5465b17cfbea495e0bbd2b829583b09972e65d27b2e7ab215116b2b602aa0`  
		Last Modified: Fri, 10 May 2019 11:23:34 GMT  
		Size: 50.4 MB (50371170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a254d33df706ea7f19493d7771ae80759442876b0d5fedb54f60365d7442c6fe`  
		Last Modified: Fri, 10 May 2019 11:23:20 GMT  
		Size: 7.8 KB (7759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f93389af5e34b4b0bbde0dfb1adebd0bdca63edb38f1603f33eac41cd8e4c0`  
		Last Modified: Fri, 10 May 2019 11:23:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ae48d6f18d260f4959254e2a8e4553459b84092c5aa1b1d621d1fd3ce9055c`  
		Last Modified: Fri, 10 May 2019 11:23:20 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c583fc1ba0d827f3f823aa747dfed7c366851f63fca0e50858ab792c1937da`  
		Last Modified: Fri, 10 May 2019 11:23:20 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb5e997956cd6deb376d18c5a29f9f4c112874c236f55d1f2b8f474b49e51bc`  
		Last Modified: Fri, 10 May 2019 11:23:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.13` - linux; ppc64le

```console
$ docker pull postgres@sha256:9f742975a8579b2e775a97df4873513a7ac4fdad593d0f04091373525fc3f62f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84053391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20b70a67fe64a2c749510f7b6f12a94fb98b680c5fb97be40fb2b7b85cf8dc86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 14:12:57 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 14:13:03 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 14:14:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 14:15:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 14:15:04 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 14:15:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:15:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 14:15:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 14:40:12 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 09:38:06 GMT
ENV PG_VERSION=9.6.13-1.pgdg90+1
# Fri, 10 May 2019 09:43:03 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 09:43:16 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:43:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:43:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 10 May 2019 09:43:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:43:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:43:54 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:43:56 GMT
COPY file:06518109847cb889a0b2c3dbf9f25e925720da58ad4bded66cc8d4443bc05638 in /usr/local/bin/ 
# Fri, 10 May 2019 09:44:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:44:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:44:12 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:44:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31400e35e62100e129401e0db5744f08520633fcd8149b26792c502d6965a61a`  
		Last Modified: Wed, 08 May 2019 15:02:16 GMT  
		Size: 4.4 MB (4365081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14e987e87b91351d930ff69141b31e6f6cc42800361352f755c4d544be69833`  
		Last Modified: Wed, 08 May 2019 15:02:10 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3828e738a494793ba3c87812cd102699d9aa31b6399251598924f5e6a61a41`  
		Last Modified: Wed, 08 May 2019 15:02:11 GMT  
		Size: 1.3 MB (1275138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7689166881ea41e235b80b7cc77476488e89fde7331df69bc36b0e9800984f4`  
		Last Modified: Wed, 08 May 2019 15:02:18 GMT  
		Size: 6.2 MB (6185656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37c7521930e2ff2f9ac90f7f5a145d600542e7199588caacabe24b807a40dff`  
		Last Modified: Wed, 08 May 2019 15:02:08 GMT  
		Size: 293.6 KB (293607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82eed40867cae9111c7c7eff5a0ea33186f39ce68ca04b47112537c45dbabde6`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a30cf417536dec1e834bf421984eaee716ac1ec169275b7243755022b5474ce`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bb42dcf20397f9669ef8b7bf9076fd0f253a84278a1cf999d764c1a01788a2`  
		Last Modified: Fri, 10 May 2019 10:20:02 GMT  
		Size: 49.2 MB (49171632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee9e04b82ec4dd344d6b56a150a0719921a59ede6683d9010d5e7597c8e3700`  
		Last Modified: Fri, 10 May 2019 10:19:01 GMT  
		Size: 7.8 KB (7763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1ca6469c95597e48dcebc784c29bdccd22473e407b6ffa2f9cf9b79deafe3b`  
		Last Modified: Fri, 10 May 2019 10:19:00 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac89144a792746efadba0cd19f48306e850d540a570241d6e42538d3ba40b05a`  
		Last Modified: Fri, 10 May 2019 10:19:00 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033afb130c535ef665ed30ccc2781fa0ca653c530e1a7050c65b1655a7c89b75`  
		Last Modified: Fri, 10 May 2019 10:19:00 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8088950f1bf813767839a2782d0f114113f30aca83d1c109f2e82a58e83a932e`  
		Last Modified: Fri, 10 May 2019 10:19:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.13-alpine`

```console
$ docker pull postgres@sha256:dc7cb27105b31c7262acb10ecdefdf355315b0326e10d85ac86ce9362132d606
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `postgres:9.6.13-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:11dab535349d0a6aa2086bc096ce75c7c15cb1a5e1396fa3d49fda11f4a52105
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14443460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8229d6e55f068221e2481ab3b99813f549cd4a902a274b8310e41e8863369a`
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
# Tue, 09 Apr 2019 23:48:34 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 01:35:00 GMT
ENV PG_VERSION=9.6.13
# Fri, 10 May 2019 01:35:00 GMT
ENV PG_SHA256=ecbed20056296a65b6a4f5526c477e3ae5cc284cb01a15507785ddb23831e9a4
# Fri, 10 May 2019 01:37:32 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 01:37:33 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:37:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:37:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:37:34 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:37:35 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:37:35 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 01:37:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:37:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:37:36 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:37:36 GMT
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
	-	`sha256:56b5fd5427f9081265114b071513bcc4cc5baef60995fc6199a0e4c4d5b9ab1f`  
		Last Modified: Fri, 10 May 2019 01:45:53 GMT  
		Size: 11.7 MB (11676296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0543c64791decb1b7ddecbb6ed6b3412635d317ec8d58d92da2a554df4a23cd`  
		Last Modified: Fri, 10 May 2019 01:45:48 GMT  
		Size: 7.1 KB (7101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2759e8dc128457509b9c147f51ddc06919ee00a6714da1d3eeba48f536f72b63`  
		Last Modified: Fri, 10 May 2019 01:45:48 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba847defb80dc98af568fb70c8b496387703addfc15159a393bf39944b75250`  
		Last Modified: Fri, 10 May 2019 01:45:48 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe6eca77bf85f90cc183aae00933f8df1416408da1bd5ebabc5b577c6278e0c`  
		Last Modified: Fri, 10 May 2019 01:45:48 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7aff354b3becd0c2b2a182d9e89280849cbc26ed4cdd2de50203e52a0975db8`  
		Last Modified: Fri, 10 May 2019 01:45:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.13-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:bb6011218708fbfc7848467a07dc8fcc4a120550e5eb97a5d5ee2d95d850709e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13785797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd7c2c2d57d7e1bf7da6f56c98609da62529539856750d4775effb1b26ffbdb1`
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
# Wed, 10 Apr 2019 09:07:52 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 07:57:05 GMT
ENV PG_VERSION=9.6.13
# Fri, 10 May 2019 07:57:06 GMT
ENV PG_SHA256=ecbed20056296a65b6a4f5526c477e3ae5cc284cb01a15507785ddb23831e9a4
# Fri, 10 May 2019 07:58:43 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 07:58:45 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 07:58:46 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 07:58:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 07:58:48 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 07:58:48 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 07:58:49 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 07:58:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 07:58:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 07:58:51 GMT
EXPOSE 5432
# Fri, 10 May 2019 07:58:51 GMT
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
	-	`sha256:113b03c7862ffce5175d1ec31634e291bc57e661c7385cf966e43b8c9be0e05a`  
		Last Modified: Fri, 10 May 2019 08:03:40 GMT  
		Size: 11.2 MB (11232064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a077e4eb8d90359e957f7a80131ec5c80c81c8029fcf16399d0c5f7bad5b9086`  
		Last Modified: Fri, 10 May 2019 08:03:34 GMT  
		Size: 7.1 KB (7101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb17662623775edbdb82e94bb7a6e6bcfc348143a21e3a7acb42e89db11c53c0`  
		Last Modified: Fri, 10 May 2019 08:03:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf1a866ffeb4dfe8f0836c28c2ff016cab92771982476ed3cac291dcf403b4`  
		Last Modified: Fri, 10 May 2019 08:03:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53013f570a2d2973e86ed1f7886c8259033b174c3870b4a587a6d747629e1a98`  
		Last Modified: Fri, 10 May 2019 08:03:34 GMT  
		Size: 2.4 KB (2373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2c43c335f21192dba4b8a1444d9f2a1af9c122ac626ea8dd3b6e0c1850df5d`  
		Last Modified: Fri, 10 May 2019 08:03:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.13-alpine` - linux; 386

```console
$ docker pull postgres@sha256:73af59f632e5ae839282cafb01d7f372428a02cf96e6b279fc2bdfb986820d54
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (15030462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736f9d10363327491fc88961f7692c4f2ea6962766c14ae78224242148719c8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:28:03 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 14:28:03 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 14:28:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 14:35:06 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 11:11:26 GMT
ENV PG_VERSION=9.6.13
# Fri, 10 May 2019 11:11:26 GMT
ENV PG_SHA256=ecbed20056296a65b6a4f5526c477e3ae5cc284cb01a15507785ddb23831e9a4
# Fri, 10 May 2019 11:14:20 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 11:14:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:14:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:14:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:14:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:14:23 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:14:23 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 11:14:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:14:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:14:24 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:14:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df8da713ae1263f84fd0cae748880b9bd3c3aa4619279b1b972976cdd7d4933`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60005ea8fc190aec4ebdcb14ff51e60c24531718c56530053e1321be67ccc37a`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65fd283c94a45e1182f549e836ba39d9866f15ac0448eafa14afe36972c3d809`  
		Last Modified: Fri, 10 May 2019 11:23:46 GMT  
		Size: 12.3 MB (12268140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fcd4f2e7fafd6b7b651a0ac3a214a51a79cbb4ec5ff7d0accb4c075b9c7ad2d`  
		Last Modified: Fri, 10 May 2019 11:23:41 GMT  
		Size: 7.1 KB (7105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db32a5815194ae8466b8c458cdc7e25e71ff26feab9e6c9ee997002b4151275c`  
		Last Modified: Fri, 10 May 2019 11:23:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3107fee9043b31a23297ce0182b850fe154a1b0861e8ea4d523217c46c779c26`  
		Last Modified: Fri, 10 May 2019 11:23:41 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50b6115048a6434c79e5fa6efd9502efd3179f6d7d11308e7b71f0b67124187`  
		Last Modified: Fri, 10 May 2019 11:23:41 GMT  
		Size: 2.4 KB (2370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310477c106ea76ad6e18f260885b2f4fcc6605db26581215d14e82dd098195c9`  
		Last Modified: Fri, 10 May 2019 11:23:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.13-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:5f7f57cd3f08c3454f6443adf7c1ccd4f186061dfcff19756d68df4390617f83
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15546555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a11fe14ef24d28ba49ba2b6d3bfee3ccd3f1af82eecebdfa7ae090578eac53f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:40:21 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 10:40:26 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 10:40:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 10:49:22 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 09:44:34 GMT
ENV PG_VERSION=9.6.13
# Fri, 10 May 2019 09:44:36 GMT
ENV PG_SHA256=ecbed20056296a65b6a4f5526c477e3ae5cc284cb01a15507785ddb23831e9a4
# Fri, 10 May 2019 09:47:32 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 09:47:43 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:47:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:47:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:48:05 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:48:10 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:48:12 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 09:48:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:48:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:48:36 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:48:43 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fadc09892703ded74da3266e56d7cf5631a32b6afc741c5d73cd181c7fcf26`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d903923d54c1aec0b4affbfa3483f2a737879e509527322b1f68fde697c40acf`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49308856db8266793369d11d0cae36f10b25c32db6d9b54a41a1f57721c96be8`  
		Last Modified: Fri, 10 May 2019 10:20:43 GMT  
		Size: 12.8 MB (12755245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd47b7b9865efe1feca2f8437a8b4e60cc44c838b06a906fabb1897577f33eb`  
		Last Modified: Fri, 10 May 2019 10:20:20 GMT  
		Size: 7.1 KB (7103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb41f0c6d92ed5b0a6cf4d292cb3567bd0f792db0915f4de54cd51847f7ee3e4`  
		Last Modified: Fri, 10 May 2019 10:20:20 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d78bf4605791a2e9b9ef1ebcf92810783ee985db3f38fdc17ede47359a0017`  
		Last Modified: Fri, 10 May 2019 10:20:20 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e7b103f4d46f4eee240a5a99f6c3af2c682fa23203688d6a35316005ebde97`  
		Last Modified: Fri, 10 May 2019 10:20:20 GMT  
		Size: 2.4 KB (2374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b66a6e334ef8984957d07da1bee8f2a0a323a20e775e335b3ab3a07a185adb`  
		Last Modified: Fri, 10 May 2019 10:20:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:dc7cb27105b31c7262acb10ecdefdf355315b0326e10d85ac86ce9362132d606
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `postgres:9.6-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:11dab535349d0a6aa2086bc096ce75c7c15cb1a5e1396fa3d49fda11f4a52105
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14443460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8229d6e55f068221e2481ab3b99813f549cd4a902a274b8310e41e8863369a`
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
# Tue, 09 Apr 2019 23:48:34 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 01:35:00 GMT
ENV PG_VERSION=9.6.13
# Fri, 10 May 2019 01:35:00 GMT
ENV PG_SHA256=ecbed20056296a65b6a4f5526c477e3ae5cc284cb01a15507785ddb23831e9a4
# Fri, 10 May 2019 01:37:32 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 01:37:33 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:37:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:37:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:37:34 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:37:35 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:37:35 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 01:37:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:37:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:37:36 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:37:36 GMT
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
	-	`sha256:56b5fd5427f9081265114b071513bcc4cc5baef60995fc6199a0e4c4d5b9ab1f`  
		Last Modified: Fri, 10 May 2019 01:45:53 GMT  
		Size: 11.7 MB (11676296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0543c64791decb1b7ddecbb6ed6b3412635d317ec8d58d92da2a554df4a23cd`  
		Last Modified: Fri, 10 May 2019 01:45:48 GMT  
		Size: 7.1 KB (7101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2759e8dc128457509b9c147f51ddc06919ee00a6714da1d3eeba48f536f72b63`  
		Last Modified: Fri, 10 May 2019 01:45:48 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba847defb80dc98af568fb70c8b496387703addfc15159a393bf39944b75250`  
		Last Modified: Fri, 10 May 2019 01:45:48 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe6eca77bf85f90cc183aae00933f8df1416408da1bd5ebabc5b577c6278e0c`  
		Last Modified: Fri, 10 May 2019 01:45:48 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7aff354b3becd0c2b2a182d9e89280849cbc26ed4cdd2de50203e52a0975db8`  
		Last Modified: Fri, 10 May 2019 01:45:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:bb6011218708fbfc7848467a07dc8fcc4a120550e5eb97a5d5ee2d95d850709e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13785797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd7c2c2d57d7e1bf7da6f56c98609da62529539856750d4775effb1b26ffbdb1`
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
# Wed, 10 Apr 2019 09:07:52 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 07:57:05 GMT
ENV PG_VERSION=9.6.13
# Fri, 10 May 2019 07:57:06 GMT
ENV PG_SHA256=ecbed20056296a65b6a4f5526c477e3ae5cc284cb01a15507785ddb23831e9a4
# Fri, 10 May 2019 07:58:43 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 07:58:45 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 07:58:46 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 07:58:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 07:58:48 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 07:58:48 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 07:58:49 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 07:58:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 07:58:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 07:58:51 GMT
EXPOSE 5432
# Fri, 10 May 2019 07:58:51 GMT
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
	-	`sha256:113b03c7862ffce5175d1ec31634e291bc57e661c7385cf966e43b8c9be0e05a`  
		Last Modified: Fri, 10 May 2019 08:03:40 GMT  
		Size: 11.2 MB (11232064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a077e4eb8d90359e957f7a80131ec5c80c81c8029fcf16399d0c5f7bad5b9086`  
		Last Modified: Fri, 10 May 2019 08:03:34 GMT  
		Size: 7.1 KB (7101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb17662623775edbdb82e94bb7a6e6bcfc348143a21e3a7acb42e89db11c53c0`  
		Last Modified: Fri, 10 May 2019 08:03:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf1a866ffeb4dfe8f0836c28c2ff016cab92771982476ed3cac291dcf403b4`  
		Last Modified: Fri, 10 May 2019 08:03:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53013f570a2d2973e86ed1f7886c8259033b174c3870b4a587a6d747629e1a98`  
		Last Modified: Fri, 10 May 2019 08:03:34 GMT  
		Size: 2.4 KB (2373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2c43c335f21192dba4b8a1444d9f2a1af9c122ac626ea8dd3b6e0c1850df5d`  
		Last Modified: Fri, 10 May 2019 08:03:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6-alpine` - linux; 386

```console
$ docker pull postgres@sha256:73af59f632e5ae839282cafb01d7f372428a02cf96e6b279fc2bdfb986820d54
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (15030462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736f9d10363327491fc88961f7692c4f2ea6962766c14ae78224242148719c8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:28:03 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 14:28:03 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 14:28:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 14:35:06 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 11:11:26 GMT
ENV PG_VERSION=9.6.13
# Fri, 10 May 2019 11:11:26 GMT
ENV PG_SHA256=ecbed20056296a65b6a4f5526c477e3ae5cc284cb01a15507785ddb23831e9a4
# Fri, 10 May 2019 11:14:20 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 11:14:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:14:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:14:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:14:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:14:23 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:14:23 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 11:14:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:14:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:14:24 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:14:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df8da713ae1263f84fd0cae748880b9bd3c3aa4619279b1b972976cdd7d4933`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60005ea8fc190aec4ebdcb14ff51e60c24531718c56530053e1321be67ccc37a`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65fd283c94a45e1182f549e836ba39d9866f15ac0448eafa14afe36972c3d809`  
		Last Modified: Fri, 10 May 2019 11:23:46 GMT  
		Size: 12.3 MB (12268140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fcd4f2e7fafd6b7b651a0ac3a214a51a79cbb4ec5ff7d0accb4c075b9c7ad2d`  
		Last Modified: Fri, 10 May 2019 11:23:41 GMT  
		Size: 7.1 KB (7105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db32a5815194ae8466b8c458cdc7e25e71ff26feab9e6c9ee997002b4151275c`  
		Last Modified: Fri, 10 May 2019 11:23:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3107fee9043b31a23297ce0182b850fe154a1b0861e8ea4d523217c46c779c26`  
		Last Modified: Fri, 10 May 2019 11:23:41 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50b6115048a6434c79e5fa6efd9502efd3179f6d7d11308e7b71f0b67124187`  
		Last Modified: Fri, 10 May 2019 11:23:41 GMT  
		Size: 2.4 KB (2370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310477c106ea76ad6e18f260885b2f4fcc6605db26581215d14e82dd098195c9`  
		Last Modified: Fri, 10 May 2019 11:23:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:5f7f57cd3f08c3454f6443adf7c1ccd4f186061dfcff19756d68df4390617f83
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15546555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a11fe14ef24d28ba49ba2b6d3bfee3ccd3f1af82eecebdfa7ae090578eac53f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:40:21 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 10:40:26 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 10:40:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 10:49:22 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 09:44:34 GMT
ENV PG_VERSION=9.6.13
# Fri, 10 May 2019 09:44:36 GMT
ENV PG_SHA256=ecbed20056296a65b6a4f5526c477e3ae5cc284cb01a15507785ddb23831e9a4
# Fri, 10 May 2019 09:47:32 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 09:47:43 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:47:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:47:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:48:05 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:48:10 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:48:12 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 09:48:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:48:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:48:36 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:48:43 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fadc09892703ded74da3266e56d7cf5631a32b6afc741c5d73cd181c7fcf26`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d903923d54c1aec0b4affbfa3483f2a737879e509527322b1f68fde697c40acf`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49308856db8266793369d11d0cae36f10b25c32db6d9b54a41a1f57721c96be8`  
		Last Modified: Fri, 10 May 2019 10:20:43 GMT  
		Size: 12.8 MB (12755245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd47b7b9865efe1feca2f8437a8b4e60cc44c838b06a906fabb1897577f33eb`  
		Last Modified: Fri, 10 May 2019 10:20:20 GMT  
		Size: 7.1 KB (7103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb41f0c6d92ed5b0a6cf4d292cb3567bd0f792db0915f4de54cd51847f7ee3e4`  
		Last Modified: Fri, 10 May 2019 10:20:20 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d78bf4605791a2e9b9ef1ebcf92810783ee985db3f38fdc17ede47359a0017`  
		Last Modified: Fri, 10 May 2019 10:20:20 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e7b103f4d46f4eee240a5a99f6c3af2c682fa23203688d6a35316005ebde97`  
		Last Modified: Fri, 10 May 2019 10:20:20 GMT  
		Size: 2.4 KB (2374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b66a6e334ef8984957d07da1bee8f2a0a323a20e775e335b3ab3a07a185adb`  
		Last Modified: Fri, 10 May 2019 10:20:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:dc7cb27105b31c7262acb10ecdefdf355315b0326e10d85ac86ce9362132d606
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `postgres:9-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:11dab535349d0a6aa2086bc096ce75c7c15cb1a5e1396fa3d49fda11f4a52105
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14443460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8229d6e55f068221e2481ab3b99813f549cd4a902a274b8310e41e8863369a`
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
# Tue, 09 Apr 2019 23:48:34 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 01:35:00 GMT
ENV PG_VERSION=9.6.13
# Fri, 10 May 2019 01:35:00 GMT
ENV PG_SHA256=ecbed20056296a65b6a4f5526c477e3ae5cc284cb01a15507785ddb23831e9a4
# Fri, 10 May 2019 01:37:32 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 01:37:33 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:37:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:37:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:37:34 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:37:35 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:37:35 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 01:37:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:37:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:37:36 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:37:36 GMT
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
	-	`sha256:56b5fd5427f9081265114b071513bcc4cc5baef60995fc6199a0e4c4d5b9ab1f`  
		Last Modified: Fri, 10 May 2019 01:45:53 GMT  
		Size: 11.7 MB (11676296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0543c64791decb1b7ddecbb6ed6b3412635d317ec8d58d92da2a554df4a23cd`  
		Last Modified: Fri, 10 May 2019 01:45:48 GMT  
		Size: 7.1 KB (7101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2759e8dc128457509b9c147f51ddc06919ee00a6714da1d3eeba48f536f72b63`  
		Last Modified: Fri, 10 May 2019 01:45:48 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba847defb80dc98af568fb70c8b496387703addfc15159a393bf39944b75250`  
		Last Modified: Fri, 10 May 2019 01:45:48 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe6eca77bf85f90cc183aae00933f8df1416408da1bd5ebabc5b577c6278e0c`  
		Last Modified: Fri, 10 May 2019 01:45:48 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7aff354b3becd0c2b2a182d9e89280849cbc26ed4cdd2de50203e52a0975db8`  
		Last Modified: Fri, 10 May 2019 01:45:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:bb6011218708fbfc7848467a07dc8fcc4a120550e5eb97a5d5ee2d95d850709e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13785797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd7c2c2d57d7e1bf7da6f56c98609da62529539856750d4775effb1b26ffbdb1`
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
# Wed, 10 Apr 2019 09:07:52 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 07:57:05 GMT
ENV PG_VERSION=9.6.13
# Fri, 10 May 2019 07:57:06 GMT
ENV PG_SHA256=ecbed20056296a65b6a4f5526c477e3ae5cc284cb01a15507785ddb23831e9a4
# Fri, 10 May 2019 07:58:43 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 07:58:45 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 07:58:46 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 07:58:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 07:58:48 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 07:58:48 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 07:58:49 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 07:58:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 07:58:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 07:58:51 GMT
EXPOSE 5432
# Fri, 10 May 2019 07:58:51 GMT
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
	-	`sha256:113b03c7862ffce5175d1ec31634e291bc57e661c7385cf966e43b8c9be0e05a`  
		Last Modified: Fri, 10 May 2019 08:03:40 GMT  
		Size: 11.2 MB (11232064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a077e4eb8d90359e957f7a80131ec5c80c81c8029fcf16399d0c5f7bad5b9086`  
		Last Modified: Fri, 10 May 2019 08:03:34 GMT  
		Size: 7.1 KB (7101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb17662623775edbdb82e94bb7a6e6bcfc348143a21e3a7acb42e89db11c53c0`  
		Last Modified: Fri, 10 May 2019 08:03:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ddf1a866ffeb4dfe8f0836c28c2ff016cab92771982476ed3cac291dcf403b4`  
		Last Modified: Fri, 10 May 2019 08:03:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53013f570a2d2973e86ed1f7886c8259033b174c3870b4a587a6d747629e1a98`  
		Last Modified: Fri, 10 May 2019 08:03:34 GMT  
		Size: 2.4 KB (2373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2c43c335f21192dba4b8a1444d9f2a1af9c122ac626ea8dd3b6e0c1850df5d`  
		Last Modified: Fri, 10 May 2019 08:03:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9-alpine` - linux; 386

```console
$ docker pull postgres@sha256:73af59f632e5ae839282cafb01d7f372428a02cf96e6b279fc2bdfb986820d54
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (15030462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736f9d10363327491fc88961f7692c4f2ea6962766c14ae78224242148719c8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:28:03 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 14:28:03 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 14:28:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 14:35:06 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 11:11:26 GMT
ENV PG_VERSION=9.6.13
# Fri, 10 May 2019 11:11:26 GMT
ENV PG_SHA256=ecbed20056296a65b6a4f5526c477e3ae5cc284cb01a15507785ddb23831e9a4
# Fri, 10 May 2019 11:14:20 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 11:14:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:14:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:14:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:14:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:14:23 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:14:23 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 11:14:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:14:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:14:24 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:14:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df8da713ae1263f84fd0cae748880b9bd3c3aa4619279b1b972976cdd7d4933`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60005ea8fc190aec4ebdcb14ff51e60c24531718c56530053e1321be67ccc37a`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65fd283c94a45e1182f549e836ba39d9866f15ac0448eafa14afe36972c3d809`  
		Last Modified: Fri, 10 May 2019 11:23:46 GMT  
		Size: 12.3 MB (12268140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fcd4f2e7fafd6b7b651a0ac3a214a51a79cbb4ec5ff7d0accb4c075b9c7ad2d`  
		Last Modified: Fri, 10 May 2019 11:23:41 GMT  
		Size: 7.1 KB (7105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db32a5815194ae8466b8c458cdc7e25e71ff26feab9e6c9ee997002b4151275c`  
		Last Modified: Fri, 10 May 2019 11:23:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3107fee9043b31a23297ce0182b850fe154a1b0861e8ea4d523217c46c779c26`  
		Last Modified: Fri, 10 May 2019 11:23:41 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50b6115048a6434c79e5fa6efd9502efd3179f6d7d11308e7b71f0b67124187`  
		Last Modified: Fri, 10 May 2019 11:23:41 GMT  
		Size: 2.4 KB (2370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310477c106ea76ad6e18f260885b2f4fcc6605db26581215d14e82dd098195c9`  
		Last Modified: Fri, 10 May 2019 11:23:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:5f7f57cd3f08c3454f6443adf7c1ccd4f186061dfcff19756d68df4390617f83
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15546555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a11fe14ef24d28ba49ba2b6d3bfee3ccd3f1af82eecebdfa7ae090578eac53f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:40:21 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 10:40:26 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 10:40:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 10:49:22 GMT
ENV PG_MAJOR=9.6
# Fri, 10 May 2019 09:44:34 GMT
ENV PG_VERSION=9.6.13
# Fri, 10 May 2019 09:44:36 GMT
ENV PG_SHA256=ecbed20056296a65b6a4f5526c477e3ae5cc284cb01a15507785ddb23831e9a4
# Fri, 10 May 2019 09:47:32 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 09:47:43 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:47:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:47:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:48:05 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:48:10 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:48:12 GMT
COPY file:7268f113a051af65206d1d53f47df8864cf0bd54b22d4b146818983322dd27b2 in /usr/local/bin/ 
# Fri, 10 May 2019 09:48:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:48:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:48:36 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:48:43 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fadc09892703ded74da3266e56d7cf5631a32b6afc741c5d73cd181c7fcf26`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d903923d54c1aec0b4affbfa3483f2a737879e509527322b1f68fde697c40acf`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49308856db8266793369d11d0cae36f10b25c32db6d9b54a41a1f57721c96be8`  
		Last Modified: Fri, 10 May 2019 10:20:43 GMT  
		Size: 12.8 MB (12755245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd47b7b9865efe1feca2f8437a8b4e60cc44c838b06a906fabb1897577f33eb`  
		Last Modified: Fri, 10 May 2019 10:20:20 GMT  
		Size: 7.1 KB (7103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb41f0c6d92ed5b0a6cf4d292cb3567bd0f792db0915f4de54cd51847f7ee3e4`  
		Last Modified: Fri, 10 May 2019 10:20:20 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d78bf4605791a2e9b9ef1ebcf92810783ee985db3f38fdc17ede47359a0017`  
		Last Modified: Fri, 10 May 2019 10:20:20 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e7b103f4d46f4eee240a5a99f6c3af2c682fa23203688d6a35316005ebde97`  
		Last Modified: Fri, 10 May 2019 10:20:20 GMT  
		Size: 2.4 KB (2374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b66a6e334ef8984957d07da1bee8f2a0a323a20e775e335b3ab3a07a185adb`  
		Last Modified: Fri, 10 May 2019 10:20:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:8132bf2cd553068adcb7775a85456aa7835463158f24224b5a5fd79e2536c89c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le

### `postgres:alpine` - linux; amd64

```console
$ docker pull postgres@sha256:13d0ad40bc15e61f01e3337e7a025e2e9084ba2c4d761f10128e925b30af9036
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27817722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb5d401e0b1f5ca5647e0ed6a15763c01dbb733b14097a5cbd98258b116751df`
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
# Fri, 10 May 2019 01:21:38 GMT
ENV PG_VERSION=11.3
# Fri, 10 May 2019 01:21:38 GMT
ENV PG_SHA256=2a85e082fc225944821dfd23990e32dfcd2284c19060864b0ad4ca537d30522d
# Fri, 10 May 2019 01:30:27 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 01:30:28 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:30:29 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:30:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:30:30 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:30:30 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:30:30 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 01:30:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:30:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:30:31 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:30:31 GMT
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
	-	`sha256:e4d8ff647bb9df49b527c63eafd83b60d3b24d1967070da1ebeeb812d88ec9b8`  
		Last Modified: Fri, 10 May 2019 01:44:49 GMT  
		Size: 25.1 MB (25050145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dce7216c02334b1e04dc1340f7c1776cd6061da58fbb36a237a1eec99f59c04`  
		Last Modified: Fri, 10 May 2019 01:44:43 GMT  
		Size: 7.5 KB (7514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285adb082cef36886eb4e5e808611f64c05831d7f893a380a2c124d94b06c2cd`  
		Last Modified: Fri, 10 May 2019 01:44:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6a2311d7dbd3e3f9fec7a214a2960b5e3168eab253d0c2c4c6349a66ce534e`  
		Last Modified: Fri, 10 May 2019 01:44:43 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344a76561445b1132deb51ec6eaa17885c710ff6e07ef2bbb671f818b5d1b9ff`  
		Last Modified: Fri, 10 May 2019 01:44:43 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f7dd572e9362f033e8bcf9eb0923f6f2ccecf0f2ca96695fd0e7abb253b715`  
		Last Modified: Fri, 10 May 2019 01:44:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:c9d0db378fb2b7a5a8cf4c00a96c2f1c055faccab2139a516bff9e496271df87
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26869682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4279d5a7aa907e478910e02e4fe99a94aecae6c86c8d2cb1844be6d140357361`
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
# Fri, 10 May 2019 07:52:35 GMT
ENV PG_VERSION=11.3
# Fri, 10 May 2019 07:52:35 GMT
ENV PG_SHA256=2a85e082fc225944821dfd23990e32dfcd2284c19060864b0ad4ca537d30522d
# Fri, 10 May 2019 07:54:50 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 07:54:52 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 07:54:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 07:54:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 07:54:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 07:54:55 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 07:54:55 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 07:54:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 07:54:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 07:54:57 GMT
EXPOSE 5432
# Fri, 10 May 2019 07:54:58 GMT
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
	-	`sha256:80094f284e20db2bba9db3c61541b80a27547f7894d06f073a3c293646eb2b21`  
		Last Modified: Fri, 10 May 2019 08:03:09 GMT  
		Size: 24.3 MB (24315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8ac7c3a4c1c74f4b9546ab4efa4956d2da16e1c09da82e75b923f075b35592`  
		Last Modified: Fri, 10 May 2019 08:03:00 GMT  
		Size: 7.5 KB (7514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9eb2c37c18dda5a5c5fffda8e93bb7a2b37532fd052482965145f94931a10a`  
		Last Modified: Fri, 10 May 2019 08:02:59 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc23116ff08cdec19edf61ae2c8054fb93fe4ee6e04b05cb1658afdc5802e82`  
		Last Modified: Fri, 10 May 2019 08:02:59 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8dfcb5ca64a381677091db8eb7179ce8eab369531a02dc335d164410e6fc9e`  
		Last Modified: Fri, 10 May 2019 08:02:59 GMT  
		Size: 2.4 KB (2370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6777efc82185ef79fe843d6a78e8ba773113e3b33222f915b6e95b1caaa881`  
		Last Modified: Fri, 10 May 2019 08:02:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; 386

```console
$ docker pull postgres@sha256:d085e5c6f0481c428116b391cc18ef102ffc393935b8808d45db362cfdc30421
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.7 MB (28664142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb44b5f2e5150947206273596fc41996675b53c1694583081151d798a98b2261`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:28:03 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 14:28:03 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 14:28:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 14:28:04 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 11:03:14 GMT
ENV PG_VERSION=11.3
# Fri, 10 May 2019 11:03:14 GMT
ENV PG_SHA256=2a85e082fc225944821dfd23990e32dfcd2284c19060864b0ad4ca537d30522d
# Fri, 10 May 2019 11:06:35 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 11:06:36 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:06:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:06:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:06:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:06:38 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:06:38 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 11:06:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:06:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:06:39 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:06:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df8da713ae1263f84fd0cae748880b9bd3c3aa4619279b1b972976cdd7d4933`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60005ea8fc190aec4ebdcb14ff51e60c24531718c56530053e1321be67ccc37a`  
		Last Modified: Wed, 10 Apr 2019 14:44:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb40771b304246f6e4b108c58ac5e184bc4aaf7d5bae347e550eb0c7a782852`  
		Last Modified: Fri, 10 May 2019 11:22:42 GMT  
		Size: 25.9 MB (25901411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdfb0cf7fa1d129d54f22a439ed64ff1ed8675b7573e1cadbb03ec002b7ae19`  
		Last Modified: Fri, 10 May 2019 11:22:32 GMT  
		Size: 7.5 KB (7517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65dba1d909297ea1da3f95ac3d45df0566a128d79d36cd9bd409b0a348fc8880`  
		Last Modified: Fri, 10 May 2019 11:22:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b496853f8598bb3ea34405ed8c3215ced6057b23a3ca183dc7596a2c8ac587ef`  
		Last Modified: Fri, 10 May 2019 11:22:32 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8317001c434890bd09d989f02b62480d439b4830965fe3be3c61f67cc5c9c27`  
		Last Modified: Fri, 10 May 2019 11:22:32 GMT  
		Size: 2.4 KB (2369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8045362602544e5ccd8729392701331a0d92953e303507068475817db3c47e7`  
		Last Modified: Fri, 10 May 2019 11:22:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:4394407feb73d2b7dea72b184bd260f03f201a123e0e3bebeec33ebfae034baf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29128932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e02013fc9643f619de60e7a77ca558b7ab4d1d433e46051efecbdb01cf887f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:40:21 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Apr 2019 10:40:26 GMT
ENV LANG=en_US.utf8
# Wed, 10 Apr 2019 10:40:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Apr 2019 10:40:34 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 09:23:10 GMT
ENV PG_VERSION=11.3
# Fri, 10 May 2019 09:23:16 GMT
ENV PG_SHA256=2a85e082fc225944821dfd23990e32dfcd2284c19060864b0ad4ca537d30522d
# Fri, 10 May 2019 09:27:39 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 May 2019 09:27:47 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:27:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:27:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:28:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:28:10 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:28:12 GMT
COPY file:06aacea0082744225fdd508b7ef4d5280ad1b35ec665f4399894e8fd2cfd37ad in /usr/local/bin/ 
# Fri, 10 May 2019 09:28:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:28:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:28:28 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:28:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fadc09892703ded74da3266e56d7cf5631a32b6afc741c5d73cd181c7fcf26`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d903923d54c1aec0b4affbfa3483f2a737879e509527322b1f68fde697c40acf`  
		Last Modified: Wed, 10 Apr 2019 11:02:36 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f7544c7b295507148a492cf3da081da4cd5dbc16e52872d6a67a72f7b835e2`  
		Last Modified: Fri, 10 May 2019 10:16:33 GMT  
		Size: 26.3 MB (26337207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ffbd3658d305dc5485a143d060245bb4fb1d5ffb95a2664a88458447e140c3`  
		Last Modified: Fri, 10 May 2019 10:16:05 GMT  
		Size: 7.5 KB (7517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdbee7340d39239b1c16f3ad86748f8a349c003467e06bd7ad53c07c84b93313`  
		Last Modified: Fri, 10 May 2019 10:16:04 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92750866a61ffcda6f4d601dc2c72f66aff369b4a04610e035b3b0933f4c301b`  
		Last Modified: Fri, 10 May 2019 10:16:05 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1e23fe874cd3f8c8c68945798e57a4f8acb93c76dd942abfe3abe07d94b3e6`  
		Last Modified: Fri, 10 May 2019 10:16:04 GMT  
		Size: 2.4 KB (2373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c34e012df252b58bcc1f493fb37d33b6cb8222d092d656f79537a9965c7f46`  
		Last Modified: Fri, 10 May 2019 10:16:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:30ec90a6a3f8fa736d6a00f590c0190a77c191ea914b2179d9d5bd04ad1125e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386
	-	linux; ppc64le

### `postgres:latest` - linux; amd64

```console
$ docker pull postgres@sha256:5fbf1b1f27f29dea756bd11d406c943e4a5ad5c9d3a6c0d6745c9105a887100e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116978302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587aa1d0e58645b9709bb72a9886faf7d6627a3e07af20aded79d27f1dc0e79c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:49:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 02:49:37 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 02:49:37 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 02:49:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 02:50:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 02:50:00 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 02:50:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:50:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 02:50:12 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 02:50:12 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 01:19:55 GMT
ENV PG_VERSION=11.3-1.pgdg90+1
# Fri, 10 May 2019 01:21:18 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 01:21:19 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 01:21:20 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 01:21:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 10 May 2019 01:21:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 01:21:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 01:21:21 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 01:21:21 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 10 May 2019 01:21:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 01:21:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 01:21:22 GMT
EXPOSE 5432
# Fri, 10 May 2019 01:21:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d307000f290b09bb80a73255a5f5283d8722a100fd6730a5bccb3d2107afbce`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 4.5 MB (4501147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29837b5e9b7858633f7eda8bf8ebfeb2645be36cb62444532708917ff5871714`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.8 KB (1778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3090df5740389c8cfd6ef31b4a402ff8b26aed9d6e014e929e78f962807240a0`  
		Last Modified: Wed, 08 May 2019 02:55:50 GMT  
		Size: 1.4 MB (1351331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0b4463fa0e3a96b78c37ac3989ae8908d8a1694ea8659a11f4fc90f7850159`  
		Last Modified: Wed, 08 May 2019 02:55:51 GMT  
		Size: 6.2 MB (6182629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb834895f5964d99726df2dbef0ecf74f0a57a510301a551afbe7d917107c79`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 295.5 KB (295498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59169bd605be847833d9103cf774c2fe0444fcdaf5fc6478aa17fd0535c38f4a`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a950d631bfe9946149640c92a3130d1129c2e1ee2cab48284b2e5bf02a64ac83`  
		Last Modified: Wed, 08 May 2019 02:55:49 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db7e3522bac125058a57cc53c0aed9a07d5be8a1c30056f9bf9321adf2a8277`  
		Last Modified: Fri, 10 May 2019 01:44:38 GMT  
		Size: 82.1 MB (82140653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bc301cd1669f01e6d1213fcf66d0cdeecf3ff302a221b78a5bf591e978426f`  
		Last Modified: Fri, 10 May 2019 01:44:20 GMT  
		Size: 8.2 KB (8211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8614737f74278d363e4b9aa04acfbaf8a981814bbeb1c1bf70e29d7662d325`  
		Last Modified: Fri, 10 May 2019 01:44:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad575a1ac336be9aa368bc83721b489bbd282cdbaec7fc1d189f383a09299239`  
		Last Modified: Fri, 10 May 2019 01:44:20 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6431194f8846aa22653d4cbb09cabd42981f9f521df2988803dacd33e7739a4`  
		Last Modified: Fri, 10 May 2019 01:44:20 GMT  
		Size: 2.4 KB (2380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4501fbec177e0960dd9f9bbeeafd723696236e3c467c88354c1e5c7763c0cd3`  
		Last Modified: Fri, 10 May 2019 01:44:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v5

```console
$ docker pull postgres@sha256:6d8cf635cc45891da5be4f71c3c25ec431c5ac9638a8a4da4392a2653c6e0918
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81177111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4296319e2c8009671cd26c5b43d502567922a895368de32ff06d0a224e2140f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 10:18:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 10:18:18 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 10:18:18 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 10:18:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 10:18:52 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 10:18:52 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 10:19:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:19:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 10:19:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 10:19:07 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 08:55:58 GMT
ENV PG_VERSION=11.3-1.pgdg90+1
# Fri, 10 May 2019 09:16:31 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 09:16:33 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:16:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:16:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 10 May 2019 09:16:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:16:37 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:16:37 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:16:37 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 10 May 2019 09:16:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:16:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:16:39 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:16:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6187b1cd4a95f897462bf15d322cb0217f0c2791306dfff3c1423177cbb7d9b8`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 4.2 MB (4236743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddde74d7be81b59c81d4499012020625d3725398d78cbf1204c2c4be2233912`  
		Last Modified: Wed, 08 May 2019 11:55:47 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083493bcd809f21abd38be158d1a882018cac97fdb1c1623b01ff0cbb51678ba`  
		Last Modified: Wed, 08 May 2019 11:55:48 GMT  
		Size: 1.3 MB (1311102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c86e195c35acfc6137a34ac656751ac9b1af86d8ac7d168865f0ad66ae94a96`  
		Last Modified: Wed, 08 May 2019 11:55:49 GMT  
		Size: 6.2 MB (6185276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e8457b4ad61904543662dbd3f7bbd85e1fbc740e7f3f7fe7fe110615bbecda`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 293.4 KB (293384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900f2045d1e883d0f818f35e24c911130e6e5a5008e3aca61624c3aca81a7369`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42085a2db16d24361b3410bd829b1e5f3007c7616d2925ed14887d88399bcea0`  
		Last Modified: Wed, 08 May 2019 11:55:46 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e64d80554f21b2ae8dac10c94f710c1ce0f4ca24208eb17d72667fd4bff89ee`  
		Last Modified: Fri, 10 May 2019 10:32:31 GMT  
		Size: 48.0 MB (47976955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8091bf6996279c47e8d39995d22f89066388e26e9b2d47a7923cb7540cca86b`  
		Last Modified: Fri, 10 May 2019 10:32:13 GMT  
		Size: 8.2 KB (8212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ede6d917bcd9865904c3692257f281e7da7ee834bf3f13674fab56e3ca8bd25`  
		Last Modified: Fri, 10 May 2019 10:32:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8c0449cc818910a1797eff46e49332870cdb9a010e35ac5e8c2e9d2a28f89a`  
		Last Modified: Fri, 10 May 2019 10:32:13 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81eacf4db6655c064deff0f5bb619ffd12f2be6ebfc2cad019a6097c29ecdfb4`  
		Last Modified: Fri, 10 May 2019 10:32:13 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924185eb6f5ba7d8d90f905499747bebd7511193b94cc99836488d556ffd922a`  
		Last Modified: Fri, 10 May 2019 10:32:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; 386

```console
$ docker pull postgres@sha256:874d9231ef408708f388454a3b5e2bbd5c9561dae4f04460d8a3c7a62a258bf5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121237862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aae025e847eb0d8d9318cfc707895052404df2d8d2c107398bcbdd8399fff15f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:43:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 18:43:29 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 18:43:29 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 18:43:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 18:43:49 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 18:43:49 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 18:43:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:43:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 18:43:58 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 18:43:58 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 11:02:11 GMT
ENV PG_VERSION=11.3-1.pgdg90+1
# Fri, 10 May 2019 11:03:00 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 11:03:01 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 11:03:02 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 11:03:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 10 May 2019 11:03:02 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 11:03:03 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 11:03:03 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 11:03:04 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 10 May 2019 11:03:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 11:03:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 11:03:05 GMT
EXPOSE 5432
# Fri, 10 May 2019 11:03:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81cd933aa2c67d2892f2712457502eb1f14e9cf143632e3757b514814e2d0cc`  
		Last Modified: Wed, 08 May 2019 18:48:22 GMT  
		Size: 4.8 MB (4807726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67eda6906616ad50be4bb49e0402248f269055c4ed9add6a4bf1ddebe9f4dd9`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afc4a215cbbb60825914510f45abec3fd6d492fe234a32d366bb4d13f9e4869`  
		Last Modified: Wed, 08 May 2019 18:48:21 GMT  
		Size: 1.3 MB (1317837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9955ce1ee330f61bfc01d81d2c1e2c3fb9b393588dc8069db8d6fa97177e52d7`  
		Last Modified: Wed, 08 May 2019 18:48:25 GMT  
		Size: 6.2 MB (6182590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920eeda872ac67d0fb5b1c35d25de9078176c64d8a791511d54f7f900f0989a0`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 296.6 KB (296556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa8e3df0dcb82be7e7e46edeb230cc94cc5c3bfc028ce06b9de49a581163676`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef37a66833579f324fda5db062d1a3a9739e036f3bd4c2c73cc75956b2908e3`  
		Last Modified: Wed, 08 May 2019 18:48:20 GMT  
		Size: 4.8 KB (4793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e830508f968b3eac9a5b9d56c22c38d392647ed620f395fe06a2538134f1360`  
		Last Modified: Fri, 10 May 2019 11:22:23 GMT  
		Size: 85.5 MB (85494623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06932bb01719a542921c7d9ffd5799a2047984bc374af8b2f6fdb22a3af7a570`  
		Last Modified: Fri, 10 May 2019 11:22:02 GMT  
		Size: 8.2 KB (8209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dced3d489ad327e0163d42593d2275846143cb59f28f3a79fd39d65f68ee1b`  
		Last Modified: Fri, 10 May 2019 11:22:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79608b85bfa0f6d3fc37d04e4747dc554dfadc17c79b68f9188f8bc30b737e7`  
		Last Modified: Fri, 10 May 2019 11:22:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e2a091a255f7603ca6121df84d97694385a341d39a8e5dc5f9bccb3ccbf53c`  
		Last Modified: Fri, 10 May 2019 11:22:02 GMT  
		Size: 2.4 KB (2380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735b797cb1912b9911b74970ad0d458d16c6aaedefb3b4c55b89b70d9541d722`  
		Last Modified: Fri, 10 May 2019 11:22:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; ppc64le

```console
$ docker pull postgres@sha256:ae5fcff5cab56b5a125e2cf078feee677d781c8e80d900b3fb2c9e419b9a2130
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (84027540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa48bea2ff8b3d64996bc033520fc4f0fc917adf7ad2d2522ca946328f01b60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:12:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 14:12:57 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 08 May 2019 14:13:03 GMT
ENV GOSU_VERSION=1.11
# Wed, 08 May 2019 14:14:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 14:15:00 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 08 May 2019 14:15:04 GMT
ENV LANG=en_US.utf8
# Wed, 08 May 2019 14:15:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:15:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 14:15:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 08 May 2019 14:15:51 GMT
ENV PG_MAJOR=11
# Fri, 10 May 2019 09:17:56 GMT
ENV PG_VERSION=11.3-1.pgdg90+1
# Fri, 10 May 2019 09:21:27 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 10 May 2019 09:21:43 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 May 2019 09:21:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 May 2019 09:22:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 10 May 2019 09:22:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 May 2019 09:22:16 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 10 May 2019 09:22:22 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 May 2019 09:22:24 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 10 May 2019 09:22:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 May 2019 09:22:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 May 2019 09:22:47 GMT
EXPOSE 5432
# Fri, 10 May 2019 09:22:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31400e35e62100e129401e0db5744f08520633fcd8149b26792c502d6965a61a`  
		Last Modified: Wed, 08 May 2019 15:02:16 GMT  
		Size: 4.4 MB (4365081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14e987e87b91351d930ff69141b31e6f6cc42800361352f755c4d544be69833`  
		Last Modified: Wed, 08 May 2019 15:02:10 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3828e738a494793ba3c87812cd102699d9aa31b6399251598924f5e6a61a41`  
		Last Modified: Wed, 08 May 2019 15:02:11 GMT  
		Size: 1.3 MB (1275138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7689166881ea41e235b80b7cc77476488e89fde7331df69bc36b0e9800984f4`  
		Last Modified: Wed, 08 May 2019 15:02:18 GMT  
		Size: 6.2 MB (6185656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37c7521930e2ff2f9ac90f7f5a145d600542e7199588caacabe24b807a40dff`  
		Last Modified: Wed, 08 May 2019 15:02:08 GMT  
		Size: 293.6 KB (293607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82eed40867cae9111c7c7eff5a0ea33186f39ce68ca04b47112537c45dbabde6`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a30cf417536dec1e834bf421984eaee716ac1ec169275b7243755022b5474ce`  
		Last Modified: Wed, 08 May 2019 15:02:04 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bbf353e2d2ce101f9d1f519a096860ff328a5fc712b0179a4c9d1ed1b817ab`  
		Last Modified: Fri, 10 May 2019 10:15:48 GMT  
		Size: 49.1 MB (49145336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4b8bc3ad4c792d13855ca18a5c832c9f64e6139b8623f20d48d695a0d0d49a`  
		Last Modified: Fri, 10 May 2019 10:14:52 GMT  
		Size: 8.2 KB (8212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95466a80a3ce2ea0a3aaac6288e7154d6c526bf345925ccc707674d4093e4a8b`  
		Last Modified: Fri, 10 May 2019 10:14:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea52f4248116efedbed56234e4f2ce32f1186c4e0467331c617fdb11bcb8347`  
		Last Modified: Fri, 10 May 2019 10:14:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7f522ce443363bf8cf162979af6381bea82cd563fc00aab5b504041e91adbb`  
		Last Modified: Fri, 10 May 2019 10:14:52 GMT  
		Size: 2.4 KB (2379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f555dc1046a85f51b21c4561f5a6f2ab695bc05065bb567aa317248b4c9bbd`  
		Last Modified: Fri, 10 May 2019 10:14:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
