## `postgres:latest`

```console
$ docker pull postgres@sha256:8ea4c7621adf4f4b1e0bf8240a5820857861f10f2f38cc40146a7e354409ca6f
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
$ docker pull postgres@sha256:af1d35970edddf020db16d8a0db9f3cc15be699e7baed8b344a63becb89297d7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116875000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c116111eb0806d217a0ce565dfbf4e2ed0dcde13976a7ed61e5ba60b269a5a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:10:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:10:25 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 27 Mar 2019 00:10:26 GMT
ENV GOSU_VERSION=1.11
# Wed, 27 Mar 2019 00:10:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Mar 2019 00:10:45 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Mar 2019 00:10:46 GMT
ENV LANG=en_US.utf8
# Wed, 27 Mar 2019 00:10:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:10:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Mar 2019 00:10:57 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Mar 2019 00:10:57 GMT
ENV PG_MAJOR=11
# Wed, 27 Mar 2019 00:10:58 GMT
ENV PG_VERSION=11.2-1.pgdg90+1
# Wed, 27 Mar 2019 00:11:38 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Wed, 27 Mar 2019 00:11:40 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Mar 2019 00:11:42 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Mar 2019 00:11:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 27 Mar 2019 00:11:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Mar 2019 00:11:44 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Mar 2019 00:11:44 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Mar 2019 00:11:45 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Wed, 27 Mar 2019 00:11:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Mar 2019 00:11:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 00:11:47 GMT
EXPOSE 5432
# Wed, 27 Mar 2019 00:11:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed00742830a6259520a0f328be6477051547d71da167b0221ce055eddb955db4`  
		Last Modified: Wed, 27 Mar 2019 00:15:39 GMT  
		Size: 4.5 MB (4501173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc611c2aceba60c2b37cc58485583b0e8ef04da475bc8141b4b593f5849418bc`  
		Last Modified: Wed, 27 Mar 2019 00:15:38 GMT  
		Size: 1.8 KB (1778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61becab52798edef54d3d7f7c1fb72488a5cfd1c57248b63e094f1432226187`  
		Last Modified: Wed, 27 Mar 2019 00:15:38 GMT  
		Size: 1.4 MB (1351338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcff41e7aea647eccecdb5d98a8e12e1657bb71cb981d99d82f86d0b09be906`  
		Last Modified: Wed, 27 Mar 2019 00:15:38 GMT  
		Size: 6.2 MB (6182625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820bf1bbf0d7aec9ce9d315afd56b173a659573a5b7b2e996527e50239dfdf80`  
		Last Modified: Wed, 27 Mar 2019 00:15:37 GMT  
		Size: 295.5 KB (295494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050804429905d8272fb1dfc1b82de1ef54a7658ce6d0c71fcafd611972f9aa7f`  
		Last Modified: Wed, 27 Mar 2019 00:15:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782c81275334a8c3d833c8a7142db0bc7018c96d3abb5e61621f440fd59118c6`  
		Last Modified: Wed, 27 Mar 2019 00:15:36 GMT  
		Size: 4.8 KB (4789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb4aaa36ad60b7ff36e02d19576e72b0c426024166e8ff3702673e1479e054f`  
		Last Modified: Wed, 27 Mar 2019 00:15:51 GMT  
		Size: 82.0 MB (82030627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9101c497b57946f73b95aa2a200b4d95f711a24382674e40bada12081e0a0dc8`  
		Last Modified: Wed, 27 Mar 2019 00:15:36 GMT  
		Size: 8.2 KB (8216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:746ef6cad24ff8fa40aa2409f35f573d86bb5a0f53b0cf86ba2ed53a439d7ab8`  
		Last Modified: Wed, 27 Mar 2019 00:15:35 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b3454d86d650680a64499f549430d12709f34c707e92017b934f4ea1e096573`  
		Last Modified: Wed, 27 Mar 2019 00:15:35 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446fd78a7de291387eecaac7ba609645b4825ce8c9998fe59db8502eb81c9716`  
		Last Modified: Wed, 27 Mar 2019 00:15:34 GMT  
		Size: 2.4 KB (2375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b22ef7f366b559234f57796492b5458867650a4442ead1a1e0b43ecc7b8044ae`  
		Last Modified: Wed, 27 Mar 2019 00:15:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v5

```console
$ docker pull postgres@sha256:6948b7dd3202115d9512f5db6dd7b7f03d0227e47526d23af5f72ad84ccb7c9d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81111218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c88d29be803a98eee890e755931ac34d3be27d0643fedb9642337f6ccdc0c70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:30:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 11:30:30 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 27 Mar 2019 11:30:30 GMT
ENV GOSU_VERSION=1.11
# Wed, 27 Mar 2019 11:30:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Mar 2019 11:31:06 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Mar 2019 11:31:07 GMT
ENV LANG=en_US.utf8
# Wed, 27 Mar 2019 11:31:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 11:31:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Mar 2019 11:31:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Mar 2019 11:31:21 GMT
ENV PG_MAJOR=11
# Wed, 27 Mar 2019 11:31:21 GMT
ENV PG_VERSION=11.2-1.pgdg90+1
# Wed, 27 Mar 2019 11:53:46 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Wed, 27 Mar 2019 11:53:48 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Mar 2019 11:53:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Mar 2019 11:53:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 27 Mar 2019 11:53:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Mar 2019 11:53:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Mar 2019 11:53:52 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Mar 2019 11:53:52 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Wed, 27 Mar 2019 11:53:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Mar 2019 11:53:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 11:53:54 GMT
EXPOSE 5432
# Wed, 27 Mar 2019 11:53:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c75cda38b7dcfd352c7dd46a8752d6f917bb2620de9e2518cd91b036d286f9b`  
		Last Modified: Wed, 27 Mar 2019 13:14:36 GMT  
		Size: 4.2 MB (4236741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec27cb1b01f15f2d730e7ac81bc45f50332669456956f2f1851738d7843baa32`  
		Last Modified: Wed, 27 Mar 2019 13:14:34 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6954b358ea4371d56bb2e13e143f2c6846fe732497e425f42546857341026b1`  
		Last Modified: Wed, 27 Mar 2019 13:14:35 GMT  
		Size: 1.3 MB (1311135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de2f812dac475daa5d7ce6b1ba9cfcbe56cef205b42a0265ac403494ab459957`  
		Last Modified: Wed, 27 Mar 2019 13:14:36 GMT  
		Size: 6.2 MB (6185234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a704768bfbbaf83116969ebc3dfc617360be6602fb305a8dcbc9479703b2b5d`  
		Last Modified: Wed, 27 Mar 2019 13:14:33 GMT  
		Size: 293.4 KB (293369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af87cba5db2b8bd55fb5b4fd4ebf8338cd8b3ce0b2688c81e8ef1aa05eed55e8`  
		Last Modified: Wed, 27 Mar 2019 13:14:33 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93eab123f5c7641acfdaaa2589926f4585a6ca12cf4a0f0d09a0ada3b0661fc6`  
		Last Modified: Wed, 27 Mar 2019 13:14:33 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e62e43b092dea353948b82db688e2917f6fb4790010488f35ea32eb1896bf1fa`  
		Last Modified: Wed, 27 Mar 2019 13:14:50 GMT  
		Size: 47.9 MB (47906290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53af2d509bd36c8fbb4e4ba53d7b1912ac7c86188266f3184b283047795f0ef7`  
		Last Modified: Wed, 27 Mar 2019 13:14:32 GMT  
		Size: 8.2 KB (8218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e521e9f7096132d3e0c8b6b2bbd3e43d4214cd4a4900644cdc0d1592409ce97`  
		Last Modified: Wed, 27 Mar 2019 13:14:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb18e4fc26a972142f7ae544aba68e1cb2c3e1e9be7f171d70339542f50d47d`  
		Last Modified: Wed, 27 Mar 2019 13:14:32 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0335729f5d3de4a06e3c1e9c5a1e44eaccca73c0c319d823707cf33bf5d8fa19`  
		Last Modified: Wed, 27 Mar 2019 13:14:32 GMT  
		Size: 2.4 KB (2379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d40d79b33fa88b00e09d8552298f485c3d52a5f359097dd14d068590d88956c`  
		Last Modified: Wed, 27 Mar 2019 13:14:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v7

```console
$ docker pull postgres@sha256:c9890981ef07b2c66be5d82e9960a9acea45f6fcac223031a9ba306c686e2076
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77113083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:209a3f2dc18c332fd031790410bbd6addb6d80e6a1d3563ce151186c37f1f83c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:42:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:42:11 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 27 Mar 2019 13:42:11 GMT
ENV GOSU_VERSION=1.11
# Wed, 27 Mar 2019 13:42:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Mar 2019 13:42:49 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Mar 2019 13:42:49 GMT
ENV LANG=en_US.utf8
# Wed, 27 Mar 2019 13:42:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:42:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Mar 2019 13:43:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Mar 2019 13:43:04 GMT
ENV PG_MAJOR=11
# Wed, 27 Mar 2019 13:43:05 GMT
ENV PG_VERSION=11.2-1.pgdg90+1
# Wed, 27 Mar 2019 14:05:03 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Wed, 27 Mar 2019 14:05:05 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Mar 2019 14:05:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Mar 2019 14:05:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 27 Mar 2019 14:05:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Mar 2019 14:05:09 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Mar 2019 14:05:09 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Mar 2019 14:05:10 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Wed, 27 Mar 2019 14:05:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Mar 2019 14:05:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 14:05:12 GMT
EXPOSE 5432
# Wed, 27 Mar 2019 14:05:12 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9072c4b8f7a8854d62926027d0c42cf5e3e3af407d3bc9e16d1757bd1bb2d454`  
		Last Modified: Wed, 27 Mar 2019 15:20:30 GMT  
		Size: 3.9 MB (3872661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2874c3806a8fa47c69b96732823bf353a8b7e1c81fc13a76733d6fbdb6f3936b`  
		Last Modified: Wed, 27 Mar 2019 15:20:28 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb95b6cd6727dc4807befdef13636a849ff7ef0e9945dddf515e66f2564c2103`  
		Last Modified: Wed, 27 Mar 2019 15:20:29 GMT  
		Size: 1.3 MB (1303473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e81d369ddcc7a844a771be19d279aa66b7f956b86385793f51162dc846fdfd`  
		Last Modified: Wed, 27 Mar 2019 15:20:30 GMT  
		Size: 6.2 MB (6185254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2168d2fd7158d58e91c520966eecf6e3af04fd3831083999500f015f8a9995da`  
		Last Modified: Wed, 27 Mar 2019 15:20:27 GMT  
		Size: 291.7 KB (291737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c0f0e49ec42cfd4a393f4600f9a8d5fd0a7e0d6032e98492c495473ef17316`  
		Last Modified: Wed, 27 Mar 2019 15:20:26 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8411cf3e6e3280268f3f6ff324d8fc93dc95b31ae15be1ad7dd3ecd0600963d`  
		Last Modified: Wed, 27 Mar 2019 15:20:26 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80465cbcbf4ec93fa4612419cb8c278c2291c6d6c85a5c71939d1c0cfadcd884`  
		Last Modified: Wed, 27 Mar 2019 15:20:48 GMT  
		Size: 46.2 MB (46159730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a11f8a7bb920667858be247e13589fd4f2a8e246c91592530a798a35124d5e3`  
		Last Modified: Wed, 27 Mar 2019 15:20:25 GMT  
		Size: 8.2 KB (8218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37798cc2d4dc231e97059056ca58ce587f1f1ffad0c95fb439bc927484b8468c`  
		Last Modified: Wed, 27 Mar 2019 15:20:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadc0c5176bdff1f09eb043ee08be62c8ac6d8f5ba2c70b31b594c5b07830b99`  
		Last Modified: Wed, 27 Mar 2019 15:20:25 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7698e24e4da0a0b45aa033199b7b66ee1bce7d204324bab28f2dc73c9a93cc`  
		Last Modified: Wed, 27 Mar 2019 15:20:25 GMT  
		Size: 2.4 KB (2377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1bf7b07c9177c1b89a35fa00eaab46e221ec1b56e7273b9fb671ed67ac686af`  
		Last Modified: Wed, 27 Mar 2019 15:20:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:b8736a155f245424bb931702e68b93cc53c17a07aee297a821a794f1bf393b5f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79147166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cc7fb4e6c14110315a0669e901dc37f66487f1c5114b1ec4e781c03651cf40b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 12:47:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 12:47:52 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 06 Feb 2019 12:47:53 GMT
ENV GOSU_VERSION=1.11
# Wed, 06 Feb 2019 12:48:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 12:48:50 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 06 Feb 2019 12:48:51 GMT
ENV LANG=en_US.utf8
# Wed, 06 Feb 2019 12:49:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:49:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 12:49:09 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 06 Feb 2019 12:49:10 GMT
ENV PG_MAJOR=11
# Fri, 15 Feb 2019 09:57:51 GMT
ENV PG_VERSION=11.2-1.pgdg90+1
# Fri, 15 Feb 2019 10:37:36 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 15 Feb 2019 10:37:41 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 15 Feb 2019 10:37:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 15 Feb 2019 10:37:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 15 Feb 2019 10:37:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 15 Feb 2019 10:37:49 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 15 Feb 2019 10:37:50 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 15 Feb 2019 10:37:51 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 15 Feb 2019 10:37:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Feb 2019 10:37:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Feb 2019 10:37:55 GMT
EXPOSE 5432
# Fri, 15 Feb 2019 10:37:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff4adf2e575c6dcabd59b0904af1abb11674551864e4a8199da1cd01bb4dd0d8`  
		Last Modified: Wed, 06 Feb 2019 16:34:11 GMT  
		Size: 4.1 MB (4075716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1cdd24320740c281f0399815bcb5a657d008c7d4daade6a6f3cb24c62d99906`  
		Last Modified: Wed, 06 Feb 2019 16:34:09 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2744479f580a1bf9461a80787663f4cd03420e9a8b2674583a6bd950961cf`  
		Last Modified: Wed, 06 Feb 2019 16:34:10 GMT  
		Size: 1.3 MB (1286414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8859b0a7071f2350c2c0afb52eb33e15ac2cff3756969d65bf865cd29dd691f`  
		Last Modified: Wed, 06 Feb 2019 16:34:10 GMT  
		Size: 6.2 MB (6182700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2c99cfdd08c6aabff3a9dfb3bb456b8848de2ceb01b443900e8dde9aa244c89`  
		Last Modified: Wed, 06 Feb 2019 16:34:08 GMT  
		Size: 292.1 KB (292072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fec626d1bacf31f2aa20fb2776e583fce92e2b259f3cf5be8bf441e0d496c92`  
		Last Modified: Wed, 06 Feb 2019 16:34:08 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec014da68be778144f0078a90e0297419ec2189f7045e4f6849797c9195e2f5`  
		Last Modified: Wed, 06 Feb 2019 16:34:07 GMT  
		Size: 4.8 KB (4786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ea5bd8db987796277c48ee58a2a5d8a686a6e2d55321d8a2e72a109013bcdf`  
		Last Modified: Fri, 15 Feb 2019 13:28:48 GMT  
		Size: 46.9 MB (46942379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb555f718b5f90c657c33ce48c16c48e2c8b6b99c62fdcf17543d9b49a0d8e95`  
		Last Modified: Fri, 15 Feb 2019 13:28:27 GMT  
		Size: 8.2 KB (8239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779e83fe808c6910bc9c03b5c10ad2914c969c3fbf8c08defdf9535ae78fc2bc`  
		Last Modified: Fri, 15 Feb 2019 13:28:27 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5fbc5ac71fc1f58ff06d83a4782a5471fd1bb2ce5d5cea962007562526dcdb`  
		Last Modified: Fri, 15 Feb 2019 13:28:27 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde72ff2692452aea21104381e0aef64ca16d0eb768750f81bf18a07ef53bbb8`  
		Last Modified: Fri, 15 Feb 2019 13:28:27 GMT  
		Size: 2.4 KB (2380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa59f01bdf4f4e0843c43a3dab1e4634970ff2cb2d81e9bdabb07da51678cf0`  
		Last Modified: Fri, 15 Feb 2019 13:28:28 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; 386

```console
$ docker pull postgres@sha256:749f3c23083af418428b2a27f1febdffa880ee2c10c697f7c3946166f9f929f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121161344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f48dde6422217ee27c8ff69b4b5a08f3cbbf193326b1cb0961afa631ffe97f0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 05 Mar 2019 11:45:43 GMT
ADD file:25fe90430e63a83798c7fa241ebe3a89591a059654422474b19d5610b104a639 in / 
# Tue, 05 Mar 2019 11:45:44 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 15:53:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 15:53:09 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 05 Mar 2019 15:53:10 GMT
ENV GOSU_VERSION=1.11
# Tue, 05 Mar 2019 15:53:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 15:53:28 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 05 Mar 2019 15:53:29 GMT
ENV LANG=en_US.utf8
# Tue, 05 Mar 2019 15:53:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:53:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Mar 2019 15:53:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 05 Mar 2019 15:53:37 GMT
ENV PG_MAJOR=11
# Tue, 05 Mar 2019 15:53:37 GMT
ENV PG_VERSION=11.2-1.pgdg90+1
# Tue, 05 Mar 2019 15:54:26 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Tue, 05 Mar 2019 15:54:27 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Tue, 05 Mar 2019 15:54:27 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 05 Mar 2019 15:54:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Tue, 05 Mar 2019 15:54:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 05 Mar 2019 15:54:28 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 05 Mar 2019 15:54:29 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 05 Mar 2019 15:54:29 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Tue, 05 Mar 2019 15:54:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 05 Mar 2019 15:54:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 15:54:30 GMT
EXPOSE 5432
# Tue, 05 Mar 2019 15:54:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:14de7d5deca96a0d1b115104a4375816794d85fc365ada5173b5a806f0d8dbcf`  
		Last Modified: Tue, 05 Mar 2019 11:55:10 GMT  
		Size: 23.1 MB (23125680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f977e9c5b43492bb70dcacc87cf54f1587f9d82953af88b0e563a7ddf4aa9340`  
		Last Modified: Tue, 05 Mar 2019 15:58:30 GMT  
		Size: 4.8 MB (4807714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b75b239426c9b10c0f1e3e76d8644b96c7feb4f0a56dfa5818bd9703850636`  
		Last Modified: Tue, 05 Mar 2019 15:58:28 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c646972d79ef39800b9e016dce9bc813798bd28d4ce961843e6e119497a60324`  
		Last Modified: Tue, 05 Mar 2019 15:58:28 GMT  
		Size: 1.3 MB (1317815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5568486c253ca96693eb4b061c1eae013f43d58e62ff68166b0b8f6f7175b37c`  
		Last Modified: Tue, 05 Mar 2019 15:58:29 GMT  
		Size: 6.2 MB (6182505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df4e284327a98ae0d15f7da909f685d171f5072e930ba8c96f7f691c9965a15`  
		Last Modified: Tue, 05 Mar 2019 15:58:27 GMT  
		Size: 296.6 KB (296589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b0afbf8c0a442fc8eb6355e31121a53626102281e670592dd099abbb18a424`  
		Last Modified: Tue, 05 Mar 2019 15:58:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8734c807dd2a41413637b245450a950aae36ee360f2b4e858fb7e38e9fc20012`  
		Last Modified: Tue, 05 Mar 2019 15:58:27 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:160cb369fd2dd0e354b9bbb23b7dbb5d7fab1f89266c806e643c7aeddd8fa921`  
		Last Modified: Tue, 05 Mar 2019 15:58:48 GMT  
		Size: 85.4 MB (85413349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0549a95b75f6ac1b4c214e6fdeda0be522563132acde6459ebc500df1d931f4d`  
		Last Modified: Tue, 05 Mar 2019 15:58:26 GMT  
		Size: 8.2 KB (8218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d50e798c31c60ae0fb53b579dfaf386fd85484fa854a6552d189b788f657a1f`  
		Last Modified: Tue, 05 Mar 2019 15:58:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465e97105d68096cf28f148af6aed48daeae0944836b9b2407c384a6f471eaf8`  
		Last Modified: Tue, 05 Mar 2019 15:58:27 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3a3ec6789ffdbc2d84af6d08fbb56a7c29fcff3b020984e45d97f17e0e5c9c`  
		Last Modified: Tue, 05 Mar 2019 15:58:26 GMT  
		Size: 2.4 KB (2376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf89c90f56446385a2ec20db39540e9750a48ca048a19dec57c97fde8eb903f`  
		Last Modified: Tue, 05 Mar 2019 15:58:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; ppc64le

```console
$ docker pull postgres@sha256:b30c46e6509f22ff4e871c5bc0de8e0dc8b02d056b3ad0951e37cec67a989c18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (83960144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d8326a236b39a40e19f57313adcfd9494456b8a789095d478b75b018cee24d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:13:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:13:54 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 27 Mar 2019 10:13:56 GMT
ENV GOSU_VERSION=1.11
# Wed, 27 Mar 2019 10:14:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Mar 2019 10:15:14 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Mar 2019 10:15:18 GMT
ENV LANG=en_US.utf8
# Wed, 27 Mar 2019 10:15:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:15:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Mar 2019 10:15:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Mar 2019 10:15:58 GMT
ENV PG_MAJOR=11
# Wed, 27 Mar 2019 10:16:05 GMT
ENV PG_VERSION=11.2-1.pgdg90+1
# Wed, 27 Mar 2019 10:20:44 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Wed, 27 Mar 2019 10:20:53 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Mar 2019 10:21:00 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Mar 2019 10:21:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 27 Mar 2019 10:21:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Mar 2019 10:21:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Mar 2019 10:21:21 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Mar 2019 10:21:24 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Wed, 27 Mar 2019 10:21:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Mar 2019 10:21:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 10:21:37 GMT
EXPOSE 5432
# Wed, 27 Mar 2019 10:21:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d621dceb0af107d68a6597dc060c0b49f155a2ef87398994ce7729ed0560e4`  
		Last Modified: Wed, 27 Mar 2019 10:41:59 GMT  
		Size: 4.4 MB (4364970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ffe3ddfd1e82f0dce919a41922623b957646063823ebda9586a271d58c3b37`  
		Last Modified: Wed, 27 Mar 2019 10:41:57 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d213f39f79c77b2312f998b81f6aabc9b592803947e322b51439b93bec9cda6`  
		Last Modified: Wed, 27 Mar 2019 10:41:57 GMT  
		Size: 1.3 MB (1274973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595f4f3b5d50abf24e2831dd3cf664c7ea531cb9ab539146324fd4940ca2c209`  
		Last Modified: Wed, 27 Mar 2019 10:41:57 GMT  
		Size: 6.2 MB (6185455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6ea89e47715252cb182ec40fb4b4523b474786b1ebafc6c6d7d7c01928d14a`  
		Last Modified: Wed, 27 Mar 2019 10:41:53 GMT  
		Size: 293.5 KB (293473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a76b52c2a71eca6545aa59451b0e6f1ce654897574afabd7217bd91f0c81f696`  
		Last Modified: Wed, 27 Mar 2019 10:41:53 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5d4f889e22330d1b73613ddcf7b59f19aad3cb22a7563ddef2b5abe7b31c89`  
		Last Modified: Wed, 27 Mar 2019 10:41:52 GMT  
		Size: 4.8 KB (4793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7e0e2c22206bf58a433b6a35bb75d646730a1dc76370e2f7dc1865ee601466`  
		Last Modified: Wed, 27 Mar 2019 10:42:05 GMT  
		Size: 49.1 MB (49072081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992c84887b5f78b220e623ef7512936333e41db12df8628f7ca3388def73c5f`  
		Last Modified: Wed, 27 Mar 2019 10:41:50 GMT  
		Size: 8.2 KB (8219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737658de0136318e439fd3113f1fc9ef4b5d11a1ba337db6ad0aadcbf7f6a694`  
		Last Modified: Wed, 27 Mar 2019 10:41:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b09f386adb6b71fa0a2952b4b90c335db6c0a69074b4fdfe1db9ccf12e24a55`  
		Last Modified: Wed, 27 Mar 2019 10:41:49 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c34eacde4fe0c665aaeb68fd9e64e97e716a1cb4577e0d72f69deda3ab52c8`  
		Last Modified: Wed, 27 Mar 2019 10:41:49 GMT  
		Size: 2.4 KB (2378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2707637b830119059617f2ce7d5964a03a0a38d84b35fdfb0d2a21f5c78502b6`  
		Last Modified: Wed, 27 Mar 2019 10:41:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; s390x

```console
$ docker pull postgres@sha256:9424abaa3a6da64e14790cdd59a3a865e30baf3dbbd6393f5c0b9d80e1bf7488
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84064695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66e67ee871b698fa1fe917478a994a4b834f13ce80e1b87eaed9faef58c39bbe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 14:14:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 14:14:50 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 27 Mar 2019 14:14:50 GMT
ENV GOSU_VERSION=1.11
# Wed, 27 Mar 2019 14:15:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Mar 2019 14:15:24 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Mar 2019 14:15:25 GMT
ENV LANG=en_US.utf8
# Wed, 27 Mar 2019 14:15:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 14:15:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Mar 2019 14:15:36 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Mar 2019 14:15:36 GMT
ENV PG_MAJOR=11
# Wed, 27 Mar 2019 14:15:36 GMT
ENV PG_VERSION=11.2-1.pgdg90+1
# Wed, 27 Mar 2019 14:29:38 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Wed, 27 Mar 2019 14:29:39 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Mar 2019 14:29:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Mar 2019 14:29:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 27 Mar 2019 14:29:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Mar 2019 14:29:41 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Mar 2019 14:29:41 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Mar 2019 14:29:42 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Wed, 27 Mar 2019 14:29:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Mar 2019 14:29:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Mar 2019 14:29:43 GMT
EXPOSE 5432
# Wed, 27 Mar 2019 14:29:44 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bae1ded30ba8d578f11584dff23c2b596fd0a44f35b572659b2f1393dd467e9`  
		Last Modified: Wed, 27 Mar 2019 15:19:43 GMT  
		Size: 4.5 MB (4533468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaf1016f577284d11eab3b87bf65fb0632606ff3278bd2e1346a45f99d50ed8`  
		Last Modified: Wed, 27 Mar 2019 15:19:42 GMT  
		Size: 1.8 KB (1783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d304959370670b08aeaa3c6ab9c2ebd38f90eb03533ba94dc0adabf1fcd3148f`  
		Last Modified: Wed, 27 Mar 2019 15:19:42 GMT  
		Size: 1.3 MB (1340784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bfa3c51630b5dbc02d27bf141a48a18e3b0a4946edd6d2dcb7bcbd5ecc3bb6`  
		Last Modified: Wed, 27 Mar 2019 15:19:42 GMT  
		Size: 6.2 MB (6207250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1468f644316fea43a3b8a1823cf1017d9b2497fc491d52b853862832479f78ed`  
		Last Modified: Wed, 27 Mar 2019 15:19:41 GMT  
		Size: 294.4 KB (294413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c947ca29fd0304490db9cfff000782afb9729d48547610bc8b9b71aca38535`  
		Last Modified: Wed, 27 Mar 2019 15:19:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e5f2f5745f861e0e8a10aea3b1726075a98bb159b10c58aae337f76d8bc361`  
		Last Modified: Wed, 27 Mar 2019 15:19:41 GMT  
		Size: 4.8 KB (4789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e7e3500fec6c01812cd13183affe0d6e57e52d9e1668faff8d68835cbf7b1c`  
		Last Modified: Wed, 27 Mar 2019 15:19:53 GMT  
		Size: 49.3 MB (49325792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38e32d609d7ddf2757691fcf95ece7ac598411d2072761c4501d68571a8f58d`  
		Last Modified: Wed, 27 Mar 2019 15:19:40 GMT  
		Size: 8.2 KB (8220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91b3a069dfa1073d2732d70164cb892d311be4362f3631d7c4808d60327d924`  
		Last Modified: Wed, 27 Mar 2019 15:19:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125e191d89438f5930cbe119fac5d13ae449463a06f236e599a81c89f5aefe53`  
		Last Modified: Wed, 27 Mar 2019 15:19:40 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a6f304f38ad0ee17bf5975d74712099899e342c5becd33b97e96b3c40e1167`  
		Last Modified: Wed, 27 Mar 2019 15:19:40 GMT  
		Size: 2.4 KB (2377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c74df2b052718db9f169a0f3e85a0df9300a261ddea17661bd957c88382bec`  
		Last Modified: Wed, 27 Mar 2019 15:19:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
