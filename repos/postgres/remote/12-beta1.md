## `postgres:12-beta1`

```console
$ docker pull postgres@sha256:b23015f2e03545664cfe5a2f99d73fa2c4ffcc19a4a3225a82a7d749a8b92244
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

### `postgres:12-beta1` - linux; amd64

```console
$ docker pull postgres@sha256:37a4f4494b3c9a0ebf333203b607cf680543a74f7a69f962ab4c42d51a626af3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127792460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d301159111969e365c5d5affc819ce025af6804cf15aab5b42e78c9bbb3883fb`
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
# Mon, 10 Jun 2019 23:48:39 GMT
ENV PG_VERSION=12~beta1-1.pgdg100+1
# Mon, 10 Jun 2019 23:49:32 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian buster-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Mon, 10 Jun 2019 23:49:33 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Mon, 10 Jun 2019 23:49:34 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 10 Jun 2019 23:49:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/12/bin
# Mon, 10 Jun 2019 23:49:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 10 Jun 2019 23:49:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Mon, 10 Jun 2019 23:49:35 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 10 Jun 2019 23:49:35 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Mon, 10 Jun 2019 23:49:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 10 Jun 2019 23:49:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Jun 2019 23:49:36 GMT
EXPOSE 5432
# Mon, 10 Jun 2019 23:49:37 GMT
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
	-	`sha256:69a2f9dd42e4a31ac5a54f5d9a97137b7be5ccb13a7dfda49e4a1eb9ddfaafb6`  
		Last Modified: Mon, 10 Jun 2019 23:55:03 GMT  
		Size: 86.9 MB (86889100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ecd14a9fb7f3eee89b71735fd9cc1b4306d61e8c3eedf08c18c4e4e49a48a9`  
		Last Modified: Mon, 10 Jun 2019 23:54:45 GMT  
		Size: 8.9 KB (8950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7314eccbb78f7b0b3a3265381783d0482faa14004915390d113f572ebea80d49`  
		Last Modified: Mon, 10 Jun 2019 23:54:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3216cef3501fc093e9261f012f4a619f768e2f24d9e1e8de809dad6a9a2f4c65`  
		Last Modified: Mon, 10 Jun 2019 23:54:45 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585bfc263602d35fd674bb689c88253e61447c3bf93d0863dabba1d49f2cbb54`  
		Last Modified: Mon, 10 Jun 2019 23:54:45 GMT  
		Size: 2.4 KB (2366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fc9f6ce6c9d7395a43a73adfe279f5d0157937a007011cadb00e4077bd54cb4`  
		Last Modified: Mon, 10 Jun 2019 23:54:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:12-beta1` - linux; arm variant v5

```console
$ docker pull postgres@sha256:de7e006851f1fc12c82af4705998a6f9c4e7a3417bbe8bed53e5e23fddc74051
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.2 MB (122228392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2650e6d850e09d1b5618e0c11c8eb07d0d70cb864653cd1b2224d35d90d765da`
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
# Tue, 11 Jun 2019 00:21:28 GMT
ENV PG_VERSION=12~beta1-1.pgdg100+1
# Tue, 11 Jun 2019 00:49:16 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian buster-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Tue, 11 Jun 2019 00:49:20 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Tue, 11 Jun 2019 00:49:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 11 Jun 2019 00:49:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/12/bin
# Tue, 11 Jun 2019 00:49:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 11 Jun 2019 00:49:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Tue, 11 Jun 2019 00:49:25 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 11 Jun 2019 00:49:26 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:49:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 11 Jun 2019 00:49:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:49:29 GMT
EXPOSE 5432
# Tue, 11 Jun 2019 00:49:30 GMT
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
	-	`sha256:6aa6e137ec57113dd96afdac68d032d293110964497723f0c614b82e8ec692ea`  
		Last Modified: Tue, 11 Jun 2019 02:36:56 GMT  
		Size: 84.0 MB (83968112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:361a07503d07ea22e69520868ae3f142f927731335e17f4c06ab09a9d267a085`  
		Last Modified: Tue, 11 Jun 2019 02:36:26 GMT  
		Size: 8.9 KB (8949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187d247bc3fa00722fede9fb674a9fb77a9439107b0079e076756cc1632c804c`  
		Last Modified: Tue, 11 Jun 2019 02:36:26 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda1eac5db247cdff66b7efa070dd5a4a29d6ce06d2437ee5013452c1d0379a3`  
		Last Modified: Tue, 11 Jun 2019 02:36:26 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2fb3c13caf133e3f0c13bdb9a58ca427acc74c86822b1ca4080548a7e1274d`  
		Last Modified: Tue, 11 Jun 2019 02:36:26 GMT  
		Size: 2.4 KB (2369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e730a254fc6c665317cece8319ebd7e23dd5ec9c10d038f7cf977b01b08b6a54`  
		Last Modified: Tue, 11 Jun 2019 02:36:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:12-beta1` - linux; arm variant v7

```console
$ docker pull postgres@sha256:38063412beb51e03c642f25bcd1c67a06415efc1e41a9e734f3a1bff910c843f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117672045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb58758a0572916bc2758a534bce0f7fd340dd4c32fc5ec92496d72af80ed65f`
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
# Tue, 11 Jun 2019 00:55:34 GMT
ENV PG_VERSION=12~beta1-1.pgdg100+1
# Tue, 11 Jun 2019 01:20:51 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian buster-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Tue, 11 Jun 2019 01:20:56 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Tue, 11 Jun 2019 01:20:58 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 11 Jun 2019 01:20:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/12/bin
# Tue, 11 Jun 2019 01:21:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 11 Jun 2019 01:21:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Tue, 11 Jun 2019 01:21:05 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 11 Jun 2019 01:21:06 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Tue, 11 Jun 2019 01:21:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 11 Jun 2019 01:21:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 01:21:11 GMT
EXPOSE 5432
# Tue, 11 Jun 2019 01:21:12 GMT
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
	-	`sha256:ba1a821085a1b0f7f4c299895d5111d16e1ea37ca08fe0dc84d57935a48a41b2`  
		Last Modified: Tue, 11 Jun 2019 02:56:08 GMT  
		Size: 81.9 MB (81912348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5187fc2dd912be59f0fe2c02eaa4b0e9be2fae6b4d6c5eef7e05464c60aba0`  
		Last Modified: Tue, 11 Jun 2019 02:55:41 GMT  
		Size: 8.9 KB (8948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ef448a6d61e613d9379fe4d5f1fe5174afaffbb98dde4889cc8a93c5992987`  
		Last Modified: Tue, 11 Jun 2019 02:55:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61470315ed9f519f44f9e45260e343ddf6986e4b2101e124f2b65828da5142b6`  
		Last Modified: Tue, 11 Jun 2019 02:55:41 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c63c4520930392feeef095610808e657f2f8dbb1e8c7c734ffe2b7be16b28a`  
		Last Modified: Tue, 11 Jun 2019 02:55:41 GMT  
		Size: 2.4 KB (2369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5815c7a66dfaa03dbab25c9da08b68f89245330f14f310bee4dc94b24f326c83`  
		Last Modified: Tue, 11 Jun 2019 02:55:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:12-beta1` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:a482f9bd2700ab5f102a141ff2f57a2b5f2e6eab24464c0cb0293a98e5ef9b6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123786397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75d59e1ef5558b9381da758d6ff5e9b94757d6681b90b20d8cab41927933f21e`
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
# Tue, 11 Jun 2019 01:33:58 GMT
ENV PG_VERSION=12~beta1-1.pgdg100+1
# Tue, 11 Jun 2019 02:00:02 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian buster-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Tue, 11 Jun 2019 02:00:06 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Tue, 11 Jun 2019 02:00:09 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 11 Jun 2019 02:00:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/12/bin
# Tue, 11 Jun 2019 02:00:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 11 Jun 2019 02:00:13 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Tue, 11 Jun 2019 02:00:14 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 11 Jun 2019 02:00:14 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Tue, 11 Jun 2019 02:00:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 11 Jun 2019 02:00:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 02:00:19 GMT
EXPOSE 5432
# Tue, 11 Jun 2019 02:00:21 GMT
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
	-	`sha256:485419fb58050046a0f45de4c1c7d35cdeee29a00d7694bb78b0717967223d9e`  
		Last Modified: Tue, 11 Jun 2019 03:35:42 GMT  
		Size: 84.2 MB (84197974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c3dd113553073a2b23f8cb7d01492bd556b08f7f5e8dea584a3c67d9032501`  
		Last Modified: Tue, 11 Jun 2019 03:35:14 GMT  
		Size: 9.0 KB (8951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fac18f5b9231ebe8dfdfef9717df0e07b18b317eca67ffafa79a818f175a6d3`  
		Last Modified: Tue, 11 Jun 2019 03:35:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a6b279a47a47945d2bcd53caa56ba9353bc17fe9fe41b2dd1ef071e0aff60f`  
		Last Modified: Tue, 11 Jun 2019 03:35:14 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bef3df652ae50f926609d1925d5b42fd50429586db353cf3fc4260b27769c7`  
		Last Modified: Tue, 11 Jun 2019 03:35:14 GMT  
		Size: 2.4 KB (2367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b755027ab0630026ed4af1d54b21ff94e6073e6372ac435c78431b2f18fa9bb`  
		Last Modified: Tue, 11 Jun 2019 03:35:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:12-beta1` - linux; 386

```console
$ docker pull postgres@sha256:ecac33e6a9e1ad00e56ac61405521a863899cba3ab9418166ed172e71d88e1ab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130443249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68a0579f1b55c9e0da2561c82af10e0a6b646c2c42eac96856c49c7ed7ec57c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 08 May 2019 10:41:04 GMT
ADD file:9653241cc5a3e29ab12ac1b2d9e1dba6e739a152b843ac8a9d909995054ae30f in / 
# Wed, 08 May 2019 10:41:04 GMT
CMD ["bash"]
# Tue, 04 Jun 2019 20:38:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Jun 2019 20:38:56 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 04 Jun 2019 20:38:56 GMT
ENV GOSU_VERSION=1.11
# Tue, 04 Jun 2019 20:39:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 04 Jun 2019 20:39:24 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 04 Jun 2019 20:39:24 GMT
ENV LANG=en_US.utf8
# Tue, 04 Jun 2019 20:39:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 04 Jun 2019 20:39:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 04 Jun 2019 20:39:35 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 04 Jun 2019 20:39:35 GMT
ENV PG_MAJOR=12
# Tue, 04 Jun 2019 20:39:35 GMT
ENV PG_VERSION=12~beta1-1.pgdg100+1
# Tue, 04 Jun 2019 20:40:43 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian buster-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Tue, 04 Jun 2019 20:40:44 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Tue, 04 Jun 2019 20:40:46 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 04 Jun 2019 20:40:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/12/bin
# Tue, 04 Jun 2019 20:40:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 04 Jun 2019 20:40:47 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Tue, 04 Jun 2019 20:40:48 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 04 Jun 2019 20:40:48 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Tue, 04 Jun 2019 20:40:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 04 Jun 2019 20:40:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 04 Jun 2019 20:40:50 GMT
EXPOSE 5432
# Tue, 04 Jun 2019 20:40:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d78693becd7d6fd8bcf3ccf11903bf9d0c212727b29995d42e22693a38b65002`  
		Last Modified: Wed, 08 May 2019 10:53:35 GMT  
		Size: 27.7 MB (27736572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5deb4c1ce902df725dae8c8b55a82fec4f7c2176a9d0320195011f6e0cc680`  
		Last Modified: Tue, 04 Jun 2019 21:07:42 GMT  
		Size: 4.5 MB (4534080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:522df9e9fefb70998c4d4342949330837e998861047df9d3e81aa55cefdb7d25`  
		Last Modified: Tue, 04 Jun 2019 21:07:40 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779234bb840efbfcdd8ab268c2dfaff8f7309b47e527439bad1fa695a14407d3`  
		Last Modified: Tue, 04 Jun 2019 21:07:41 GMT  
		Size: 1.3 MB (1324022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e6824b3bf3db49f4ee6bfbf0b6fee9941d97e53f872eb7f13fa927f32fb28d`  
		Last Modified: Tue, 04 Jun 2019 21:07:42 GMT  
		Size: 8.0 MB (7963968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3995944e36b04f6f9347467badb1199a4dcda827fe67bda613ac39f1f955c6`  
		Last Modified: Tue, 04 Jun 2019 21:07:39 GMT  
		Size: 302.3 KB (302298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635dd45f5d4144aacef9b78c79972df50b37be211bc57aaea31975c3e500ba80`  
		Last Modified: Tue, 04 Jun 2019 21:07:39 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4463e666ec02384c3a3100eb72374c61699175c5b91af512bb00dfa06c4379ef`  
		Last Modified: Tue, 04 Jun 2019 21:07:39 GMT  
		Size: 4.8 KB (4792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d961029b34e9a552d7628a00dd269e1cce7cece0985243e9a794ddbc02b8537a`  
		Last Modified: Tue, 04 Jun 2019 21:08:02 GMT  
		Size: 88.6 MB (88563892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e19453dc042fdf859a06e9ce8817320c8d7c78040d44ad55d131c0486a21b1`  
		Last Modified: Tue, 04 Jun 2019 21:07:38 GMT  
		Size: 9.0 KB (8953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7abd4754ef464310e1b1391d2ea01c894ba9e02a3e98c6c76e2fa666143c8cc`  
		Last Modified: Tue, 04 Jun 2019 21:07:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce2d8d83cae7004f867765e90631b6d7ea0c75db281120c95f45ad9f97d66e8b`  
		Last Modified: Tue, 04 Jun 2019 21:07:38 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c4195191cc5406c9db9215d2b2a18511d5e3993881319da7b062673f795ebe`  
		Last Modified: Tue, 04 Jun 2019 21:07:38 GMT  
		Size: 2.4 KB (2369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb95a3240968aec28520ad82ea05b301901b1529b56e8fa32a47774cf2d5c1c`  
		Last Modified: Tue, 04 Jun 2019 21:07:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:12-beta1` - linux; ppc64le

```console
$ docker pull postgres@sha256:e756b6e121e704974b5abd0721a0a01f2e6dc291643ca5967df24657220b8bff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136435428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba2572ef9ec780f62010b943a15f7b774f37f81237bb8967df6885ba9d3d0894`
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
# Tue, 11 Jun 2019 00:14:07 GMT
ENV PG_VERSION=12~beta1-1.pgdg100+1
# Tue, 11 Jun 2019 00:17:36 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian buster-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Tue, 11 Jun 2019 00:17:51 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Tue, 11 Jun 2019 00:17:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 11 Jun 2019 00:18:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/12/bin
# Tue, 11 Jun 2019 00:18:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 11 Jun 2019 00:18:20 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Tue, 11 Jun 2019 00:18:27 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 11 Jun 2019 00:18:31 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Tue, 11 Jun 2019 00:18:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 11 Jun 2019 00:18:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 00:18:50 GMT
EXPOSE 5432
# Tue, 11 Jun 2019 00:18:56 GMT
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
	-	`sha256:f105d81e276b40b85da1f29835ff03d41ad13b5c6bd40e08ac93656a72dbc8f3`  
		Last Modified: Tue, 11 Jun 2019 00:51:31 GMT  
		Size: 91.4 MB (91393225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9489698d586ca59898ede5edca86b08659ae6d657d7d507b7ab3cfb12e0cbf`  
		Last Modified: Tue, 11 Jun 2019 00:51:02 GMT  
		Size: 8.9 KB (8950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b9cbc6f4f927e1019e170a31543264d6a5279b08ef59b41d06a348358c7226`  
		Last Modified: Tue, 11 Jun 2019 00:51:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487e88e724c134e49fc14b553e65cd3be841330c68862fb057e8cb3613d9b293`  
		Last Modified: Tue, 11 Jun 2019 00:51:02 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8c3cf11fb253856835ad603fa2fe4ca42b58084b94cc57db1383793379e4a3`  
		Last Modified: Tue, 11 Jun 2019 00:51:02 GMT  
		Size: 2.4 KB (2367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b69aa3ddb09ef1066c1141714a939982ea895c85c7063d36573f9441670a8f4`  
		Last Modified: Tue, 11 Jun 2019 00:51:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:12-beta1` - linux; s390x

```console
$ docker pull postgres@sha256:b9659db4bb4a7996dda2967ffcbc371c8d4b1fb7aceece6140a854fb746695c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125645816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d947a0712a614e4301c6832ecbbf391b45e63c507a310670e76e7eddc5b2f8`
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
# Tue, 11 Jun 2019 01:31:46 GMT
ENV PG_VERSION=12~beta1-1.pgdg100+1
# Tue, 11 Jun 2019 01:43:28 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian buster-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Tue, 11 Jun 2019 01:43:29 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Tue, 11 Jun 2019 01:43:29 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 11 Jun 2019 01:43:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/12/bin
# Tue, 11 Jun 2019 01:43:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 11 Jun 2019 01:43:31 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Tue, 11 Jun 2019 01:43:31 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 11 Jun 2019 01:43:31 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Tue, 11 Jun 2019 01:43:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 11 Jun 2019 01:43:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 01:43:33 GMT
EXPOSE 5432
# Tue, 11 Jun 2019 01:43:33 GMT
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
	-	`sha256:d016b5a44ae93dc0854242f0cd2ae33c2ee6b50276b2f4e109df301dacf7387a`  
		Last Modified: Tue, 11 Jun 2019 02:32:05 GMT  
		Size: 86.2 MB (86209756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b134d5081a88b60e294999727cc9b45ea294fd8eb9aa0ca444ae218410654ff7`  
		Last Modified: Tue, 11 Jun 2019 02:31:48 GMT  
		Size: 8.9 KB (8946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6020a22ca5c1ed1d1bb1c2369cac12a32b52b800162babbf9496cd0d710bb855`  
		Last Modified: Tue, 11 Jun 2019 02:31:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c812828192b83152e1d5030a9ee30f0b5f131cc067ec9a2bd1260c6540393b`  
		Last Modified: Tue, 11 Jun 2019 02:31:49 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d45cbbe2e3f96e088c2cd8080a91ecfa878c93e1cf698d19e1ddf1ad6780b8c`  
		Last Modified: Tue, 11 Jun 2019 02:31:48 GMT  
		Size: 2.4 KB (2369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eac4748b786f69125adedda0a3a689c0e17e48c7c89134775f583f03bbc3886`  
		Last Modified: Tue, 11 Jun 2019 02:31:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
