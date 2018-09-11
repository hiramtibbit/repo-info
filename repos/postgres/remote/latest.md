## `postgres:latest`

```console
$ docker pull postgres@sha256:58632977cbe04f0ba00a704a6dcabbe3477a7f3543b27359f0222c9e0041a370
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
$ docker pull postgres@sha256:7c67a14d481620674bc3cf8279d981ac609055a3468427eb870a13ee891f7990
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83221420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:084ec18124c8ccb08c7df98492db211f19a6a3d9e159cc88d1281c634b90bb87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:49:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 21:49:42 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 04 Sep 2018 21:49:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 04 Sep 2018 21:50:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 04 Sep 2018 21:50:16 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 04 Sep 2018 21:50:16 GMT
ENV LANG=en_US.utf8
# Tue, 04 Sep 2018 21:50:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 21:50:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 04 Sep 2018 21:50:27 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 04 Sep 2018 21:51:46 GMT
ENV PG_MAJOR=10
# Tue, 04 Sep 2018 21:51:47 GMT
ENV PG_VERSION=10.5-1.pgdg90+1
# Tue, 04 Sep 2018 21:52:42 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Tue, 04 Sep 2018 21:52:43 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 04 Sep 2018 21:52:44 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 04 Sep 2018 21:52:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Tue, 04 Sep 2018 21:52:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 04 Sep 2018 21:52:45 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 04 Sep 2018 21:52:46 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 10 Sep 2018 22:23:17 GMT
COPY file:8679fccc32fd3636a9beb8295538f82d9b1466e95ef6111e8c677c558ba9cb1e in /usr/local/bin/ 
# Mon, 10 Sep 2018 22:23:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 10 Sep 2018 22:23:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Sep 2018 22:23:18 GMT
EXPOSE 5432/tcp
# Mon, 10 Sep 2018 22:23:18 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e0de21e21803e154e4577c3c7099b26379982323e77c99b1af82fe35d69ab2d`  
		Last Modified: Tue, 04 Sep 2018 21:57:45 GMT  
		Size: 4.5 MB (4498586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b06ac4cd8472102c36463b298b9491dd73e494591eff61df40363a9f7e4e51`  
		Last Modified: Tue, 04 Sep 2018 21:57:44 GMT  
		Size: 1.8 KB (1779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e76b354b47eab8a691bced5f09694fa3b9eed4aac98b5f6fdfdfd5897f64a5`  
		Last Modified: Tue, 04 Sep 2018 21:57:43 GMT  
		Size: 951.9 KB (951938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0c9f244b65c65566172d1ee5cf26818035c18160e7d252ff4dae877098646a`  
		Last Modified: Tue, 04 Sep 2018 21:57:44 GMT  
		Size: 6.2 MB (6182651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37117d8abb6dc7015e3f5391b215593c03932c9ab9c2ab4bf84f5bbc337eedba`  
		Last Modified: Tue, 04 Sep 2018 21:57:42 GMT  
		Size: 295.5 KB (295487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b541f5d818afa68436150ffa4f7dbd6b576acb87e1ef822e4542c4f67b0b914`  
		Last Modified: Tue, 04 Sep 2018 21:57:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb4855fcd963f2e05e2582e8b73956f9387d9ee6943f1729843fea4c7671ab6`  
		Last Modified: Tue, 04 Sep 2018 21:57:42 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c7fe264586be1adf73c7d9a766608974206e4e629b6b5c4cc096e7eba6ffd87`  
		Last Modified: Tue, 04 Sep 2018 21:58:32 GMT  
		Size: 48.8 MB (48790172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64568a495c354af315c634bd6b5b6b28622ecb41b55f9741953dd1257404206c`  
		Last Modified: Tue, 04 Sep 2018 21:58:15 GMT  
		Size: 7.3 KB (7299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283257efa745a60662acb4e6cecb5099c830bc6e54d79e316adefcbf9ccb5770`  
		Last Modified: Tue, 04 Sep 2018 21:58:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:222b134fa51d27061fed8eedfd44725a969dc6091db19bd795487ad8cdf1843d`  
		Last Modified: Tue, 04 Sep 2018 21:58:14 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a30e7f2a9f52bbde3333e40a3bad8d6f269e53c948ab4852ab5a371c998506`  
		Last Modified: Mon, 10 Sep 2018 22:25:16 GMT  
		Size: 2.2 KB (2217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bffc7855b02106837e6dc7a32bf41f40cd3445e822347333ff7f7229b37ec8`  
		Last Modified: Mon, 10 Sep 2018 22:25:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v5

```console
$ docker pull postgres@sha256:aa227c4d70e23735832d86de8dff76717ca733f7429d3da77076ecde1038353a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.3 MB (80326517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1d6230a6023cd96bfe937ca1599782b9c58e9146324bcd45a9466060b99d6a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:51:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:51:58 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 05 Sep 2018 11:51:58 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:52:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 05 Sep 2018 11:52:30 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 05 Sep 2018 11:52:30 GMT
ENV LANG=en_US.utf8
# Wed, 05 Sep 2018 11:52:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:52:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 11:52:43 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 12:13:42 GMT
ENV PG_MAJOR=10
# Wed, 05 Sep 2018 12:13:43 GMT
ENV PG_VERSION=10.5-1.pgdg90+1
# Wed, 05 Sep 2018 12:33:11 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Wed, 05 Sep 2018 12:33:16 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 05 Sep 2018 12:33:17 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 05 Sep 2018 12:33:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Wed, 05 Sep 2018 12:33:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 05 Sep 2018 12:33:19 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 05 Sep 2018 12:33:19 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 05 Sep 2018 12:33:20 GMT
COPY file:9dfee985db858ea9bcf8869aa2929efed1affa079c7fc23523f13953b5c3f562 in /usr/local/bin/ 
# Wed, 05 Sep 2018 12:33:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 12:33:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 12:33:21 GMT
EXPOSE 5432/tcp
# Wed, 05 Sep 2018 12:33:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6362fda1aa42858974dfa2909bcc22eb1aa2ed5cc124f3d341b1e5f35f7a8b`  
		Last Modified: Wed, 05 Sep 2018 13:49:10 GMT  
		Size: 4.2 MB (4231608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b86b431316ae55c2f3d9096a232b7084e44efcb3aad971295634168ac3dbe9b3`  
		Last Modified: Wed, 05 Sep 2018 13:49:08 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf37136e2bec52c83ebda303a805e22e869836d898974a8846a2576e5feac2e`  
		Last Modified: Wed, 05 Sep 2018 13:49:08 GMT  
		Size: 942.3 KB (942339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df5625f05c595c549d6e60ee5804271ba8b44dbc0dd73434ef64fbe00c67b91`  
		Last Modified: Wed, 05 Sep 2018 13:49:10 GMT  
		Size: 6.2 MB (6185063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3b2aa895a3c0f227e8b829d0856d9546a859df11d7895f0d86df65a3189399`  
		Last Modified: Wed, 05 Sep 2018 13:49:06 GMT  
		Size: 293.3 KB (293266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c357bc09f575cd979682fea865bbef1168897803fc787c71d5b6808f53af0bd2`  
		Last Modified: Wed, 05 Sep 2018 13:49:06 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2696469544ee23e7c751d635824ef8b7e5f08bb1b4d046585b021db080a52936`  
		Last Modified: Wed, 05 Sep 2018 13:49:06 GMT  
		Size: 4.8 KB (4793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6221dbc58c13c38fb345531906a018899be82976f246c2826a78a569b28f91`  
		Last Modified: Wed, 05 Sep 2018 13:50:05 GMT  
		Size: 47.5 MB (47494605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3a2df5072d4e107a895308fa26a8306de20c26d55b4f0d04860022f6fd0b99`  
		Last Modified: Wed, 05 Sep 2018 13:49:52 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f16b6953a8ab74c3b8fe6535b71484ef6e5a67a6341b76f57194c206cba9b8`  
		Last Modified: Wed, 05 Sep 2018 13:49:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f596ac77e1cc5b7c126dacce7bfdf1379bb607b6ae652fd2068152367ce24e`  
		Last Modified: Wed, 05 Sep 2018 13:49:46 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad794821dbd5308b9cdc7be351446f6940e95d03b3b4cb3ca4a708dcfbc37687`  
		Last Modified: Wed, 05 Sep 2018 13:49:46 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caaddbe2431abc3d217a97ddceedb305bdb88a31753b810db9d4b8dda23983a8`  
		Last Modified: Wed, 05 Sep 2018 13:49:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v7

```console
$ docker pull postgres@sha256:f88bc94da5958068bf7f873029d7d68fed7c3987aa27fa109ac4588975f30893
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76320799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae7e49fb1aa9005e56a7b37b518cba3712f374ec40c7d95379ab090e1fb92446`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:52:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 13:52:39 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 05 Sep 2018 13:52:39 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 13:52:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 05 Sep 2018 13:53:04 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 05 Sep 2018 13:53:05 GMT
ENV LANG=en_US.utf8
# Wed, 05 Sep 2018 13:53:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:53:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 13:53:16 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 14:11:19 GMT
ENV PG_MAJOR=10
# Wed, 05 Sep 2018 14:11:19 GMT
ENV PG_VERSION=10.5-1.pgdg90+1
# Wed, 05 Sep 2018 14:28:55 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Wed, 05 Sep 2018 14:28:56 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 05 Sep 2018 14:28:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 05 Sep 2018 14:28:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Wed, 05 Sep 2018 14:28:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 05 Sep 2018 14:29:00 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 05 Sep 2018 14:29:01 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 05 Sep 2018 14:29:01 GMT
COPY file:9dfee985db858ea9bcf8869aa2929efed1affa079c7fc23523f13953b5c3f562 in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:29:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 14:29:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 14:29:03 GMT
EXPOSE 5432/tcp
# Wed, 05 Sep 2018 14:29:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d122409be29eca6f22f234d2af1f1c5069b69c5a970bc5a5f02260ffedc5d8f`  
		Last Modified: Wed, 05 Sep 2018 15:37:07 GMT  
		Size: 3.9 MB (3868688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c1f86e7c17db3efc048b05f2843db3e5d928707f78050bb58d5c32362d159`  
		Last Modified: Wed, 05 Sep 2018 15:37:04 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2222a3ad96a0942f167fc635bd8d7bc604c01fbb061b1d3f9731c112e064f4a`  
		Last Modified: Wed, 05 Sep 2018 15:37:04 GMT  
		Size: 926.0 KB (925996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f749797c6e18cad16bdd9ffeef1c37d575e98127f3e48ce265c34cef57a658`  
		Last Modified: Wed, 05 Sep 2018 15:37:07 GMT  
		Size: 6.2 MB (6185082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6705547b577a4ba70249ca66e17b2149521dee898d3b0c31bdb12df529f056`  
		Last Modified: Wed, 05 Sep 2018 15:37:03 GMT  
		Size: 291.7 KB (291674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79d42e3fab0a6f1aef85ac12ef7c69ca991b7d19857d2d978384bc5e5baf5e2`  
		Last Modified: Wed, 05 Sep 2018 15:37:03 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17109f2db1b9d2f905e6b3ff31452e4689c581b971ef8c239957324a64adf10f`  
		Last Modified: Wed, 05 Sep 2018 15:37:03 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a4c4cc4b270289d901134a560a1d547869aa11e6174a310ee9cc1de29743df`  
		Last Modified: Wed, 05 Sep 2018 15:37:50 GMT  
		Size: 45.8 MB (45762437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6b2d4ff836635a3071d745eca4e840f07c7b957995cdace22e872b8a43bce8`  
		Last Modified: Wed, 05 Sep 2018 15:37:34 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f08d66622b75edcbfbff11f0e5756930de628baae23ee3935bb4da41781dadb`  
		Last Modified: Wed, 05 Sep 2018 15:37:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3103238af2f89944c1f32aca89fc19c6197f3bf78cd512c61300f69352e370a`  
		Last Modified: Wed, 05 Sep 2018 15:37:34 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c971b3a348979a0ffb7ae93a7f58e43f77e3dc94b0c74b8f107b5540c44330f`  
		Last Modified: Wed, 05 Sep 2018 15:37:34 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b406ec2801f492b4bf4746cc927bd9c8095017bc1b2c203d2d1cb468bcab5fcc`  
		Last Modified: Wed, 05 Sep 2018 15:37:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:3190ee4069a2619bc889e9bf3b23c7d2ef98411c77b6cb3d9e9bbf4f726a8dd8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78357066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ce879b3f2bca0181f75235d5e69e4b8f02731bdef1a441d9cbeeb07b73224de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:44:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:44:11 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 05 Sep 2018 10:44:12 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 10:44:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 05 Sep 2018 10:45:01 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 05 Sep 2018 10:45:02 GMT
ENV LANG=en_US.utf8
# Wed, 05 Sep 2018 10:45:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:45:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 10:45:18 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 11:22:27 GMT
ENV PG_MAJOR=10
# Wed, 05 Sep 2018 11:22:28 GMT
ENV PG_VERSION=10.5-1.pgdg90+1
# Wed, 05 Sep 2018 11:59:49 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Wed, 05 Sep 2018 11:59:52 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 05 Sep 2018 11:59:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 05 Sep 2018 11:59:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Wed, 05 Sep 2018 11:59:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 05 Sep 2018 11:59:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 05 Sep 2018 11:59:58 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 05 Sep 2018 12:00:01 GMT
COPY file:9dfee985db858ea9bcf8869aa2929efed1affa079c7fc23523f13953b5c3f562 in /usr/local/bin/ 
# Wed, 05 Sep 2018 12:00:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 12:00:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 12:00:05 GMT
EXPOSE 5432/tcp
# Wed, 05 Sep 2018 12:00:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ae95955a5e89a549556cb92d0a2eab5438b1f53db34503945d1f6c23c87bf5`  
		Last Modified: Wed, 05 Sep 2018 14:19:40 GMT  
		Size: 4.1 MB (4073267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b0f23f78eab37755318a2186c61ede77b542b9f911f4f85a110dbbcc1c7e86f`  
		Last Modified: Wed, 05 Sep 2018 14:19:33 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a98ac3eb452098f9330c64e9f999e8636b0c9d254171979b3f46ee2250dde7a`  
		Last Modified: Wed, 05 Sep 2018 14:19:35 GMT  
		Size: 919.2 KB (919249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dbf2698d57e8f243ba1124fb207ed66e97759c8c1f9177cc59af6d67a4c6ed7`  
		Last Modified: Wed, 05 Sep 2018 14:19:45 GMT  
		Size: 6.2 MB (6182764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d86df9a056edd9231f6c73e60a02cc25e8754b450c922d80f7bff9c6e8bccd33`  
		Last Modified: Wed, 05 Sep 2018 14:19:31 GMT  
		Size: 291.9 KB (291942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad89134c5a8cae9d25ae1c4b03f805b8b14cd531e50035b0c21c7a7c193cc90d`  
		Last Modified: Wed, 05 Sep 2018 14:19:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4b60f7fd252b6d87b8a4f569668117d34b869e0c64600dea1e1237866fddb3`  
		Last Modified: Wed, 05 Sep 2018 14:19:30 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8fcc3160a31fd44d6f7e59aebec88bf49c9a9658f4f8c45ef8a050780f769b9`  
		Last Modified: Wed, 05 Sep 2018 14:21:44 GMT  
		Size: 46.5 MB (46541523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541e004447434950c0b84259c22ecbe3847a0ea511daa08d875b3fae1a8f3b1f`  
		Last Modified: Wed, 05 Sep 2018 14:21:23 GMT  
		Size: 7.3 KB (7302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de858e89e3b1954211a333c6101092f4249b23f4fa93606e2e9b748a641704b9`  
		Last Modified: Wed, 05 Sep 2018 14:21:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aedca52677d375e121e08ca458c413b8b1112b72eab9896436967a008f1191f3`  
		Last Modified: Wed, 05 Sep 2018 14:21:23 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd94898f5eae76e18ec13bd5bb039e9f0fcb138518c6a102b1143adb49b7f620`  
		Last Modified: Wed, 05 Sep 2018 14:21:23 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e637eabca30e6175ddc6c460f6e8210204490d940729f0a37dd093b3befb54`  
		Last Modified: Wed, 05 Sep 2018 14:21:24 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; 386

```console
$ docker pull postgres@sha256:bcd3252f38df39058ddc539d28ff0ee649536f42c1c7a1a88c83e6683a5a05de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.2 MB (85230958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a726b7c4c88a6375316d60cec16899ff8b7c3308f2f44c7ab269c4161e26418`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 21:43:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Sep 2018 21:43:32 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Thu, 06 Sep 2018 21:43:32 GMT
ENV GOSU_VERSION=1.10
# Thu, 06 Sep 2018 21:43:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 06 Sep 2018 21:43:51 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 06 Sep 2018 21:43:51 GMT
ENV LANG=en_US.utf8
# Thu, 06 Sep 2018 21:43:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:43:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 06 Sep 2018 21:43:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 06 Sep 2018 21:45:07 GMT
ENV PG_MAJOR=10
# Thu, 06 Sep 2018 21:45:08 GMT
ENV PG_VERSION=10.5-1.pgdg90+1
# Thu, 06 Sep 2018 21:45:43 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Thu, 06 Sep 2018 21:45:44 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 06 Sep 2018 21:45:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 06 Sep 2018 21:45:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Thu, 06 Sep 2018 21:45:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 06 Sep 2018 21:45:45 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 06 Sep 2018 21:45:46 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 06 Sep 2018 21:45:46 GMT
COPY file:9dfee985db858ea9bcf8869aa2929efed1affa079c7fc23523f13953b5c3f562 in /usr/local/bin/ 
# Thu, 06 Sep 2018 21:45:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 06 Sep 2018 21:45:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Sep 2018 21:45:47 GMT
EXPOSE 5432/tcp
# Thu, 06 Sep 2018 21:45:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b8ebefd30918f4c8221781b2fb805e9cba2f4ed9448b7c73a38bbdbe7ec702`  
		Last Modified: Thu, 06 Sep 2018 21:49:17 GMT  
		Size: 4.8 MB (4803872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cae0ef7ba95f2c2418ec3286b70235cf8bdea59519f91b0add15c2d6aacc79`  
		Last Modified: Thu, 06 Sep 2018 21:49:14 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a28e32777cf1c500c1892ab7df005da4c56ab51602b75febe32a1bb55c980fc`  
		Last Modified: Thu, 06 Sep 2018 21:49:14 GMT  
		Size: 931.3 KB (931347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b65e0f46d125e2a9e792fb90571e82138847d4baa12f682a6ec038f5fff3353`  
		Last Modified: Thu, 06 Sep 2018 21:49:16 GMT  
		Size: 6.2 MB (6182503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8fa13f46607b4db543f7a17d1fe7763f8fdb70f661f61bc38f605265f637f1`  
		Last Modified: Thu, 06 Sep 2018 21:49:13 GMT  
		Size: 296.5 KB (296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f3377365de16abbb595f6aad0b9bebcf0438efad415c418f08a41248ae5465`  
		Last Modified: Thu, 06 Sep 2018 21:49:13 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dbfee22f8f5d812f6a10a24a497206cb71ee4a331c086398e2279b8dad9955b`  
		Last Modified: Thu, 06 Sep 2018 21:49:13 GMT  
		Size: 4.8 KB (4793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77a47de2a2da1fbc84b1d8d0037f0ba59c91dd11dbfa934331fae3a4345c831`  
		Last Modified: Thu, 06 Sep 2018 21:49:53 GMT  
		Size: 49.9 MB (49873571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b5e21fc3f581d3d4d2a407397f9dd941c740b6186ecef5a22ffc1af7da3346`  
		Last Modified: Thu, 06 Sep 2018 21:49:39 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc0fedb00c539db6e59078ed3a25b19b38cb0fef5c874bab260d9c15e8bd486`  
		Last Modified: Thu, 06 Sep 2018 21:49:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a23227d02a82a8f51ac1bf77f88bd99c765aa66fbd53b9b3f7ceaae376367e`  
		Last Modified: Thu, 06 Sep 2018 21:49:39 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09499a41a85a7f1334056aab7842abc183b2b01acf09175a561679743f556ea5`  
		Last Modified: Thu, 06 Sep 2018 21:49:39 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aaee1c118f9bcf64bfc735ff89316445ef394efa9cf6ac1552481c9b70ceaf2`  
		Last Modified: Thu, 06 Sep 2018 21:49:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; ppc64le

```console
$ docker pull postgres@sha256:e01939ed4af3ddb04a336b250896dcc7b5353bf152189b1de76346899f376fd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83167390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cedc43db554ab05d0a560b9b6181fb5df6530b62480a609510762661373e3265`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:40:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:40:24 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 05 Sep 2018 12:40:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 12:41:00 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 05 Sep 2018 12:41:19 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 05 Sep 2018 12:41:22 GMT
ENV LANG=en_US.utf8
# Wed, 05 Sep 2018 12:41:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:41:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 12:41:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 12:45:00 GMT
ENV PG_MAJOR=10
# Wed, 05 Sep 2018 12:45:01 GMT
ENV PG_VERSION=10.5-1.pgdg90+1
# Wed, 05 Sep 2018 12:47:00 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Wed, 05 Sep 2018 12:47:05 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 05 Sep 2018 12:47:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 05 Sep 2018 12:47:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Wed, 05 Sep 2018 12:47:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 05 Sep 2018 12:47:18 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 05 Sep 2018 12:47:22 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 11 Sep 2018 08:36:04 GMT
COPY file:8679fccc32fd3636a9beb8295538f82d9b1466e95ef6111e8c677c558ba9cb1e in /usr/local/bin/ 
# Tue, 11 Sep 2018 08:36:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 11 Sep 2018 08:36:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Sep 2018 08:36:08 GMT
EXPOSE 5432/tcp
# Tue, 11 Sep 2018 08:36:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97c2a2a0962a8fc4da10159cd2cd1ab721b034471d9db97ed106c55aff3b842`  
		Last Modified: Wed, 05 Sep 2018 13:02:32 GMT  
		Size: 4.4 MB (4360576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84217f4122c082f7a91129ba29cb7f4101b075780882041bf45058cc53a65d74`  
		Last Modified: Wed, 05 Sep 2018 13:02:30 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c325ba3809e2a2be4d2e13601616ffda72fdcb87304e61e1e02940fc8831a7`  
		Last Modified: Wed, 05 Sep 2018 13:02:44 GMT  
		Size: 920.5 KB (920543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde9dace0b40087a461ca3aee4c1f38064d16a4e98dbad6ce0a369cde4143654`  
		Last Modified: Wed, 05 Sep 2018 13:02:30 GMT  
		Size: 6.2 MB (6185208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:128f95193ef43a6fe95da201cd5cf73943d6aa4e3c691d356b86e4ebd4be9088`  
		Last Modified: Wed, 05 Sep 2018 13:02:27 GMT  
		Size: 293.3 KB (293319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149d1e70712826d090c6f021684c4c4d105329ae00741c880a7eec628ac2f652`  
		Last Modified: Wed, 05 Sep 2018 13:02:26 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2cf6659509c2a81023a615d61197aec9afba36145aa695010e0c39dc8536111`  
		Last Modified: Wed, 05 Sep 2018 13:02:26 GMT  
		Size: 4.8 KB (4794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a385a844275fb6b39cd3707ef1e675908406e3fd080223f22f2ddd274bad08f3`  
		Last Modified: Wed, 05 Sep 2018 13:03:30 GMT  
		Size: 48.7 MB (48650483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c5f9409e79109ba4c25eb1ae8e744fc1e894e245d1bf638e604df77b382623`  
		Last Modified: Wed, 05 Sep 2018 13:03:09 GMT  
		Size: 7.3 KB (7299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1268df731480cc201a5a4627ca505019947e35a1ea88b8c1bbb289cd778733f`  
		Last Modified: Wed, 05 Sep 2018 13:03:10 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8089200783be7e60da9c9361734c9a7c246108e1b87565e80dc67c6ac4a22705`  
		Last Modified: Wed, 05 Sep 2018 13:03:09 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea87ab36cbd3bfec30cf2e5ad9ee18cd127f23c7d9f5ad6a9573b5133a85bb29`  
		Last Modified: Tue, 11 Sep 2018 08:41:16 GMT  
		Size: 2.2 KB (2223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb502ec2130a2936b50c799aee0db8c6159cfd56304fcdb7cfc094d9b5a57b48`  
		Last Modified: Tue, 11 Sep 2018 08:41:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; s390x

```console
$ docker pull postgres@sha256:e9a7bd0afe594c138ef93e4f36197295b6057739d701ff72aeb264eac4b88eef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83211220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ba974084131e4d9e7a56d59d1486f64ee04459496ad5f5b5da7c9a412bff07d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 05 Sep 2018 11:44:28 GMT
ADD file:f5f366bce70b148326259fed081f171c5f1789dbd1954137fb79deb38cf5cef1 in / 
# Wed, 05 Sep 2018 11:44:29 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:09:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 13:09:03 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Wed, 05 Sep 2018 13:09:03 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 13:09:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 05 Sep 2018 13:09:22 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 05 Sep 2018 13:09:23 GMT
ENV LANG=en_US.utf8
# Wed, 05 Sep 2018 13:09:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:09:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 13:09:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 05 Sep 2018 13:19:30 GMT
ENV PG_MAJOR=10
# Wed, 05 Sep 2018 13:19:30 GMT
ENV PG_VERSION=10.5-1.pgdg90+1
# Wed, 05 Sep 2018 13:28:33 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Wed, 05 Sep 2018 13:28:34 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 05 Sep 2018 13:28:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 05 Sep 2018 13:28:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Wed, 05 Sep 2018 13:28:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 05 Sep 2018 13:28:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 05 Sep 2018 13:28:36 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 05 Sep 2018 13:28:36 GMT
COPY file:9dfee985db858ea9bcf8869aa2929efed1affa079c7fc23523f13953b5c3f562 in /usr/local/bin/ 
# Wed, 05 Sep 2018 13:28:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 13:28:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 13:28:37 GMT
EXPOSE 5432/tcp
# Wed, 05 Sep 2018 13:28:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:599d69132c0524467aafceacede5f8ea0a07f3ae6d5c97a28cf25ce9e1cd4580`  
		Last Modified: Wed, 05 Sep 2018 11:49:20 GMT  
		Size: 22.3 MB (22334611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961255b4e8deafd6b9aeda5bcf31748ca5b622debe40011adb389585893dfc1e`  
		Last Modified: Wed, 05 Sep 2018 14:06:22 GMT  
		Size: 4.5 MB (4530006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e846826c1ce2ce3f4cf4b8d54261f74b955e367c5446191d1d77b62c778d46ac`  
		Last Modified: Wed, 05 Sep 2018 14:06:20 GMT  
		Size: 1.8 KB (1782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a62a5179b09b333c465a4c00730cb3d0ceb6ca2b5bfcdd4b9e186ebab6ede1`  
		Last Modified: Wed, 05 Sep 2018 14:06:21 GMT  
		Size: 937.9 KB (937871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45995876f1e70558285fe053feec0b07985a868c6d22364506bb202edbfa63d0`  
		Last Modified: Wed, 05 Sep 2018 14:06:20 GMT  
		Size: 6.2 MB (6206853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2057ed8a4d7888014319f98afad32fa969aaac8bf1d51c992feb60be2608b3`  
		Last Modified: Wed, 05 Sep 2018 14:06:20 GMT  
		Size: 294.4 KB (294362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41dff6a401b8ab18c626f0a732ee8f110822a90d603fa0fdcb708726e6cbec89`  
		Last Modified: Wed, 05 Sep 2018 14:06:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48ac115951799e4563f2960fae72cbd6d4341894880fa3a677351a46c25b81b`  
		Last Modified: Wed, 05 Sep 2018 14:06:19 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a3bda3c7815c3b5a0bfea25976b84c538c39114b7562184d5441d9517c33b8`  
		Last Modified: Wed, 05 Sep 2018 14:06:56 GMT  
		Size: 48.9 MB (48890842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065645a51c957211962a0dba0d17ef5399b4476f32aa07a070a241d1dbc7d202`  
		Last Modified: Wed, 05 Sep 2018 14:06:45 GMT  
		Size: 7.3 KB (7302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f751d486c6b568c9c5c66a24bbc78ae08229fed6f3399dd0a0ac9d6c6922c1`  
		Last Modified: Wed, 05 Sep 2018 14:06:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee9064ba5ee2ca41eee5b874e8afb0a3a538f900356a24156d772b73745dabf`  
		Last Modified: Wed, 05 Sep 2018 14:06:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb5e82a384193a494d08491ab6f98f2371fe8b1d8f206c01d3a4ab5fc8c6233`  
		Last Modified: Wed, 05 Sep 2018 14:06:46 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5803efddf95b5cc7f11742ff73f1545a70262b0611546d1641176ad6c71a8db4`  
		Last Modified: Wed, 05 Sep 2018 14:06:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
