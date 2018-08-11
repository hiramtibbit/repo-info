## `postgres:11-beta3`

```console
$ docker pull postgres@sha256:8f609a07ecc3590da278fc805577fdd9d5f70f7a82292ddacc7847f3c0182449
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

### `postgres:11-beta3` - linux; amd64

```console
$ docker pull postgres@sha256:4290311509270582ec9e6fc942d422433cba13b67bd499fe2141f76e06a09548
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115721587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab6bba5a84b35fbe321bc94dea91ab4c5b91973406c187aa44952d264bb3ea9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:17:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 05:17:34 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jul 2018 05:17:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 01:17:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:17:33 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 27 Jul 2018 01:17:33 GMT
ENV LANG=en_US.utf8
# Fri, 27 Jul 2018 01:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:17:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:17:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 01:17:44 GMT
ENV PG_MAJOR=11
# Fri, 10 Aug 2018 22:04:00 GMT
ENV PG_VERSION=11~beta3-1.pgdg90+1
# Fri, 10 Aug 2018 22:04:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 10 Aug 2018 22:05:03 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:05:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:05:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 10 Aug 2018 22:05:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:05:05 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:05:05 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:05:06 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:05:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:05:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:05:25 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:05:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc05f43b4de1da0d2e0f9df9dc3f2b27175cbcc81a2a9cae56835fb52f272f0`  
		Last Modified: Tue, 17 Jul 2018 05:24:23 GMT  
		Size: 4.5 MB (4498535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c4cc9b5f06c00c4bd3a6dafc13535b66d9fc815a0b9ce3ed617afc1c816aa1`  
		Last Modified: Tue, 17 Jul 2018 05:24:18 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45b5ac60cd57336c01a5d3d48950fc2abcb9b3fb0dd626dbd690cc8ad065396`  
		Last Modified: Fri, 27 Jul 2018 01:27:04 GMT  
		Size: 951.9 KB (951901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f823cf5f8b435630b7ea540899a9840d8625d7f989ed9261f0a3ee9ce41c57`  
		Last Modified: Fri, 27 Jul 2018 01:27:05 GMT  
		Size: 6.2 MB (6182657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0626c6149c90dfe629bb8391412a8430a37e8f5696ec44c3356c8b7bc6c1c88e`  
		Last Modified: Fri, 27 Jul 2018 01:27:01 GMT  
		Size: 295.5 KB (295462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25dcd1f62cadaad7cc93ada2dce3757ce4c7c48fdadbb05e9a168745b0e3a49`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c9ac2352c50d545f97fc52f0bc831a3040fae7ae0014f17d92b395498d7ce8`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 4.5 KB (4481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d0216774dab0b7fe72a57e6740eef65829b8b7eaf4496c6517a2e5c0746ab6f`  
		Last Modified: Fri, 10 Aug 2018 22:32:12 GMT  
		Size: 81.3 MB (81290604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05bb70114d4568a09c1da057d9ee8cb75d4a8ed399e56ee814dc146971e9e3c7`  
		Last Modified: Fri, 10 Aug 2018 22:31:42 GMT  
		Size: 7.5 KB (7528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee28f254f5af792a10c1abd896cd658c654e94a5243696caadf9754dfeca3d34`  
		Last Modified: Fri, 10 Aug 2018 22:31:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65edc1e2c80e447bd604cfaba4a113557b1152991cb3da49bc169f2ca9759d8c`  
		Last Modified: Fri, 10 Aug 2018 22:31:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385cf507020dc18d731f1d83fe30952ffbb3a66b779bf91fca04e7ab062f6ed7`  
		Last Modified: Fri, 10 Aug 2018 22:31:42 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc92e500bd0d541f2fb281e26d457e7998923514ade71136583fdd86a9791e2`  
		Last Modified: Fri, 10 Aug 2018 22:31:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta3` - linux; arm variant v5

```console
$ docker pull postgres@sha256:8f34eb42045fded577ebaf4598cf9193c54fa8351802e8683604241109e81c14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.2 MB (86199010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed8fdd65465b8c1ffbb50b430e581d1ee9dde6a9cf3e3826ffb47d5cb5926a69`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:37:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 09:37:41 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jul 2018 09:37:41 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 09:19:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 09:19:19 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 27 Jul 2018 09:19:19 GMT
ENV LANG=en_US.utf8
# Fri, 27 Jul 2018 09:19:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 09:19:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 09:19:32 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 09:19:32 GMT
ENV PG_MAJOR=11
# Sat, 11 Aug 2018 08:54:55 GMT
ENV PG_VERSION=11~beta3-1.pgdg90+1
# Sat, 11 Aug 2018 09:15:00 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 11 Aug 2018 09:15:02 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 11 Aug 2018 09:15:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 11 Aug 2018 09:15:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Sat, 11 Aug 2018 09:15:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 11 Aug 2018 09:15:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 11 Aug 2018 09:15:04 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 11 Aug 2018 09:15:05 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Sat, 11 Aug 2018 09:15:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 11 Aug 2018 09:15:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 Aug 2018 09:15:06 GMT
EXPOSE 5432/tcp
# Sat, 11 Aug 2018 09:15:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:235e2c34c6b727f2b00aae7eed907f84338b4002c487e0caaa123a50334c0810`  
		Last Modified: Tue, 17 Jul 2018 09:09:00 GMT  
		Size: 21.2 MB (21162647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ba4b4585ccf12d4afb7312ad2fb83756b93420050f12b1f58d46c3a73f8e66`  
		Last Modified: Tue, 17 Jul 2018 11:28:46 GMT  
		Size: 4.2 MB (4231627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2833fe10e2d4a848966303ed494571d5d1b09566df61c989c05cbbe022d3bc3`  
		Last Modified: Tue, 17 Jul 2018 11:28:43 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41613b9ebcd05aeae6ee4c9eaedf99d42f1b1985f611097255c9b3738d26d94`  
		Last Modified: Fri, 27 Jul 2018 11:10:01 GMT  
		Size: 942.4 KB (942406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3978aa82144e5cc44ad0fa0406c8d2e3c07bf558e57d84b51cb6d89110fdf6`  
		Last Modified: Fri, 27 Jul 2018 11:10:02 GMT  
		Size: 6.2 MB (6185110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e054417971f185d52c0703cfaa744385042a290b47efc46636b7e26b30510b`  
		Last Modified: Fri, 27 Jul 2018 11:10:00 GMT  
		Size: 293.3 KB (293298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20392f9096efde389ebf3afba768d9ad4057b52c0d11e3a5c87ad8423825c87`  
		Last Modified: Fri, 27 Jul 2018 11:09:59 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed74ea0931f3cb9c71abc3434761be92a517b8d1995509cc9895922b18d21609`  
		Last Modified: Fri, 27 Jul 2018 11:10:00 GMT  
		Size: 4.5 KB (4481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4219f834aa298377646d0ff1fe9defb5dd71ed185a5603f07405c9cb76d0c3`  
		Last Modified: Sat, 11 Aug 2018 10:44:29 GMT  
		Size: 53.4 MB (53367342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06171a4698f04f2ed377980e537c466f0d64d6d03c1f0a1a9fcf4a40c38fa897`  
		Last Modified: Sat, 11 Aug 2018 10:44:10 GMT  
		Size: 7.5 KB (7523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d6cfb3355d62cbc24c783a4851de6a4c626781e43470fa95ff6fe87d080213`  
		Last Modified: Sat, 11 Aug 2018 10:44:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da9c43a403e4d28f8ac9b4f3020e14ca1033677d3fe2623c453259f2af008bf`  
		Last Modified: Sat, 11 Aug 2018 10:44:10 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33774d12961b200fea494b9f09110ab36df588a1db4c51e7ef9af7b2992af14f`  
		Last Modified: Sat, 11 Aug 2018 10:44:10 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a4bb4685bbf053104109e51ee5f865efebadb4ca35609aa468fd8f7d603744`  
		Last Modified: Sat, 11 Aug 2018 10:44:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta3` - linux; arm variant v7

```console
$ docker pull postgres@sha256:24facf88e2f4e08b126de35537723810a1a6d4741468f3c0e552b6c69df1c94d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.2 MB (82171194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd99c0ef88a8bf8abf1b505df0c820eec1d6bd08754f725aca3d274dac65be6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:23:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:23:17 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jul 2018 12:23:18 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 12:01:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 12:01:16 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 27 Jul 2018 12:01:17 GMT
ENV LANG=en_US.utf8
# Fri, 27 Jul 2018 12:01:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:01:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 12:01:27 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 12:01:28 GMT
ENV PG_MAJOR=11
# Sat, 11 Aug 2018 12:04:52 GMT
ENV PG_VERSION=11~beta3-1.pgdg90+1
# Sat, 11 Aug 2018 12:22:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 11 Aug 2018 12:22:03 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 11 Aug 2018 12:22:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 11 Aug 2018 12:22:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Sat, 11 Aug 2018 12:22:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 11 Aug 2018 12:22:05 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 11 Aug 2018 12:22:05 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 11 Aug 2018 12:22:06 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Sat, 11 Aug 2018 12:22:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 11 Aug 2018 12:22:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 Aug 2018 12:22:07 GMT
EXPOSE 5432/tcp
# Sat, 11 Aug 2018 12:22:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ae7d393d5bec906a28839dfa578da3dcce4cfaa15669fc05fad356688bd11a`  
		Last Modified: Tue, 17 Jul 2018 14:04:59 GMT  
		Size: 3.9 MB (3868675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890631ab7e144ac08dfc56d651476fd0ee43cd8d0be5e526f14c0c43421012a8`  
		Last Modified: Tue, 17 Jul 2018 14:04:58 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bae47a8dc98949389a22f4cb40bd2ee33f3742e0c6e38374cc4222a64cd14ef9`  
		Last Modified: Fri, 27 Jul 2018 13:39:36 GMT  
		Size: 926.0 KB (926042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a91a86b2c904a6f86abad5b0133495e8c52673a3a19163a7edf601850e0940`  
		Last Modified: Fri, 27 Jul 2018 13:39:37 GMT  
		Size: 6.2 MB (6185092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f2922b60b058d1b0e1be2a148d2030f39d75dd4f9cb69a05e7572320c5296c`  
		Last Modified: Fri, 27 Jul 2018 13:39:34 GMT  
		Size: 291.7 KB (291684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d014cd2ea3a398cb41e1324665289f1b0929f5e9e8fb72956540b383c58b236`  
		Last Modified: Fri, 27 Jul 2018 13:39:34 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82344b017a9e032d093cff89e13720ef4e9c2f61a25071bb33ac39b53964c627`  
		Last Modified: Fri, 27 Jul 2018 13:39:34 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb7c130753e54bbc2bf3b45404753f97f29aea9b13acaa4d6e006a414a338ed`  
		Last Modified: Sat, 11 Aug 2018 13:41:14 GMT  
		Size: 51.6 MB (51612940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20378bafed6597aa96c8229211da37daf0e373d41ac009c0c91fd0f120f63c3`  
		Last Modified: Sat, 11 Aug 2018 13:40:56 GMT  
		Size: 7.5 KB (7522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d873c7ec04af0b3d058754636e72280195f7b6a4e276a080ea5c3e4a50b5b0`  
		Last Modified: Sat, 11 Aug 2018 13:40:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796c84d5f07a11b4ebb6eee3f21f7485f2f4f7771eda6bd94feb1b34c86eae1c`  
		Last Modified: Sat, 11 Aug 2018 13:40:56 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ef025c5245e8bfe69cd8bc462319f710b7d85ab7e7175c36378a1510ee527e`  
		Last Modified: Sat, 11 Aug 2018 13:40:56 GMT  
		Size: 2.2 KB (2238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea532740ffae47804aeb19f6eaacb7a58ddae688dfe991dc2fc06881ab362f25`  
		Last Modified: Sat, 11 Aug 2018 13:40:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta3` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:422c5c3e2fd7f9603dff167674dccba5a9c2d3e6b671782c990f44eab8896df3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.2 MB (84217489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62d59325f6ccd269a97458d507ce7c9b49f38763656d1ab509c2b7a1b8add8fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 10:27:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 10:27:41 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jul 2018 10:27:42 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 09:35:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 09:35:33 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 27 Jul 2018 09:35:34 GMT
ENV LANG=en_US.utf8
# Fri, 27 Jul 2018 09:35:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 09:35:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 09:36:00 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 09:36:01 GMT
ENV PG_MAJOR=11
# Sat, 11 Aug 2018 09:39:07 GMT
ENV PG_VERSION=11~beta3-1.pgdg90+1
# Sat, 11 Aug 2018 10:09:43 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 11 Aug 2018 10:09:48 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 11 Aug 2018 10:10:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 11 Aug 2018 10:10:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Sat, 11 Aug 2018 10:10:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 11 Aug 2018 10:10:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 11 Aug 2018 10:10:15 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 11 Aug 2018 10:10:16 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Sat, 11 Aug 2018 10:10:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 11 Aug 2018 10:10:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 Aug 2018 10:10:21 GMT
EXPOSE 5432/tcp
# Sat, 11 Aug 2018 10:10:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a082493027d6558d01f34eb0e155ac4082bc0ad8361d3a764bded858e18e148b`  
		Last Modified: Tue, 17 Jul 2018 13:52:37 GMT  
		Size: 4.1 MB (4073265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73249adce992f8d1baa2797d1e16d3e521469dfa4e65412090b05948518ad10`  
		Last Modified: Tue, 17 Jul 2018 13:52:35 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6bce91245174d89a126c2152b9817ef15a12870224fabaf1e6e7783c444cc0`  
		Last Modified: Fri, 27 Jul 2018 13:18:38 GMT  
		Size: 919.3 KB (919269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89de2b1286c6358a5ce4e31536339483ba124802d22f2b3a1409b29f6ff4ee02`  
		Last Modified: Fri, 27 Jul 2018 13:18:39 GMT  
		Size: 6.2 MB (6182559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c1cda7fb4fdd34f040569cb149ea421cfaa8dea580a71c953225247fda916b`  
		Last Modified: Fri, 27 Jul 2018 13:18:37 GMT  
		Size: 292.0 KB (291984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bf7b5c55f89213491b676927e8ad071ac3e7b9f4ae2dc2519bebd23890c4d2`  
		Last Modified: Fri, 27 Jul 2018 13:18:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad383a66059291db9ed51f02c9765f712289b5a87837defd14b3a141e61474f`  
		Last Modified: Fri, 27 Jul 2018 13:18:36 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12627b3c28280877076c23490fafa977c32b322886ffb454ef136ee0718990ce`  
		Last Modified: Sat, 11 Aug 2018 13:04:16 GMT  
		Size: 52.4 MB (52402241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d391897af0bf0d9b51563e017fde650f61baf39ee8510b20faba8196a3d4cedd`  
		Last Modified: Sat, 11 Aug 2018 13:03:54 GMT  
		Size: 7.5 KB (7523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1944e44f04bd7563eb6cbb175d5966748d19c2ddb40872fcfc007da48f9248`  
		Last Modified: Sat, 11 Aug 2018 13:03:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c925bf8f44289636ceaea667b9dce25c903020a13b8e6b1837544cba57716b0`  
		Last Modified: Sat, 11 Aug 2018 13:03:54 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d5e9b46a57d1d13dcc32eeb7157aa559bc5d437a88320f63be2c12a689e83c`  
		Last Modified: Sat, 11 Aug 2018 13:03:54 GMT  
		Size: 2.2 KB (2237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed8ccb9eb1cb142e025b00d5db04ed68660f73c1157313ff1f3d41deef3277`  
		Last Modified: Sat, 11 Aug 2018 13:03:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta3` - linux; 386

```console
$ docker pull postgres@sha256:8d7fdd27b2d7cd32cdf0787f0b85e67052edaf897181a7016b8cb3a4867c2740
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119695744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a931fe9c81e4e1a041c185d862ffad1347d77951ef72cda3b395b7b54984276`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:08:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:08:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jul 2018 12:08:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 10:39:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 10:39:57 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 27 Jul 2018 10:39:58 GMT
ENV LANG=en_US.utf8
# Fri, 27 Jul 2018 10:40:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 10:40:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 10:40:11 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 10:40:11 GMT
ENV PG_MAJOR=11
# Sat, 11 Aug 2018 11:17:48 GMT
ENV PG_VERSION=11~beta3-1.pgdg90+1
# Sat, 11 Aug 2018 11:18:50 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 11 Aug 2018 11:18:55 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 11 Aug 2018 11:18:56 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 11 Aug 2018 11:18:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Sat, 11 Aug 2018 11:18:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 11 Aug 2018 11:18:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 11 Aug 2018 11:18:57 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 11 Aug 2018 11:18:58 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Sat, 11 Aug 2018 11:18:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 11 Aug 2018 11:18:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 Aug 2018 11:18:59 GMT
EXPOSE 5432/tcp
# Sat, 11 Aug 2018 11:19:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7b0efe06b2ba7ab7e4eb08a2fd7d1fe5baaf343fa5f521b21a5d51379d78f3`  
		Last Modified: Tue, 17 Jul 2018 12:17:10 GMT  
		Size: 4.8 MB (4803913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb0af5e52f9c7b402707e4e689ac6fce660f6aef98eafdcc4e07870f4b0905d`  
		Last Modified: Tue, 17 Jul 2018 12:17:08 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08bc69c6d271b53df6aa74e6dcf069d3d0828c76344fba109a66518b5f7bf1d`  
		Last Modified: Fri, 27 Jul 2018 10:48:57 GMT  
		Size: 931.4 KB (931426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08f1c893394d1ca5d49394279e84929bdc388fa019b4e98310eb5a3c5dc0397`  
		Last Modified: Fri, 27 Jul 2018 10:48:58 GMT  
		Size: 6.2 MB (6182389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17184d0a1a5000338ed1d33d53949d7a7e856a8f6f0209de108f730ae77c214`  
		Last Modified: Fri, 27 Jul 2018 10:48:54 GMT  
		Size: 296.6 KB (296587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71921a55e6ddc21120e587569ce5604eefd4be8f4be3e0191cf4c34a8a93c59`  
		Last Modified: Fri, 27 Jul 2018 10:48:54 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6671d34fbd5b67a17757f01742296c0f783344b73c447ad0e9a292450c7a2600`  
		Last Modified: Fri, 27 Jul 2018 10:48:54 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e81f08da89c0fe95bd0b5b402691fb1f936790e05a39ca63da18aacc58208fa`  
		Last Modified: Sat, 11 Aug 2018 11:46:09 GMT  
		Size: 84.3 MB (84338540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f19b967d18390872c8f61a59e034048883b678f03e77f3e3e942e625ffe759f8`  
		Last Modified: Sat, 11 Aug 2018 11:45:32 GMT  
		Size: 7.5 KB (7522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d770b7c8470e2a961aa0d67109c8876f5772609537d5d49214de9945f7bca5d8`  
		Last Modified: Sat, 11 Aug 2018 11:45:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de2fb888e6fb421d5e827dae2c167aeae68578f2851fb522b6c4eabfa390b1`  
		Last Modified: Sat, 11 Aug 2018 11:45:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bfaee6a610696565fe991f69a272a9bfd226764f0f67ee115358c37e5332e4`  
		Last Modified: Sat, 11 Aug 2018 11:45:32 GMT  
		Size: 2.2 KB (2237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505c8a4d0431839b26df9e44d9ce65c15710e3fb9af7ae796d9924427b8fe080`  
		Last Modified: Sat, 11 Aug 2018 11:45:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta3` - linux; ppc64le

```console
$ docker pull postgres@sha256:90625b28368870a4d4421441bef2822598e5974185aec102c2b32b2c8f684372
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.8 MB (86794071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1930234015451bc0724227e80e628cc1fc0491f9f833a5c3e6999ef63161f078`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 10:26:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 10:26:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jul 2018 10:26:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 12:15:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 01 Aug 2018 12:16:56 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 01 Aug 2018 12:17:05 GMT
ENV LANG=en_US.utf8
# Wed, 01 Aug 2018 12:17:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 01 Aug 2018 12:17:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 01 Aug 2018 12:17:46 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 01 Aug 2018 12:17:48 GMT
ENV PG_MAJOR=11
# Sat, 11 Aug 2018 09:24:56 GMT
ENV PG_VERSION=11~beta3-1.pgdg90+1
# Sat, 11 Aug 2018 09:28:44 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 11 Aug 2018 09:28:48 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 11 Aug 2018 09:28:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 11 Aug 2018 09:28:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Sat, 11 Aug 2018 09:28:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 11 Aug 2018 09:28:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 11 Aug 2018 09:28:56 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 11 Aug 2018 09:28:56 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Sat, 11 Aug 2018 09:28:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 11 Aug 2018 09:29:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 Aug 2018 09:29:01 GMT
EXPOSE 5432/tcp
# Sat, 11 Aug 2018 09:29:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8711a726a85a0563e7510074a599be6d7c0bda2b7c8c5445ece20d846f663a14`  
		Last Modified: Tue, 17 Jul 2018 10:49:44 GMT  
		Size: 4.4 MB (4360873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485aa620977166826e992e03f1e8b834bd6e369f9f18fd798629cbca7b4b6567`  
		Last Modified: Tue, 17 Jul 2018 10:49:43 GMT  
		Size: 1.8 KB (1760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6783d6ec1728b6adb7da4285e199089282c81a930d776c6fbab3409fc3a780b5`  
		Last Modified: Wed, 01 Aug 2018 13:45:06 GMT  
		Size: 921.0 KB (920980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd757ff0f7380c52da1c310dc4930c9ccb4bd89a6e8ff4934269139e23dac83`  
		Last Modified: Wed, 01 Aug 2018 13:45:44 GMT  
		Size: 6.2 MB (6185805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14513268f07b9323ead9425a3a1001f7a04619a2c6bf309bafef40a6921022c8`  
		Last Modified: Wed, 01 Aug 2018 13:45:00 GMT  
		Size: 293.7 KB (293743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0752456ed540bcc0b961f5246f60af69398b327a4615b05fc7b3b4b9a8120d7`  
		Last Modified: Wed, 01 Aug 2018 13:44:58 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c8b8017a7168f3cffb330dfe5d86449e7c885c170afdd8457196fb9dc8e42d9`  
		Last Modified: Wed, 01 Aug 2018 13:44:58 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0da7a166ef3ef3c7d8e885af3a46adc133f3a742305738dd1c02698ec96e1d5`  
		Last Modified: Sat, 11 Aug 2018 10:14:45 GMT  
		Size: 52.3 MB (52275622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325bfd828715ef655c58bdcde038261cf2891a1fe0f21f45ecd7ba5e8ebf70cf`  
		Last Modified: Sat, 11 Aug 2018 10:14:10 GMT  
		Size: 7.5 KB (7521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66227db032148642d7b476f731e52c9632ed3ccbe63decc7bdcc87f3a269c6f`  
		Last Modified: Sat, 11 Aug 2018 10:14:10 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755ab94a9f69f4218887587f2ab1100265c949bc3082f115250dadf2c00687ad`  
		Last Modified: Sat, 11 Aug 2018 10:14:10 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074189b03baa6918d7d5c4a70379be76d5c3e62ce666a1020124a49cb51dcd32`  
		Last Modified: Sat, 11 Aug 2018 10:14:10 GMT  
		Size: 2.2 KB (2237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fb4480db0d229b143a91e39172d017437f395cbcad6d645d08866c3b124f47`  
		Last Modified: Sat, 11 Aug 2018 10:14:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta3` - linux; s390x

```console
$ docker pull postgres@sha256:04d9c18712eee828fbc21d7c285513f70ff704e8fce8171d90bdf40a19f2ef6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89089925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93c8d9b29dfd2ffa428e0f4e6d684c8573cd3ff2541bd6d4f11dc6b384ed0c1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:08:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:08:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jul 2018 12:08:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 11:54:13 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 11:54:19 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 27 Jul 2018 11:54:19 GMT
ENV LANG=en_US.utf8
# Fri, 27 Jul 2018 11:54:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:54:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 11:54:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 11:54:27 GMT
ENV PG_MAJOR=11
# Sat, 11 Aug 2018 12:02:28 GMT
ENV PG_VERSION=11~beta3-1.pgdg90+1
# Sat, 11 Aug 2018 12:11:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 11 Aug 2018 12:11:50 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 11 Aug 2018 12:11:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 11 Aug 2018 12:11:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Sat, 11 Aug 2018 12:11:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 11 Aug 2018 12:11:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 11 Aug 2018 12:11:51 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 11 Aug 2018 12:11:51 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Sat, 11 Aug 2018 12:11:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 11 Aug 2018 12:11:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 Aug 2018 12:11:52 GMT
EXPOSE 5432/tcp
# Sat, 11 Aug 2018 12:11:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b6e518b29198149cbcf1c0731ff15d1dc765e753dd7141078bda3b930f7793`  
		Last Modified: Tue, 17 Jul 2018 12:59:45 GMT  
		Size: 4.5 MB (4529959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc821e79d9f4e82fc2d4eace656e6b177c89110b1e5cf7f2c9d5a58e77c576ed`  
		Last Modified: Tue, 17 Jul 2018 12:59:44 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b8bac684a54a48e801d9aa5c817a0e6021f3c6231f770b204e61265f197d93`  
		Last Modified: Fri, 27 Jul 2018 12:55:58 GMT  
		Size: 937.9 KB (937905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebcb9de7692df2eac220b5e510f1f8c49d868a6325646f4a31eb2ad17ff0222`  
		Last Modified: Fri, 27 Jul 2018 12:55:58 GMT  
		Size: 6.2 MB (6207341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bac82cc765570732218d09cf6d1212c5f6dc8c4d212535d49a5adb638392468`  
		Last Modified: Fri, 27 Jul 2018 12:55:56 GMT  
		Size: 294.4 KB (294401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec962ccc098a15a6ee9af0a8433780927154a9d61bf68f53b3fac4da45c82e5`  
		Last Modified: Fri, 27 Jul 2018 12:55:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc46e873f7da4f323bbdd54f5a2fb324833e820f8cf51543a347b9ae6b4ceb5e`  
		Last Modified: Fri, 27 Jul 2018 12:55:56 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e98bd2fba3c39a1b4080da95fca6288495005eff25135d8d454837e16474054`  
		Last Modified: Sat, 11 Aug 2018 13:10:13 GMT  
		Size: 54.8 MB (54769277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c2c720c84597902dd767091c12086d2175b144573ec99f24795d8d13fe7f7c`  
		Last Modified: Sat, 11 Aug 2018 13:10:02 GMT  
		Size: 7.5 KB (7524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95262851b1435b23f7ef0df128b99cbb9b9482a29dbd03b51796cb69134ac17`  
		Last Modified: Sat, 11 Aug 2018 13:10:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744e2c5b31c31d9b5e935df19b25f2027988efd26baba141dd66a9649a4e2ddb`  
		Last Modified: Sat, 11 Aug 2018 13:10:02 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e188dc3aed91b4af86f250771bb08e0c06dc6639afe0e38f348e25f90318190a`  
		Last Modified: Sat, 11 Aug 2018 13:10:02 GMT  
		Size: 2.2 KB (2238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b702a70a5a1abe316aa822d270dfa1b0bcd314f2ff18b6e0e2c7f2467499adfb`  
		Last Modified: Sat, 11 Aug 2018 13:10:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
