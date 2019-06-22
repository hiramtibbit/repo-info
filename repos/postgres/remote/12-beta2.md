## `postgres:12-beta2`

```console
$ docker pull postgres@sha256:1c3e662f96ece16c17474adb67e30a008d64ec3c1d4043ce7287d320099c6f62
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

### `postgres:12-beta2` - linux; amd64

```console
$ docker pull postgres@sha256:af88324a6c247d72a6181339b7fe9f714183bc25c3123208e142c3c1e7c83825
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128765002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed31bfed5191076dd0411e8aaff365c4db09565fadce79b6ee9cf876e6d0dfb9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 10 Jun 2019 23:21:54 GMT
ADD file:db9367210dc13ab3e6857a0ee87a882acfc6bb633d10ca8297527088fcb7c1a6 in / 
# Mon, 10 Jun 2019 23:21:54 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:48:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 10 Jun 2019 23:48:13 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Mon, 10 Jun 2019 23:48:13 GMT
ENV GOSU_VERSION=1.11
# Mon, 10 Jun 2019 23:48:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 10 Jun 2019 23:48:32 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 10 Jun 2019 23:48:32 GMT
ENV LANG=en_US.utf8
# Mon, 10 Jun 2019 23:48:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:48:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 10 Jun 2019 23:48:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 10 Jun 2019 23:48:39 GMT
ENV PG_MAJOR=12
# Fri, 21 Jun 2019 20:27:12 GMT
ENV PG_VERSION=12~beta2-1.pgdg100+1
# Fri, 21 Jun 2019 20:27:56 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian buster-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 21 Jun 2019 20:27:57 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 21 Jun 2019 20:27:58 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Jun 2019 20:27:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/12/bin
# Fri, 21 Jun 2019 20:27:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Jun 2019 20:27:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 21 Jun 2019 20:27:59 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 21 Jun 2019 20:27:59 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:28:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Jun 2019 20:28:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:28:01 GMT
EXPOSE 5432
# Fri, 21 Jun 2019 20:28:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:782229fa27bead2dc1212df54174729d244d7e01fa0eba568d156d5579a7c592`  
		Last Modified: Mon, 10 Jun 2019 23:26:04 GMT  
		Size: 27.1 MB (27093818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2350b952dd04d902a9016744b5c430d54b3f0d4c7dafb75d76d258540a377c`  
		Last Modified: Mon, 10 Jun 2019 23:54:48 GMT  
		Size: 4.2 MB (4167991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc64744fe94023a165bdb6bbe5fc1632a6208d56b74bb41765d562bd71600d5`  
		Last Modified: Mon, 10 Jun 2019 23:54:47 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d05cbb5e127ffdfe8898015f4e30342089ee3a475c6a0b9e46eaedb94d2f3c5`  
		Last Modified: Mon, 10 Jun 2019 23:54:47 GMT  
		Size: 1.4 MB (1358319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd309d5d5ae9e8748978fc5da1d822bcf5d71b2415132f5d6bf815d9737a449`  
		Last Modified: Mon, 10 Jun 2019 23:54:49 GMT  
		Size: 8.0 MB (7964160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820ad37b7072c4fb99c8c716b3749ce9e44cc878eebf0ec761589caf80d4ba28`  
		Last Modified: Mon, 10 Jun 2019 23:54:46 GMT  
		Size: 300.7 KB (300672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4937af84a1368eeb01460037b8befa9fe8521ce2f3ec97a4efa51cd00596e3`  
		Last Modified: Mon, 10 Jun 2019 23:54:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba34fb17b3a20d0a13864f470fc3e9e961273115045ca3e1a45ce92b145a715`  
		Last Modified: Mon, 10 Jun 2019 23:54:46 GMT  
		Size: 4.8 KB (4784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e4a8e1cb00210eecf8e9de127eebaa6046c549e9b90944204d34bec0a11333`  
		Last Modified: Fri, 21 Jun 2019 21:00:04 GMT  
		Size: 87.9 MB (87861632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfdd467844b5b2502c25a4663d8202cd514609102ed6931f74a38e3b90100fc8`  
		Last Modified: Fri, 21 Jun 2019 20:59:32 GMT  
		Size: 9.0 KB (8957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5783019ecd8b9d363d5aec40602f8c9ab03ae0b46f4d14fbf49cf53c151a7591`  
		Last Modified: Fri, 21 Jun 2019 20:59:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9bdfa0a0d91993e39e9572ec66774a860be187547baeda5866d2fa8807ee6f`  
		Last Modified: Fri, 21 Jun 2019 20:59:32 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d7608f2f8964ec79cafb349af68d89bf573a91fc6eb69a57dd0433b85983bc`  
		Last Modified: Fri, 21 Jun 2019 20:59:32 GMT  
		Size: 2.4 KB (2368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad74c10a9645abc628b7620f1435f445646b105252526561bea3634c81a22fbf`  
		Last Modified: Fri, 21 Jun 2019 20:59:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:12-beta2` - linux; arm variant v5

```console
$ docker pull postgres@sha256:ffbdd00f3771aa5bcfff34969476da19e816813fb85f9bbd0de598aaf1f9cb0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123222244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd609455f541e3ed5e232f152ee1da5d8ce3cb995cda8e3850faf93a00da417`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 10 Jun 2019 23:49:27 GMT
ADD file:f25a46605412d2e4ce5efc343f5784417289ce4954b46377b9bdb8e7ccbd04bd in / 
# Mon, 10 Jun 2019 23:49:28 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:20:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:20:31 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 11 Jun 2019 00:20:32 GMT
ENV GOSU_VERSION=1.11
# Tue, 11 Jun 2019 00:20:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 11 Jun 2019 00:21:09 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 11 Jun 2019 00:21:10 GMT
ENV LANG=en_US.utf8
# Tue, 11 Jun 2019 00:21:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:21:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 11 Jun 2019 00:21:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 11 Jun 2019 00:21:27 GMT
ENV PG_MAJOR=12
# Fri, 21 Jun 2019 20:49:17 GMT
ENV PG_VERSION=12~beta2-1.pgdg100+1
# Fri, 21 Jun 2019 21:16:49 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian buster-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 21 Jun 2019 21:16:51 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 21 Jun 2019 21:16:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Jun 2019 21:16:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/12/bin
# Fri, 21 Jun 2019 21:16:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Jun 2019 21:16:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 21 Jun 2019 21:16:55 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 21 Jun 2019 21:16:56 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:16:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Jun 2019 21:16:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:16:58 GMT
EXPOSE 5432
# Fri, 21 Jun 2019 21:16:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b18a35cb2df964af86b6d6c0e5443d304d0ac35af310cfbb2c00ea17ca31bb95`  
		Last Modified: Mon, 10 Jun 2019 23:56:25 GMT  
		Size: 24.8 MB (24820842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f425fdf74eca7ed8765bec6948fdbcc9423d2a85a2f64fe3a26ccc899d67b60`  
		Last Modified: Tue, 11 Jun 2019 02:36:32 GMT  
		Size: 3.8 MB (3839655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69dd18dc35b24e9e67935925a826dfc7866c43f0a5480d79eaa077ac0407cbf`  
		Last Modified: Tue, 11 Jun 2019 02:36:29 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f276f4d286f19c526a6a58b8000ecfae787efc6acb53b421ee46280e4fd1eb4c`  
		Last Modified: Tue, 11 Jun 2019 02:36:29 GMT  
		Size: 1.3 MB (1317894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ca333b7176e1b79a8f01fe8c61aa0c46b04866352c536a09490c469b385065`  
		Last Modified: Tue, 11 Jun 2019 02:36:32 GMT  
		Size: 8.0 MB (7964902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016aa68e8ae1c1903ab6b6ea13002becd8a2882062af5805abc9063a69f675d6`  
		Last Modified: Tue, 11 Jun 2019 02:36:28 GMT  
		Size: 298.5 KB (298486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4c623255ff6881085531905638254ddb26075b7db9ad5c12dfc9d376271f01`  
		Last Modified: Tue, 11 Jun 2019 02:36:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97b5620bcae774261387ebad8fe8c08bcbc2241a0ea80ad635777cf837bc97c`  
		Last Modified: Tue, 11 Jun 2019 02:36:28 GMT  
		Size: 4.8 KB (4791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13309821651f6331ac0f67c319e85892974abf2ded9bc35ac05ba791d187a3b8`  
		Last Modified: Fri, 21 Jun 2019 22:57:13 GMT  
		Size: 85.0 MB (84961953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66045c56bcebf08a7586ad1541688bbf170fcf3496e18b86e832b5162db02ff7`  
		Last Modified: Fri, 21 Jun 2019 22:56:46 GMT  
		Size: 9.0 KB (8958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a83c7780e38edbfe011ac3fda13a475160bb789f7e666c52ee72dbd92372db02`  
		Last Modified: Fri, 21 Jun 2019 22:56:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22485ca5aa953d716b4a684a3bc0cf1514bd8caec4533aab2fe10c541be68bcb`  
		Last Modified: Fri, 21 Jun 2019 22:56:45 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d992c5730597bec39a4e09ce0e36ba212fc640d013f6f98d8376fba0fb3f60bc`  
		Last Modified: Fri, 21 Jun 2019 22:56:45 GMT  
		Size: 2.4 KB (2370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60db1a9388c15183515df7ef1f9e3f3256a75131ac2f362b3fb65e6274a2f2c7`  
		Last Modified: Fri, 21 Jun 2019 22:56:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:12-beta2` - linux; arm variant v7

```console
$ docker pull postgres@sha256:74bef9574b1236e277db890dbba3b422cfa55d211f31862de14ad240b9caeab1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.6 MB (118587300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:847627bf3e784c489652611b91c74054441223ad39b742c3a43fe2ce114d19b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 10 Jun 2019 23:58:18 GMT
ADD file:596f85197b2dd6b39ec3f1de4832c26353705986aac8b27ea47bf4370b52c876 in / 
# Mon, 10 Jun 2019 23:58:19 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:54:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:54:49 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 11 Jun 2019 00:54:50 GMT
ENV GOSU_VERSION=1.11
# Tue, 11 Jun 2019 00:55:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 11 Jun 2019 00:55:20 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 11 Jun 2019 00:55:21 GMT
ENV LANG=en_US.utf8
# Tue, 11 Jun 2019 00:55:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:55:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 11 Jun 2019 00:55:33 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 11 Jun 2019 00:55:33 GMT
ENV PG_MAJOR=12
# Fri, 21 Jun 2019 20:59:59 GMT
ENV PG_VERSION=12~beta2-1.pgdg100+1
# Fri, 21 Jun 2019 21:24:35 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian buster-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 21 Jun 2019 21:24:38 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 21 Jun 2019 21:24:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Jun 2019 21:24:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/12/bin
# Fri, 21 Jun 2019 21:24:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Jun 2019 21:24:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 21 Jun 2019 21:24:43 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 21 Jun 2019 21:24:44 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:24:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Jun 2019 21:24:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:24:46 GMT
EXPOSE 5432
# Fri, 21 Jun 2019 21:24:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:57c36a17ef502075ceabddac9f6c9f92a5e9594c830f6bad2edd87b937dd5532`  
		Last Modified: Tue, 11 Jun 2019 00:06:16 GMT  
		Size: 22.7 MB (22697729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a566e8f9b9d499526cb190854bcea10ea57741500785e836978d419aadbb54`  
		Last Modified: Tue, 11 Jun 2019 02:55:45 GMT  
		Size: 3.5 MB (3472620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f10dca2e8369d795eeb7050f437d9e6829c57dedcf93b97eba973bb792b5885`  
		Last Modified: Tue, 11 Jun 2019 02:55:44 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5428b8c82902ccf3adc74490e016b7f066512eba07298b4522d668fac6684d0`  
		Last Modified: Tue, 11 Jun 2019 02:55:44 GMT  
		Size: 1.3 MB (1309191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b30c952e4c57617991bec8ab1dcbc96859f80e6a536d8a283a011f55b96b4b`  
		Last Modified: Tue, 11 Jun 2019 02:55:47 GMT  
		Size: 8.0 MB (7964840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa50ff585cdd3fd8634ee0e9709692a075fe53e9ac665391aede79d6437f265`  
		Last Modified: Tue, 11 Jun 2019 02:55:43 GMT  
		Size: 296.8 KB (296810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f909a05a38e9f012c718c8f14303edca84168b0c9cdf7127fe4ffaf42153c9ac`  
		Last Modified: Tue, 11 Jun 2019 02:55:43 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6891a3122b46df9186d9308fd70051fd6028d3512860ba71ebcfebe1e11cf478`  
		Last Modified: Tue, 11 Jun 2019 02:55:43 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518b9389b92f39b4de7fcb0ecffbeb10fba2be5a622605ceb0231db61102770a`  
		Last Modified: Fri, 21 Jun 2019 23:05:42 GMT  
		Size: 82.8 MB (82827587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c39d6fbacaa5fb635fdffd91ab32f7bee9471494b4e96c3f93c96eabc8bdffb`  
		Last Modified: Fri, 21 Jun 2019 23:05:05 GMT  
		Size: 9.0 KB (8957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd043c88d5d0a1f43b261380db7242095d31f1002f106d003a2efc926677216`  
		Last Modified: Fri, 21 Jun 2019 23:05:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a29377b2c7259bf6dbfe559f924b04dd192a1893d16729f4b4a7b6fb710ef7`  
		Last Modified: Fri, 21 Jun 2019 23:05:05 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd54fb3d46eba3f83d905afde12ef81d366ae5e00fcb141d1fc00837cf39542a`  
		Last Modified: Fri, 21 Jun 2019 23:05:05 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9325f8a36f2981fe7e452ae803d35304523c67c645dbbcc19a26bb9b3c04c60`  
		Last Modified: Fri, 21 Jun 2019 23:05:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:12-beta2` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:04e1d5959a817d0b1180c8030ce083f5ef4d5c6695aa62758c5fb5eaabccf1fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.7 MB (124739720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c09b5eaa9a8a9fd571dc1b5c16da42fd3d2e2c794357a16c78dc31dc63ac4818`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 10 Jun 2019 23:40:22 GMT
ADD file:8da39d68d99c4003ff960332f4402d553836705d14c35b9ff2ccf74a3c20d90b in / 
# Mon, 10 Jun 2019 23:40:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:33:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:33:09 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 11 Jun 2019 01:33:10 GMT
ENV GOSU_VERSION=1.11
# Tue, 11 Jun 2019 01:33:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 11 Jun 2019 01:33:41 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 11 Jun 2019 01:33:42 GMT
ENV LANG=en_US.utf8
# Tue, 11 Jun 2019 01:33:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:33:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 11 Jun 2019 01:33:57 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 11 Jun 2019 01:33:57 GMT
ENV PG_MAJOR=12
# Fri, 21 Jun 2019 20:49:43 GMT
ENV PG_VERSION=12~beta2-1.pgdg100+1
# Fri, 21 Jun 2019 21:16:43 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian buster-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 21 Jun 2019 21:16:45 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 21 Jun 2019 21:16:47 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Jun 2019 21:16:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/12/bin
# Fri, 21 Jun 2019 21:16:48 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Jun 2019 21:16:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 21 Jun 2019 21:16:51 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 21 Jun 2019 21:16:51 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:16:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Jun 2019 21:16:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:16:54 GMT
EXPOSE 5432
# Fri, 21 Jun 2019 21:16:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:83b836c5003339192041fc4655acc9a536d303dc07ba86f5fb1694b79a0306aa`  
		Last Modified: Mon, 10 Jun 2019 23:43:36 GMT  
		Size: 25.9 MB (25852408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a16cf3efb2535125841b0eea3ce7a0999a076e1fbbed144f4f43352f46cc24`  
		Last Modified: Tue, 11 Jun 2019 03:35:18 GMT  
		Size: 4.2 MB (4163594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ff23ae3e20d5423ee532416539856fb187d095d7971ae66266664e6c608010`  
		Last Modified: Tue, 11 Jun 2019 03:35:16 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ddad50a25d55b1d2d4ddab3e206547873f8d3fb32e550ca7b3f86031ddf75d`  
		Last Modified: Tue, 11 Jun 2019 03:35:18 GMT  
		Size: 1.3 MB (1292288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f917e2f3a9b40e375fc59bac069c5e1299370789098a1819443eafc5ab693219`  
		Last Modified: Tue, 11 Jun 2019 03:35:18 GMT  
		Size: 8.0 MB (7964807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a98beee764935ab36d348c8cdff36263deb7e3c35596839e1a55243dc395df4`  
		Last Modified: Tue, 11 Jun 2019 03:35:15 GMT  
		Size: 296.8 KB (296819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5bed1d91cd17f63050d14dfcc663980a5ec098cc22b85ae617fc43fc569420`  
		Last Modified: Tue, 11 Jun 2019 03:35:15 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84799a32a2edd7cabdecdb0a22b071dbd144d19adab4ed95b041ab0f49ed3d5`  
		Last Modified: Tue, 11 Jun 2019 03:35:15 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf09ded83d63107be2e0c05f79e0f94e725574b3f5c80ee1da14ffa6a34c70a`  
		Last Modified: Fri, 21 Jun 2019 23:01:29 GMT  
		Size: 85.2 MB (85151284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1d12c2924b10fe5ec851534ae08d9b1b14b91b4d48e2e29cabc67a1e129c4f`  
		Last Modified: Fri, 21 Jun 2019 23:01:01 GMT  
		Size: 9.0 KB (8956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a83c7780e38edbfe011ac3fda13a475160bb789f7e666c52ee72dbd92372db02`  
		Last Modified: Fri, 21 Jun 2019 22:56:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428c4ff31c039f919fc6bd7fcd291bffb0fe983d840eff9494d9cb82d16fb23d`  
		Last Modified: Fri, 21 Jun 2019 23:01:01 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c012646061cbd1071884a9842189b7189d79ced9003b8d57863aff476386f16`  
		Last Modified: Fri, 21 Jun 2019 23:01:01 GMT  
		Size: 2.4 KB (2370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f46ddf1e0f720c171b486fdef7da35605de8a0c0f8e43e4f9bc79018636001`  
		Last Modified: Fri, 21 Jun 2019 23:01:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:12-beta2` - linux; 386

```console
$ docker pull postgres@sha256:121005df6344bd183272a421d586dbd5b3addc2c7067b80a6138c1d2bd8d868b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130470622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2b21cff549f8778bf218944cab31d827001150300c10e89c6de59efeee0c1fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 10 Jun 2019 23:39:15 GMT
ADD file:36fcfcac7934ae2714a2f7d4d0bbb4eae7f9e928dbc5a5daad09d92d490a0ce4 in / 
# Mon, 10 Jun 2019 23:39:16 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 05:34:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 05:34:39 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 11 Jun 2019 05:34:40 GMT
ENV GOSU_VERSION=1.11
# Tue, 11 Jun 2019 05:34:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 11 Jun 2019 05:35:07 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 11 Jun 2019 05:35:07 GMT
ENV LANG=en_US.utf8
# Tue, 11 Jun 2019 05:35:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 05:35:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 11 Jun 2019 05:35:18 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 11 Jun 2019 05:35:18 GMT
ENV PG_MAJOR=12
# Fri, 21 Jun 2019 20:49:21 GMT
ENV PG_VERSION=12~beta2-1.pgdg100+1
# Fri, 21 Jun 2019 20:50:30 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian buster-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 21 Jun 2019 20:50:32 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 21 Jun 2019 20:50:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Jun 2019 20:50:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/12/bin
# Fri, 21 Jun 2019 20:50:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Jun 2019 20:50:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 21 Jun 2019 20:50:35 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 21 Jun 2019 20:50:36 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:50:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Jun 2019 20:50:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:50:37 GMT
EXPOSE 5432
# Fri, 21 Jun 2019 20:50:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:40009893fe9b091ac0d66b392e309c3e06d2edd3c6e0506ab5cbe8efa5a4a290`  
		Last Modified: Mon, 10 Jun 2019 23:43:20 GMT  
		Size: 27.7 MB (27745534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfca13f0f7d5eab8737a361facf21b1a106f2d8ad5ae6b79b6980ec2a9828abc`  
		Last Modified: Tue, 11 Jun 2019 05:44:00 GMT  
		Size: 4.5 MB (4534214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe416009e770a4235948dc5a0025b7a2d77f0ebe189e48e05bf8534d1e96e3c1`  
		Last Modified: Tue, 11 Jun 2019 05:43:56 GMT  
		Size: 1.8 KB (1760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc04a29e9b47a4a67a7379550bdccf57ac21af24576a15e077635a5e4c26dd44`  
		Last Modified: Tue, 11 Jun 2019 05:43:57 GMT  
		Size: 1.3 MB (1324111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68d12099e2ebd72edb37a4f7b141e3e4ea69d8a075fa03fe6ae664db4aacb4d`  
		Last Modified: Tue, 11 Jun 2019 05:44:01 GMT  
		Size: 8.0 MB (7964132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ee76fbd1dc2718876ae3b4018d524e57ad8d5e36f0950b8df13ddd363151b2`  
		Last Modified: Tue, 11 Jun 2019 05:43:55 GMT  
		Size: 302.4 KB (302383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a9606b479bb67ef7a956e25f0651a6a222147b6dc43d456bfc3415d61806b3`  
		Last Modified: Tue, 11 Jun 2019 05:43:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165e858db3d4f53b24e1e7b2b27bcc0fe4671d8efb94d638b4921399ac54c3e1`  
		Last Modified: Tue, 11 Jun 2019 05:43:55 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5db69e1455302339f966a4fa0557956abeee35d644bc164b2585738b39f9788`  
		Last Modified: Fri, 21 Jun 2019 21:19:48 GMT  
		Size: 88.6 MB (88581832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9ef0062933225a6fa51831a2de9b5151209911c0c94fa900c6b01164945e44`  
		Last Modified: Fri, 21 Jun 2019 21:19:24 GMT  
		Size: 9.0 KB (8959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08131ec48888ef72dc211488996bd673e30d99ced13d38b84cde7ba79ea779a5`  
		Last Modified: Fri, 21 Jun 2019 21:19:24 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e39c86983dd3edadaee3031873ac67c33b8d811c01fbbf105a12afb31b11c42`  
		Last Modified: Fri, 21 Jun 2019 21:19:24 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418d30a83fbad8753a3ad6121a469bc36d464136a83078b629ff8d5bc323611f`  
		Last Modified: Fri, 21 Jun 2019 21:19:24 GMT  
		Size: 2.4 KB (2369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd57b050d08b33c1b61d4639579552f1295a9e3b039ee0bfd76837c07d68bb8`  
		Last Modified: Fri, 21 Jun 2019 21:19:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:12-beta2` - linux; ppc64le

```console
$ docker pull postgres@sha256:8c041081947644ed75c2aec1ecd69e337f693031287b4870d4bae61853ef1e38
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137450433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48b89cecb6798bea2ffdaeaf60a391086852b7b341e8eb5996e4c99bd829202a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 10 Jun 2019 23:17:29 GMT
ADD file:102525da73fab3db4cb6f21e1dc74b75c2ed1114550502e826e92c530e3b2341 in / 
# Mon, 10 Jun 2019 23:17:33 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:11:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:11:28 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 11 Jun 2019 00:11:32 GMT
ENV GOSU_VERSION=1.11
# Tue, 11 Jun 2019 00:12:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 11 Jun 2019 00:13:10 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 11 Jun 2019 00:13:17 GMT
ENV LANG=en_US.utf8
# Tue, 11 Jun 2019 00:13:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:13:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 11 Jun 2019 00:14:01 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 11 Jun 2019 00:14:04 GMT
ENV PG_MAJOR=12
# Fri, 21 Jun 2019 20:44:48 GMT
ENV PG_VERSION=12~beta2-1.pgdg100+1
# Fri, 21 Jun 2019 20:47:44 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian buster-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 21 Jun 2019 20:47:51 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 21 Jun 2019 20:47:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Jun 2019 20:47:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/12/bin
# Fri, 21 Jun 2019 20:47:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Jun 2019 20:48:03 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 21 Jun 2019 20:48:08 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 21 Jun 2019 20:48:09 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:48:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Jun 2019 20:48:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:48:23 GMT
EXPOSE 5432
# Fri, 21 Jun 2019 20:48:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a31ab3e9dea04f788e7ea80c091ebd2ad6e8a4207d0617896ca4485f5903834a`  
		Last Modified: Mon, 10 Jun 2019 23:21:46 GMT  
		Size: 30.5 MB (30514426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c82e2ee558ba8ece8570081f44f866ef8f1f75f40341f806cdef1ade8107a49`  
		Last Modified: Tue, 11 Jun 2019 00:51:13 GMT  
		Size: 5.0 MB (4965096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21128ebe17b21f50d6db6a0630304d457dfdc16f801f51c9edb50ed447f11aac`  
		Last Modified: Tue, 11 Jun 2019 00:51:09 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a507e501c4ad1489c551a40fbce63df1fb084c4f29d7604a4de3a6064d5795`  
		Last Modified: Tue, 11 Jun 2019 00:51:09 GMT  
		Size: 1.3 MB (1280897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5da704ebee7749d154be848df52d9afbb8589b0640cea63380c859e506b749`  
		Last Modified: Tue, 11 Jun 2019 00:51:09 GMT  
		Size: 8.0 MB (7965080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859fbf0a9e0485bc99bbb9acac72c056f2c75241de01f067fdde90e42070e972`  
		Last Modified: Tue, 11 Jun 2019 00:51:07 GMT  
		Size: 298.2 KB (298198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26f514d611ea7cca740ca503e3fe73712ae02b4be21712b07c0b2fc1b093f17`  
		Last Modified: Tue, 11 Jun 2019 00:51:07 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604594ff0ebfd69781cea01a7ff34bb342626a9d74b29140d8daf5c45a40191b`  
		Last Modified: Tue, 11 Jun 2019 00:51:05 GMT  
		Size: 4.8 KB (4787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80028929f28761c4b7368b96342e4cabe5035cd9eded895ff7f00cd09b1375a`  
		Last Modified: Fri, 21 Jun 2019 21:36:32 GMT  
		Size: 92.4 MB (92408217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671308dd85814668229fc2b1c8d154200ca571a221a276f8ac9bf4cb12e0e2da`  
		Last Modified: Fri, 21 Jun 2019 21:36:05 GMT  
		Size: 9.0 KB (8957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671b91fb708dc74de576da68bc2d37d72824b3b2f714dba0aebf8c74fed4520f`  
		Last Modified: Fri, 21 Jun 2019 21:36:05 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809119bee05020e7b86c4b74d593e6a4e3bd433d600d3c3dcb839695f96e7a40`  
		Last Modified: Fri, 21 Jun 2019 21:36:05 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b877c7bb85f98e74bf8813380dbad6a687875dd086512b7fd9f8fd42334e76b`  
		Last Modified: Fri, 21 Jun 2019 21:36:05 GMT  
		Size: 2.4 KB (2371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242fbe8417102b9cca4f71d5023aba56d282149aee9ef9f0df272f9e330f1f96`  
		Last Modified: Fri, 21 Jun 2019 21:36:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:12-beta2` - linux; s390x

```console
$ docker pull postgres@sha256:931bf1121f2262c7ca878c4dc52a33e101ac3ba2d2b12869ba9c343338b8209a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.5 MB (126537033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68f515be5325a8c818b49526dbaa0d998868c58d263002fc41a8beedb2da50a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 10 Jun 2019 23:42:28 GMT
ADD file:f61c0ff96b9ab1049d755ffe09cfec7609fe8340229b60d393c62ddb39e3d597 in / 
# Mon, 10 Jun 2019 23:42:28 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:31:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:31:22 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 11 Jun 2019 01:31:22 GMT
ENV GOSU_VERSION=1.11
# Tue, 11 Jun 2019 01:31:32 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 11 Jun 2019 01:31:39 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 11 Jun 2019 01:31:40 GMT
ENV LANG=en_US.utf8
# Tue, 11 Jun 2019 01:31:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:31:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 11 Jun 2019 01:31:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 11 Jun 2019 01:31:46 GMT
ENV PG_MAJOR=12
# Fri, 21 Jun 2019 20:47:10 GMT
ENV PG_VERSION=12~beta2-1.pgdg100+1
# Fri, 21 Jun 2019 21:00:52 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian buster-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 21 Jun 2019 21:00:54 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 21 Jun 2019 21:00:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Jun 2019 21:00:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/12/bin
# Fri, 21 Jun 2019 21:00:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Jun 2019 21:00:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 21 Jun 2019 21:00:57 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 21 Jun 2019 21:00:57 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:00:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Jun 2019 21:00:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:00:59 GMT
EXPOSE 5432
# Fri, 21 Jun 2019 21:00:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:846ee1802bfd7e14560d51ebed97afa8ec6f685f0ba33507d1f347ad2ef1f1ff`  
		Last Modified: Mon, 10 Jun 2019 23:45:29 GMT  
		Size: 25.7 MB (25703472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb284ea949b1895c6f8c721eca90a7580372b72bd10ad54b808a1e6e4ef8a3a`  
		Last Modified: Tue, 11 Jun 2019 02:31:52 GMT  
		Size: 4.0 MB (4049503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c51a600c41b11553b2f238afca327809660fc8474c66a5197739118d8f2ebe`  
		Last Modified: Tue, 11 Jun 2019 02:31:51 GMT  
		Size: 1.8 KB (1773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e21d4057e8da95f183087123397679988edd7ece85e1917a7514bad2c03770`  
		Last Modified: Tue, 11 Jun 2019 02:31:51 GMT  
		Size: 1.3 MB (1347034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4555f90efd3730f45071905a3d2fd0cf807e2d7df54e6461020db0154982489`  
		Last Modified: Tue, 11 Jun 2019 02:31:52 GMT  
		Size: 8.0 MB (8018385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecba9372904e580a9e31658232b0efe31f59c43db0f7deff443239fdfc3d483`  
		Last Modified: Tue, 11 Jun 2019 02:31:50 GMT  
		Size: 299.3 KB (299256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c62319b84f9814e38d4dcb582f091001474c10ceff8c9a5f655ee5a371d374d`  
		Last Modified: Tue, 11 Jun 2019 02:31:50 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473348c55ea0c92c11df513bc81dbb27117d490b6c37f69c6734cbd02094aadc`  
		Last Modified: Tue, 11 Jun 2019 02:31:50 GMT  
		Size: 4.8 KB (4787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739ec512c55fd06cd22b4eeb352852beff9cbf4918f8e33540febca60550dff4`  
		Last Modified: Fri, 21 Jun 2019 22:13:50 GMT  
		Size: 87.1 MB (87100972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51a890a07dc21f5d81e546f2c4ba4762fb8e5c176cd5eb8bd167ca3112734e3d`  
		Last Modified: Fri, 21 Jun 2019 22:13:34 GMT  
		Size: 8.9 KB (8949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15a4426ce877c8af274374f218e796e321d849a4164e38bc238e717bafd779e`  
		Last Modified: Fri, 21 Jun 2019 22:13:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c52b84894030dad001dd44d9184642885c0b4cf9d8e5235c145d0a7c041e95`  
		Last Modified: Fri, 21 Jun 2019 22:13:33 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb6fdf97b68eb5d26c829fa9a4e8567f0d0e4551f026fed37a90b1d2c24740a`  
		Last Modified: Fri, 21 Jun 2019 22:13:33 GMT  
		Size: 2.4 KB (2369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265cea86850026a09836e408323767f882a0dbb84b1bfd2ca14134573befbe80`  
		Last Modified: Fri, 21 Jun 2019 22:13:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
