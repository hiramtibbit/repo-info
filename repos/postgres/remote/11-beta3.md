## `postgres:11-beta3`

```console
$ docker pull postgres@sha256:6f8f1d2314e56e4a0cf1d9a50244ba1db5aa996aa875279be13587fb58e5a790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; ppc64le

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
