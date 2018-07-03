## `postgres:11-beta2`

```console
$ docker pull postgres@sha256:b995b256b46021adaccdc55849d37817d4f8ffce51605e77b8ab1c03cc5072b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `postgres:11-beta2` - linux; amd64

```console
$ docker pull postgres@sha256:a6a2aaa78d51607e02bc7356b08bd96546767ef72108698fc683fe5e47ade190
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113904596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fd2650d5df73508b056ec60ec302932ce8b64245f56977aaf7d22dfcb2d35c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Mon, 02 Jul 2018 23:33:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 02 Jul 2018 23:33:38 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 02 Jul 2018 23:33:39 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Jul 2018 23:34:00 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 02 Jul 2018 23:34:16 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 02 Jul 2018 23:34:18 GMT
ENV LANG=en_US.utf8
# Mon, 02 Jul 2018 23:34:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:34:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 02 Jul 2018 23:34:34 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 02 Jul 2018 23:34:42 GMT
ENV PG_MAJOR=11
# Mon, 02 Jul 2018 23:34:42 GMT
ENV PG_VERSION=11~beta2-1.pgdg90+1
# Mon, 02 Jul 2018 23:35:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 02 Jul 2018 23:35:34 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 02 Jul 2018 23:35:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 02 Jul 2018 23:35:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Mon, 02 Jul 2018 23:35:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 02 Jul 2018 23:35:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 02 Jul 2018 23:35:37 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 02 Jul 2018 23:35:37 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Mon, 02 Jul 2018 23:35:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 02 Jul 2018 23:35:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Jul 2018 23:35:38 GMT
EXPOSE 5432/tcp
# Mon, 02 Jul 2018 23:35:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5856e38168a601cedcb587d8a5aa496fe6378328800926e982409ec2dcc706a`  
		Last Modified: Mon, 02 Jul 2018 23:44:44 GMT  
		Size: 4.5 MB (4498619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e6f1ceebb0721fe34a83ff7b84e27b90a2f2b84b84b8ae9e906d304e0b3671`  
		Last Modified: Mon, 02 Jul 2018 23:44:43 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3303bcd001283aec8a1974da593f18e005f04dd5d5d913c6897db2e24cc27cc2`  
		Last Modified: Mon, 02 Jul 2018 23:44:43 GMT  
		Size: 952.1 KB (952058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea95ff44bf6e08780dda2a885586ede484e074182faa5ff4d1db8d2a60033a87`  
		Last Modified: Mon, 02 Jul 2018 23:44:41 GMT  
		Size: 6.2 MB (6182538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3f31f1e620ec52e55a8ca10df5931f6fcd6ab21f2e3593c9d29d6734d34473`  
		Last Modified: Mon, 02 Jul 2018 23:44:40 GMT  
		Size: 295.4 KB (295441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234873881fb253dde178bb3c4fa8402a3fe012459b76842d8ac0a21f9058198d`  
		Last Modified: Mon, 02 Jul 2018 23:44:39 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f020aa822d217ba37a8c9a270d075c0186a95308b2e8590458fe1b4d2694bba7`  
		Last Modified: Mon, 02 Jul 2018 23:44:39 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09891100f1ea278b8dd2b75e6521751fdf6e68bf05375127090b9de9933af0ab`  
		Last Modified: Mon, 02 Jul 2018 23:45:09 GMT  
		Size: 79.5 MB (79462434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a7f0ec01e7341535db10442dbb8f0c371885681e4b29703e0b6e28a90c70f0`  
		Last Modified: Mon, 02 Jul 2018 23:44:36 GMT  
		Size: 7.5 KB (7525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34da16ea5f9b89e0bc66926b436975b483e734bb2dc2b3956cab019a51ded494`  
		Last Modified: Mon, 02 Jul 2018 23:44:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f301ec6f703ae65eb855749de126ef6638c1e1502df9c0a9b181e391a45cf96`  
		Last Modified: Mon, 02 Jul 2018 23:44:36 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7768354767f2e543f8c60c4c273e0db39e3c2d4fe7e148a94e41cabc4e3a95ce`  
		Last Modified: Mon, 02 Jul 2018 23:44:37 GMT  
		Size: 2.2 KB (2238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3de5137c7f180b3e177d6908c492a63a1829e83ade90d8f549b4c508022ef20`  
		Last Modified: Mon, 02 Jul 2018 23:44:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta2` - linux; ppc64le

```console
$ docker pull postgres@sha256:bc37df113c1f719626b4001860403734170665188f971d4dcf4edfddc1f293fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86550050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be07de128365d3d0efa438752805764bb6b2a49c892c68fb2c9607c42f05d1a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:56:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 11:56:46 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Jun 2018 11:56:48 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 11:57:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Jun 2018 11:57:44 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Jun 2018 11:57:44 GMT
ENV LANG=en_US.utf8
# Wed, 27 Jun 2018 11:57:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:57:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Jun 2018 11:58:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Jun 2018 11:58:07 GMT
ENV PG_MAJOR=11
# Tue, 03 Jul 2018 08:31:02 GMT
ENV PG_VERSION=11~beta2-1.pgdg90+1
# Tue, 03 Jul 2018 08:36:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 03 Jul 2018 08:37:03 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 03 Jul 2018 08:37:09 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 03 Jul 2018 08:37:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Tue, 03 Jul 2018 08:37:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 03 Jul 2018 08:37:18 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 03 Jul 2018 08:37:19 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 03 Jul 2018 08:37:22 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Tue, 03 Jul 2018 08:37:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 03 Jul 2018 08:37:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Jul 2018 08:37:33 GMT
EXPOSE 5432/tcp
# Tue, 03 Jul 2018 08:37:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192f021b23de03a1ffc6ca933fb949e679b43d60fae885626a089223015ec8db`  
		Last Modified: Wed, 27 Jun 2018 12:24:41 GMT  
		Size: 4.4 MB (4360633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734b04a399aa927d7eb731f27b675db7d4a1dbf5c55eb329ed7a65d7f5073fb8`  
		Last Modified: Wed, 27 Jun 2018 12:24:40 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335a4a68a5bc1b532f500e32b5a41e1e1a247548addd8f5e9d9bc52d0bd1730c`  
		Last Modified: Wed, 27 Jun 2018 12:24:40 GMT  
		Size: 920.7 KB (920723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbbb34ee2f45dcd6c832fc16dc811b513dd9d8f622b6e8eb7136b24616aea6a7`  
		Last Modified: Wed, 27 Jun 2018 12:24:39 GMT  
		Size: 6.2 MB (6185299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9523d0e9ad9778451ba28428b556cd56d172cd77f9842be8d36e65e0cad7b8b9`  
		Last Modified: Wed, 27 Jun 2018 12:24:37 GMT  
		Size: 293.3 KB (293339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2692176dcdf7f0706ec5a2fcb96b1c73750d5980ee5b0a37ade03259cb94e34c`  
		Last Modified: Wed, 27 Jun 2018 12:24:36 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de9f53f305815b2d7e9d9339d6731087dc0cf8bcbdc2cd578937863947b2a41`  
		Last Modified: Wed, 27 Jun 2018 12:24:36 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f736cbb30cb0eca63ca94f748d092901214d25eaba0f1e0468f0924b6703d74c`  
		Last Modified: Tue, 03 Jul 2018 08:42:26 GMT  
		Size: 52.0 MB (52020425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c786bae34d663234f0e3c41383d73672804db5a7c42afe89e616c20e22a160`  
		Last Modified: Tue, 03 Jul 2018 08:42:09 GMT  
		Size: 7.5 KB (7526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518fbe595fcbeadd52e45cf1fcc756bceddde1a90633e0a606152d94667a64cf`  
		Last Modified: Tue, 03 Jul 2018 08:42:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864b8937fddfa2c7002596498b5ccd3bb4e8bcacb93dcf6ecb1f263b99cd0bd4`  
		Last Modified: Tue, 03 Jul 2018 08:42:09 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20f2008047ff2aa3d8f43a9961ba709ab4eba126c2294dcb033398aef1641b9`  
		Last Modified: Tue, 03 Jul 2018 08:42:09 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa048b9a968641b8976778916d0da07bae7ece4deaefd6356894d0b0ecf2ced`  
		Last Modified: Tue, 03 Jul 2018 08:42:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
