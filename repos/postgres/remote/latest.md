## `postgres:latest`

```console
$ docker pull postgres@sha256:b5fc04c6ef0b09c562b831d9a4a3d0f24e2b6a6cc990e52958ceb1b5a7f97840
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
$ docker pull postgres@sha256:73e8592104fd07d5d4dd1fadcc1d5dd992cfbd159247fd5c2339faad870e1622
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (117030468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79db2bf18b4a48fdc4f89b5ca84490ff842d0b45d8dc5e7e26927c6c7ae5e7e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:49:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 10 Jun 2019 23:49:55 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Mon, 10 Jun 2019 23:49:55 GMT
ENV GOSU_VERSION=1.11
# Mon, 10 Jun 2019 23:50:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 10 Jun 2019 23:50:15 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 10 Jun 2019 23:50:15 GMT
ENV LANG=en_US.utf8
# Mon, 10 Jun 2019 23:50:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:50:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 10 Jun 2019 23:50:24 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 10 Jun 2019 23:50:24 GMT
ENV PG_MAJOR=11
# Fri, 21 Jun 2019 20:31:49 GMT
ENV PG_VERSION=11.4-1.pgdg90+1
# Fri, 21 Jun 2019 20:32:34 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 21 Jun 2019 20:32:34 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 21 Jun 2019 20:32:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Jun 2019 20:32:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 21 Jun 2019 20:32:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Jun 2019 20:32:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 21 Jun 2019 20:32:36 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 21 Jun 2019 20:32:37 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:32:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Jun 2019 20:32:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:32:38 GMT
EXPOSE 5432
# Fri, 21 Jun 2019 20:32:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cfa12d39e9c07b5e46ffc723b8d138017b819dfec3909ff96c5deef19b11f0`  
		Last Modified: Mon, 10 Jun 2019 23:55:12 GMT  
		Size: 4.5 MB (4501148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793d305ca761f9745b94a86fbcd2f8e4f6d1b08b4685cdb55a37419374e95627`  
		Last Modified: Mon, 10 Jun 2019 23:55:11 GMT  
		Size: 1.8 KB (1774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e3ced3a2aa7ddedd5a6a489b86b20f6b03b549501e9932bd6b19502edbefee`  
		Last Modified: Mon, 10 Jun 2019 23:55:11 GMT  
		Size: 1.4 MB (1351344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a300bc9d540513f5b2c370b41ecf0090551195c7ada79b05deb319b15528de00`  
		Last Modified: Mon, 10 Jun 2019 23:55:12 GMT  
		Size: 6.2 MB (6182598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6a5c3830edab13409931e8ba4756d10bf7573f189b832617668446ff804371`  
		Last Modified: Mon, 10 Jun 2019 23:55:10 GMT  
		Size: 295.5 KB (295506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8c79b24338143aaccbe4c316a571add4780314094dace14fcda8e8c507f492`  
		Last Modified: Mon, 10 Jun 2019 23:55:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcda1144379f737129be51b6f8a7279f04884fcc25a432d665cf7e1bf06d6d28`  
		Last Modified: Mon, 10 Jun 2019 23:55:10 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc36b251d948a6c368fa48cfdc2f0c3fac5e298aa6c26c07d6fd47c853205aa`  
		Last Modified: Fri, 21 Jun 2019 21:01:06 GMT  
		Size: 82.2 MB (82192878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0441434c0e3df9d48d7b7a2b871ea91ac3005387760cf6895f00fae1c96b19fc`  
		Last Modified: Fri, 21 Jun 2019 21:00:42 GMT  
		Size: 8.2 KB (8212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17a51466fc3b5a445acc2caf5cb4f83206a5a48ef42c611a26b7c5020c1cb94`  
		Last Modified: Fri, 21 Jun 2019 21:00:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c358079c7752633fdd957999954fc239df9930180958c73766c6b6dca6f994bd`  
		Last Modified: Fri, 21 Jun 2019 21:00:43 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f840a63634128967063ba584dd91750bdbeb018e60c9f4debe45a53cdac75913`  
		Last Modified: Fri, 21 Jun 2019 21:00:42 GMT  
		Size: 2.4 KB (2380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecbad664a53f10f95d2bb6b9bab715cf91b55bf1abc05001ead31ff2ac5db97`  
		Last Modified: Fri, 21 Jun 2019 21:00:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v5

```console
$ docker pull postgres@sha256:b0bf635ec7d7c874b016a630fb72c289c85284d240b9734850e6a3c48f777a47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81177420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f94a1913df26929b5f6fba0b4442e82def6292466abd8a9230aa0572bfefcb0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 10 Jun 2019 23:53:36 GMT
ADD file:b563bf03e125515b4f74af859aa40e35d24c633add8a20f007b0da89ef4692d9 in / 
# Mon, 10 Jun 2019 23:53:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:49:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:49:54 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 11 Jun 2019 00:49:54 GMT
ENV GOSU_VERSION=1.11
# Tue, 11 Jun 2019 00:50:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 11 Jun 2019 00:50:29 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 11 Jun 2019 00:50:30 GMT
ENV LANG=en_US.utf8
# Tue, 11 Jun 2019 00:50:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:50:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 11 Jun 2019 00:50:45 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 11 Jun 2019 00:50:46 GMT
ENV PG_MAJOR=11
# Tue, 11 Jun 2019 00:50:46 GMT
ENV PG_VERSION=11.3-1.pgdg90+1
# Tue, 11 Jun 2019 01:11:59 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Tue, 11 Jun 2019 01:12:02 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Tue, 11 Jun 2019 01:12:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 11 Jun 2019 01:12:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Tue, 11 Jun 2019 01:12:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 11 Jun 2019 01:12:08 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Tue, 11 Jun 2019 01:12:09 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 11 Jun 2019 01:12:09 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Tue, 11 Jun 2019 01:12:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 11 Jun 2019 01:12:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 01:12:13 GMT
EXPOSE 5432
# Tue, 11 Jun 2019 01:12:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:081b7d581c1dae49d30a4b9d0fead63d3653fe9ed91f43a20287f8ddbad3797b`  
		Last Modified: Mon, 10 Jun 2019 23:59:41 GMT  
		Size: 21.2 MB (21155842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1266c837a5b11169fd14a0ab198075050542fecde6c7295a2bd6b1b4956fa06`  
		Last Modified: Tue, 11 Jun 2019 02:37:08 GMT  
		Size: 4.2 MB (4236767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3cfafac71941dfdfdad808ee45cd85f304ac415cf9d037ed761b37bc0bd708b`  
		Last Modified: Tue, 11 Jun 2019 02:37:06 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b392dc8f03eeda2f3e995a84e6fbeb1935a47defcaf43fc4d0e1bb4b7d48ddf1`  
		Last Modified: Tue, 11 Jun 2019 02:37:06 GMT  
		Size: 1.3 MB (1311145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a5516f22cf9a03bf27358435871ad945dda1e2f647e4490850cb3f5df7b3c2`  
		Last Modified: Tue, 11 Jun 2019 02:37:08 GMT  
		Size: 6.2 MB (6185260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1dc1ae0d582505d681a63b0358c51ea5e881e042e4fc52aabf43480d5b416e`  
		Last Modified: Tue, 11 Jun 2019 02:37:05 GMT  
		Size: 293.4 KB (293375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e851f69eb557dc17b0263473e3b8c26a7cf35657fc9517582df252e8e5705a81`  
		Last Modified: Tue, 11 Jun 2019 02:37:05 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5495e7b8c8ecbe4102e1bc9421bfbbaaabba81f178547f039a55bf148e14075a`  
		Last Modified: Tue, 11 Jun 2019 02:37:04 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01af1965b882cc1ad0cce91ed71f5918e505b89d4c88c831964606ec34160d4b`  
		Last Modified: Tue, 11 Jun 2019 02:37:21 GMT  
		Size: 48.0 MB (47977259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28cdad787c99bc5176b84b147a152b8de5e19458b0ee04b280ee81bb7377cb1b`  
		Last Modified: Tue, 11 Jun 2019 02:37:03 GMT  
		Size: 8.2 KB (8212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3491eb3535f8d28ae01a495b00d29973202c0bf83afed37615eedddd08249e8`  
		Last Modified: Tue, 11 Jun 2019 02:37:03 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a77b7334d2d6e02778317ff33f55c2dbfff1e2c9f90755d53c66f01c0c7107`  
		Last Modified: Tue, 11 Jun 2019 02:37:04 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b15af0027ff710f09a1e24fde7e192641a346dd622e2be8ba7078cec9556287`  
		Last Modified: Tue, 11 Jun 2019 02:37:03 GMT  
		Size: 2.4 KB (2374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:108db6176a2c316687c712ebe0d15f386f61d1ec47234ae3316c641e0b6006e3`  
		Last Modified: Tue, 11 Jun 2019 02:37:03 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v7

```console
$ docker pull postgres@sha256:0c8e66aab4a172a151a089323b1b7b516434bcb29ec8024af55c55ef4317bd5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.2 MB (77180158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ff9cc2df72827c84e8ed3c1b1e8402aa6e175c951f15e47f7874e370af89707`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:21:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:21:38 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 11 Jun 2019 01:21:39 GMT
ENV GOSU_VERSION=1.11
# Tue, 11 Jun 2019 01:22:03 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 11 Jun 2019 01:22:18 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 11 Jun 2019 01:22:19 GMT
ENV LANG=en_US.utf8
# Tue, 11 Jun 2019 01:22:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:22:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 11 Jun 2019 01:22:32 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 11 Jun 2019 01:22:33 GMT
ENV PG_MAJOR=11
# Tue, 11 Jun 2019 01:22:33 GMT
ENV PG_VERSION=11.3-1.pgdg90+1
# Tue, 11 Jun 2019 01:41:04 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Tue, 11 Jun 2019 01:41:07 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Tue, 11 Jun 2019 01:41:09 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 11 Jun 2019 01:41:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Tue, 11 Jun 2019 01:41:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 11 Jun 2019 01:41:13 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Tue, 11 Jun 2019 01:41:13 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 11 Jun 2019 01:41:15 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Tue, 11 Jun 2019 01:41:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 11 Jun 2019 01:41:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 01:41:18 GMT
EXPOSE 5432
# Tue, 11 Jun 2019 01:41:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aedcf4ebf8dc5c15414b3faa1cc6bfae8427ddd0897d7608e15c6ad3efbec9c`  
		Last Modified: Tue, 11 Jun 2019 02:56:18 GMT  
		Size: 3.9 MB (3872618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e39786db17f3409173f615440732e52a3bc04ca7b4ac1ab4a3c3e3809af875`  
		Last Modified: Tue, 11 Jun 2019 02:56:17 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d2aeff550109d930a195f934c15aa70e44ee599e839f50f9cb2ed5829056de`  
		Last Modified: Tue, 11 Jun 2019 02:56:18 GMT  
		Size: 1.3 MB (1303466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e3c9414d3655d8830b29825927e7c360bf08cc0805fff02c1512f9fd707d5d`  
		Last Modified: Tue, 11 Jun 2019 02:56:18 GMT  
		Size: 6.2 MB (6185289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b646d7353c2589e182fac4330f450a9418f501b2928189a038a710e5abaedd9a`  
		Last Modified: Tue, 11 Jun 2019 02:56:16 GMT  
		Size: 291.8 KB (291760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24c762fea449100c0d30121de69c92c01f5b5a8c4363d77efa29fe490ae2a3a`  
		Last Modified: Tue, 11 Jun 2019 02:56:16 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7c168ee5f3d352daef00afa07c9117227d0663bfaabbd0e6f847586ae72e4a`  
		Last Modified: Tue, 11 Jun 2019 02:56:16 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f70f4868cfc43746b152413f5a767540cda2b031fa98420a7d0c26ad394c7f6`  
		Last Modified: Tue, 11 Jun 2019 02:56:32 GMT  
		Size: 46.2 MB (46233070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642680c00b20d40a4441a0335401c3a6f0daadbde50ab7df83f352860bad0fef`  
		Last Modified: Tue, 11 Jun 2019 02:56:15 GMT  
		Size: 8.2 KB (8207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d71dc1246d48b29dcd2d72b580848850974270db32baac3065c689d704b800d`  
		Last Modified: Tue, 11 Jun 2019 02:56:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e823f0f1be7cfaba1c53b88b0e9a2091876ef612a76f42b67f23cb21f9eaea`  
		Last Modified: Tue, 11 Jun 2019 02:56:15 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e2196bb17b2a13fa8912c47eb8c8da43e986156cd16c48bf34d5c9b76195fd`  
		Last Modified: Tue, 11 Jun 2019 02:56:15 GMT  
		Size: 2.4 KB (2377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5729825fca2ab28dab135e1109b3d98166d2ba16b3cd53748d6d94e6542a2222`  
		Last Modified: Tue, 11 Jun 2019 02:56:15 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:75feb463002a4cb4e12022a0c835163f2237bb0998630ef852b2b8bf14426a73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79217933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15e91edb74ea3eec7d7bebf8189546e9d26566c71d26680143e0110a926f0137`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:00:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 02:00:52 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 11 Jun 2019 02:00:53 GMT
ENV GOSU_VERSION=1.11
# Tue, 11 Jun 2019 02:01:15 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 11 Jun 2019 02:01:30 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 11 Jun 2019 02:01:31 GMT
ENV LANG=en_US.utf8
# Tue, 11 Jun 2019 02:01:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:01:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 11 Jun 2019 02:01:47 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 11 Jun 2019 02:01:47 GMT
ENV PG_MAJOR=11
# Tue, 11 Jun 2019 02:01:48 GMT
ENV PG_VERSION=11.3-1.pgdg90+1
# Tue, 11 Jun 2019 02:20:52 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Tue, 11 Jun 2019 02:20:55 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Tue, 11 Jun 2019 02:20:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 11 Jun 2019 02:20:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Tue, 11 Jun 2019 02:20:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 11 Jun 2019 02:20:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Tue, 11 Jun 2019 02:21:00 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 11 Jun 2019 02:21:01 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Tue, 11 Jun 2019 02:21:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 11 Jun 2019 02:21:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 02:21:05 GMT
EXPOSE 5432
# Tue, 11 Jun 2019 02:21:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3880f45e4d2578e3c79bc3db8aeb8ebfd275b460772ff6ebe5dc5f963f95647`  
		Last Modified: Tue, 11 Jun 2019 03:35:53 GMT  
		Size: 4.1 MB (4077434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0e7b30afc941eedd4c7401fec44435bc4357ae5ce71d79abb60dd891ddfb81`  
		Last Modified: Tue, 11 Jun 2019 03:35:51 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44c29310c1de0770cb826cdeed45470f72c9c8edffee329f55c1922b95a3f19`  
		Last Modified: Tue, 11 Jun 2019 03:35:52 GMT  
		Size: 1.3 MB (1286304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b161b9182a597c88806fc94d48532e3cc9a338c6988abfc53a08ff6cbf74ce5`  
		Last Modified: Tue, 11 Jun 2019 03:35:53 GMT  
		Size: 6.2 MB (6185007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856377ad0a4d45ad19044c70f07dc893c121f155e82e9d19ca803438ebd4d954`  
		Last Modified: Tue, 11 Jun 2019 03:35:50 GMT  
		Size: 292.0 KB (291995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e696fa51074421f9e89b61f908cae578f40a0494aab6dd3e25ae7a757c4f6c`  
		Last Modified: Tue, 11 Jun 2019 03:35:50 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d625f37f293b7d01e992023d99b306d4b800a87d138269e34ab6031a9b252a`  
		Last Modified: Tue, 11 Jun 2019 03:35:50 GMT  
		Size: 4.8 KB (4790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e4eb8e986c7724984d6c5aa9e2aeb31969d06ae975951f88c4321db5814700`  
		Last Modified: Tue, 11 Jun 2019 03:36:06 GMT  
		Size: 47.0 MB (47025613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf4b7ec2fa10d7662677f6aaef2fa12f28563ba2f9998b3da3ffef52ed4f8f6`  
		Last Modified: Tue, 11 Jun 2019 03:35:49 GMT  
		Size: 8.2 KB (8212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ddf40ca65a425115349a84074fc1f709e8c3d1e29a5d902416d06221b1908d3`  
		Last Modified: Tue, 11 Jun 2019 03:35:49 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf90844c46ca4020abe31b1ea88d0846979064f71d3f18a2ba48eebbf4727f55`  
		Last Modified: Tue, 11 Jun 2019 03:35:49 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d69a1dacce0ece2db9b5c2a177ddaedc83ae0a32e9cc5c90e0f290e05f0ed1`  
		Last Modified: Tue, 11 Jun 2019 03:35:49 GMT  
		Size: 2.4 KB (2380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dbd60eca3fe2b404cb94fd5b49010e5aaa343df925b8fc06c3722c2a7b43d6`  
		Last Modified: Tue, 11 Jun 2019 03:35:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; 386

```console
$ docker pull postgres@sha256:85c16d5beef62b7a38f53dbaa69ab1961a117bcc14f8650b9d1861c562cca999
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121292316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40391897312aba4231ffd84ae3a1b70a08e739dd5f1c6a4001706fc38fec473b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:36 GMT
ADD file:a8a0ffd3515eaf371f5ca47de93cd4bfc383ce28f32b9547739ad7403b1bc033 in / 
# Mon, 10 Jun 2019 23:41:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 05:36:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 05:36:54 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 11 Jun 2019 05:36:54 GMT
ENV GOSU_VERSION=1.11
# Tue, 11 Jun 2019 05:37:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 11 Jun 2019 05:37:23 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 11 Jun 2019 05:37:24 GMT
ENV LANG=en_US.utf8
# Tue, 11 Jun 2019 05:37:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 05:37:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 11 Jun 2019 05:37:35 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 11 Jun 2019 05:37:36 GMT
ENV PG_MAJOR=11
# Fri, 21 Jun 2019 20:56:50 GMT
ENV PG_VERSION=11.4-1.pgdg90+1
# Fri, 21 Jun 2019 20:58:00 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 21 Jun 2019 20:58:01 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 21 Jun 2019 20:58:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Jun 2019 20:58:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 21 Jun 2019 20:58:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Jun 2019 20:58:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 21 Jun 2019 20:58:05 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 21 Jun 2019 20:58:05 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:58:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Jun 2019 20:58:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:58:07 GMT
EXPOSE 5432
# Fri, 21 Jun 2019 20:58:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7e73483a9fb86ce6ccc0a956b2be574fc156ade2d6b1a61a18c9427de2b19f82`  
		Last Modified: Mon, 10 Jun 2019 23:45:55 GMT  
		Size: 23.1 MB (23120865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a180e0420055c2d41deebbf3ab9b8ece144d16320f8deeca5009e762e7bea9`  
		Last Modified: Tue, 11 Jun 2019 05:44:46 GMT  
		Size: 4.8 MB (4807776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ceb5b7b5128795cec9cca2c93a59678110555647dd15e3a48c26402eaa078c1`  
		Last Modified: Tue, 11 Jun 2019 05:44:43 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3842f5599190175705145505e0be35263da3054423ea4dd899756023aa123d`  
		Last Modified: Tue, 11 Jun 2019 05:44:44 GMT  
		Size: 1.3 MB (1317892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9d918e93bbf339e61113d470e137966284b337b42fb0a67e75e288c45d4f4d`  
		Last Modified: Tue, 11 Jun 2019 05:44:46 GMT  
		Size: 6.2 MB (6182605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2291ad7dbcd14e73a0e3837ecfd8842a3203dea97356dcdf5c28e1e046b8ec79`  
		Last Modified: Tue, 11 Jun 2019 05:44:42 GMT  
		Size: 296.6 KB (296611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce915670d469eb0783dddd48175a2a6001affe205e9db6cc51bb0454b2d4e580`  
		Last Modified: Tue, 11 Jun 2019 05:44:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1712bc0d200d40d62ae75c4024c2384c9c4e0e920b4a1656bb1f0d3e451be6`  
		Last Modified: Tue, 11 Jun 2019 05:44:41 GMT  
		Size: 4.8 KB (4789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1885087669acce15da52b83bdf4fb2a5d3a7699d0f46a1d14e20cb987652f4`  
		Last Modified: Fri, 21 Jun 2019 21:20:30 GMT  
		Size: 85.5 MB (85548878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a736e92fa7e2767248c279866e64e439a1b60791c34537df9d56f9899ab95d49`  
		Last Modified: Fri, 21 Jun 2019 21:20:07 GMT  
		Size: 8.2 KB (8215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248b6a0cda99366f909632fb8546ab5d57c9d1c94cfea6ec0b9c358cf01b7f13`  
		Last Modified: Fri, 21 Jun 2019 21:20:07 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65048ab518c25008d9ae2adc86e89a642b38e88353015b744275ce0661d0d000`  
		Last Modified: Fri, 21 Jun 2019 21:20:07 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc563f555e9a98c420b8e59347713869403494034eeb5ccdb69ea99b541acdf`  
		Last Modified: Fri, 21 Jun 2019 21:20:07 GMT  
		Size: 2.4 KB (2381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfb1daac406f4c8630c19048760b3973f5850c396921b7f42e09c79b261c389`  
		Last Modified: Fri, 21 Jun 2019 21:20:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; ppc64le

```console
$ docker pull postgres@sha256:41b50a18148f3cdfbd493ad3238209c312fab5bd35a2784cdc6612c5883c5083
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84078314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8c20007d88daf2640e716a2e0ca21ae1a053542fd5b16e4ce9622ea3544eeb9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:56 GMT
ADD file:cbe9750f9a223a6cdc02ae93dd729d2261ce439e1c7be255cd3a688eebfe62ba in / 
# Mon, 10 Jun 2019 23:18:59 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:20:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:20:21 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 11 Jun 2019 00:20:26 GMT
ENV GOSU_VERSION=1.11
# Tue, 11 Jun 2019 00:21:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 11 Jun 2019 00:22:05 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 11 Jun 2019 00:22:11 GMT
ENV LANG=en_US.utf8
# Tue, 11 Jun 2019 00:22:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:22:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 11 Jun 2019 00:22:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 11 Jun 2019 00:22:59 GMT
ENV PG_MAJOR=11
# Fri, 21 Jun 2019 20:52:42 GMT
ENV PG_VERSION=11.4-1.pgdg90+1
# Fri, 21 Jun 2019 20:55:20 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Fri, 21 Jun 2019 20:55:29 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Fri, 21 Jun 2019 20:55:34 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 21 Jun 2019 20:55:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 21 Jun 2019 20:55:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 21 Jun 2019 20:55:45 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Fri, 21 Jun 2019 20:55:50 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 21 Jun 2019 20:55:51 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:55:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Jun 2019 20:56:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:56:02 GMT
EXPOSE 5432
# Fri, 21 Jun 2019 20:56:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d41f2b4ffc1e666af1af85c808fc5e2c1f81602da89d9e81911a402a3e1e69b5`  
		Last Modified: Mon, 10 Jun 2019 23:24:17 GMT  
		Size: 22.7 MB (22744910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f0ba8c00f39e1312ee6ce74fbae336915497e815d4da5ff59b5686a5968c7c`  
		Last Modified: Tue, 11 Jun 2019 00:52:00 GMT  
		Size: 4.4 MB (4364914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b375d39497de361fa9217a684420afa8deb95c8db682ff68e6899f5135822017`  
		Last Modified: Tue, 11 Jun 2019 00:51:59 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9fbd2675701a0c4f015291099027aa69dc233449b06c962bdd2fd2fe05a2791`  
		Last Modified: Tue, 11 Jun 2019 00:51:57 GMT  
		Size: 1.3 MB (1274957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1e92aef6603d60510b1fbd3bcaf911d28b1528a439c7a5e613a5b4e8c1e2e3`  
		Last Modified: Tue, 11 Jun 2019 00:51:56 GMT  
		Size: 6.2 MB (6185526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c36d5ac2da875f7dd5b43c3e90f2694ef339ec7f3def4cf8bd8b3f023f4188`  
		Last Modified: Tue, 11 Jun 2019 00:51:54 GMT  
		Size: 293.5 KB (293467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0fc33655b9111be694e6ede4db2f0a3a8b6a74bbe55427d33661f7d46ae269`  
		Last Modified: Tue, 11 Jun 2019 00:51:54 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e09ff0abe1b1376f435c86d7e2edf0ca926fd30468fbfe9c67e719dae138ac`  
		Last Modified: Tue, 11 Jun 2019 00:51:50 GMT  
		Size: 4.8 KB (4789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65add5c32137f2c99cc86406829bda2cf1039b23c8edc46e96887df4997e4445`  
		Last Modified: Fri, 21 Jun 2019 21:37:28 GMT  
		Size: 49.2 MB (49196746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38eed0585d5e7c011cde53f7c8277a13274abb33018e06a137d230fe9af55a32`  
		Last Modified: Fri, 21 Jun 2019 21:37:09 GMT  
		Size: 8.2 KB (8215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57975150e5b62ae88d7f9bfdada62edcf5fd5188e4c34dc51aaf6029979e8e8`  
		Last Modified: Fri, 21 Jun 2019 21:37:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ebf16e287196c7f224bc224dedd610a48902217df010eed2d5de9d577bcff2`  
		Last Modified: Fri, 21 Jun 2019 21:37:08 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4074a2d2c251ae02e03cf3aa33d0574ad1803b68a8579e5754668c5f7dc2316c`  
		Last Modified: Fri, 21 Jun 2019 21:37:08 GMT  
		Size: 2.4 KB (2379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e93b17780f8cc90152cca145b1a03395a01b7c826d4f13949b430b1b8823545`  
		Last Modified: Fri, 21 Jun 2019 21:37:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; s390x

```console
$ docker pull postgres@sha256:1cfcaa11302bcd40742e05b8825dcba5c1e52b4c0753a4a80613d7d2d163899d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84146246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdb317045e6c97d32b4c695298590b3b7a62db30f7087f279ec12e2fcf4684fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:54 GMT
ADD file:e253b6e8cd43e8026b8cd0ba0bbe34460e255b131bdb2f50d5b8a2cfd5c9495b in / 
# Mon, 10 Jun 2019 23:43:55 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:44:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:44:05 GMT
RUN set -eux; 	groupadd -r postgres --gid=999; 	useradd -r -g postgres --uid=999 --home-dir=/var/lib/postgresql --shell=/bin/bash postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Tue, 11 Jun 2019 01:44:05 GMT
ENV GOSU_VERSION=1.11
# Tue, 11 Jun 2019 01:44:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 11 Jun 2019 01:44:24 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 11 Jun 2019 01:44:25 GMT
ENV LANG=en_US.utf8
# Tue, 11 Jun 2019 01:44:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:44:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 11 Jun 2019 01:44:33 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 11 Jun 2019 01:44:33 GMT
ENV PG_MAJOR=11
# Tue, 11 Jun 2019 01:44:33 GMT
ENV PG_VERSION=11.3-1.pgdg90+1
# Tue, 11 Jun 2019 01:54:55 GMT
RUN set -ex; 		export PYTHONDONTWRITEBYTECODE=1; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						case "$PG_MAJOR" in 				9.* | 10 ) ;; 				*) 					echo 'deb http://deb.debian.org/debian stretch-backports main' >> /etc/apt/sources.list.d/pgdg.list; 					;; 			esac; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi; 		find /usr -name '*.pyc' -type f -exec bash -c 'for pyc; do dpkg -S "$pyc" &> /dev/null || rm -vf "$pyc"; done' -- '{}' +
# Tue, 11 Jun 2019 01:54:56 GMT
RUN set -eux; 	dpkg-divert --add --rename --divert "/usr/share/postgresql/postgresql.conf.sample.dpkg" "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample"; 	cp -v /usr/share/postgresql/postgresql.conf.sample.dpkg /usr/share/postgresql/postgresql.conf.sample; 	ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/"; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/share/postgresql/postgresql.conf.sample
# Tue, 11 Jun 2019 01:54:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 11 Jun 2019 01:54:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Tue, 11 Jun 2019 01:54:57 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 11 Jun 2019 01:54:58 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Tue, 11 Jun 2019 01:54:58 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 11 Jun 2019 01:54:58 GMT
COPY file:821a5675752f9e8c7b4118e7184c6f65d810150cd254bac8cfda104cdb7f0298 in /usr/local/bin/ 
# Tue, 11 Jun 2019 01:54:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 11 Jun 2019 01:54:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Jun 2019 01:55:00 GMT
EXPOSE 5432
# Tue, 11 Jun 2019 01:55:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7ffdabbd82ddae873be4d1eeb64de2e4b43db4450b465d53b47f3b46eb55bd53`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 22.3 MB (22338852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c01c45b456d6b5e9dd974061312b723e884ab720c0af02470e1c15c2c1636f2`  
		Last Modified: Tue, 11 Jun 2019 02:32:15 GMT  
		Size: 4.5 MB (4533630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e154e71d36be73566cfd0aaa40393f14354d371b0ac4c7355acdf835ddf01c`  
		Last Modified: Tue, 11 Jun 2019 02:32:14 GMT  
		Size: 1.8 KB (1779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c02e92a36833ca78726950b5aac51b3548a4f4d4c76d709326edf8e1c5e6de`  
		Last Modified: Tue, 11 Jun 2019 02:32:14 GMT  
		Size: 1.3 MB (1340793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050c03b91f1c1b7d3194708ceed5c959c30cb6c3b6f75d0e1c0cd5f93324338f`  
		Last Modified: Tue, 11 Jun 2019 02:32:15 GMT  
		Size: 6.2 MB (6207296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f4621a905fc3ecf145463046397c20d2d5ff4c819485f29e29b7f11fffda2f`  
		Last Modified: Tue, 11 Jun 2019 02:32:13 GMT  
		Size: 294.5 KB (294455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793138087a2de76f1536aef3f3c140387a3c9f17232b772e732f308e8017a0db`  
		Last Modified: Tue, 11 Jun 2019 02:32:12 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24de4ce12e81cc26560f47ad4baccde9a5570b8b887b8f01a2dbbeb948b07956`  
		Last Modified: Tue, 11 Jun 2019 02:32:12 GMT  
		Size: 4.8 KB (4787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ea4790dfb24f1c102e746356722189d1affe817e895312c9ffd93f8c9f9326`  
		Last Modified: Tue, 11 Jun 2019 02:32:22 GMT  
		Size: 49.4 MB (49413534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49859415bd85e025234a52a7234aa48c1d07b887744bfc6fb8c32c0eeed80078`  
		Last Modified: Tue, 11 Jun 2019 02:32:12 GMT  
		Size: 8.2 KB (8206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1cf19d30ecac0e60239a5ceeb9f573f2340d8f9676a8f81664aeb1b8234fdf`  
		Last Modified: Tue, 11 Jun 2019 02:32:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c2c59894809f87f48339d09aca097f005d7f92e3c8690a10e7d82023da51c3`  
		Last Modified: Tue, 11 Jun 2019 02:32:11 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e728d963c8b9f45f87ce9ab41e1b0fc8672e6eec4fd1c7070c0989152c987d76`  
		Last Modified: Tue, 11 Jun 2019 02:32:11 GMT  
		Size: 2.4 KB (2379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec97ad1c5b803910850e382cc9e4b7bc805971b24dfb1413b92fafe7640507ad`  
		Last Modified: Tue, 11 Jun 2019 02:32:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
