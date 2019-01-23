## `postgres:latest`

```console
$ docker pull postgres@sha256:ece8cad2408866a0987dcee6f358a54889b9eaa38c9aec4737426aaacee40b12
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
$ docker pull postgres@sha256:a4391a987011efabf4d44a2bfbbe2f7800578f14bb25f992e6bd07c99ba63115
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81118321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f8190b8666124909a7c5ae286760f47389436c37a104007ebd814c0c6fa061`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:11:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 11:11:33 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 23 Jan 2019 11:11:34 GMT
ENV GOSU_VERSION=1.11
# Wed, 23 Jan 2019 11:11:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 23 Jan 2019 11:12:08 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 23 Jan 2019 11:12:09 GMT
ENV LANG=en_US.utf8
# Wed, 23 Jan 2019 11:12:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:12:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 11:12:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 11:12:23 GMT
ENV PG_MAJOR=11
# Wed, 23 Jan 2019 11:12:23 GMT
ENV PG_VERSION=11.1-1.pgdg90+1
# Wed, 23 Jan 2019 11:33:20 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Wed, 23 Jan 2019 11:33:22 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Wed, 23 Jan 2019 11:33:24 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 23 Jan 2019 11:33:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 23 Jan 2019 11:33:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 23 Jan 2019 11:33:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 23 Jan 2019 11:33:27 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 23 Jan 2019 11:33:27 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Wed, 23 Jan 2019 11:33:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 11:33:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 11:33:29 GMT
EXPOSE 5432
# Wed, 23 Jan 2019 11:33:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e86978740f23d08a724b806466a11ea0c0c56ab9d99144a4b1ff8096609347`  
		Last Modified: Wed, 23 Jan 2019 12:52:31 GMT  
		Size: 4.2 MB (4236528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c53e758aa641d818885790e33993b2e3cf68f6cd4c95372479a456396655730`  
		Last Modified: Wed, 23 Jan 2019 12:52:29 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6bb81b1adc4b6c226a64def2160ec039c26483a904d449653d8a19176af9e8`  
		Last Modified: Wed, 23 Jan 2019 12:52:29 GMT  
		Size: 1.3 MB (1311106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdce6a0082466012d4c86baf29a3e4db1fe06e2f14b9142212d48ad43af1bf1`  
		Last Modified: Wed, 23 Jan 2019 12:52:30 GMT  
		Size: 6.2 MB (6185206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48a0d54a979cc92cca74dda46a2c07f775972647385090d74616236429a74fed`  
		Last Modified: Wed, 23 Jan 2019 12:52:28 GMT  
		Size: 293.4 KB (293389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f37fbac0dac64f71c384fda2cef63e7ebbffdfe7e889be8c55f86dab10d2f52`  
		Last Modified: Wed, 23 Jan 2019 12:52:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94293e9e905836eed81d601038a6739ee54fa28a19d936ca6d32958228e715a`  
		Last Modified: Wed, 23 Jan 2019 12:52:28 GMT  
		Size: 4.8 KB (4787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0645a2439b124d9a128804211195a18745dd8bb8cbc2e118b2ad82142a52f041`  
		Last Modified: Wed, 23 Jan 2019 12:52:45 GMT  
		Size: 47.9 MB (47892494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55b2b3c2fdd8c05cce11a256ba67c85b0c8f4612495056f41b432234613925d`  
		Last Modified: Wed, 23 Jan 2019 12:52:26 GMT  
		Size: 8.2 KB (8208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85125412f14206161184b3faea7895fc61cc13a9dfbd14a6132d887ccd2fafb5`  
		Last Modified: Wed, 23 Jan 2019 12:52:26 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4338a15fa9b41002ab373c10a07e1bce9ffdf2867612608a0d6fb2f9e65549a`  
		Last Modified: Wed, 23 Jan 2019 12:52:26 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82214c15cc8e2ff41a9f2c9d6c922072f5b20cca1de550c3713612181902df97`  
		Last Modified: Wed, 23 Jan 2019 12:52:26 GMT  
		Size: 2.4 KB (2379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075706612204c06996e6cd826109998dc964176aa91ea6aea753bcdb63768826`  
		Last Modified: Wed, 23 Jan 2019 12:52:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v7

```console
$ docker pull postgres@sha256:c0481af2b94985c32f6e3b99ae159444b67bf9cc97454dc82c1e266aa3985453
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77102278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:109ac024ac5959ddb17869d1aa328d816cd5ac7412645c415f49e70b8b8191ff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:55 GMT
ADD file:c712096b02de85275a955c0292b6e143730d8506009ecc32436b1bd44789dcd1 in / 
# Wed, 23 Jan 2019 13:04:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:40:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 15:40:32 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 23 Jan 2019 15:40:32 GMT
ENV GOSU_VERSION=1.11
# Wed, 23 Jan 2019 15:41:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 23 Jan 2019 15:41:15 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 23 Jan 2019 15:41:16 GMT
ENV LANG=en_US.utf8
# Wed, 23 Jan 2019 15:41:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:41:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 15:41:29 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 15:41:29 GMT
ENV PG_MAJOR=11
# Wed, 23 Jan 2019 15:41:30 GMT
ENV PG_VERSION=11.1-1.pgdg90+1
# Wed, 23 Jan 2019 16:00:36 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Wed, 23 Jan 2019 16:00:38 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Wed, 23 Jan 2019 16:00:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 23 Jan 2019 16:00:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 23 Jan 2019 16:00:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 23 Jan 2019 16:00:41 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 23 Jan 2019 16:00:42 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 23 Jan 2019 16:00:42 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Wed, 23 Jan 2019 16:00:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 16:00:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 16:00:45 GMT
EXPOSE 5432
# Wed, 23 Jan 2019 16:00:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:433444f4a04d4a68d83dfe1e90ccfe3d02ce163939e9b79dd87136d956b49408`  
		Last Modified: Wed, 23 Jan 2019 13:12:25 GMT  
		Size: 19.3 MB (19290286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bed91d37b5631314177835b23f99daad0318fc6c8daab46592450b18c5cc285`  
		Last Modified: Wed, 23 Jan 2019 17:16:06 GMT  
		Size: 3.9 MB (3872631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c01378bc3aa69141b0b5d2b9e5c22634a9187257dcd9d96b7410c9b07117bc5`  
		Last Modified: Wed, 23 Jan 2019 17:16:04 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b962e7aaa183c3aae1d5d361ac67617cea5026e17c231e8815f7b1a404c945db`  
		Last Modified: Wed, 23 Jan 2019 17:16:04 GMT  
		Size: 1.3 MB (1303461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c815f8226996742ffe17f239eaefabce534e829c5acec6871e6ba585be06d7`  
		Last Modified: Wed, 23 Jan 2019 17:16:05 GMT  
		Size: 6.2 MB (6185234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642801164e1f74e47d0ffeaccc6b9006c91632ee16a762641a747e346b89171c`  
		Last Modified: Wed, 23 Jan 2019 17:16:03 GMT  
		Size: 291.7 KB (291740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60cbcaca903e5dd0fd09488242d5c45a1f795f338e158a500203706a57e46040`  
		Last Modified: Wed, 23 Jan 2019 17:16:03 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4335d6e2f4e76c398597f862607d06b81710d2bee07cb87bbb637910870c7ee`  
		Last Modified: Wed, 23 Jan 2019 17:16:02 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f715ce73ee6754047e0d1cb84bec1825d74379664873837b075bf54097416e8`  
		Last Modified: Wed, 23 Jan 2019 17:16:20 GMT  
		Size: 46.1 MB (46141151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb16438a6aef8c588390b1d2bc0dbf7f5c5bbf6e0ae20f90f156c076b5f5587`  
		Last Modified: Wed, 23 Jan 2019 17:16:01 GMT  
		Size: 8.2 KB (8205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99acf4b1054a152f6ab9801b994b918340297d114e47eb151c332edcbc1d311f`  
		Last Modified: Wed, 23 Jan 2019 17:16:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d61b88ba403f0128a7a8d0622a1b3cc9ee5848eacae217e3af66512b626f7a5`  
		Last Modified: Wed, 23 Jan 2019 17:16:01 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c299c58b41c9142b8249c2db9ad33aa54df58d9f6c5839edfd159700903a47c9`  
		Last Modified: Wed, 23 Jan 2019 17:16:01 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0587a160e1ba780f60e71289f5e7e6b32f26f7766fc9aaa61c293902ed10ba58`  
		Last Modified: Wed, 23 Jan 2019 17:16:01 GMT  
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
$ docker pull postgres@sha256:e4b93292800778089015604a92f27e4bdfe082d5251fa4e9f1c0aa53aeb48891
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83921544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3892bf48b7c48dca2039c58f562f3ee29b1a29dc88bc0f35b36851060533227`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 23 Jan 2019 09:27:25 GMT
ADD file:0319b2e5714eb9ca36cdff43e04c2bfeef2d75df874454b811aea2ca19689f38 in / 
# Wed, 23 Jan 2019 09:27:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:03:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 14:03:44 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 23 Jan 2019 14:03:49 GMT
ENV GOSU_VERSION=1.11
# Wed, 23 Jan 2019 14:04:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 23 Jan 2019 14:04:58 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 23 Jan 2019 14:05:03 GMT
ENV LANG=en_US.utf8
# Wed, 23 Jan 2019 14:05:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:05:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 14:05:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 14:05:41 GMT
ENV PG_MAJOR=11
# Wed, 23 Jan 2019 14:05:44 GMT
ENV PG_VERSION=11.1-1.pgdg90+1
# Wed, 23 Jan 2019 14:09:25 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Wed, 23 Jan 2019 14:09:34 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Wed, 23 Jan 2019 14:09:41 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 23 Jan 2019 14:09:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 23 Jan 2019 14:09:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 23 Jan 2019 14:09:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 23 Jan 2019 14:09:57 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 23 Jan 2019 14:09:58 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:10:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 14:10:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:10:10 GMT
EXPOSE 5432
# Wed, 23 Jan 2019 14:10:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6c5a75a07494bd17f6469a546426663557e2f61d5e776afb51fd406a92082ef1`  
		Last Modified: Wed, 23 Jan 2019 09:33:42 GMT  
		Size: 22.8 MB (22755331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aecce855ce899a7628c6031575de64ffdae5216d1beaf3720f66cd227e74b4`  
		Last Modified: Wed, 23 Jan 2019 14:32:32 GMT  
		Size: 4.4 MB (4364862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a85f84469fefe22ae4334789358b13da31068de6c62c210c2cb4422e58a6cca`  
		Last Modified: Wed, 23 Jan 2019 14:32:29 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe1803f44610a06dceb9a0b372b8a8bcb278966fd4b89038c9e7f50f6011013`  
		Last Modified: Wed, 23 Jan 2019 14:32:29 GMT  
		Size: 1.3 MB (1275035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd92e076d612d82fab512d86d36d4cfb45bb63503c05bbdde768a538f8268215`  
		Last Modified: Wed, 23 Jan 2019 14:32:31 GMT  
		Size: 6.2 MB (6185598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec369c5245ae8919340b8d407fdf76e359f94678fd8ae086dad4b7a6c2b86e38`  
		Last Modified: Wed, 23 Jan 2019 14:32:26 GMT  
		Size: 293.6 KB (293561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491596ef1dedfeea905cabb5900f65ad6dae4b6dcbb61e50f3f07a58243aa433`  
		Last Modified: Wed, 23 Jan 2019 14:32:25 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3600017a16c23722179420b613e0b37d4dc72df797600dbefbd070c5f647944e`  
		Last Modified: Wed, 23 Jan 2019 14:32:24 GMT  
		Size: 4.8 KB (4788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156bceb2842c61a891806b63f8eb866260e04b1b54c573e47c3d03d908256b57`  
		Last Modified: Wed, 23 Jan 2019 14:32:47 GMT  
		Size: 49.0 MB (49029365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a61ed2e670ac487d37388f8221df5720b7c2eace191a28e2f3d88a440f99673`  
		Last Modified: Wed, 23 Jan 2019 14:32:22 GMT  
		Size: 8.2 KB (8204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadc4b600af0536d7ad6b38eab89a93f86c60752c9addb67faa223b59da40567`  
		Last Modified: Wed, 23 Jan 2019 14:32:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4648a7c37f4497ec8ee1e4beb58baf94abf69361090b340728d2f9204948c9e`  
		Last Modified: Wed, 23 Jan 2019 14:32:22 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52e88118234b8f96dbad35802e4f62407053d103afd7583b3d50df3a0de6530`  
		Last Modified: Wed, 23 Jan 2019 14:32:22 GMT  
		Size: 2.4 KB (2379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9175313c9139b69206ee9d74e06cc872fe62126ad233ff2a546b042ea2385416`  
		Last Modified: Wed, 23 Jan 2019 14:32:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; s390x

```console
$ docker pull postgres@sha256:1bbbaf20d3978e008e783539d58655823eefe0d383b5b7640fe03c52891a6a48
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (84039375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62441548ff62de3a536abcda648f7683c1acd6d1f1015dfb1db62dc58f0916b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 23 Jan 2019 12:44:35 GMT
ADD file:9ec2f952473b440ce27a29c354764178258274d4f97e1b3490238eb594dddf16 in / 
# Wed, 23 Jan 2019 12:44:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 14:27:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 14:27:25 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 23 Jan 2019 14:27:25 GMT
ENV GOSU_VERSION=1.11
# Wed, 23 Jan 2019 14:27:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 23 Jan 2019 14:27:57 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 23 Jan 2019 14:27:57 GMT
ENV LANG=en_US.utf8
# Wed, 23 Jan 2019 14:28:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:28:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 14:28:13 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 14:28:14 GMT
ENV PG_MAJOR=11
# Wed, 23 Jan 2019 14:28:14 GMT
ENV PG_VERSION=11.1-1.pgdg90+1
# Wed, 23 Jan 2019 14:40:57 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Wed, 23 Jan 2019 14:40:58 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Wed, 23 Jan 2019 14:40:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 23 Jan 2019 14:40:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 23 Jan 2019 14:41:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 23 Jan 2019 14:41:00 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 23 Jan 2019 14:41:00 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 23 Jan 2019 14:41:01 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Wed, 23 Jan 2019 14:41:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 Jan 2019 14:41:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 14:41:02 GMT
EXPOSE 5432
# Wed, 23 Jan 2019 14:41:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:99e7bb47d7df9eb7625dccfcacd2c4e8a458ac70850b46efa85d64fac11c6bd2`  
		Last Modified: Wed, 23 Jan 2019 12:48:55 GMT  
		Size: 22.4 MB (22353499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201ba4d2e1c0d1d5c33b951fc2fba361af7b93436e5e1fb251978bbcb405384f`  
		Last Modified: Wed, 23 Jan 2019 15:19:52 GMT  
		Size: 4.5 MB (4533408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e927228db1645ddfd08727ad65e1dfd4a4739df12506130e86ea03419bf286f`  
		Last Modified: Wed, 23 Jan 2019 15:19:49 GMT  
		Size: 1.8 KB (1782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a43b7c622f8bec6a274529e99c9d02436a9a8fbfe60bfcfa2e81fe32bb9317`  
		Last Modified: Wed, 23 Jan 2019 15:19:48 GMT  
		Size: 1.3 MB (1340798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53033005c9f536f94759a8f66fba66b897b55cc7ea96eef3be005ede63edce2a`  
		Last Modified: Wed, 23 Jan 2019 15:19:48 GMT  
		Size: 6.2 MB (6207407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5d17aa8bb023fd1d0af5e25a31cc7fcd9d0c4d16ac1f2ff4e1350e22c372d8`  
		Last Modified: Wed, 23 Jan 2019 15:19:46 GMT  
		Size: 294.5 KB (294454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58176824b70a7ef10d8bac8f2232a0fb9f2fa3c7aa2c2d685a8e2fcbf5ee2d7a`  
		Last Modified: Wed, 23 Jan 2019 15:19:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25508c7e2c9c26a061048f70b93a2ada05857d63c9293476522ba51a450f4eb0`  
		Last Modified: Wed, 23 Jan 2019 15:19:46 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddebcc95f8a5ffcad7b8f9306df25959236cc8974ee0511e171590ff289e3a25`  
		Last Modified: Wed, 23 Jan 2019 15:19:59 GMT  
		Size: 49.3 MB (49292118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704dc172a5cdbee6e22f5c4cc9b550003a39f31aca2a21e76f6b716a761e22ec`  
		Last Modified: Wed, 23 Jan 2019 15:19:45 GMT  
		Size: 8.2 KB (8202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8038640a07517415b6c22e5ac793a5ec4a51d31c083400b8629b49d22c30157e`  
		Last Modified: Wed, 23 Jan 2019 15:19:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ba3777a1cc5645a2dcff7e41fd3ee3c20b6052846f9da6a66a9b7e880826b58`  
		Last Modified: Wed, 23 Jan 2019 15:19:45 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae904c6c73a8c6f3fc2d58fd7b34c58e23adb6895b277c3f4fd0980d53e6ff3`  
		Last Modified: Wed, 23 Jan 2019 15:19:45 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732252c170ee8fed3e28b37f128cc9ab61ac170d940157495aba32b9644f5762`  
		Last Modified: Wed, 23 Jan 2019 15:19:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
