## `postgres:latest`

```console
$ docker pull postgres@sha256:89cdd5e4ba6070af5d41cfe5cfe931faea92a456122ae5d9ef149c00b84e04c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:latest` - linux; amd64

```console
$ docker pull postgres@sha256:7f2dfdb40fde8216e380aad5549c29c2beb9db07b9e9c7958c973436ed2ead1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116859014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87817605d897dfafe4d17267de0eae0ae0913cddca29deae87a8221d242ad9c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 04:15:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 04:15:31 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 23 Jan 2019 04:15:31 GMT
ENV GOSU_VERSION=1.11
# Wed, 23 Jan 2019 04:15:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 23 Jan 2019 04:15:49 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 23 Jan 2019 04:15:49 GMT
ENV LANG=en_US.utf8
# Wed, 23 Jan 2019 04:15:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:15:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 04:15:57 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 04:15:57 GMT
ENV PG_MAJOR=11
# Wed, 23 Jan 2019 04:15:57 GMT
ENV PG_VERSION=11.1-1.pgdg90+1
# Wed, 23 Jan 2019 04:17:11 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Wed, 23 Jan 2019 04:17:12 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Wed, 23 Jan 2019 04:17:12 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 23 Jan 2019 04:17:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 23 Jan 2019 04:17:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 23 Jan 2019 04:17:14 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 23 Jan 2019 04:17:14 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 23 Jan 2019 04:17:14 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Wed, 23 Jan 2019 04:17:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 04:17:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 04:17:15 GMT
EXPOSE 5432
# Wed, 23 Jan 2019 04:17:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2aec55a5ab466714a534188d570b50208ddf68bf26c26ec6e3770e87f8dcbd`  
		Last Modified: Wed, 23 Jan 2019 04:20:50 GMT  
		Size: 4.5 MB (4500923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966624e73f542a200898ba59d86e8703e764710485c9ebb46a0f5a160abe49cb`  
		Last Modified: Wed, 23 Jan 2019 04:20:48 GMT  
		Size: 1.8 KB (1776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c5197efa68313edbded9cbc9ff8e4ddd09182f9fcaeb43a6057406fa4d5b90a`  
		Last Modified: Wed, 23 Jan 2019 04:20:48 GMT  
		Size: 1.4 MB (1351274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4834c5b0ba0ffce1982449e35f1d7dc839c1fd5bf63fd4eb1ca7ab9ee0257f`  
		Last Modified: Wed, 23 Jan 2019 04:20:49 GMT  
		Size: 6.2 MB (6182715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e88c2d07b145ca7bd05b782e4c40623d703b681f4f88d22ce3e12d906e0f18`  
		Last Modified: Wed, 23 Jan 2019 04:20:48 GMT  
		Size: 295.5 KB (295469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7e663589c9a190d6fc0262068014ef36a57c3f4a45cc90ac674f8b4debaff0`  
		Last Modified: Wed, 23 Jan 2019 04:20:47 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16acf43c5b2bdca91d3c230dd3a41a04b178295d3f3ff3643cf22829da557c31`  
		Last Modified: Wed, 23 Jan 2019 04:20:47 GMT  
		Size: 4.8 KB (4788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695b8f1e3098a347ab7cfd5c445be504dd3bd131a0ccfb9c2adda1320a8d7f95`  
		Last Modified: Wed, 23 Jan 2019 04:21:08 GMT  
		Size: 82.0 MB (82010236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492a31d6d17534683d43192bbf0229f0ecbd0e994cbd7c8d222ec92b6a075e72`  
		Last Modified: Wed, 23 Jan 2019 04:20:46 GMT  
		Size: 8.2 KB (8208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd2fc0a9622546cea66ff599241ddd80a131c01714ff2e94b20744ae9be1e94`  
		Last Modified: Wed, 23 Jan 2019 04:20:46 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3f668cc870c6aa6888977c0cfefa57f0eecb0e15d1349db9829737bcb12db4`  
		Last Modified: Wed, 23 Jan 2019 04:20:46 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9eb7278029b88241727b9c5d0748a5fb07689bf075e202770405f4d50461dfa`  
		Last Modified: Wed, 23 Jan 2019 04:20:46 GMT  
		Size: 2.4 KB (2380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9722b292b51397c3e91faedc4cb500d249f162c4d257b981fcd71403c9164b6e`  
		Last Modified: Wed, 23 Jan 2019 04:20:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v5

```console
$ docker pull postgres@sha256:7e92dbef9c9135e6cd946eae0e995ffcc50f8bcbc1fa11fc0cec8ef6049270c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81104181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0fd314edddb0c2ca66834a8cc9b5543effb31de0e929310c537d5bde9981192`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:49:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:49:42 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Thu, 03 Jan 2019 09:57:21 GMT
ENV GOSU_VERSION=1.11
# Thu, 03 Jan 2019 09:57:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 03 Jan 2019 09:57:54 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 03 Jan 2019 09:57:54 GMT
ENV LANG=en_US.utf8
# Thu, 03 Jan 2019 09:58:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Thu, 03 Jan 2019 09:58:05 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 03 Jan 2019 09:58:08 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 03 Jan 2019 09:58:09 GMT
ENV PG_MAJOR=11
# Thu, 03 Jan 2019 09:58:09 GMT
ENV PG_VERSION=11.1-1.pgdg90+1
# Thu, 03 Jan 2019 10:18:50 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Thu, 03 Jan 2019 10:18:52 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Thu, 03 Jan 2019 10:18:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 03 Jan 2019 10:18:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Thu, 03 Jan 2019 10:18:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 03 Jan 2019 10:18:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 03 Jan 2019 10:18:55 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 11 Jan 2019 10:40:17 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:40:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 11 Jan 2019 10:40:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 10:40:20 GMT
EXPOSE 5432
# Fri, 11 Jan 2019 10:40:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a1905e9e635b31b9a75aefb1918a2159f8a6540faeebacf0b4ebe9013ab676f`  
		Last Modified: Sat, 29 Dec 2018 12:30:02 GMT  
		Size: 4.2 MB (4236497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0cf0666798f1fe4b97cb43066722285e4c0ee7339079521120f8d53a38035e`  
		Last Modified: Sat, 29 Dec 2018 12:30:00 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:298f0c5a96998216707927d971ed1fe6264ea1e9d010a8f905979ebdcf10ad85`  
		Last Modified: Thu, 03 Jan 2019 11:37:36 GMT  
		Size: 1.3 MB (1311013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b738454faf918f597ff126c1f713b861827d78a0b8a36693db944cea8e8270d`  
		Last Modified: Thu, 03 Jan 2019 11:37:37 GMT  
		Size: 6.2 MB (6185120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5719565e20bb318bc80fa97674b3a613f659bee5aaf029c8206493eeba8f52c`  
		Last Modified: Thu, 03 Jan 2019 11:37:34 GMT  
		Size: 293.3 KB (293344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eecae39e782f691296536e23ceff86265bd7c84dd9fea1eadd840e635ab259e`  
		Last Modified: Thu, 03 Jan 2019 11:37:34 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d3c196d696a64c88e79ae9bcb30d30e8a634ec88ed982e408911f99a79b21c`  
		Last Modified: Thu, 03 Jan 2019 11:37:34 GMT  
		Size: 4.8 KB (4793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6317fe7cdc0e002157e177cbee4b6bce15cab1ad38fa6a972f380f703b7ab47`  
		Last Modified: Thu, 03 Jan 2019 11:37:52 GMT  
		Size: 47.9 MB (47892657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d09ea30f86a8be1e2d44f84ac40b088c766ae44d873c70c7b36cfe7ccbd050a`  
		Last Modified: Thu, 03 Jan 2019 11:37:33 GMT  
		Size: 8.2 KB (8202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d5a1a730239d44e92fbc835a565627ee110cd2774a995ef015752ce7d88646`  
		Last Modified: Thu, 03 Jan 2019 11:37:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46f1f14f0f7f7a93fc9d19cdfd766e594404cf8a8f713e3d65f76832ad8351b`  
		Last Modified: Thu, 03 Jan 2019 11:37:33 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ab59c131cbe6808639f88975763c4925757c61ed30e46e8dfb97b17cbcd242`  
		Last Modified: Fri, 11 Jan 2019 10:41:01 GMT  
		Size: 2.4 KB (2376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59fef34474e0c79c53f7d7283fdb0b690061089e256016c8a387eaa62d0a73c0`  
		Last Modified: Fri, 11 Jan 2019 10:41:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v7

```console
$ docker pull postgres@sha256:2bb8ecbf0dd99945ccea312f89caed61f83e8ed59109fcc881d6b50168d1db29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77089427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c89c993e078d1d6bfd50ccd0c681c0dedbb3258bacf794f4920e09581d7dde72`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:30:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 14:30:44 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 01 Jan 2019 13:30:18 GMT
ENV GOSU_VERSION=1.11
# Tue, 01 Jan 2019 13:30:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 01 Jan 2019 13:30:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 01 Jan 2019 13:30:48 GMT
ENV LANG=en_US.utf8
# Tue, 01 Jan 2019 13:30:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 01 Jan 2019 13:30:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 01 Jan 2019 13:31:01 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 01 Jan 2019 13:31:01 GMT
ENV PG_MAJOR=11
# Tue, 01 Jan 2019 13:31:02 GMT
ENV PG_VERSION=11.1-1.pgdg90+1
# Tue, 01 Jan 2019 13:49:16 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Tue, 01 Jan 2019 13:49:18 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Tue, 01 Jan 2019 13:49:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 01 Jan 2019 13:49:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Tue, 01 Jan 2019 13:49:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 01 Jan 2019 13:49:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 01 Jan 2019 13:49:22 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 11 Jan 2019 12:59:17 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 11 Jan 2019 12:59:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 11 Jan 2019 12:59:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 12:59:20 GMT
EXPOSE 5432
# Fri, 11 Jan 2019 12:59:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d8b9a290728539c0f31bc35aad996d79b1cbbd1cb700a70c89c4c2e3b3ec63`  
		Last Modified: Sat, 29 Dec 2018 16:06:15 GMT  
		Size: 3.9 MB (3872564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8106546b6ae9f63551fb354e9d78c46e1e714a25a63ff1d14351192c53a669ed`  
		Last Modified: Sat, 29 Dec 2018 16:06:14 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec413ef6f3e775e24cf6958efabd8b878d9f5ae095146e5942de7f69b62c5f8`  
		Last Modified: Tue, 01 Jan 2019 14:59:11 GMT  
		Size: 1.3 MB (1303393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7279a07a3bcd6f97da5d4b0c7889a9582fd9d2fa8f8d0be94d0e2cb4e77502`  
		Last Modified: Tue, 01 Jan 2019 14:59:12 GMT  
		Size: 6.2 MB (6185177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1473bd2625fdb9f31ccbb347d8930d71171c489f430e803a7ed0c3144fecd62`  
		Last Modified: Tue, 01 Jan 2019 14:59:10 GMT  
		Size: 291.7 KB (291747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ae39b67bde18d8ea06589921563398f7d761fdfa16497c37d078ba338a2ffe6`  
		Last Modified: Tue, 01 Jan 2019 14:59:10 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e84a73abfc23524f49df11c3b8dc9e9715da5de4acd2d15f7817e574d00ae3`  
		Last Modified: Tue, 01 Jan 2019 14:59:10 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e1b6aa3ed88d69c97a98e17f549535ed872c407c3c34ac1326f7dd88f25ddd`  
		Last Modified: Tue, 01 Jan 2019 14:59:26 GMT  
		Size: 46.1 MB (46141016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68326baf2782ea09ed482431a87fb2fbbac1539ed769421685ca4cfdd276bbbe`  
		Last Modified: Tue, 01 Jan 2019 14:59:09 GMT  
		Size: 8.2 KB (8205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e5033f61c1c43c5b881135a318dab9bfb215f870b50c76e74f31312f33a4d6`  
		Last Modified: Tue, 01 Jan 2019 14:59:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72a4b7e71c8108bc04af0bf33f1d27880fa8e1dd1fd7bc103e4fb32304619c0`  
		Last Modified: Tue, 01 Jan 2019 14:59:09 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a2ad8fd25248dee2ea1fa9fe94b7c3e71ac1c023b0503228cf6012d13e764e`  
		Last Modified: Fri, 11 Jan 2019 13:00:05 GMT  
		Size: 2.4 KB (2377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8874923a07b521790ed74813bb57a47e2a060cb4223b68dd0de4afd55f884287`  
		Last Modified: Fri, 11 Jan 2019 13:00:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:f06aa4f9c38f1ab0b9a2c3bbceb4465ee941e24dda5b4b9b931ce3822bf64294
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79113130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae47bcd9c58ffd2ee7d515970a5888c5329a88b4732b94fea6691dfbe46e079c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 17:03:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 17:04:00 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 01 Jan 2019 11:25:26 GMT
ENV GOSU_VERSION=1.11
# Tue, 01 Jan 2019 11:26:57 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 01 Jan 2019 11:27:24 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 01 Jan 2019 11:27:28 GMT
ENV LANG=en_US.utf8
# Tue, 01 Jan 2019 11:27:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 01 Jan 2019 11:27:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 01 Jan 2019 11:28:07 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 01 Jan 2019 11:28:10 GMT
ENV PG_MAJOR=11
# Tue, 01 Jan 2019 11:28:14 GMT
ENV PG_VERSION=11.1-1.pgdg90+1
# Tue, 01 Jan 2019 12:03:52 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Tue, 01 Jan 2019 12:03:59 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Tue, 01 Jan 2019 12:04:02 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 01 Jan 2019 12:04:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Tue, 01 Jan 2019 12:04:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 01 Jan 2019 12:04:05 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 01 Jan 2019 12:04:06 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 11 Jan 2019 10:16:50 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:16:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 11 Jan 2019 10:16:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 10:16:57 GMT
EXPOSE 5432
# Fri, 11 Jan 2019 10:16:58 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b23c2b3b7d99d4baa055608eae23c189c8e67276141c1af87d437ef396ba492e`  
		Last Modified: Sat, 29 Dec 2018 20:15:27 GMT  
		Size: 4.1 MB (4075697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809df5fb3d3bef44a4be0be04b02b25ce8068b5971cbf9440c7ff01cafbf432c`  
		Last Modified: Sat, 29 Dec 2018 20:15:20 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da87d67f7228cd848cbcdcf786fb556437ef3eda2da770d1e74641276cec1b35`  
		Last Modified: Tue, 01 Jan 2019 14:20:24 GMT  
		Size: 1.3 MB (1286511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdfe2c1e23ff122d03b9a0440a052d41e7e345beda9390e7336f4be9323fb0c`  
		Last Modified: Tue, 01 Jan 2019 14:20:33 GMT  
		Size: 6.2 MB (6182780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe4bdbdadbdfa0ef549b64526ad19c595313e5b6e0d7e1e97ce37bf6ecdd6be`  
		Last Modified: Tue, 01 Jan 2019 14:20:18 GMT  
		Size: 292.2 KB (292199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459bd0f9e1bb3b277462a5fe607f576c1b31e38572bb1fb485f0d5bd73431bc2`  
		Last Modified: Tue, 01 Jan 2019 14:20:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3e50e636eb123c1d629c13897624ebb5859eaf52316acd1af410320d11d224`  
		Last Modified: Tue, 01 Jan 2019 14:20:16 GMT  
		Size: 4.8 KB (4795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:721e2953f3284bda54e0c290b5b272ccf75408c0d7ced3b7c8a95465d5e08915`  
		Last Modified: Tue, 01 Jan 2019 14:21:31 GMT  
		Size: 46.9 MB (46920730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c29e31106be49d0e34c73d705a0a49321ef33639e71c9019d60b3d3a1e34aff`  
		Last Modified: Tue, 01 Jan 2019 14:20:14 GMT  
		Size: 8.2 KB (8207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a05f6e70b713d1ca1e1629ccdec94481b64608cf64dc2c558df0cba0a167923`  
		Last Modified: Tue, 01 Jan 2019 14:20:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42350bb16cc38bd29082b17ac568a42a191de50e27f2edfe0a32946b6b18e087`  
		Last Modified: Tue, 01 Jan 2019 14:20:14 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c28fdc3a48c613e776f28ab555c1138cd3d5ef77a30ec81553282712ef6111c5`  
		Last Modified: Fri, 11 Jan 2019 10:19:51 GMT  
		Size: 2.4 KB (2375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a3f10bd7347655815a0bbf0f6b3ea9d65b2271cda9447c86ed87717e47cdaa`  
		Last Modified: Fri, 11 Jan 2019 10:19:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; 386

```console
$ docker pull postgres@sha256:f630400e82bb011a51274f457056bcd46e0ab5e7ca0ffe816434ce757c4de2c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.1 MB (121122153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36cfd17a52b4bae8ba53c6a79fd3b1f6cbc2b5df6be60d935ea47512c8f7aaf8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 21:29:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 21:29:27 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 01 Jan 2019 13:11:43 GMT
ENV GOSU_VERSION=1.11
# Tue, 01 Jan 2019 13:11:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 01 Jan 2019 13:12:02 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 01 Jan 2019 13:12:02 GMT
ENV LANG=en_US.utf8
# Tue, 01 Jan 2019 13:12:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 01 Jan 2019 13:12:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 01 Jan 2019 13:12:10 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 01 Jan 2019 13:12:11 GMT
ENV PG_MAJOR=11
# Tue, 01 Jan 2019 13:12:11 GMT
ENV PG_VERSION=11.1-1.pgdg90+1
# Tue, 01 Jan 2019 13:12:56 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Tue, 01 Jan 2019 13:12:57 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Tue, 01 Jan 2019 13:12:58 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 01 Jan 2019 13:12:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Tue, 01 Jan 2019 13:12:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 01 Jan 2019 13:12:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 01 Jan 2019 13:12:59 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 11 Jan 2019 14:57:25 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 11 Jan 2019 14:57:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 11 Jan 2019 14:57:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 14:57:26 GMT
EXPOSE 5432
# Fri, 11 Jan 2019 14:57:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c42763dd9d280bda26990166858023a4d7a777568cd37434ab31ff7e07c84b4`  
		Last Modified: Sat, 29 Dec 2018 21:34:26 GMT  
		Size: 4.8 MB (4807581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526eab1b2ed1ea16ceaa8250170bc59f8f7f1ee496f213f67db5144e5ccf2f91`  
		Last Modified: Sat, 29 Dec 2018 21:34:24 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5898bd35d637b971e4b77352fcb90c5b9593ed0aa595e9f61ff2eb0accc03d0d`  
		Last Modified: Tue, 01 Jan 2019 13:16:32 GMT  
		Size: 1.3 MB (1317817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930fe7db8fddcdeda0175fad02a9af637a8cf52c4124aa213ff2650c96ef7833`  
		Last Modified: Tue, 01 Jan 2019 13:16:33 GMT  
		Size: 6.2 MB (6182356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36554bd1dd6d3c96ff8ea1a479b3eadc86aebf3832537530f86c13929d9a7640`  
		Last Modified: Tue, 01 Jan 2019 13:16:31 GMT  
		Size: 296.6 KB (296589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe8549b1d4efd61a4ee1aea9807619749a0e49ac1c1ef2ad59b0a99e37ab549`  
		Last Modified: Tue, 01 Jan 2019 13:16:31 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81715ec88681bbfbc96e76a8b064e84201bab183bb427ee4fee1fde0ebba1384`  
		Last Modified: Tue, 01 Jan 2019 13:16:31 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a8606101faaccc8c5ebc708e9645abfc9cdf9d281fdab7e363f1373dcc46b6`  
		Last Modified: Tue, 01 Jan 2019 13:16:50 GMT  
		Size: 85.4 MB (85366981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8d5e96e4a5248ce3bbbeae0dcfafb22d907d38ef01b511f7ac19c689b77c22`  
		Last Modified: Tue, 01 Jan 2019 13:16:30 GMT  
		Size: 8.2 KB (8203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7ea5b929cdd0bf0898bfb44f2e2f3aa16d7d557a9fa6190e44a1c59616a43f`  
		Last Modified: Tue, 01 Jan 2019 13:16:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251468c04b2cdbcad2d25d86da9fcb07a909e9d7599243d6bf22fddae18a78e1`  
		Last Modified: Tue, 01 Jan 2019 13:16:30 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f0db2660c4d2d335e2098151a16e2610acb89d953323ef7b61407b0362f992`  
		Last Modified: Fri, 11 Jan 2019 14:58:18 GMT  
		Size: 2.4 KB (2374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee13e8364249a900711a21e9ee160c36c71d6ee587c4160a28d9b26dc4405d22`  
		Last Modified: Fri, 11 Jan 2019 14:58:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; ppc64le

```console
$ docker pull postgres@sha256:f5027bd6b056fc0788440fbd23d762282a0e542baaa9f528062e57d53e5626bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83911855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac4c3c12e34ac6c4473be8c68e3f5727374467932843d05e30b001e610574afe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:24:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 14:24:45 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Thu, 03 Jan 2019 09:35:58 GMT
ENV GOSU_VERSION=1.11
# Thu, 03 Jan 2019 09:36:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 03 Jan 2019 09:37:02 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 03 Jan 2019 09:37:05 GMT
ENV LANG=en_US.utf8
# Thu, 03 Jan 2019 09:37:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Thu, 03 Jan 2019 09:37:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 03 Jan 2019 09:37:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 03 Jan 2019 09:37:34 GMT
ENV PG_MAJOR=11
# Thu, 03 Jan 2019 09:37:37 GMT
ENV PG_VERSION=11.1-1.pgdg90+1
# Thu, 03 Jan 2019 09:40:06 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Thu, 03 Jan 2019 09:40:12 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Thu, 03 Jan 2019 09:40:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 03 Jan 2019 09:40:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Thu, 03 Jan 2019 09:40:19 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 03 Jan 2019 09:40:22 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 03 Jan 2019 09:40:24 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 11 Jan 2019 10:01:26 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 11 Jan 2019 10:01:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 11 Jan 2019 10:01:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 10:01:40 GMT
EXPOSE 5432
# Fri, 11 Jan 2019 10:01:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90445d8d62abffd7793a0954388b9d621b7e6bd8479178adeadb3001ea16d50`  
		Last Modified: Sat, 29 Dec 2018 14:42:21 GMT  
		Size: 4.4 MB (4364562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa68cdad450f7eff3d7286f9ed06b4e5cf423ab347e0d5b485318c524e135a`  
		Last Modified: Sat, 29 Dec 2018 14:42:18 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93279a6a584fa1ab2a4ba223500c4a19677f2a015aafc57126866c39917e7941`  
		Last Modified: Thu, 03 Jan 2019 09:53:58 GMT  
		Size: 1.3 MB (1274816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5931403a1d0f997d687c9c5e5e0bbab75ff040e87a69ab747000283ec45c3544`  
		Last Modified: Thu, 03 Jan 2019 09:53:53 GMT  
		Size: 6.2 MB (6185280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ddab5e9ca584ee90886c58d5b4856ec659e5153c4495d07fd074b630ed85ae`  
		Last Modified: Thu, 03 Jan 2019 09:53:53 GMT  
		Size: 293.4 KB (293357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745003268a0a979e7787aca30a7458ab5fb6cb8e68b2aed1ca5fb22a56345a18`  
		Last Modified: Thu, 03 Jan 2019 09:53:54 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6352d59bcc09eed68bfdb69aa138e00ff43a67b52710ec0e310ff952d563b05d`  
		Last Modified: Thu, 03 Jan 2019 09:53:53 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b5ece03f0b2f50bc7dd72da2259b3dba04567d77d0d3b8f7e4c79790c44b39`  
		Last Modified: Thu, 03 Jan 2019 09:54:02 GMT  
		Size: 49.0 MB (49029232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2792b15435c03150bafcdecca3a03902af3e6b8f18f5348defd140e5f938df`  
		Last Modified: Thu, 03 Jan 2019 09:53:47 GMT  
		Size: 8.2 KB (8204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fed0dfea8b4748c9a737d1bc11ce84d12b32f204bd7a0eb74d7512a52019dad`  
		Last Modified: Thu, 03 Jan 2019 09:53:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95369ea6bc4bdf3c575c11a5ab005c22e95f62c93655be39f051104e1b75661d`  
		Last Modified: Thu, 03 Jan 2019 09:53:47 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd564326da12f6012871b1c5e7f8f162e76e9e5fb9bfd7648145d657cfb621d`  
		Last Modified: Fri, 11 Jan 2019 10:05:09 GMT  
		Size: 2.4 KB (2377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1711836a952a130033849e574b11835691f35a6a5de98e657a01eb16b16bda47`  
		Last Modified: Fri, 11 Jan 2019 10:05:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; s390x

```console
$ docker pull postgres@sha256:d5f4732dd6663e9a52bb1bc78578698c307ee3ceb7e72bf3bdccf6a9c25d2261
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (84026530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dc81f94a726eac6dbd673c47b23bb5eec50679720f589754e49bf335bfc9295`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:52 GMT
ADD file:35c030887198a067338539b6bd96e04ff649537c38542febcb7e0ccd2a3d90c8 in / 
# Sat, 29 Dec 2018 12:43:52 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:35:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 14:35:13 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 01 Jan 2019 13:06:37 GMT
ENV GOSU_VERSION=1.11
# Tue, 01 Jan 2019 13:06:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 01 Jan 2019 13:06:53 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 01 Jan 2019 13:06:53 GMT
ENV LANG=en_US.utf8
# Tue, 01 Jan 2019 13:06:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 01 Jan 2019 13:06:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 01 Jan 2019 13:07:01 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 01 Jan 2019 13:07:01 GMT
ENV PG_MAJOR=11
# Tue, 01 Jan 2019 13:07:01 GMT
ENV PG_VERSION=11.1-1.pgdg90+1
# Tue, 01 Jan 2019 13:15:53 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Tue, 01 Jan 2019 13:15:54 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Tue, 01 Jan 2019 13:15:54 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 01 Jan 2019 13:15:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Tue, 01 Jan 2019 13:15:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 01 Jan 2019 13:15:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 01 Jan 2019 13:15:55 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 11 Jan 2019 13:17:30 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 11 Jan 2019 13:17:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 11 Jan 2019 13:17:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 13:17:31 GMT
EXPOSE 5432
# Fri, 11 Jan 2019 13:17:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0e647eff4fda368965291c62c8bc90ae9cbcc84a50a5caed821af7f05ec653d4`  
		Last Modified: Sat, 29 Dec 2018 12:46:52 GMT  
		Size: 22.3 MB (22341416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68134d383695165673b5672d73ad8e526b98ad43738488a8b5bddd18f64a4b9f`  
		Last Modified: Sat, 29 Dec 2018 15:19:37 GMT  
		Size: 4.5 MB (4533283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a2954bc6b4877276ef25d3b7588cdba1e651610ef3d572cb6072501a0ae7c4`  
		Last Modified: Sat, 29 Dec 2018 15:19:35 GMT  
		Size: 1.8 KB (1784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7799d59961db963c0404caab19eb59876f8f571cf11166cfdb0b2471c62512`  
		Last Modified: Tue, 01 Jan 2019 13:49:10 GMT  
		Size: 1.3 MB (1340717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9b712bb410bfd853b3b21856e0487c4a75604f2adb98b4d6bd9c53a9ea6d1d`  
		Last Modified: Tue, 01 Jan 2019 13:49:25 GMT  
		Size: 6.2 MB (6207288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a8d1fcdfce62cd978aa2a7f8bb24ca9cf8f1c7c58f4b21232f87b258d2604c`  
		Last Modified: Tue, 01 Jan 2019 13:49:09 GMT  
		Size: 294.4 KB (294402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79c25dbefb0d08704a9a5fac04d11a4f5049959792d0e693e98835feb9d1abb`  
		Last Modified: Tue, 01 Jan 2019 13:49:08 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fae99bee8a62a61022aa0750a1256b50f3baddc540ae6d15ce48b9b9dee3ad`  
		Last Modified: Tue, 01 Jan 2019 13:49:08 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d8446d6ef0cd91e2bec528a1166865a27d8027a3c260a644166e4570ac8b26`  
		Last Modified: Tue, 01 Jan 2019 13:49:18 GMT  
		Size: 49.3 MB (49291731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3000bab3cdbcf5f93baba7adba8de4365bbf7061de7d7051a09a95798bdb862`  
		Last Modified: Tue, 01 Jan 2019 13:49:07 GMT  
		Size: 8.2 KB (8208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a110fbbd11836c3406f990ba6b7887af768d5c79f1f39cb61dd6e1642f9b364`  
		Last Modified: Tue, 01 Jan 2019 13:49:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd549f458a4ff8cae0f1093ca11bca07ecb284b456fa5ac5a2593ee521d721fb`  
		Last Modified: Tue, 01 Jan 2019 13:49:08 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec089e364996b43512967ae81c5430a055aadf79b0ee9201032b35de9ad67def`  
		Last Modified: Fri, 11 Jan 2019 13:18:41 GMT  
		Size: 2.4 KB (2373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41c90bdfee469decb4d153c0c0d0e2dcaaaa8b67136e4d2cdc05a5d4a99471c`  
		Last Modified: Fri, 11 Jan 2019 13:18:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
