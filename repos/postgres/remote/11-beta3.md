## `postgres:11-beta3`

```console
$ docker pull postgres@sha256:c4c4d8ea1dee5ada18e73da78b7ee8b4a85e5c44119d37cce61683566c97c98e
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
$ docker pull postgres@sha256:b77da105a6ed97daa1af9956ddb74db46a9eaa10ec25c79b75cb769e1409afca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.6 MB (116555443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b11db8deea413ec5d64b5249e82b929f823d1535649b6d3a313cac1b64036f24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:17:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 23 Aug 2018 00:29:59 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Thu, 23 Aug 2018 00:29:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 00:30:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 23 Aug 2018 00:30:29 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 23 Aug 2018 00:30:30 GMT
ENV LANG=en_US.utf8
# Thu, 23 Aug 2018 00:30:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 00:30:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 00:30:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 00:30:42 GMT
ENV PG_MAJOR=11
# Thu, 23 Aug 2018 00:30:42 GMT
ENV PG_VERSION=11~beta3-1.pgdg90+2
# Thu, 23 Aug 2018 00:31:52 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Thu, 23 Aug 2018 00:31:53 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 23 Aug 2018 00:31:54 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 23 Aug 2018 00:31:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Thu, 23 Aug 2018 00:31:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 23 Aug 2018 00:31:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 23 Aug 2018 00:31:56 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 23 Aug 2018 00:31:57 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Thu, 23 Aug 2018 00:31:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 00:31:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 00:31:58 GMT
EXPOSE 5432/tcp
# Thu, 23 Aug 2018 00:31:59 GMT
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
	-	`sha256:7abd7c13a8baae84efb787e8d867d6848d954cfd648eef60b5462a4f2e1bf353`  
		Last Modified: Thu, 23 Aug 2018 00:39:40 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a610c09ac19200c711747690074d840ff48920f5f0b983029666ea14532b6619`  
		Last Modified: Thu, 23 Aug 2018 00:39:40 GMT  
		Size: 951.9 KB (951900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fd9b56267d779b35ddc80fc61a46b591b049f203f1813eb2db5927b0ba6a5e`  
		Last Modified: Thu, 23 Aug 2018 00:39:41 GMT  
		Size: 6.2 MB (6182876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8120ff0d4726b2e87bd7079657c147b7a129d7a1962ce4e62ee0595e59ac9362`  
		Last Modified: Thu, 23 Aug 2018 00:39:39 GMT  
		Size: 295.5 KB (295464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94a6ac035887ae8764304c7a711a20c65c8dc099f7665a708ade55401b833c2`  
		Last Modified: Thu, 23 Aug 2018 00:39:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03762a018e3087d4674e257533d829193db9adc4a7f9e5a9dd90bbbd8089ab51`  
		Last Modified: Thu, 23 Aug 2018 00:39:37 GMT  
		Size: 4.5 KB (4483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c8a8c86239ca21e58564406fa323764c728ce5dc0c79302ca2f23a7d88b752`  
		Last Modified: Thu, 23 Aug 2018 00:40:04 GMT  
		Size: 82.1 MB (82124198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225693c90a7cbeb768eb449d0f88e35d50f621a7b17ff9b81b7ee6f95e579bc6`  
		Last Modified: Thu, 23 Aug 2018 00:39:34 GMT  
		Size: 7.5 KB (7525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b455ef18dcd928f62aedd32ff12af3aabf4798e580839ee2e77d9ed9d616196a`  
		Last Modified: Thu, 23 Aug 2018 00:39:35 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a829507e5cc3c6b45f32c37032296aa786da6705276925d92a0e87ac2763101d`  
		Last Modified: Thu, 23 Aug 2018 00:39:34 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699c969def4b6b471b58bccd3ec20b5eeeae3612890de8abdce7f8ba109f0aaf`  
		Last Modified: Thu, 23 Aug 2018 00:39:34 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd893719bc44f6cacbd2d828a372b3d3c58142bfc822e9318a2a4ecf4b85eaa1`  
		Last Modified: Thu, 23 Aug 2018 00:39:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta3` - linux; arm variant v5

```console
$ docker pull postgres@sha256:283b0cda98c68a1f8d67b1c2d3e7489190edc437ea866917429063e2ad3fd860
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.9 MB (80923109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a0900c6e9fcae7d1e07f1def53fe6292abb7c080205c0105f04559cc5307e22`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 09:37:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 23 Aug 2018 09:35:49 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Thu, 23 Aug 2018 09:35:49 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 09:36:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 23 Aug 2018 09:36:20 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 23 Aug 2018 09:36:20 GMT
ENV LANG=en_US.utf8
# Thu, 23 Aug 2018 09:36:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 09:36:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 09:36:33 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 09:36:33 GMT
ENV PG_MAJOR=11
# Thu, 23 Aug 2018 09:36:33 GMT
ENV PG_VERSION=11~beta3-1.pgdg90+2
# Thu, 23 Aug 2018 09:56:33 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Thu, 23 Aug 2018 09:56:36 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 23 Aug 2018 09:56:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 23 Aug 2018 09:56:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Thu, 23 Aug 2018 09:56:42 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 23 Aug 2018 09:56:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 23 Aug 2018 09:56:43 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 28 Aug 2018 08:56:14 GMT
COPY file:9dfee985db858ea9bcf8869aa2929efed1affa079c7fc23523f13953b5c3f562 in /usr/local/bin/ 
# Tue, 28 Aug 2018 08:56:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Aug 2018 08:56:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:56:16 GMT
EXPOSE 5432/tcp
# Tue, 28 Aug 2018 08:56:16 GMT
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
	-	`sha256:17202ce5d37fc6a1fdfe5fb98b433c9c265f1f1f304768c7390c3384e5b2ac8a`  
		Last Modified: Thu, 23 Aug 2018 11:29:54 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342ce0bcec8720ec221bd64bd69ff91f68dad2a404f7c4358b2c72485ff40d7c`  
		Last Modified: Thu, 23 Aug 2018 11:29:54 GMT  
		Size: 942.4 KB (942386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c03cee4c6945e44a8eaf4b4ed99c72556f36ea56ff206a36428dd8fe890f5ef`  
		Last Modified: Thu, 23 Aug 2018 11:29:56 GMT  
		Size: 6.2 MB (6185096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28075874708dd7cfab09855d4fb6950909409ca6f8467d0e3a77c5e071d8984`  
		Last Modified: Thu, 23 Aug 2018 11:29:54 GMT  
		Size: 293.3 KB (293286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3240ac820e484dbf91ab288e510a1c243597f344639c3459dab9bf34959544b9`  
		Last Modified: Thu, 23 Aug 2018 11:29:53 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d92b05b26d927f781771d3f659bdf8e01a1e121e96873bee541d205906e384`  
		Last Modified: Thu, 23 Aug 2018 11:29:53 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a957db3f5acd9e50551acce72245793d0983ab8cecf5f8e058522cb0fe6ae26`  
		Last Modified: Thu, 23 Aug 2018 11:30:09 GMT  
		Size: 48.1 MB (48091394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aae26b5198e09d5bdb02a0f44eee25068f20525e001ea64d97ed59ec8cb2d39`  
		Last Modified: Thu, 23 Aug 2018 11:29:52 GMT  
		Size: 7.5 KB (7526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757b77116c9d5a27000406c464ad515dc5d2068ead4cfb71a4336e68b79c0798`  
		Last Modified: Thu, 23 Aug 2018 11:29:52 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b7eebb4607b7579a36136bbd829fd9c65e2cf0c8eb01434832921cfbd801cc`  
		Last Modified: Thu, 23 Aug 2018 11:29:52 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32bdd3ac81842ab4052d89b8166273b6bfc606159ca60d7317d9d1052c9d7785`  
		Last Modified: Tue, 28 Aug 2018 08:57:46 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792f6c2372de820c31e5f58984db01096f4b23eb71e104d29d16d8b28b868cdf`  
		Last Modified: Tue, 28 Aug 2018 08:57:46 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta3` - linux; arm variant v7

```console
$ docker pull postgres@sha256:5533f7d9695a89501f03c499e00bd3c18de5c20ce2da10bd2a29089fe88d87ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76895292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90d63f04ca44b3df3485633b6b906c35e6d5280801da42d931a179db7464e04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:23:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 23 Aug 2018 12:16:19 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Thu, 23 Aug 2018 12:16:20 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 12:16:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 23 Aug 2018 12:16:45 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 23 Aug 2018 12:16:45 GMT
ENV LANG=en_US.utf8
# Thu, 23 Aug 2018 12:16:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:16:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 12:16:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 12:16:57 GMT
ENV PG_MAJOR=11
# Thu, 23 Aug 2018 12:16:57 GMT
ENV PG_VERSION=11~beta3-1.pgdg90+2
# Thu, 23 Aug 2018 12:34:42 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Thu, 23 Aug 2018 12:34:43 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 23 Aug 2018 12:34:44 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 23 Aug 2018 12:34:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Thu, 23 Aug 2018 12:34:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 23 Aug 2018 12:34:46 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 23 Aug 2018 12:34:46 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 23 Aug 2018 12:34:46 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Thu, 23 Aug 2018 12:34:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 12:34:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 12:34:48 GMT
EXPOSE 5432/tcp
# Thu, 23 Aug 2018 12:34:49 GMT
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
	-	`sha256:cc8a06f0cfd4be9358f32c6900c1fea91562f4ab6a495b84cae5c64d32706d8b`  
		Last Modified: Thu, 23 Aug 2018 13:57:24 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe9e234ea223bfb1a93a2acca4aaf10f51efe24fb8fd362b07a555cba4c1e3f`  
		Last Modified: Thu, 23 Aug 2018 13:57:24 GMT  
		Size: 926.0 KB (926001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbde01144404cca65e2d6456a7bd252d6ee63f63e3d8531045a7580f461165d1`  
		Last Modified: Thu, 23 Aug 2018 13:57:25 GMT  
		Size: 6.2 MB (6185130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f0923b0bb6f02ead6028f9eb0a23cf523690e03eb868b151116d97ed117337`  
		Last Modified: Thu, 23 Aug 2018 13:57:23 GMT  
		Size: 291.7 KB (291680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1fca2237e7b8735297901b87212b9a987c53ef3f9422dd4e82e213d041ac75`  
		Last Modified: Thu, 23 Aug 2018 13:57:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6ea066b215bc37d019f8d6ad31147f3a5e4878ea9c0db521a69be9f3bc40e6`  
		Last Modified: Thu, 23 Aug 2018 13:57:22 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06277f2f5793570b1324119178ac9e65e600c28cbab628943ca2add3995b7cc3`  
		Last Modified: Thu, 23 Aug 2018 13:57:37 GMT  
		Size: 46.3 MB (46336974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea79435a271ddaaa2d6112975790d3c6bb4ebd8ef73493ae77dadd3766b5b84e`  
		Last Modified: Thu, 23 Aug 2018 13:57:21 GMT  
		Size: 7.5 KB (7524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed37138e41159db0618c47f31827122b7b5b68ab31f2781a223f5efc69056f54`  
		Last Modified: Thu, 23 Aug 2018 13:57:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e9aec2d8f5c4040414709c086b6b3ed3fa20564cadae4dc4e2459d9b1a7836`  
		Last Modified: Thu, 23 Aug 2018 13:57:20 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78774d9ab3878a86289ca09701fc2cb12e4305adb602918098619a419b0eab23`  
		Last Modified: Thu, 23 Aug 2018 13:57:21 GMT  
		Size: 2.2 KB (2237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f73a84809051af9d7b4f226ad922b5a9a1e6bc7a1cf29c8414918bb91dca6b`  
		Last Modified: Thu, 23 Aug 2018 13:57:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta3` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:195027a1ce855103a05e2e99e24f553ca89be5e69cc4ea46182ea12148a6d0c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.9 MB (78949223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b548676125eee6aec266e4028e273eaa654963349cdc59858af7206df2e45a89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 10:27:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 23 Aug 2018 11:25:04 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Thu, 23 Aug 2018 11:25:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 11:25:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 23 Aug 2018 11:26:03 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 23 Aug 2018 11:26:04 GMT
ENV LANG=en_US.utf8
# Thu, 23 Aug 2018 11:26:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 11:26:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 11:26:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 11:26:20 GMT
ENV PG_MAJOR=11
# Thu, 23 Aug 2018 11:26:20 GMT
ENV PG_VERSION=11~beta3-1.pgdg90+2
# Thu, 23 Aug 2018 12:06:46 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Thu, 23 Aug 2018 12:06:50 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 23 Aug 2018 12:06:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 23 Aug 2018 12:06:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Thu, 23 Aug 2018 12:06:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 23 Aug 2018 12:07:00 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 23 Aug 2018 12:07:01 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 28 Aug 2018 10:13:06 GMT
COPY file:9dfee985db858ea9bcf8869aa2929efed1affa079c7fc23523f13953b5c3f562 in /usr/local/bin/ 
# Tue, 28 Aug 2018 10:13:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Aug 2018 10:13:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Aug 2018 10:13:29 GMT
EXPOSE 5432/tcp
# Tue, 28 Aug 2018 10:13:29 GMT
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
	-	`sha256:01946e07fabddd160f9989debb5688666b5031629ec8af7fd13ca8f16cbd6c75`  
		Last Modified: Thu, 23 Aug 2018 15:17:08 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18706421d7fb445c457d87ab148fccf55e1b542e8217d1be23d616764a216dad`  
		Last Modified: Thu, 23 Aug 2018 15:17:08 GMT  
		Size: 919.3 KB (919301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d363cb4fb2c22f1aa71758e32c3dbfeaf5653a67fddfd4b1b3db01867c091ba`  
		Last Modified: Thu, 23 Aug 2018 15:17:09 GMT  
		Size: 6.2 MB (6182575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ab81098a1db38c73a879d5a5a42590839f1b01c65179ffda8ae8367a149a33`  
		Last Modified: Thu, 23 Aug 2018 15:17:06 GMT  
		Size: 292.0 KB (292006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e0434a3cdf908389c1bd8589eb8193c9ac1b8aceea2e70a8ca86305f53b652e`  
		Last Modified: Thu, 23 Aug 2018 15:17:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af13b87500a0f1a4f00f52fa6d60dc0689a168187685258eecf02cf658c73b46`  
		Last Modified: Thu, 23 Aug 2018 15:17:05 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90686b1ebdbfd4b1f6be157df181b55dc3793c9eeb5fbe10aa8d7af741042fa`  
		Last Modified: Thu, 23 Aug 2018 15:17:24 GMT  
		Size: 47.1 MB (47133833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65726c7a4ada52fd858b8b3ead2256c905fe3ac8b27f2808e502ebcc151f1ff3`  
		Last Modified: Thu, 23 Aug 2018 15:17:03 GMT  
		Size: 7.5 KB (7520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854feaf18dcfc340177386bd9aee994caba62e039033154da7ea4d1bae6141cb`  
		Last Modified: Thu, 23 Aug 2018 15:17:03 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac5206a358d32928954d2543b1d6fc4eeabc9776015fc49c15f3dd5b2b2c78e`  
		Last Modified: Thu, 23 Aug 2018 15:17:03 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13636376bbb924d1226c2a704e10bc4820373851d60359e0a7739e6a0927ff7`  
		Last Modified: Tue, 28 Aug 2018 10:25:23 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac01c169be3d73c44a4f597fdc3fb79ab55e40a8fc4469991362d517ed48bcbc`  
		Last Modified: Tue, 28 Aug 2018 10:25:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta3` - linux; 386

```console
$ docker pull postgres@sha256:a9e6251b694442243e398035526c1ffb82c1656622bd67cc29593442c83ddeed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120838473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7196b8845b9ffa84d61b820678c90ce1d2ed13b0903eb616011ef1bd8a19b706`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:08:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 23 Aug 2018 11:32:08 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Thu, 23 Aug 2018 11:32:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 11:32:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 23 Aug 2018 11:32:53 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 23 Aug 2018 11:32:54 GMT
ENV LANG=en_US.utf8
# Thu, 23 Aug 2018 11:33:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 11:33:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 11:33:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 11:33:06 GMT
ENV PG_MAJOR=11
# Thu, 23 Aug 2018 11:33:06 GMT
ENV PG_VERSION=11~beta3-1.pgdg90+2
# Thu, 23 Aug 2018 11:34:18 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Thu, 23 Aug 2018 11:34:19 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 23 Aug 2018 11:34:20 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 23 Aug 2018 11:34:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Thu, 23 Aug 2018 11:34:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 23 Aug 2018 11:34:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 23 Aug 2018 11:34:21 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 23 Aug 2018 11:34:22 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Thu, 23 Aug 2018 11:34:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 11:34:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 11:34:23 GMT
EXPOSE 5432/tcp
# Thu, 23 Aug 2018 11:34:23 GMT
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
	-	`sha256:570d47fd02b9c218f44454edd76c02c8ead70b1e8ed64d5b29e471eb3d93f918`  
		Last Modified: Thu, 23 Aug 2018 11:41:58 GMT  
		Size: 1.8 KB (1777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc3cb58cb161aac4c3bcd271ec33756e2ca1a98fa6ecfac8097b3136111683b`  
		Last Modified: Thu, 23 Aug 2018 11:41:58 GMT  
		Size: 931.4 KB (931447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311f1437b31b796826fa6fe0b59af227d16cfb2eaf18f0892f0d8684e8a9a0fd`  
		Last Modified: Thu, 23 Aug 2018 11:41:58 GMT  
		Size: 6.2 MB (6182614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc6b9a47678703f8be8c75e5fc8fee489d914a82c8f858b0d9a8d09be3c5d08`  
		Last Modified: Thu, 23 Aug 2018 11:41:56 GMT  
		Size: 296.6 KB (296583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433223a74cbabb6e0c17f50aeff1f8cfce4192446581bc5e73d58dc6ec8e78d1`  
		Last Modified: Thu, 23 Aug 2018 11:41:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d76d691bde3ab37e20747c02bdd1409723d1546f935611f62bf75eb8b7f4c8`  
		Last Modified: Thu, 23 Aug 2018 11:41:55 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7d568572399aad6f129adf4ac82f3b4697ee1d8b1f2aedd7c818212d38d307`  
		Last Modified: Thu, 23 Aug 2018 11:42:25 GMT  
		Size: 85.5 MB (85480980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5110eaa0518d1d529c7bb0f241a345d7fe4ad7b88f4dc92b583aa39ca8ac989e`  
		Last Modified: Thu, 23 Aug 2018 11:41:52 GMT  
		Size: 7.5 KB (7524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71fff56b47fc246e9063e0027e58fc2afab818482bbdc79e5e8e5faf33b1464a`  
		Last Modified: Thu, 23 Aug 2018 11:41:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e7bde6730e6266b41213a2c5e8d07d1ea6277ada9296cc86cdb0029419b85aa`  
		Last Modified: Thu, 23 Aug 2018 11:41:52 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf071529e69742fff9b79d0794767d60b7dcd78dabb4621e8c65fa15bbb1fad`  
		Last Modified: Thu, 23 Aug 2018 11:41:52 GMT  
		Size: 2.2 KB (2237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21977cd023c101987b9202b7d336a0f391d05c1f153c4ec7606c9926069370c9`  
		Last Modified: Thu, 23 Aug 2018 11:41:52 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta3` - linux; ppc64le

```console
$ docker pull postgres@sha256:9f1d73d50060c069e8d6e786e0bc114ef304c057d22c4ea36f94fe09f9e6131e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.7 MB (83744600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e9a060dea76155e0f725077855e5ca2c6032b32fb92e07fddf61ab9da57cd4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 10:26:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 23 Aug 2018 09:10:40 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Thu, 23 Aug 2018 09:10:45 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 09:11:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 23 Aug 2018 09:11:35 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 23 Aug 2018 09:11:36 GMT
ENV LANG=en_US.utf8
# Thu, 23 Aug 2018 09:11:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 09:11:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 09:11:57 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 09:11:59 GMT
ENV PG_MAJOR=11
# Thu, 23 Aug 2018 09:12:01 GMT
ENV PG_VERSION=11~beta3-1.pgdg90+2
# Thu, 23 Aug 2018 09:15:05 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Thu, 23 Aug 2018 09:15:11 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 23 Aug 2018 09:15:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 23 Aug 2018 09:15:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Thu, 23 Aug 2018 09:15:19 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 23 Aug 2018 09:15:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 23 Aug 2018 09:15:24 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 28 Aug 2018 08:54:18 GMT
COPY file:9dfee985db858ea9bcf8869aa2929efed1affa079c7fc23523f13953b5c3f562 in /usr/local/bin/ 
# Tue, 28 Aug 2018 08:54:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Aug 2018 08:54:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Aug 2018 08:54:23 GMT
EXPOSE 5432/tcp
# Tue, 28 Aug 2018 08:54:24 GMT
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
	-	`sha256:fbaa6d37965587972c9106b10ba771a87f1faf55e402cd0087766e7bfd119383`  
		Last Modified: Thu, 23 Aug 2018 09:36:39 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd4b885d6a531dda7b8874294d49ac1cfe038f94b4ae301f9154c275d22e931c`  
		Last Modified: Thu, 23 Aug 2018 09:36:47 GMT  
		Size: 920.8 KB (920821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee62d0567b71770f16b710cae252211f7cb1820a39758b40f003ee97b65d397`  
		Last Modified: Thu, 23 Aug 2018 09:36:39 GMT  
		Size: 6.2 MB (6185494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889437aa2514061c8d1360b69d8a5c44a263907b9af81b58f231a401cc298da4`  
		Last Modified: Thu, 23 Aug 2018 09:36:37 GMT  
		Size: 293.6 KB (293566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981f24c54193a68e07fe0e3d26f12474a5f8ae31f6f3726aa58e3d14f488757f`  
		Last Modified: Thu, 23 Aug 2018 09:36:36 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9355a272434df78360f4f05d3d3c3be3ce8d03a784bbd1104aee8cf94c40b0`  
		Last Modified: Thu, 23 Aug 2018 09:36:36 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce14c47beaa17c4106c73ffd4262c9657e22766d36c1611eb8b3fabd83f0412`  
		Last Modified: Thu, 23 Aug 2018 09:36:50 GMT  
		Size: 49.2 MB (49226715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c595b400cad30c42891ea00fe368cb64627bd838776bb2c138b656e78cf2b2`  
		Last Modified: Thu, 23 Aug 2018 09:36:33 GMT  
		Size: 7.5 KB (7525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55ebc9f8290602ae24817defbddfe85ac3e1cf1116e5fd1d67573e99f7fd795`  
		Last Modified: Thu, 23 Aug 2018 09:36:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424e5e49e55d1a2e31d625aa606c01fdcfc4756d5c2ab81844b4a72c36bab93f`  
		Last Modified: Thu, 23 Aug 2018 09:36:33 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb75f1632b09b33afbd8e028ff23d773ec8c720a2357359d663c9de016ae02ae`  
		Last Modified: Tue, 28 Aug 2018 08:58:28 GMT  
		Size: 2.3 KB (2255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0034c6a92221e584a5e7bb41409d2acd7de3286e5480fb4a31f1feafd704b73c`  
		Last Modified: Tue, 28 Aug 2018 08:58:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta3` - linux; s390x

```console
$ docker pull postgres@sha256:599b1afe38d2f03885032f58a4bd49649cf8dbaf9fdbbdf8728303fe1b8f86c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.8 MB (83826213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:250e7570580e39f91b70c1be6ce9c61b5f1ddaf644a5747a7cf8535b5e5064e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:08:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 23 Aug 2018 13:01:12 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Thu, 23 Aug 2018 13:01:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 23 Aug 2018 13:01:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 23 Aug 2018 13:02:03 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 23 Aug 2018 13:02:03 GMT
ENV LANG=en_US.utf8
# Thu, 23 Aug 2018 13:02:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 13:02:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 23 Aug 2018 13:02:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 23 Aug 2018 13:02:19 GMT
ENV PG_MAJOR=11
# Thu, 23 Aug 2018 13:02:20 GMT
ENV PG_VERSION=11~beta3-1.pgdg90+2
# Thu, 23 Aug 2018 13:17:25 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Thu, 23 Aug 2018 13:17:25 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 23 Aug 2018 13:17:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 23 Aug 2018 13:17:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Thu, 23 Aug 2018 13:17:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 23 Aug 2018 13:17:27 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 23 Aug 2018 13:17:27 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 23 Aug 2018 13:17:27 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Thu, 23 Aug 2018 13:17:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 23 Aug 2018 13:17:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 13:17:28 GMT
EXPOSE 5432/tcp
# Thu, 23 Aug 2018 13:17:29 GMT
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
	-	`sha256:74f3235ae4cbe54daf72332f3f8f8bd90515b4694bd896d7fe35043f72e6a424`  
		Last Modified: Thu, 23 Aug 2018 14:03:32 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9343eb2a5c19aab17983bf21791ed5b8d4cd335181e9a76d5dc7853d1df05a09`  
		Last Modified: Thu, 23 Aug 2018 14:03:32 GMT  
		Size: 937.9 KB (937938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536b7723d7e54ac9b5b50b561dc5a7903a5956136b27bd9dc6b002ac63d15878`  
		Last Modified: Thu, 23 Aug 2018 14:03:32 GMT  
		Size: 6.2 MB (6207348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd69f287a1110d17d5c5a37c110a397803bbb8f24e460768499b48f352fb2fe`  
		Last Modified: Thu, 23 Aug 2018 14:03:30 GMT  
		Size: 294.4 KB (294441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f959d531692959462e424fdc9f88a50e5db11cb7b277009c8538059a6abade0`  
		Last Modified: Thu, 23 Aug 2018 14:03:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57ffda52a1558a062bd8f476134b55a7492a81b0809d98131644a3f98d655cb`  
		Last Modified: Thu, 23 Aug 2018 14:03:30 GMT  
		Size: 4.5 KB (4479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d26ce4d8545e47c0abf530860dc5b1853b4dc513e8e7cdc99afb943bb7ede4`  
		Last Modified: Thu, 23 Aug 2018 14:03:58 GMT  
		Size: 49.5 MB (49505447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050002650498b4d39aaf5187fba86703de804528b79bd84d0742cd32e70b8509`  
		Last Modified: Thu, 23 Aug 2018 14:03:29 GMT  
		Size: 7.5 KB (7522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e779ab1cb6b2b77cdc4cda738590a80e95750ce0274e85e33e2531e8acaefc37`  
		Last Modified: Thu, 23 Aug 2018 14:03:29 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd970a1457318c8afb086ef4aba70c3ed27ce61493e5973a60386d78ce57d0fd`  
		Last Modified: Thu, 23 Aug 2018 14:03:29 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97044e52a73c4d9370732670e293fa004cf14901a94a27a8686efeef2502eb57`  
		Last Modified: Thu, 23 Aug 2018 14:03:29 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45cbf51dac3e3795ee0d28e52175804e49900c29e4073887bd5483dda33515a`  
		Last Modified: Thu, 23 Aug 2018 14:03:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
