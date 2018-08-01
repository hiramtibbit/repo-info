## `postgres:11-beta2`

```console
$ docker pull postgres@sha256:6133fd5d9cd4b159d8c304f844eabaedb8c49c7b2c9f0c64e156aaec348f1edb
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

### `postgres:11-beta2` - linux; amd64

```console
$ docker pull postgres@sha256:82caa43348618be614cd4589663dd666198d868e32d3d94c2f53699399cfd5ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.5 MB (115464846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f610cee05bd261efa7920f3f79d74a45e607d7874a3cbd7a99478cfc52c28c70`
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
# Tue, 31 Jul 2018 17:23:06 GMT
ENV PG_VERSION=11~beta2-2.pgdg90+2
# Tue, 31 Jul 2018 17:23:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 31 Jul 2018 17:24:04 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 31 Jul 2018 17:24:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 31 Jul 2018 17:24:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Tue, 31 Jul 2018 17:24:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 31 Jul 2018 17:24:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 31 Jul 2018 17:24:07 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 31 Jul 2018 17:24:07 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Tue, 31 Jul 2018 17:24:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 31 Jul 2018 17:24:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 17:24:09 GMT
EXPOSE 5432/tcp
# Tue, 31 Jul 2018 17:24:09 GMT
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
	-	`sha256:9e45e62875a087e4ac49b309c6cf588b7177cdedc6c5113ed3858f803134bc4f`  
		Last Modified: Tue, 31 Jul 2018 17:25:22 GMT  
		Size: 81.0 MB (81033870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0df328c96bdac8fb3b96484b560e81859b8e87463607ffebde66e43db51b99`  
		Last Modified: Tue, 31 Jul 2018 17:24:54 GMT  
		Size: 7.5 KB (7523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1045cdd0ddea9d5a29b8f2f4041a37d93e72bcbe5124a6005ce302d0b7f1b0f7`  
		Last Modified: Tue, 31 Jul 2018 17:24:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3334070e9dbc609dcd90390dbd8622fa0450c2f6aa2477be87e0ce044c21199d`  
		Last Modified: Tue, 31 Jul 2018 17:24:52 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879ffd6f02004efcd4501af6df5ef4e1e097ad1f1747287b6edd1f26c2e5205a`  
		Last Modified: Tue, 31 Jul 2018 17:24:53 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89fc0d545bfcbf31d885bfdda1f2e63d334effc4991476f00157376122d4797d`  
		Last Modified: Tue, 31 Jul 2018 17:24:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta2` - linux; arm variant v5

```console
$ docker pull postgres@sha256:9f79e2fc98f4ae464ff55b80795ae65fb63e6eeda8cb091ad7d242d7c160c00e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.9 MB (85933156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e20b58d708bcabdce68393972105648d4390e623863b296ee69cf0321221bef`
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
# Wed, 01 Aug 2018 08:58:07 GMT
ENV PG_VERSION=11~beta2-2.pgdg90+2
# Wed, 01 Aug 2018 09:17:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 01 Aug 2018 09:17:47 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 01 Aug 2018 09:17:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 01 Aug 2018 09:17:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 01 Aug 2018 09:17:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 01 Aug 2018 09:17:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 01 Aug 2018 09:17:50 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 01 Aug 2018 09:17:51 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Wed, 01 Aug 2018 09:17:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 01 Aug 2018 09:17:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Aug 2018 09:17:52 GMT
EXPOSE 5432/tcp
# Wed, 01 Aug 2018 09:17:52 GMT
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
	-	`sha256:766907dfa4d50737ded37dbf80c9569e3481eda11200492fb4e6a04e2be82764`  
		Last Modified: Wed, 01 Aug 2018 09:19:01 GMT  
		Size: 53.1 MB (53101492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4294c7d2b03f560c07d3af702175155f0fffaf00d12ede29e1a7d65c9c1a96`  
		Last Modified: Wed, 01 Aug 2018 09:18:41 GMT  
		Size: 7.5 KB (7523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ce19fa753869a29513f8442d7dd978d6ab9d6972d213e5134804d199b6870e`  
		Last Modified: Wed, 01 Aug 2018 09:18:41 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87799de3e32b2b45eb2d1d31b84c0ffab181c7c765fb7e7abfc73005e466eb0`  
		Last Modified: Wed, 01 Aug 2018 09:18:41 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a86c15648ae48cfc7a60fab865caaa947e52a54b24c7d84a62e039a05eebde`  
		Last Modified: Wed, 01 Aug 2018 09:18:41 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a620c309eafb016986db4858f08dbd89ab711aa712bf007fb3bfe296a36c99`  
		Last Modified: Wed, 01 Aug 2018 09:18:41 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta2` - linux; arm variant v7

```console
$ docker pull postgres@sha256:82ecb7832743821c0d0ed613c0d6252cacb4bc08e01f48d2b6a0380468411765
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81913157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd3681ae794d0a03011bf9f7011a11d0940c82c4232496e728c9da7664466518`
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
# Wed, 01 Aug 2018 12:09:55 GMT
ENV PG_VERSION=11~beta2-2.pgdg90+2
# Wed, 01 Aug 2018 12:27:17 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 01 Aug 2018 12:27:19 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 01 Aug 2018 12:27:20 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 01 Aug 2018 12:27:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 01 Aug 2018 12:27:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 01 Aug 2018 12:27:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 01 Aug 2018 12:27:22 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 01 Aug 2018 12:27:22 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Wed, 01 Aug 2018 12:27:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 01 Aug 2018 12:27:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Aug 2018 12:27:23 GMT
EXPOSE 5432/tcp
# Wed, 01 Aug 2018 12:27:23 GMT
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
	-	`sha256:ba901cd5939155d3bdd329cab460460a1e5fc1f2e9b0f676d9f29014555a9543`  
		Last Modified: Wed, 01 Aug 2018 12:28:32 GMT  
		Size: 51.4 MB (51354904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ac804c31dca443f18359d8dcbace8827bd87e18e13075767b072620cd428fc`  
		Last Modified: Wed, 01 Aug 2018 12:28:14 GMT  
		Size: 7.5 KB (7525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c6ff6735aa162d611db378de016e30f22fd6d0a2187d785ae1cf0b9c9ac7b8`  
		Last Modified: Wed, 01 Aug 2018 12:28:15 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d096e2d4737b2ef070cf373176dcb656f5726af48d0809d7cc2482dd158bf6`  
		Last Modified: Wed, 01 Aug 2018 12:28:15 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23ff215b1b33d7c6e8e6f8fef91eef0afb2cc77427235e6d210b7a16ab3d55a`  
		Last Modified: Wed, 01 Aug 2018 12:28:14 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fbba279ab30194871ba754333ac0b2717f79d1211239cfae89b0531378eafc`  
		Last Modified: Wed, 01 Aug 2018 12:28:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta2` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:8a274551914b88fddbcd6e6323de8040efd85e833b6991484f10ef28033accf1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (83961578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a2b6aee4dcbe14c2b378456e2d98029c01f8f6e8dea2c49acd65de9e9dacdaa`
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
# Wed, 01 Aug 2018 09:38:16 GMT
ENV PG_VERSION=11~beta2-2.pgdg90+2
# Wed, 01 Aug 2018 10:09:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 01 Aug 2018 10:10:02 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 01 Aug 2018 10:10:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 01 Aug 2018 10:10:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 01 Aug 2018 10:10:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 01 Aug 2018 10:10:08 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 01 Aug 2018 10:10:09 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 01 Aug 2018 10:10:10 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Wed, 01 Aug 2018 10:10:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 01 Aug 2018 10:10:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Aug 2018 10:10:18 GMT
EXPOSE 5432/tcp
# Wed, 01 Aug 2018 10:10:20 GMT
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
	-	`sha256:b7dd123d6e74852ee887a77765067adee0b01d716c9c4dbfa49970d6387f7b72`  
		Last Modified: Wed, 01 Aug 2018 10:11:58 GMT  
		Size: 52.1 MB (52146331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c3df99e2e79893fd4ade071c70676c93224d08a024b6ffae8c3098cb2c34b7`  
		Last Modified: Wed, 01 Aug 2018 10:11:36 GMT  
		Size: 7.5 KB (7524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331853f3be793cea497c030658074e529491a23415157d5a4ef6d85afbc4b2e6`  
		Last Modified: Wed, 01 Aug 2018 10:11:36 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cdadc65c21bc8f3c29054c8b29d25a001bce4693b81cebddf3a2f67f30c30dd`  
		Last Modified: Wed, 01 Aug 2018 10:11:35 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640638961043ac472d80b8196ffbfdac11e0ea9adb8e8d4dfacf0be49d111a01`  
		Last Modified: Wed, 01 Aug 2018 10:11:35 GMT  
		Size: 2.2 KB (2239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08166b09a657e8c993e7268517aa875e64e1b318a766659f4b37f61b483e421`  
		Last Modified: Wed, 01 Aug 2018 10:11:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta2` - linux; 386

```console
$ docker pull postgres@sha256:fdc0503fb8bf3158887a1673ae7d1aee3d28c4979ea82778991109284e752224
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119436575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f7a7697bc0c16227ec8a84f482ae8d9b565a1f3624ff54539e23c3407225ab9`
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
# Wed, 01 Aug 2018 11:27:51 GMT
ENV PG_VERSION=11~beta2-2.pgdg90+2
# Wed, 01 Aug 2018 11:28:54 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 01 Aug 2018 11:28:55 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 01 Aug 2018 11:28:56 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 01 Aug 2018 11:28:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 01 Aug 2018 11:28:57 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 01 Aug 2018 11:28:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 01 Aug 2018 11:28:58 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 01 Aug 2018 11:28:58 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Wed, 01 Aug 2018 11:28:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 01 Aug 2018 11:28:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Aug 2018 11:28:59 GMT
EXPOSE 5432/tcp
# Wed, 01 Aug 2018 11:29:00 GMT
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
	-	`sha256:01086f5c0d5650ffb753b4e87af98d3b8667954499a6c06d1b81c1fc4f33b1fe`  
		Last Modified: Wed, 01 Aug 2018 11:30:15 GMT  
		Size: 84.1 MB (84079370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d772d1bb15d3784f2cb8fe0f2fa4f111f5748077435289f36efd6e98efe9acf`  
		Last Modified: Wed, 01 Aug 2018 11:29:38 GMT  
		Size: 7.5 KB (7525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35248ad154b0c386ae66f1ae19c5ddd74281b0a4f5cc854b65303d7a8b85f48e`  
		Last Modified: Wed, 01 Aug 2018 11:29:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf8f75315e46e7e94b589a11c78de60fdb38d4927a5e5d895c0f9f187ac2991`  
		Last Modified: Wed, 01 Aug 2018 11:29:39 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705628e6338596ebcdd9dcb0613cd2be78d68aa111e14997d853bdaaf0c11632`  
		Last Modified: Wed, 01 Aug 2018 11:29:38 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a7328a34ac42badc13a9b4b3e0285c912bb0bd7571fdded221b208b7ba5eb02`  
		Last Modified: Wed, 01 Aug 2018 11:29:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta2` - linux; ppc64le

```console
$ docker pull postgres@sha256:ab46d02902545cfc49be22ef95677dcdabce81dd31431704d62c9ee13460eede
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.5 MB (86540884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:331f8a24163cfc524a1482c09be1654c4036cf67867d4c0a4037f6435a382796`
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
# Wed, 01 Aug 2018 12:17:51 GMT
ENV PG_VERSION=11~beta2-2.pgdg90+2
# Wed, 01 Aug 2018 12:37:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 01 Aug 2018 12:37:25 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 01 Aug 2018 12:37:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 01 Aug 2018 12:37:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 01 Aug 2018 12:37:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 01 Aug 2018 12:38:09 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 01 Aug 2018 12:38:19 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 01 Aug 2018 12:38:31 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Wed, 01 Aug 2018 12:38:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 01 Aug 2018 12:38:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Aug 2018 12:39:00 GMT
EXPOSE 5432/tcp
# Wed, 01 Aug 2018 12:39:09 GMT
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
	-	`sha256:6d39c632fae6cb312fda24f15a8e9cc90c400031b2ea57359ce57148da7850cf`  
		Last Modified: Wed, 01 Aug 2018 13:48:04 GMT  
		Size: 52.0 MB (52022429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7205c8565587b96dea9d674b170011d3e2c69f4b8414876f17db35272568e6`  
		Last Modified: Wed, 01 Aug 2018 13:44:53 GMT  
		Size: 7.5 KB (7526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64b9495529446cd27b2130ec1691a8118060d96bd2c3060d107595558573fa6`  
		Last Modified: Wed, 01 Aug 2018 13:44:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafb98ca265ec1810667fd86c4d7e9435f53604529802233b5ee9f4d0db8b871`  
		Last Modified: Wed, 01 Aug 2018 13:44:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3c4ed762588a2e248b8b6a256e0786438bedd6e928c688d07110cbf51f66946`  
		Last Modified: Wed, 01 Aug 2018 13:44:55 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d366862be61eeb7779293c3b9b0dc6fa26f2a79caed5d66cc5e18bfca5abb2c2`  
		Last Modified: Wed, 01 Aug 2018 13:44:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta2` - linux; s390x

```console
$ docker pull postgres@sha256:62385d8a78670f459406fc34808a362575c23e2139b3e9e688490b2296e5a760
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88838896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e277a98a88d59aa1df216c1794dabd85e61fa5c7b7ae2ccf01385a18121d058`
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
# Wed, 01 Aug 2018 12:01:19 GMT
ENV PG_VERSION=11~beta2-2.pgdg90+2
# Wed, 01 Aug 2018 12:10:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 01 Aug 2018 12:10:14 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 01 Aug 2018 12:10:15 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 01 Aug 2018 12:10:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 01 Aug 2018 12:10:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 01 Aug 2018 12:10:15 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 01 Aug 2018 12:10:16 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 01 Aug 2018 12:10:16 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Wed, 01 Aug 2018 12:10:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 01 Aug 2018 12:10:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Aug 2018 12:10:17 GMT
EXPOSE 5432/tcp
# Wed, 01 Aug 2018 12:10:17 GMT
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
	-	`sha256:49eab22fd5e753976af00ec5657eb9e4487387cadb3b895d65e3e21ef34d0e41`  
		Last Modified: Wed, 01 Aug 2018 12:11:24 GMT  
		Size: 54.5 MB (54518253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adc7689e4fd8d7f764339c7a30556d79dcf86ffe5972c1db0870f2f9bcd8957`  
		Last Modified: Wed, 01 Aug 2018 12:11:12 GMT  
		Size: 7.5 KB (7524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e23c2a5434d3c90173547964795a48323d6fe319dfdc51d79987a45151f7e46`  
		Last Modified: Wed, 01 Aug 2018 12:11:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77603f6ff8d86ea23c99039627f0589ed7dfbf2702dfe6db6d5cbcb3c29378c`  
		Last Modified: Wed, 01 Aug 2018 12:11:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f425db9cd10c05223f8bad6dbcd9acdf83496d8e0573d15d61f63eca6e950fca`  
		Last Modified: Wed, 01 Aug 2018 12:11:13 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01fd50107226ef37a83a0ed1752bf8ac3911e7905309a798ca708decf8d3d304`  
		Last Modified: Wed, 01 Aug 2018 12:11:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
