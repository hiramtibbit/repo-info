<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `postgres`

-	[`postgres:10`](#postgres10)
-	[`postgres:10.3`](#postgres103)
-	[`postgres:10.3-alpine`](#postgres103-alpine)
-	[`postgres:10-alpine`](#postgres10-alpine)
-	[`postgres:9`](#postgres9)
-	[`postgres:9.3`](#postgres93)
-	[`postgres:9.3.22`](#postgres9322)
-	[`postgres:9.3.22-alpine`](#postgres9322-alpine)
-	[`postgres:9.3-alpine`](#postgres93-alpine)
-	[`postgres:9.4`](#postgres94)
-	[`postgres:9.4.17`](#postgres9417)
-	[`postgres:9.4.17-alpine`](#postgres9417-alpine)
-	[`postgres:9.4-alpine`](#postgres94-alpine)
-	[`postgres:9.5`](#postgres95)
-	[`postgres:9.5.12`](#postgres9512)
-	[`postgres:9.5.12-alpine`](#postgres9512-alpine)
-	[`postgres:9.5-alpine`](#postgres95-alpine)
-	[`postgres:9.6`](#postgres96)
-	[`postgres:9.6.8`](#postgres968)
-	[`postgres:9.6.8-alpine`](#postgres968-alpine)
-	[`postgres:9.6-alpine`](#postgres96-alpine)
-	[`postgres:9-alpine`](#postgres9-alpine)
-	[`postgres:alpine`](#postgresalpine)
-	[`postgres:latest`](#postgreslatest)

## `postgres:10`

```console
$ docker pull postgres@sha256:688206b4a9c0e9052337820c666c8bbeab3d86e191ee2795ca4893ecf8d6088b
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

### `postgres:10` - linux; amd64

```console
$ docker pull postgres@sha256:ff701059135dd30a3eb25ff7c4a756463fc489d1fa541f158b45a746e916a619
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117208766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30121e967865d4c32e5a7d0a08c22c90823f32112fcac23fc527733cbb88a932`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 16:52:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 16:53:00 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 16:53:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 16:53:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 16:53:18 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 16:53:19 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 16:53:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 16:53:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 16:53:23 GMT
ENV PG_MAJOR=10
# Wed, 14 Mar 2018 16:53:23 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Wed, 14 Mar 2018 16:53:44 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 16:53:45 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 16:53:46 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 16:53:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Wed, 14 Mar 2018 16:53:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 16:53:47 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 16:53:47 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 16:53:47 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Wed, 14 Mar 2018 16:53:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 16:53:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 16:53:49 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 16:53:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94aaf8397f8c6d0fb16018031f4d3df03b9faf9d142f1d6337b85ae7d284ad2`  
		Last Modified: Wed, 14 Mar 2018 17:01:37 GMT  
		Size: 6.9 MB (6921121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0853c2cf63f7276625470d4f1ab58d9262370407497bbf7c6764c2679c83ce91`  
		Last Modified: Wed, 14 Mar 2018 17:01:33 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487961619c6f05e40ca7383ae356541c9a92a618abace366dcbd143278b39cc2`  
		Last Modified: Wed, 14 Mar 2018 17:01:33 GMT  
		Size: 956.7 KB (956669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3fe80b87ac6438872bf5b3932c1edc5bebd4b3e2944f1cf95c3b84fe5ad1270`  
		Last Modified: Wed, 14 Mar 2018 17:01:32 GMT  
		Size: 6.6 MB (6577639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca9a0468275305df330e9d9cb2f41c3f5e4810238e20c220556330dde8d62b0`  
		Last Modified: Wed, 14 Mar 2018 17:01:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08717267268ed8912fab875b330f03806b6c8766737faf7f6c3a4a55d66e4d4`  
		Last Modified: Wed, 14 Mar 2018 17:01:30 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e01a893aae58df0fa34734eadb93ed02911dffe4ce6990babab42b0a522419`  
		Last Modified: Wed, 14 Mar 2018 17:01:47 GMT  
		Size: 57.6 MB (57602387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a59d7eed20da36968d96939aa0a0c73099cb585c9af05bd6fac48d7e7622ae9`  
		Last Modified: Wed, 14 Mar 2018 17:01:32 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ce89955be96eb49ffadcfbf3b86d8514f78f565864b09cd3a3a88feb2d0af7`  
		Last Modified: Wed, 14 Mar 2018 17:01:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d094cdd68b6c30ff11a463ddd347616f2c2804e76cd22c287feddec17fb3dc`  
		Last Modified: Wed, 14 Mar 2018 17:01:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551b1e46cd6f383a15907c0982691a2a45b1a6629c7d5ba382d07af8d78ac47d`  
		Last Modified: Wed, 14 Mar 2018 17:01:28 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3591a6c2a192fb49f29af4cefe4ed133d908ad0c89023f114e2817617e403fa`  
		Last Modified: Wed, 14 Mar 2018 17:01:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; arm variant v5

```console
$ docker pull postgres@sha256:42df1fa4c34b1308de7a2e51b1f6bc162c8a8b0e1f70adfdedb7a1a528c292cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.5 MB (116506845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8cae6cd641284f8030bb2b3b08547d0ca8eccdbfc8e5fcf30b8ae4e2be0d335`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:02 GMT
ADD file:df0457084f7e40c64d40dd7ffb2d5365160faee6f8b02c443bc3d1cb36a0f40d in / 
# Wed, 14 Mar 2018 20:01:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:30:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 21:30:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 21:30:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 21:31:15 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 21:31:26 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 21:31:27 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 21:31:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 21:31:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 21:31:32 GMT
ENV PG_MAJOR=10
# Wed, 14 Mar 2018 21:31:32 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Wed, 14 Mar 2018 21:51:00 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 21:51:01 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 21:51:02 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 21:51:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Wed, 14 Mar 2018 21:51:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 21:51:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 21:51:04 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 21:51:05 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Wed, 14 Mar 2018 21:51:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 21:51:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 21:51:07 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 21:51:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:25301cba2d4ef04878f7296fe55faa4b0b2fafbc29758d9fca5a199350d7827c`  
		Last Modified: Wed, 14 Mar 2018 20:12:18 GMT  
		Size: 43.8 MB (43819573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcd22cc643ce33ee7dd8f2087cbf6a8c2a37ce6b745c0532ed40aabbfef4f66`  
		Last Modified: Wed, 14 Mar 2018 23:06:32 GMT  
		Size: 6.7 MB (6654968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd309ba29defb6570d03db357d16a1945aad44ccf54a18b7c161647fc7b43d9`  
		Last Modified: Wed, 14 Mar 2018 23:06:31 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2cb30058939b8753113d242bb2c866fdf6fe642cf73c3c1d21b83296496e2bd`  
		Last Modified: Wed, 14 Mar 2018 23:06:30 GMT  
		Size: 946.8 KB (946773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1642ce7eda1608fe463dbdea9727429b5e14875e8db9e2e31b0f4b147881c3`  
		Last Modified: Wed, 14 Mar 2018 23:06:31 GMT  
		Size: 6.6 MB (6577822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854fde913950b7900c41f5f7d666bb449ff5a67771ab81164ad741170037309`  
		Last Modified: Wed, 14 Mar 2018 23:06:29 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d82e5d7fd3123dd562e4a0867f0ae4e8240612d1b30f5678cba003d89f098da`  
		Last Modified: Wed, 14 Mar 2018 23:06:28 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70facabd4e892a96d8093c06f1b8d78c6c7ae1929cdcc4744219c1439522635f`  
		Last Modified: Wed, 14 Mar 2018 23:06:47 GMT  
		Size: 58.5 MB (58491782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0bb5ec552d6a66d670c678fa77b3220cc490db840a515fba39dac467c5f840`  
		Last Modified: Wed, 14 Mar 2018 23:06:27 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f6abdd61b24a03e260f8a54a1e53c2ca061628eadbe2653b42acf423ba8d5c`  
		Last Modified: Wed, 14 Mar 2018 23:06:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fe0b0db3a012a8be0d9b76005f3cb995052b7c996c85685987a2423cbefa4b`  
		Last Modified: Wed, 14 Mar 2018 23:06:27 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12c888e0dd754d046733783d906c8a6ad718574c5dde99afa2e24e76678086a`  
		Last Modified: Wed, 14 Mar 2018 23:06:29 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444a2b3f448b1e14079b56153e1e419304911792c85c0e0e79e9a8b519941f4b`  
		Last Modified: Wed, 14 Mar 2018 23:06:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; arm variant v7

```console
$ docker pull postgres@sha256:eb8995c21cf02d64a79b32b11065c97746298d66b43de555e696a446f23a164c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178569315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fdecaf51fe601124b5b9c5fedcf58e72f0cf0bc17b609dcb471d68b2b11db7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 12:25:46 GMT
ADD file:6208a77a3fff4a68790f06b1b3a3e0fcb563724a9d1485d8e10592e2cf32b190 in / 
# Wed, 14 Mar 2018 12:25:46 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 03:38:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 03:38:37 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 28 Mar 2018 03:38:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Mar 2018 03:38:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 28 Mar 2018 03:38:59 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 28 Mar 2018 03:39:00 GMT
ENV LANG=en_US.utf8
# Wed, 28 Mar 2018 03:39:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Mar 2018 03:39:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 28 Mar 2018 03:39:06 GMT
ENV PG_MAJOR=10
# Wed, 28 Mar 2018 03:39:07 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Wed, 28 Mar 2018 03:54:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 28 Mar 2018 03:54:51 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 28 Mar 2018 03:54:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 28 Mar 2018 03:54:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Wed, 28 Mar 2018 03:54:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Mar 2018 03:54:53 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 28 Mar 2018 03:54:53 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Mar 2018 03:54:54 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Wed, 28 Mar 2018 03:54:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 28 Mar 2018 03:54:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 03:54:55 GMT
EXPOSE 5432/tcp
# Wed, 28 Mar 2018 03:54:55 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8c1aa76b118f0b6f588a119501660e6c6984f1c8af222f2b04be33b64cada0c2`  
		Last Modified: Wed, 14 Mar 2018 12:37:22 GMT  
		Size: 44.1 MB (44078135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3ffdc7c95f36f6ab3e6038438d851ea38ba046a53ece176f2d35caddc75ba0`  
		Last Modified: Wed, 28 Mar 2018 04:53:11 GMT  
		Size: 9.0 MB (9002659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2af83fb1e1d8a7b0c24b01595114df2abbbb688d606c8ff88ba7694efeb348c`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 1.9 KB (1862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e342156e061add8ad9dfb369b32b557de2b001028dff9350b5fb1cf9e78f6a90`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 937.8 KB (937792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1f846fdb0dda2e9e8ae7b68700b39337abdba0a58c7bd33fab39e1ab982fed`  
		Last Modified: Wed, 28 Mar 2018 04:53:10 GMT  
		Size: 7.4 MB (7397480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f19e12270249fafb855a0d74b265a13e05a55d791b8beee9e9f2780ecca1aea`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803ad1f3db776e5dcdf942153b71efa528356ea4fae29713b6b241c9c84f655e`  
		Last Modified: Wed, 28 Mar 2018 04:53:07 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2137ab972c1572c6a08e09637f16e8b74dbbe82bbc966ea52104141b3a29a9db`  
		Last Modified: Wed, 28 Mar 2018 04:53:39 GMT  
		Size: 117.1 MB (117137200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae40a6d22c046196abd48b10d49ded45bbfe29548dcd036e467bc3d4436628c`  
		Last Modified: Wed, 28 Mar 2018 04:53:06 GMT  
		Size: 7.3 KB (7302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef782d6343fbe0b2353ebeaf76236d6326a427fa971aaa07c78770fb11d9bc9`  
		Last Modified: Wed, 28 Mar 2018 04:53:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ef52526e24f86a307a3a552c43ab24651758ae678e757dc691dc1b9c9e18c9`  
		Last Modified: Wed, 28 Mar 2018 04:53:06 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125bdb6f664a756e9f5149995e47dfeeec63b9bef85b191a64af4690d723d53d`  
		Last Modified: Wed, 28 Mar 2018 04:53:06 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d474153b8e3f14e4ba89f409a36fd4e656053b198353525ab3e5eb3756b6e77`  
		Last Modified: Wed, 28 Mar 2018 04:53:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:7959615a26da8fb38991d6a84e8c2deb70216040bb3ddec9ce386fae2edc53cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114470058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:234c75743f8e15319bf6b503e54e4f3646b503efca9939c89294c5e83159cf4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 00:33:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 00:33:57 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 00:33:58 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 00:34:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 00:34:51 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 00:34:56 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 00:34:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 00:35:01 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 00:35:14 GMT
ENV PG_MAJOR=10
# Thu, 15 Mar 2018 00:35:14 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Thu, 15 Mar 2018 01:10:42 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 01:10:44 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 01:10:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 01:11:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Thu, 15 Mar 2018 01:11:01 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 01:11:03 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 01:11:04 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 01:11:05 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 15 Mar 2018 01:11:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 01:11:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 01:11:22 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 01:11:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742fb531d5f1aa10aeee51aea3fac73644b2c5579e911a7adab2615eb1c0bef1`  
		Last Modified: Thu, 15 Mar 2018 03:36:11 GMT  
		Size: 6.5 MB (6496326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed4564bac9b9ff1cb34456125abae468bba79985c0a574c685c941e3c8589bd7`  
		Last Modified: Thu, 15 Mar 2018 03:36:08 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9496af3c9e1a3980823e13c748b721092ed4508991e4cbb22c624de2302bd7e`  
		Last Modified: Thu, 15 Mar 2018 03:36:08 GMT  
		Size: 924.3 KB (924289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe0248633a050d1750baf17453bed3f178aaca2d9425822c3fd1615c809cd79`  
		Last Modified: Thu, 15 Mar 2018 03:36:13 GMT  
		Size: 6.6 MB (6577545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195dcc28c9087b68be81755f295d3d8835c38d07c8fa98a7b98276f36b35ae35`  
		Last Modified: Thu, 15 Mar 2018 03:36:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96614583066fd537d808ffb5ab93b172a59b1eef8a57c04f5473ef95bcf6c9e`  
		Last Modified: Thu, 15 Mar 2018 03:36:07 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb10d152128bff78acfdbcaee10bff477c75854f5c6eff49ed8e420d89b3a54`  
		Last Modified: Thu, 15 Mar 2018 03:36:27 GMT  
		Size: 57.5 MB (57548199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc658c47ad5f92586eaea78191f647086499bcd7dd294249ddb1e78a6e065767`  
		Last Modified: Thu, 15 Mar 2018 03:36:05 GMT  
		Size: 7.3 KB (7301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aabcb9a7677a244b1d5795e27d2525899983e10ffadee6ee901462c641ca013`  
		Last Modified: Thu, 15 Mar 2018 03:36:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206de354f6a3a3604b9d0383d13dfc5b46d74c29a517bcbc20464064ec71bd45`  
		Last Modified: Thu, 15 Mar 2018 03:36:05 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76c0aa6042d67a3eba44bacc027f6e037d81affa1143423bd84db94572f9a18`  
		Last Modified: Thu, 15 Mar 2018 03:36:05 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cd5eb945a5c308cbca6e3b26d7d8bff59e3a54028b59b3ae9789828f1d78b9`  
		Last Modified: Thu, 15 Mar 2018 03:36:05 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; 386

```console
$ docker pull postgres@sha256:6da148b171968aeab56a0b7c9a6417bd30d80fda2e2f53c6a5eb6229989f273b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.3 MB (119282274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d25c624578613fed87ec17545ab70aba3c6a3b1320378fc9a793588fa454774e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 14:24:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 14:26:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 16 Feb 2018 14:26:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 14:28:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Feb 2018 14:34:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 16 Feb 2018 14:34:33 GMT
ENV LANG=en_US.utf8
# Fri, 16 Feb 2018 14:34:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Feb 2018 14:34:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Feb 2018 14:34:38 GMT
ENV PG_MAJOR=10
# Sat, 03 Mar 2018 15:04:20 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Sat, 03 Mar 2018 15:04:59 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 03 Mar 2018 15:05:00 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 03 Mar 2018 15:05:01 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 03 Mar 2018 15:05:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Sat, 03 Mar 2018 15:05:02 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 03 Mar 2018 15:05:03 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 03 Mar 2018 15:05:03 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 03 Mar 2018 15:05:04 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Sat, 03 Mar 2018 15:05:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 15:05:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 15:05:05 GMT
EXPOSE 5432/tcp
# Sat, 03 Mar 2018 15:05:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58335890e26ea82aabf5cb7b94a2ce9c8684db5edc43306f4091740b56ca652d`  
		Last Modified: Fri, 16 Feb 2018 15:00:17 GMT  
		Size: 7.2 MB (7225945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f52524840b4c9050b676763a239e8516043627ce912f92f8a5ca340977fa746`  
		Last Modified: Fri, 16 Feb 2018 15:00:13 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e93b8dc6e434e12cb8256a2c341d8bbef58670cfd62feaa769aa1e480168b5`  
		Last Modified: Fri, 16 Feb 2018 15:00:11 GMT  
		Size: 936.5 KB (936496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a4fc97c7f44414ddd5c2bb285475c05da732522d84201326ea169ef41fef08`  
		Last Modified: Fri, 16 Feb 2018 15:00:15 GMT  
		Size: 6.6 MB (6577474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9b5b94ff20d27f5001c7372e30bc52baff15b629d43d2aaa2d526ecaae6f71`  
		Last Modified: Fri, 16 Feb 2018 15:00:11 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e670ed1bd76e0c26268a12dafee75a0ce35d423137494764dc0aa90989ae94`  
		Last Modified: Fri, 16 Feb 2018 15:00:10 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af55e53bb1dd7c4a7afa5ac75c64675aa682a3a651e9c7af054c8167ef345eb1`  
		Last Modified: Sat, 03 Mar 2018 16:15:35 GMT  
		Size: 58.7 MB (58688766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1466eb4c837a10e3701a28927225c0ada1b0a067b20048b7334b276840376682`  
		Last Modified: Sat, 03 Mar 2018 16:15:16 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac99d1874f112cb90581242b4b7b9782da742417dd731d81da6cd2b484f2ccc1`  
		Last Modified: Sat, 03 Mar 2018 16:15:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db69f0d24cc2bfbba47608b229faa367c60ba3aa0676881acb74acfcb948dde`  
		Last Modified: Sat, 03 Mar 2018 16:15:15 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b56e38646f8f13f4c918ad38b85917f539afcc5885e8eae3442bbb7c5b6347`  
		Last Modified: Sat, 03 Mar 2018 16:15:16 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabf8247e5be6cf3b6f9dfde4c0574c6ff32cc070bdcfaffdce693cd7c49b7df`  
		Last Modified: Sat, 03 Mar 2018 16:15:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; ppc64le

```console
$ docker pull postgres@sha256:7312c98cd6aa60aca6c00eda1182a05f39ef00c552c3732434652605c9e6c78f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117128213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:744698ea06b0c4a6f7ce4c3f4cedfef3b62409da8522ede8bd9d4cc77062f7a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:46:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 03:46:31 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 03:46:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 03:47:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 03:48:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 03:48:09 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 03:48:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 03:48:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 03:48:45 GMT
ENV PG_MAJOR=10
# Thu, 15 Mar 2018 03:48:47 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Thu, 15 Mar 2018 03:53:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 03:53:32 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 03:53:36 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 03:53:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Thu, 15 Mar 2018 03:53:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 03:53:42 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 03:53:44 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 03:53:46 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 15 Mar 2018 03:53:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 03:53:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 03:53:57 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 03:54:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e700b8d90094d3bbf679f34a49eaced5d3335039b8766cca7ea80dbebf5d426d`  
		Last Modified: Thu, 15 Mar 2018 04:30:53 GMT  
		Size: 6.8 MB (6784046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a139e050bed75157f232c53a7abac69e8a85cb562bdaf0ae8fbe1c887bbe9133`  
		Last Modified: Thu, 15 Mar 2018 04:30:50 GMT  
		Size: 1.8 KB (1757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73940be0507e695b04e21c55675e9f40bc9f5e7abd51262f434e62c2ca83992`  
		Last Modified: Thu, 15 Mar 2018 04:30:50 GMT  
		Size: 925.6 KB (925565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45dc4e562aac70b7f650ce7ee2887d44a8380b4aefff8989efe5d2f274fe666`  
		Last Modified: Thu, 15 Mar 2018 04:30:50 GMT  
		Size: 6.6 MB (6577961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c700103927d3d4837c91132639ae88f5345f4d1f84cf7a4f47d75ae687788ab`  
		Last Modified: Thu, 15 Mar 2018 04:30:48 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf85671134843b8ba6b5285f1b33b99fa68162db253052e11658e2e24bbb28cd`  
		Last Modified: Thu, 15 Mar 2018 04:30:48 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da346bddcfa62fcad1ee6ce1d7e8036017e128abce7a926515e865e9f80aadd`  
		Last Modified: Thu, 15 Mar 2018 04:31:03 GMT  
		Size: 57.4 MB (57447648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19815a652f24143bf840b9ebc1d0f4d7405137099270fbc0fe3704c07a11a242`  
		Last Modified: Thu, 15 Mar 2018 04:30:45 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab667313607b793dd75558ab6d90267f0ec876ccb39707155e26f2fdc0c03796`  
		Last Modified: Thu, 15 Mar 2018 04:30:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc0d774869f1ceee2909c5e85353b7a4bbca1e480053c536f077aab52947c11`  
		Last Modified: Thu, 15 Mar 2018 04:30:45 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4c62305bd0abdf2ef81fa08a554f4990674f6aa854342652c813624533583b`  
		Last Modified: Thu, 15 Mar 2018 04:30:45 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f84b7b1b403e55f5c2893243294734a146ab736e7830eb0c9b52ea970c6c703`  
		Last Modified: Thu, 15 Mar 2018 04:30:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; s390x

```console
$ docker pull postgres@sha256:f8cdcfa93e9d12ef7d32873d39d3ecfc0041fa2f1c11ea1b48ff66a7c0cd07a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119401162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa480c02396619d77053de54c48187370738754d56281c7038d41fcf1976bed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:01:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 07:01:59 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 07:01:59 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 05:49:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Mar 2018 05:49:11 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 16 Mar 2018 05:49:11 GMT
ENV LANG=en_US.utf8
# Fri, 16 Mar 2018 05:49:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Mar 2018 05:49:14 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Mar 2018 05:49:14 GMT
ENV PG_MAJOR=10
# Fri, 16 Mar 2018 05:49:15 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Fri, 16 Mar 2018 05:58:25 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Mar 2018 05:58:26 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 16 Mar 2018 05:58:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 16 Mar 2018 05:58:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 16 Mar 2018 05:58:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 16 Mar 2018 05:58:27 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 16 Mar 2018 05:58:27 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 16 Mar 2018 05:58:28 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Fri, 16 Mar 2018 05:58:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Mar 2018 05:58:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 05:58:29 GMT
EXPOSE 5432/tcp
# Fri, 16 Mar 2018 05:58:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f415a03836a1559e732e5c66df383a374bd151f75b935cbd716918420fd8c5d9`  
		Last Modified: Fri, 16 Mar 2018 05:59:05 GMT  
		Size: 7.0 MB (6952964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6b189c9a01938409033dd8b21de4f99582365b2fddd9586f20e619c8c39f40`  
		Last Modified: Fri, 16 Mar 2018 05:59:05 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36825e3e9692781a7531b8c7aaaa30b740ddb915f8c140ff41b53673938a7313`  
		Last Modified: Fri, 16 Mar 2018 05:59:04 GMT  
		Size: 942.4 KB (942378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86b7c6b26f53f5309e6515d7204b954c8c5a4941f46b53715f830c58ddc1389`  
		Last Modified: Fri, 16 Mar 2018 05:59:05 GMT  
		Size: 6.6 MB (6601330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc117b370b010c5afda830b5fb675a76f2e7b276d2b44313d2084d75b8e7252f`  
		Last Modified: Fri, 16 Mar 2018 05:59:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292064ed7fa702116a08d04ee020edbce7782aa5d3afd2060b3602015f781b0f`  
		Last Modified: Fri, 16 Mar 2018 05:59:03 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4acb654312a8f6306ffc13758a524e9e4b4b39fc344c3453296bf848d478312b`  
		Last Modified: Fri, 16 Mar 2018 05:59:14 GMT  
		Size: 59.9 MB (59911467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5775596edf8b2dffe68bf143c055b97548e12d8dc186fd6052095452f4e7ee`  
		Last Modified: Fri, 16 Mar 2018 05:59:01 GMT  
		Size: 7.3 KB (7299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de14416bb0278134d1e06a06ba7348da6c90e6ddc0206745b16a924b52eae8`  
		Last Modified: Fri, 16 Mar 2018 05:59:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92d5585448b171267708d503fe31fc4b0afb3984927689fac1008e7fe8a5d9ab`  
		Last Modified: Fri, 16 Mar 2018 05:59:01 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a28273760900064a018392ad2ce0fb7e950effae2d763dfbd71334955dfae9`  
		Last Modified: Fri, 16 Mar 2018 05:59:01 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e178227a113e54dd29e11e07cfe4513221f4a2729d7193e13c92ebf790f199`  
		Last Modified: Fri, 16 Mar 2018 05:59:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10.3`

```console
$ docker pull postgres@sha256:688206b4a9c0e9052337820c666c8bbeab3d86e191ee2795ca4893ecf8d6088b
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

### `postgres:10.3` - linux; amd64

```console
$ docker pull postgres@sha256:ff701059135dd30a3eb25ff7c4a756463fc489d1fa541f158b45a746e916a619
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117208766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30121e967865d4c32e5a7d0a08c22c90823f32112fcac23fc527733cbb88a932`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 16:52:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 16:53:00 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 16:53:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 16:53:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 16:53:18 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 16:53:19 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 16:53:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 16:53:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 16:53:23 GMT
ENV PG_MAJOR=10
# Wed, 14 Mar 2018 16:53:23 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Wed, 14 Mar 2018 16:53:44 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 16:53:45 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 16:53:46 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 16:53:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Wed, 14 Mar 2018 16:53:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 16:53:47 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 16:53:47 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 16:53:47 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Wed, 14 Mar 2018 16:53:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 16:53:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 16:53:49 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 16:53:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94aaf8397f8c6d0fb16018031f4d3df03b9faf9d142f1d6337b85ae7d284ad2`  
		Last Modified: Wed, 14 Mar 2018 17:01:37 GMT  
		Size: 6.9 MB (6921121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0853c2cf63f7276625470d4f1ab58d9262370407497bbf7c6764c2679c83ce91`  
		Last Modified: Wed, 14 Mar 2018 17:01:33 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487961619c6f05e40ca7383ae356541c9a92a618abace366dcbd143278b39cc2`  
		Last Modified: Wed, 14 Mar 2018 17:01:33 GMT  
		Size: 956.7 KB (956669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3fe80b87ac6438872bf5b3932c1edc5bebd4b3e2944f1cf95c3b84fe5ad1270`  
		Last Modified: Wed, 14 Mar 2018 17:01:32 GMT  
		Size: 6.6 MB (6577639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca9a0468275305df330e9d9cb2f41c3f5e4810238e20c220556330dde8d62b0`  
		Last Modified: Wed, 14 Mar 2018 17:01:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08717267268ed8912fab875b330f03806b6c8766737faf7f6c3a4a55d66e4d4`  
		Last Modified: Wed, 14 Mar 2018 17:01:30 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e01a893aae58df0fa34734eadb93ed02911dffe4ce6990babab42b0a522419`  
		Last Modified: Wed, 14 Mar 2018 17:01:47 GMT  
		Size: 57.6 MB (57602387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a59d7eed20da36968d96939aa0a0c73099cb585c9af05bd6fac48d7e7622ae9`  
		Last Modified: Wed, 14 Mar 2018 17:01:32 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ce89955be96eb49ffadcfbf3b86d8514f78f565864b09cd3a3a88feb2d0af7`  
		Last Modified: Wed, 14 Mar 2018 17:01:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d094cdd68b6c30ff11a463ddd347616f2c2804e76cd22c287feddec17fb3dc`  
		Last Modified: Wed, 14 Mar 2018 17:01:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551b1e46cd6f383a15907c0982691a2a45b1a6629c7d5ba382d07af8d78ac47d`  
		Last Modified: Wed, 14 Mar 2018 17:01:28 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3591a6c2a192fb49f29af4cefe4ed133d908ad0c89023f114e2817617e403fa`  
		Last Modified: Wed, 14 Mar 2018 17:01:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.3` - linux; arm variant v5

```console
$ docker pull postgres@sha256:42df1fa4c34b1308de7a2e51b1f6bc162c8a8b0e1f70adfdedb7a1a528c292cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.5 MB (116506845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8cae6cd641284f8030bb2b3b08547d0ca8eccdbfc8e5fcf30b8ae4e2be0d335`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:02 GMT
ADD file:df0457084f7e40c64d40dd7ffb2d5365160faee6f8b02c443bc3d1cb36a0f40d in / 
# Wed, 14 Mar 2018 20:01:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:30:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 21:30:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 21:30:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 21:31:15 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 21:31:26 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 21:31:27 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 21:31:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 21:31:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 21:31:32 GMT
ENV PG_MAJOR=10
# Wed, 14 Mar 2018 21:31:32 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Wed, 14 Mar 2018 21:51:00 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 21:51:01 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 21:51:02 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 21:51:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Wed, 14 Mar 2018 21:51:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 21:51:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 21:51:04 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 21:51:05 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Wed, 14 Mar 2018 21:51:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 21:51:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 21:51:07 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 21:51:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:25301cba2d4ef04878f7296fe55faa4b0b2fafbc29758d9fca5a199350d7827c`  
		Last Modified: Wed, 14 Mar 2018 20:12:18 GMT  
		Size: 43.8 MB (43819573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcd22cc643ce33ee7dd8f2087cbf6a8c2a37ce6b745c0532ed40aabbfef4f66`  
		Last Modified: Wed, 14 Mar 2018 23:06:32 GMT  
		Size: 6.7 MB (6654968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd309ba29defb6570d03db357d16a1945aad44ccf54a18b7c161647fc7b43d9`  
		Last Modified: Wed, 14 Mar 2018 23:06:31 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2cb30058939b8753113d242bb2c866fdf6fe642cf73c3c1d21b83296496e2bd`  
		Last Modified: Wed, 14 Mar 2018 23:06:30 GMT  
		Size: 946.8 KB (946773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1642ce7eda1608fe463dbdea9727429b5e14875e8db9e2e31b0f4b147881c3`  
		Last Modified: Wed, 14 Mar 2018 23:06:31 GMT  
		Size: 6.6 MB (6577822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854fde913950b7900c41f5f7d666bb449ff5a67771ab81164ad741170037309`  
		Last Modified: Wed, 14 Mar 2018 23:06:29 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d82e5d7fd3123dd562e4a0867f0ae4e8240612d1b30f5678cba003d89f098da`  
		Last Modified: Wed, 14 Mar 2018 23:06:28 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70facabd4e892a96d8093c06f1b8d78c6c7ae1929cdcc4744219c1439522635f`  
		Last Modified: Wed, 14 Mar 2018 23:06:47 GMT  
		Size: 58.5 MB (58491782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0bb5ec552d6a66d670c678fa77b3220cc490db840a515fba39dac467c5f840`  
		Last Modified: Wed, 14 Mar 2018 23:06:27 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f6abdd61b24a03e260f8a54a1e53c2ca061628eadbe2653b42acf423ba8d5c`  
		Last Modified: Wed, 14 Mar 2018 23:06:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fe0b0db3a012a8be0d9b76005f3cb995052b7c996c85685987a2423cbefa4b`  
		Last Modified: Wed, 14 Mar 2018 23:06:27 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12c888e0dd754d046733783d906c8a6ad718574c5dde99afa2e24e76678086a`  
		Last Modified: Wed, 14 Mar 2018 23:06:29 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444a2b3f448b1e14079b56153e1e419304911792c85c0e0e79e9a8b519941f4b`  
		Last Modified: Wed, 14 Mar 2018 23:06:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.3` - linux; arm variant v7

```console
$ docker pull postgres@sha256:eb8995c21cf02d64a79b32b11065c97746298d66b43de555e696a446f23a164c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178569315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fdecaf51fe601124b5b9c5fedcf58e72f0cf0bc17b609dcb471d68b2b11db7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 12:25:46 GMT
ADD file:6208a77a3fff4a68790f06b1b3a3e0fcb563724a9d1485d8e10592e2cf32b190 in / 
# Wed, 14 Mar 2018 12:25:46 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 03:38:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 03:38:37 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 28 Mar 2018 03:38:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Mar 2018 03:38:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 28 Mar 2018 03:38:59 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 28 Mar 2018 03:39:00 GMT
ENV LANG=en_US.utf8
# Wed, 28 Mar 2018 03:39:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Mar 2018 03:39:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 28 Mar 2018 03:39:06 GMT
ENV PG_MAJOR=10
# Wed, 28 Mar 2018 03:39:07 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Wed, 28 Mar 2018 03:54:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 28 Mar 2018 03:54:51 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 28 Mar 2018 03:54:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 28 Mar 2018 03:54:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Wed, 28 Mar 2018 03:54:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Mar 2018 03:54:53 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 28 Mar 2018 03:54:53 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Mar 2018 03:54:54 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Wed, 28 Mar 2018 03:54:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 28 Mar 2018 03:54:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 03:54:55 GMT
EXPOSE 5432/tcp
# Wed, 28 Mar 2018 03:54:55 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8c1aa76b118f0b6f588a119501660e6c6984f1c8af222f2b04be33b64cada0c2`  
		Last Modified: Wed, 14 Mar 2018 12:37:22 GMT  
		Size: 44.1 MB (44078135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3ffdc7c95f36f6ab3e6038438d851ea38ba046a53ece176f2d35caddc75ba0`  
		Last Modified: Wed, 28 Mar 2018 04:53:11 GMT  
		Size: 9.0 MB (9002659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2af83fb1e1d8a7b0c24b01595114df2abbbb688d606c8ff88ba7694efeb348c`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 1.9 KB (1862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e342156e061add8ad9dfb369b32b557de2b001028dff9350b5fb1cf9e78f6a90`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 937.8 KB (937792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1f846fdb0dda2e9e8ae7b68700b39337abdba0a58c7bd33fab39e1ab982fed`  
		Last Modified: Wed, 28 Mar 2018 04:53:10 GMT  
		Size: 7.4 MB (7397480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f19e12270249fafb855a0d74b265a13e05a55d791b8beee9e9f2780ecca1aea`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803ad1f3db776e5dcdf942153b71efa528356ea4fae29713b6b241c9c84f655e`  
		Last Modified: Wed, 28 Mar 2018 04:53:07 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2137ab972c1572c6a08e09637f16e8b74dbbe82bbc966ea52104141b3a29a9db`  
		Last Modified: Wed, 28 Mar 2018 04:53:39 GMT  
		Size: 117.1 MB (117137200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae40a6d22c046196abd48b10d49ded45bbfe29548dcd036e467bc3d4436628c`  
		Last Modified: Wed, 28 Mar 2018 04:53:06 GMT  
		Size: 7.3 KB (7302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef782d6343fbe0b2353ebeaf76236d6326a427fa971aaa07c78770fb11d9bc9`  
		Last Modified: Wed, 28 Mar 2018 04:53:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ef52526e24f86a307a3a552c43ab24651758ae678e757dc691dc1b9c9e18c9`  
		Last Modified: Wed, 28 Mar 2018 04:53:06 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125bdb6f664a756e9f5149995e47dfeeec63b9bef85b191a64af4690d723d53d`  
		Last Modified: Wed, 28 Mar 2018 04:53:06 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d474153b8e3f14e4ba89f409a36fd4e656053b198353525ab3e5eb3756b6e77`  
		Last Modified: Wed, 28 Mar 2018 04:53:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.3` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:7959615a26da8fb38991d6a84e8c2deb70216040bb3ddec9ce386fae2edc53cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114470058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:234c75743f8e15319bf6b503e54e4f3646b503efca9939c89294c5e83159cf4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 00:33:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 00:33:57 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 00:33:58 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 00:34:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 00:34:51 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 00:34:56 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 00:34:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 00:35:01 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 00:35:14 GMT
ENV PG_MAJOR=10
# Thu, 15 Mar 2018 00:35:14 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Thu, 15 Mar 2018 01:10:42 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 01:10:44 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 01:10:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 01:11:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Thu, 15 Mar 2018 01:11:01 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 01:11:03 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 01:11:04 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 01:11:05 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 15 Mar 2018 01:11:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 01:11:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 01:11:22 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 01:11:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742fb531d5f1aa10aeee51aea3fac73644b2c5579e911a7adab2615eb1c0bef1`  
		Last Modified: Thu, 15 Mar 2018 03:36:11 GMT  
		Size: 6.5 MB (6496326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed4564bac9b9ff1cb34456125abae468bba79985c0a574c685c941e3c8589bd7`  
		Last Modified: Thu, 15 Mar 2018 03:36:08 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9496af3c9e1a3980823e13c748b721092ed4508991e4cbb22c624de2302bd7e`  
		Last Modified: Thu, 15 Mar 2018 03:36:08 GMT  
		Size: 924.3 KB (924289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe0248633a050d1750baf17453bed3f178aaca2d9425822c3fd1615c809cd79`  
		Last Modified: Thu, 15 Mar 2018 03:36:13 GMT  
		Size: 6.6 MB (6577545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195dcc28c9087b68be81755f295d3d8835c38d07c8fa98a7b98276f36b35ae35`  
		Last Modified: Thu, 15 Mar 2018 03:36:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96614583066fd537d808ffb5ab93b172a59b1eef8a57c04f5473ef95bcf6c9e`  
		Last Modified: Thu, 15 Mar 2018 03:36:07 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb10d152128bff78acfdbcaee10bff477c75854f5c6eff49ed8e420d89b3a54`  
		Last Modified: Thu, 15 Mar 2018 03:36:27 GMT  
		Size: 57.5 MB (57548199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc658c47ad5f92586eaea78191f647086499bcd7dd294249ddb1e78a6e065767`  
		Last Modified: Thu, 15 Mar 2018 03:36:05 GMT  
		Size: 7.3 KB (7301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aabcb9a7677a244b1d5795e27d2525899983e10ffadee6ee901462c641ca013`  
		Last Modified: Thu, 15 Mar 2018 03:36:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206de354f6a3a3604b9d0383d13dfc5b46d74c29a517bcbc20464064ec71bd45`  
		Last Modified: Thu, 15 Mar 2018 03:36:05 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76c0aa6042d67a3eba44bacc027f6e037d81affa1143423bd84db94572f9a18`  
		Last Modified: Thu, 15 Mar 2018 03:36:05 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cd5eb945a5c308cbca6e3b26d7d8bff59e3a54028b59b3ae9789828f1d78b9`  
		Last Modified: Thu, 15 Mar 2018 03:36:05 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.3` - linux; 386

```console
$ docker pull postgres@sha256:6da148b171968aeab56a0b7c9a6417bd30d80fda2e2f53c6a5eb6229989f273b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.3 MB (119282274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d25c624578613fed87ec17545ab70aba3c6a3b1320378fc9a793588fa454774e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 14:24:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 14:26:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 16 Feb 2018 14:26:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 14:28:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Feb 2018 14:34:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 16 Feb 2018 14:34:33 GMT
ENV LANG=en_US.utf8
# Fri, 16 Feb 2018 14:34:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Feb 2018 14:34:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Feb 2018 14:34:38 GMT
ENV PG_MAJOR=10
# Sat, 03 Mar 2018 15:04:20 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Sat, 03 Mar 2018 15:04:59 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 03 Mar 2018 15:05:00 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 03 Mar 2018 15:05:01 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 03 Mar 2018 15:05:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Sat, 03 Mar 2018 15:05:02 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 03 Mar 2018 15:05:03 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 03 Mar 2018 15:05:03 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 03 Mar 2018 15:05:04 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Sat, 03 Mar 2018 15:05:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 15:05:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 15:05:05 GMT
EXPOSE 5432/tcp
# Sat, 03 Mar 2018 15:05:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58335890e26ea82aabf5cb7b94a2ce9c8684db5edc43306f4091740b56ca652d`  
		Last Modified: Fri, 16 Feb 2018 15:00:17 GMT  
		Size: 7.2 MB (7225945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f52524840b4c9050b676763a239e8516043627ce912f92f8a5ca340977fa746`  
		Last Modified: Fri, 16 Feb 2018 15:00:13 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e93b8dc6e434e12cb8256a2c341d8bbef58670cfd62feaa769aa1e480168b5`  
		Last Modified: Fri, 16 Feb 2018 15:00:11 GMT  
		Size: 936.5 KB (936496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a4fc97c7f44414ddd5c2bb285475c05da732522d84201326ea169ef41fef08`  
		Last Modified: Fri, 16 Feb 2018 15:00:15 GMT  
		Size: 6.6 MB (6577474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9b5b94ff20d27f5001c7372e30bc52baff15b629d43d2aaa2d526ecaae6f71`  
		Last Modified: Fri, 16 Feb 2018 15:00:11 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e670ed1bd76e0c26268a12dafee75a0ce35d423137494764dc0aa90989ae94`  
		Last Modified: Fri, 16 Feb 2018 15:00:10 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af55e53bb1dd7c4a7afa5ac75c64675aa682a3a651e9c7af054c8167ef345eb1`  
		Last Modified: Sat, 03 Mar 2018 16:15:35 GMT  
		Size: 58.7 MB (58688766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1466eb4c837a10e3701a28927225c0ada1b0a067b20048b7334b276840376682`  
		Last Modified: Sat, 03 Mar 2018 16:15:16 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac99d1874f112cb90581242b4b7b9782da742417dd731d81da6cd2b484f2ccc1`  
		Last Modified: Sat, 03 Mar 2018 16:15:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db69f0d24cc2bfbba47608b229faa367c60ba3aa0676881acb74acfcb948dde`  
		Last Modified: Sat, 03 Mar 2018 16:15:15 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b56e38646f8f13f4c918ad38b85917f539afcc5885e8eae3442bbb7c5b6347`  
		Last Modified: Sat, 03 Mar 2018 16:15:16 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabf8247e5be6cf3b6f9dfde4c0574c6ff32cc070bdcfaffdce693cd7c49b7df`  
		Last Modified: Sat, 03 Mar 2018 16:15:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.3` - linux; ppc64le

```console
$ docker pull postgres@sha256:7312c98cd6aa60aca6c00eda1182a05f39ef00c552c3732434652605c9e6c78f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117128213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:744698ea06b0c4a6f7ce4c3f4cedfef3b62409da8522ede8bd9d4cc77062f7a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:46:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 03:46:31 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 03:46:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 03:47:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 03:48:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 03:48:09 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 03:48:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 03:48:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 03:48:45 GMT
ENV PG_MAJOR=10
# Thu, 15 Mar 2018 03:48:47 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Thu, 15 Mar 2018 03:53:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 03:53:32 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 03:53:36 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 03:53:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Thu, 15 Mar 2018 03:53:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 03:53:42 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 03:53:44 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 03:53:46 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 15 Mar 2018 03:53:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 03:53:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 03:53:57 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 03:54:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e700b8d90094d3bbf679f34a49eaced5d3335039b8766cca7ea80dbebf5d426d`  
		Last Modified: Thu, 15 Mar 2018 04:30:53 GMT  
		Size: 6.8 MB (6784046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a139e050bed75157f232c53a7abac69e8a85cb562bdaf0ae8fbe1c887bbe9133`  
		Last Modified: Thu, 15 Mar 2018 04:30:50 GMT  
		Size: 1.8 KB (1757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73940be0507e695b04e21c55675e9f40bc9f5e7abd51262f434e62c2ca83992`  
		Last Modified: Thu, 15 Mar 2018 04:30:50 GMT  
		Size: 925.6 KB (925565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45dc4e562aac70b7f650ce7ee2887d44a8380b4aefff8989efe5d2f274fe666`  
		Last Modified: Thu, 15 Mar 2018 04:30:50 GMT  
		Size: 6.6 MB (6577961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c700103927d3d4837c91132639ae88f5345f4d1f84cf7a4f47d75ae687788ab`  
		Last Modified: Thu, 15 Mar 2018 04:30:48 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf85671134843b8ba6b5285f1b33b99fa68162db253052e11658e2e24bbb28cd`  
		Last Modified: Thu, 15 Mar 2018 04:30:48 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da346bddcfa62fcad1ee6ce1d7e8036017e128abce7a926515e865e9f80aadd`  
		Last Modified: Thu, 15 Mar 2018 04:31:03 GMT  
		Size: 57.4 MB (57447648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19815a652f24143bf840b9ebc1d0f4d7405137099270fbc0fe3704c07a11a242`  
		Last Modified: Thu, 15 Mar 2018 04:30:45 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab667313607b793dd75558ab6d90267f0ec876ccb39707155e26f2fdc0c03796`  
		Last Modified: Thu, 15 Mar 2018 04:30:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc0d774869f1ceee2909c5e85353b7a4bbca1e480053c536f077aab52947c11`  
		Last Modified: Thu, 15 Mar 2018 04:30:45 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4c62305bd0abdf2ef81fa08a554f4990674f6aa854342652c813624533583b`  
		Last Modified: Thu, 15 Mar 2018 04:30:45 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f84b7b1b403e55f5c2893243294734a146ab736e7830eb0c9b52ea970c6c703`  
		Last Modified: Thu, 15 Mar 2018 04:30:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.3` - linux; s390x

```console
$ docker pull postgres@sha256:f8cdcfa93e9d12ef7d32873d39d3ecfc0041fa2f1c11ea1b48ff66a7c0cd07a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119401162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa480c02396619d77053de54c48187370738754d56281c7038d41fcf1976bed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:01:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 07:01:59 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 07:01:59 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 05:49:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Mar 2018 05:49:11 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 16 Mar 2018 05:49:11 GMT
ENV LANG=en_US.utf8
# Fri, 16 Mar 2018 05:49:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Mar 2018 05:49:14 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Mar 2018 05:49:14 GMT
ENV PG_MAJOR=10
# Fri, 16 Mar 2018 05:49:15 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Fri, 16 Mar 2018 05:58:25 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Mar 2018 05:58:26 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 16 Mar 2018 05:58:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 16 Mar 2018 05:58:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 16 Mar 2018 05:58:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 16 Mar 2018 05:58:27 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 16 Mar 2018 05:58:27 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 16 Mar 2018 05:58:28 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Fri, 16 Mar 2018 05:58:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Mar 2018 05:58:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 05:58:29 GMT
EXPOSE 5432/tcp
# Fri, 16 Mar 2018 05:58:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f415a03836a1559e732e5c66df383a374bd151f75b935cbd716918420fd8c5d9`  
		Last Modified: Fri, 16 Mar 2018 05:59:05 GMT  
		Size: 7.0 MB (6952964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6b189c9a01938409033dd8b21de4f99582365b2fddd9586f20e619c8c39f40`  
		Last Modified: Fri, 16 Mar 2018 05:59:05 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36825e3e9692781a7531b8c7aaaa30b740ddb915f8c140ff41b53673938a7313`  
		Last Modified: Fri, 16 Mar 2018 05:59:04 GMT  
		Size: 942.4 KB (942378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86b7c6b26f53f5309e6515d7204b954c8c5a4941f46b53715f830c58ddc1389`  
		Last Modified: Fri, 16 Mar 2018 05:59:05 GMT  
		Size: 6.6 MB (6601330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc117b370b010c5afda830b5fb675a76f2e7b276d2b44313d2084d75b8e7252f`  
		Last Modified: Fri, 16 Mar 2018 05:59:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292064ed7fa702116a08d04ee020edbce7782aa5d3afd2060b3602015f781b0f`  
		Last Modified: Fri, 16 Mar 2018 05:59:03 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4acb654312a8f6306ffc13758a524e9e4b4b39fc344c3453296bf848d478312b`  
		Last Modified: Fri, 16 Mar 2018 05:59:14 GMT  
		Size: 59.9 MB (59911467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5775596edf8b2dffe68bf143c055b97548e12d8dc186fd6052095452f4e7ee`  
		Last Modified: Fri, 16 Mar 2018 05:59:01 GMT  
		Size: 7.3 KB (7299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de14416bb0278134d1e06a06ba7348da6c90e6ddc0206745b16a924b52eae8`  
		Last Modified: Fri, 16 Mar 2018 05:59:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92d5585448b171267708d503fe31fc4b0afb3984927689fac1008e7fe8a5d9ab`  
		Last Modified: Fri, 16 Mar 2018 05:59:01 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a28273760900064a018392ad2ce0fb7e950effae2d763dfbd71334955dfae9`  
		Last Modified: Fri, 16 Mar 2018 05:59:01 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e178227a113e54dd29e11e07cfe4513221f4a2729d7193e13c92ebf790f199`  
		Last Modified: Fri, 16 Mar 2018 05:59:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10.3-alpine`

```console
$ docker pull postgres@sha256:89c84fcccc147d403916f4d9964bc4d83297ea7c782d79b05dad5b6c172a7dce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:10.3-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:353e84be19b5234c0660bb93caa5186b13a8bbdbd69438e9939af1bba96a3f7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14963501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4f4231d6f0b59e5ef92464c89cb31ba3b970e181635573f13e98b8a39676605`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Sun, 18 Feb 2018 02:31:30 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sun, 18 Feb 2018 02:31:31 GMT
ENV LANG=en_US.utf8
# Sun, 18 Feb 2018 02:31:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sun, 18 Feb 2018 02:31:32 GMT
ENV PG_MAJOR=10
# Fri, 02 Mar 2018 22:05:07 GMT
ENV PG_VERSION=10.3
# Fri, 02 Mar 2018 22:05:08 GMT
ENV PG_SHA256=6ea268780ee35e88c65cdb0af7955ad90b7d0ef34573867f223f14e43467931a
# Fri, 02 Mar 2018 22:07:29 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 02 Mar 2018 22:07:30 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 02 Mar 2018 22:07:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 02 Mar 2018 22:07:31 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 02 Mar 2018 22:07:32 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 02 Mar 2018 22:07:32 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 02 Mar 2018 22:07:32 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Fri, 02 Mar 2018 22:07:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 02 Mar 2018 22:07:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 22:07:33 GMT
EXPOSE 5432/tcp
# Fri, 02 Mar 2018 22:07:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a503b44e1ce09191fd553fe4a22ab09d16dfd3164c7d0f59c7c1a54a85545fa9`  
		Last Modified: Sun, 18 Feb 2018 02:35:11 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2117067130936383676d224fd32133e2e2e9be9847a8288271d021edede1e2b7`  
		Last Modified: Sun, 18 Feb 2018 02:35:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea28caf317dd0751f2c3b414d9fc9a6e0c16f870ce51256ab1f20945c4a5f523`  
		Last Modified: Fri, 02 Mar 2018 22:24:39 GMT  
		Size: 12.9 MB (12888214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b37749335b4d31eb69b77b4b9eaa5dd2c0b321ae251a5188ac6ce4c2a80c54`  
		Last Modified: Fri, 02 Mar 2018 22:24:32 GMT  
		Size: 7.3 KB (7267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e94ebc5400c93d98e6938e463ffd98b58adf1e9115aff2110150c8d86de338`  
		Last Modified: Fri, 02 Mar 2018 22:24:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77dd3a51253d6e36dc0ad3bf3fd566eda787dfd206483495cea81e696d4a0233`  
		Last Modified: Fri, 02 Mar 2018 22:24:32 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633a37734b127dc003dcab1c1480169500436c5f61f741cb28d62dba30fab0fd`  
		Last Modified: Fri, 02 Mar 2018 22:24:32 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872e6b940bbba5b6b9ea54c71cfc2d18351ca136c227153ea448fdc8368eb7d3`  
		Last Modified: Fri, 02 Mar 2018 22:24:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.3-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:e22b8c305561115e26608b74405a59c858fa1acb1f2fe1d7152c3c5f75608b79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14279456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c9c59fec35ec5139c57d457c8ee696b77379be37baef8aa2d7515632975ef90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:41 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Mon, 26 Feb 2018 23:48:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:42 GMT
CMD ["/bin/sh"]
# Thu, 15 Mar 2018 21:33:48 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 15 Mar 2018 21:33:49 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 21:33:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 21:33:53 GMT
ENV PG_MAJOR=10
# Thu, 15 Mar 2018 21:33:54 GMT
ENV PG_VERSION=10.3
# Thu, 15 Mar 2018 21:33:54 GMT
ENV PG_SHA256=6ea268780ee35e88c65cdb0af7955ad90b7d0ef34573867f223f14e43467931a
# Thu, 15 Mar 2018 22:12:42 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 15 Mar 2018 22:12:47 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 22:12:51 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 22:12:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 22:12:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 22:12:56 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 22:12:57 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Thu, 15 Mar 2018 22:13:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 22:13:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 22:13:03 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 22:13:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5993b3593c77413be85d318297ad8313b945069768a7e454d487fd47fa4b4343`  
		Last Modified: Mon, 26 Feb 2018 23:49:26 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2118fb81ed232392a613e92278922d79bb7f2ad14b33715d4aabafca70b3ce`  
		Last Modified: Thu, 15 Mar 2018 22:13:19 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7cec4fb2ae908cc241abcb569a057ffc5293a4d38f12600d231c5d4dd6996a4`  
		Last Modified: Thu, 15 Mar 2018 22:13:20 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:658f59ad036c7695321156db4741553ba959fe4d85d1bc60639f530cacff18c8`  
		Last Modified: Thu, 15 Mar 2018 22:13:41 GMT  
		Size: 12.2 MB (12231098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5877cc5bcea34b4ab95b6a5484ae8ae21b231c0e58f90ba98a4eb9af00e13ac`  
		Last Modified: Thu, 15 Mar 2018 22:13:16 GMT  
		Size: 7.3 KB (7275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498055b494737e3446218b1d442943aca6ef9589665597a6fead1a496de699a5`  
		Last Modified: Thu, 15 Mar 2018 22:13:16 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36566105be76c3c7b0941f8e06bf12b93dcf9ba58fe552551c77d36d61f0ea3`  
		Last Modified: Thu, 15 Mar 2018 22:13:16 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e254636972f42f6fcd9d4d244a220aa8d39a6736849cd54435a323af4a64ff`  
		Last Modified: Thu, 15 Mar 2018 22:13:16 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed646fbe123b0241713e1abc06e4446c85f8846717b12b1428bbff488515450`  
		Last Modified: Thu, 15 Mar 2018 22:13:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.3-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:669433e95b2485cd9ec121d23a6dfaf5f794a8fbd0bfe41d87a584e210714d5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13786228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a53279a58b1fddb7be5ab93a0e3ccd8b0bb81e18b21788a3496e8bff94a72a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Sun, 18 Feb 2018 15:21:15 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sun, 18 Feb 2018 15:21:16 GMT
ENV LANG=en_US.utf8
# Sun, 18 Feb 2018 15:21:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sun, 18 Feb 2018 15:21:18 GMT
ENV PG_MAJOR=10
# Sat, 03 Mar 2018 15:52:11 GMT
ENV PG_VERSION=10.3
# Sat, 03 Mar 2018 15:52:12 GMT
ENV PG_SHA256=6ea268780ee35e88c65cdb0af7955ad90b7d0ef34573867f223f14e43467931a
# Sat, 03 Mar 2018 15:56:19 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sat, 03 Mar 2018 15:56:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sat, 03 Mar 2018 15:56:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 03 Mar 2018 15:56:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 03 Mar 2018 15:56:25 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 03 Mar 2018 15:56:25 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 03 Mar 2018 15:56:26 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sat, 03 Mar 2018 15:56:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 15:56:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 15:56:29 GMT
EXPOSE 5432/tcp
# Sat, 03 Mar 2018 15:56:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b32a887a236e5d7d39764e4fd9993db95c4c900f09b4be497a01589e37cef85`  
		Last Modified: Sun, 18 Feb 2018 15:26:29 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1f330d87363983accf413df8ec516758c5479fc2e75cef865c71f55033b9a8`  
		Last Modified: Sun, 18 Feb 2018 15:26:19 GMT  
		Size: 112.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e22516e4efd4dfb4898d3f2a02592ff1171062d5b44b88b74a299ce126992ab`  
		Last Modified: Sat, 03 Mar 2018 17:55:23 GMT  
		Size: 11.8 MB (11787451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30678fee576c0ff9a936645c5cf8180dcad51b48dc18ce7e214ef6858b5f13e`  
		Last Modified: Sat, 03 Mar 2018 17:55:16 GMT  
		Size: 7.3 KB (7267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc6ef8c0e9873863f22a1c2ab3853d2687287eafd41b6a1eeec758dd0fd4bf1`  
		Last Modified: Sat, 03 Mar 2018 17:55:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73344c601a04feafa4e1c88b76c49a8e01b9398830950a834fdfd9400b7f107e`  
		Last Modified: Sat, 03 Mar 2018 17:55:16 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec884e3b5778375dc6e6f4201dcf50c1ea731e636321049742105ae92a08fe9`  
		Last Modified: Sat, 03 Mar 2018 17:55:16 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ce5a5ae408b24acedbef1dd55226713afeb95ee9fca37e03f910a427fb97ed`  
		Last Modified: Sat, 03 Mar 2018 17:55:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.3-alpine` - linux; 386

```console
$ docker pull postgres@sha256:d72c428d17230f8caf6641b3ac339fc5c8baabf53d695f23c2e5f94465f523b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15496011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef8be2e932015d9ad0bbe475efed8cffbcc67ea42b4ea8400000081e9d41fb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Feb 2018 17:52:26 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Mon, 19 Feb 2018 17:56:09 GMT
ENV LANG=en_US.utf8
# Mon, 19 Feb 2018 17:56:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Feb 2018 18:00:43 GMT
ENV PG_MAJOR=10
# Sat, 03 Mar 2018 15:23:33 GMT
ENV PG_VERSION=10.3
# Sat, 03 Mar 2018 15:23:33 GMT
ENV PG_SHA256=6ea268780ee35e88c65cdb0af7955ad90b7d0ef34573867f223f14e43467931a
# Sat, 03 Mar 2018 15:26:48 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sat, 03 Mar 2018 15:26:49 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sat, 03 Mar 2018 15:26:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 03 Mar 2018 15:26:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 03 Mar 2018 15:26:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 03 Mar 2018 15:26:51 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 03 Mar 2018 15:26:51 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sat, 03 Mar 2018 15:26:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 15:26:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 15:26:53 GMT
EXPOSE 5432/tcp
# Sat, 03 Mar 2018 15:26:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2498a94418c71256dc27af94cfe9aa50813d70e766f43f60093f721c10aaf8a9`  
		Last Modified: Mon, 19 Feb 2018 19:17:11 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60011400f7e67256e147cf05b5d449438943665e05ae1fb6bceedc4f961a5a5`  
		Last Modified: Mon, 19 Feb 2018 19:17:11 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b19c5ea7a8f0fecd92692957e8696266b239c6766296cad75db78baac0843bf`  
		Last Modified: Sat, 03 Mar 2018 16:35:14 GMT  
		Size: 13.4 MB (13359867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0903e8b70709c33e6e33df5cd6795fbca2e81db965cc2b296ad0bdb67bb60bb`  
		Last Modified: Sat, 03 Mar 2018 16:35:08 GMT  
		Size: 7.3 KB (7271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c110c586d12e180b8dc09d023e2ac0b845122fa1051c19b8ff22a638092e2e9`  
		Last Modified: Sat, 03 Mar 2018 16:35:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6193bcc2d20e97d6b3b22bfc621f58a7a5a0877d4d6a7948497993b6ff0348`  
		Last Modified: Sat, 03 Mar 2018 16:35:08 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9834e22ffecf0f35ca2d36326cb77d23415263b005eb00a8af76ab58604765`  
		Last Modified: Sat, 03 Mar 2018 16:35:08 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b27668a3ba5824209ca400e750028a5243556a7d2c24dc9244e057e9d45a2f0`  
		Last Modified: Sat, 03 Mar 2018 16:35:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.3-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:3bcdb787e8cd2f01f905accfa9144280b81735f4ca09af427e91f30c24672295
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14635690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd62f6e6f11e5e3f5caa8bcf71a10d39975dd9b99e6dc8f51626f417697101a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Sat, 17 Feb 2018 23:01:41 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 17 Feb 2018 23:01:43 GMT
ENV LANG=en_US.utf8
# Sat, 17 Feb 2018 23:01:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 23:01:48 GMT
ENV PG_MAJOR=10
# Fri, 02 Mar 2018 23:07:46 GMT
ENV PG_VERSION=10.3
# Fri, 02 Mar 2018 23:07:48 GMT
ENV PG_SHA256=6ea268780ee35e88c65cdb0af7955ad90b7d0ef34573867f223f14e43467931a
# Fri, 02 Mar 2018 23:11:08 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 02 Mar 2018 23:11:12 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 02 Mar 2018 23:11:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 02 Mar 2018 23:11:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 02 Mar 2018 23:11:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 02 Mar 2018 23:11:23 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 02 Mar 2018 23:11:25 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Fri, 02 Mar 2018 23:11:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 02 Mar 2018 23:11:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 23:11:33 GMT
EXPOSE 5432/tcp
# Fri, 02 Mar 2018 23:11:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a489c2288bce888c6fac93b540da6d11957e1b4920137f6f06f21ac757708c5`  
		Last Modified: Sat, 17 Feb 2018 23:05:42 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40f964dcf4eb7ac5150e2a57f549a4d89d6780315f8dbc2960a7b3de7697e08`  
		Last Modified: Sat, 17 Feb 2018 23:05:41 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201ccd0e965981adb8ecbd99b2ab57c08579c69e0bf2b2581e29b592ec58adf0`  
		Last Modified: Fri, 02 Mar 2018 23:31:21 GMT  
		Size: 12.5 MB (12544173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acd07c81f447f73f51c6014d0768cefd002884d013af33e8d3095de3911fa40`  
		Last Modified: Fri, 02 Mar 2018 23:31:13 GMT  
		Size: 7.3 KB (7267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b231e51ecd096f6de1e991269e5913d97641bf586e250ed532cadb33687d172c`  
		Last Modified: Fri, 02 Mar 2018 23:31:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae6449cad0dea97556bb46b9a037d536362c3d788ab6a7c9245181423258a28`  
		Last Modified: Fri, 02 Mar 2018 23:31:13 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f78d5a5b3ce059e29de580186070cb4b2ea98ddb4fda9c9009979b1939aa45d`  
		Last Modified: Fri, 02 Mar 2018 23:31:13 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6385a7763d27e6ae95f5883b281f8be7e4f3c15a7d457e9972f83a07eefa16`  
		Last Modified: Fri, 02 Mar 2018 23:31:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.3-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:a494e89c32d324c6395e39b01381f3ef394e89a0e1854dae63762148c4a63c10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14579738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:071cecec7e864955427961efd14c4b1fdc2622b57890307e1ff677c20b9fd2ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 18 Feb 2018 10:25:35 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sun, 18 Feb 2018 10:25:35 GMT
ENV LANG=en_US.utf8
# Sun, 18 Feb 2018 10:25:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sun, 18 Feb 2018 10:25:36 GMT
ENV PG_MAJOR=10
# Sat, 03 Mar 2018 10:34:59 GMT
ENV PG_VERSION=10.3
# Sat, 03 Mar 2018 10:34:59 GMT
ENV PG_SHA256=6ea268780ee35e88c65cdb0af7955ad90b7d0ef34573867f223f14e43467931a
# Sat, 03 Mar 2018 10:37:42 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sat, 03 Mar 2018 10:37:42 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sat, 03 Mar 2018 10:37:43 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 03 Mar 2018 10:37:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 03 Mar 2018 10:37:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 03 Mar 2018 10:37:43 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 03 Mar 2018 10:37:44 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sat, 03 Mar 2018 10:37:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 10:37:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 10:37:44 GMT
EXPOSE 5432/tcp
# Sat, 03 Mar 2018 10:37:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2901b2cb7072f4813c9b7ac67da7313fb2a8decdce071e54219eca565c3f9dc`  
		Last Modified: Sun, 18 Feb 2018 10:28:26 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bba4f50d1c4a54c9b128d41df2bd434e0840a25d049f44eeb5827254b2f0e4a`  
		Last Modified: Sun, 18 Feb 2018 10:28:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc7504c18fda75a2793b04efaa904ecc5dea7b7a04fc85c3614fc2184f8ea87`  
		Last Modified: Sat, 03 Mar 2018 11:11:48 GMT  
		Size: 12.4 MB (12384581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c65c26e0ac87c332808764fbf6c428ef85ffaa7c1955fda0cf4c50cee2f7474`  
		Last Modified: Sat, 03 Mar 2018 11:11:44 GMT  
		Size: 7.3 KB (7271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7e80609054481194000a6ff3178b8361a87acc3763aefec587e3c8a3cefb5e9`  
		Last Modified: Sat, 03 Mar 2018 11:12:06 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd5414a7ab032bd8b39dd8c7ad1d931f4f7e8b1f79d5bf980e117d9e36de595`  
		Last Modified: Sat, 03 Mar 2018 11:11:44 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cfe5a139ec522828c7b076e4da38fe05a67427c835c0f6791d655757eb4a47`  
		Last Modified: Sat, 03 Mar 2018 11:11:44 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd81caa19617ef4d3ebf5819529551bdb1b8c46adb04f9e53c907ba16818625`  
		Last Modified: Sat, 03 Mar 2018 11:11:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10-alpine`

```console
$ docker pull postgres@sha256:89c84fcccc147d403916f4d9964bc4d83297ea7c782d79b05dad5b6c172a7dce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:10-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:353e84be19b5234c0660bb93caa5186b13a8bbdbd69438e9939af1bba96a3f7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14963501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4f4231d6f0b59e5ef92464c89cb31ba3b970e181635573f13e98b8a39676605`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Sun, 18 Feb 2018 02:31:30 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sun, 18 Feb 2018 02:31:31 GMT
ENV LANG=en_US.utf8
# Sun, 18 Feb 2018 02:31:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sun, 18 Feb 2018 02:31:32 GMT
ENV PG_MAJOR=10
# Fri, 02 Mar 2018 22:05:07 GMT
ENV PG_VERSION=10.3
# Fri, 02 Mar 2018 22:05:08 GMT
ENV PG_SHA256=6ea268780ee35e88c65cdb0af7955ad90b7d0ef34573867f223f14e43467931a
# Fri, 02 Mar 2018 22:07:29 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 02 Mar 2018 22:07:30 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 02 Mar 2018 22:07:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 02 Mar 2018 22:07:31 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 02 Mar 2018 22:07:32 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 02 Mar 2018 22:07:32 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 02 Mar 2018 22:07:32 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Fri, 02 Mar 2018 22:07:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 02 Mar 2018 22:07:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 22:07:33 GMT
EXPOSE 5432/tcp
# Fri, 02 Mar 2018 22:07:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a503b44e1ce09191fd553fe4a22ab09d16dfd3164c7d0f59c7c1a54a85545fa9`  
		Last Modified: Sun, 18 Feb 2018 02:35:11 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2117067130936383676d224fd32133e2e2e9be9847a8288271d021edede1e2b7`  
		Last Modified: Sun, 18 Feb 2018 02:35:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea28caf317dd0751f2c3b414d9fc9a6e0c16f870ce51256ab1f20945c4a5f523`  
		Last Modified: Fri, 02 Mar 2018 22:24:39 GMT  
		Size: 12.9 MB (12888214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b37749335b4d31eb69b77b4b9eaa5dd2c0b321ae251a5188ac6ce4c2a80c54`  
		Last Modified: Fri, 02 Mar 2018 22:24:32 GMT  
		Size: 7.3 KB (7267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e94ebc5400c93d98e6938e463ffd98b58adf1e9115aff2110150c8d86de338`  
		Last Modified: Fri, 02 Mar 2018 22:24:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77dd3a51253d6e36dc0ad3bf3fd566eda787dfd206483495cea81e696d4a0233`  
		Last Modified: Fri, 02 Mar 2018 22:24:32 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633a37734b127dc003dcab1c1480169500436c5f61f741cb28d62dba30fab0fd`  
		Last Modified: Fri, 02 Mar 2018 22:24:32 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872e6b940bbba5b6b9ea54c71cfc2d18351ca136c227153ea448fdc8368eb7d3`  
		Last Modified: Fri, 02 Mar 2018 22:24:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:e22b8c305561115e26608b74405a59c858fa1acb1f2fe1d7152c3c5f75608b79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14279456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c9c59fec35ec5139c57d457c8ee696b77379be37baef8aa2d7515632975ef90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:41 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Mon, 26 Feb 2018 23:48:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:42 GMT
CMD ["/bin/sh"]
# Thu, 15 Mar 2018 21:33:48 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 15 Mar 2018 21:33:49 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 21:33:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 21:33:53 GMT
ENV PG_MAJOR=10
# Thu, 15 Mar 2018 21:33:54 GMT
ENV PG_VERSION=10.3
# Thu, 15 Mar 2018 21:33:54 GMT
ENV PG_SHA256=6ea268780ee35e88c65cdb0af7955ad90b7d0ef34573867f223f14e43467931a
# Thu, 15 Mar 2018 22:12:42 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 15 Mar 2018 22:12:47 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 22:12:51 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 22:12:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 22:12:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 22:12:56 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 22:12:57 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Thu, 15 Mar 2018 22:13:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 22:13:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 22:13:03 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 22:13:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5993b3593c77413be85d318297ad8313b945069768a7e454d487fd47fa4b4343`  
		Last Modified: Mon, 26 Feb 2018 23:49:26 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2118fb81ed232392a613e92278922d79bb7f2ad14b33715d4aabafca70b3ce`  
		Last Modified: Thu, 15 Mar 2018 22:13:19 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7cec4fb2ae908cc241abcb569a057ffc5293a4d38f12600d231c5d4dd6996a4`  
		Last Modified: Thu, 15 Mar 2018 22:13:20 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:658f59ad036c7695321156db4741553ba959fe4d85d1bc60639f530cacff18c8`  
		Last Modified: Thu, 15 Mar 2018 22:13:41 GMT  
		Size: 12.2 MB (12231098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5877cc5bcea34b4ab95b6a5484ae8ae21b231c0e58f90ba98a4eb9af00e13ac`  
		Last Modified: Thu, 15 Mar 2018 22:13:16 GMT  
		Size: 7.3 KB (7275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498055b494737e3446218b1d442943aca6ef9589665597a6fead1a496de699a5`  
		Last Modified: Thu, 15 Mar 2018 22:13:16 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36566105be76c3c7b0941f8e06bf12b93dcf9ba58fe552551c77d36d61f0ea3`  
		Last Modified: Thu, 15 Mar 2018 22:13:16 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e254636972f42f6fcd9d4d244a220aa8d39a6736849cd54435a323af4a64ff`  
		Last Modified: Thu, 15 Mar 2018 22:13:16 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed646fbe123b0241713e1abc06e4446c85f8846717b12b1428bbff488515450`  
		Last Modified: Thu, 15 Mar 2018 22:13:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:669433e95b2485cd9ec121d23a6dfaf5f794a8fbd0bfe41d87a584e210714d5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13786228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a53279a58b1fddb7be5ab93a0e3ccd8b0bb81e18b21788a3496e8bff94a72a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Sun, 18 Feb 2018 15:21:15 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sun, 18 Feb 2018 15:21:16 GMT
ENV LANG=en_US.utf8
# Sun, 18 Feb 2018 15:21:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sun, 18 Feb 2018 15:21:18 GMT
ENV PG_MAJOR=10
# Sat, 03 Mar 2018 15:52:11 GMT
ENV PG_VERSION=10.3
# Sat, 03 Mar 2018 15:52:12 GMT
ENV PG_SHA256=6ea268780ee35e88c65cdb0af7955ad90b7d0ef34573867f223f14e43467931a
# Sat, 03 Mar 2018 15:56:19 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sat, 03 Mar 2018 15:56:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sat, 03 Mar 2018 15:56:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 03 Mar 2018 15:56:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 03 Mar 2018 15:56:25 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 03 Mar 2018 15:56:25 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 03 Mar 2018 15:56:26 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sat, 03 Mar 2018 15:56:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 15:56:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 15:56:29 GMT
EXPOSE 5432/tcp
# Sat, 03 Mar 2018 15:56:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b32a887a236e5d7d39764e4fd9993db95c4c900f09b4be497a01589e37cef85`  
		Last Modified: Sun, 18 Feb 2018 15:26:29 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1f330d87363983accf413df8ec516758c5479fc2e75cef865c71f55033b9a8`  
		Last Modified: Sun, 18 Feb 2018 15:26:19 GMT  
		Size: 112.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e22516e4efd4dfb4898d3f2a02592ff1171062d5b44b88b74a299ce126992ab`  
		Last Modified: Sat, 03 Mar 2018 17:55:23 GMT  
		Size: 11.8 MB (11787451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30678fee576c0ff9a936645c5cf8180dcad51b48dc18ce7e214ef6858b5f13e`  
		Last Modified: Sat, 03 Mar 2018 17:55:16 GMT  
		Size: 7.3 KB (7267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc6ef8c0e9873863f22a1c2ab3853d2687287eafd41b6a1eeec758dd0fd4bf1`  
		Last Modified: Sat, 03 Mar 2018 17:55:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73344c601a04feafa4e1c88b76c49a8e01b9398830950a834fdfd9400b7f107e`  
		Last Modified: Sat, 03 Mar 2018 17:55:16 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec884e3b5778375dc6e6f4201dcf50c1ea731e636321049742105ae92a08fe9`  
		Last Modified: Sat, 03 Mar 2018 17:55:16 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ce5a5ae408b24acedbef1dd55226713afeb95ee9fca37e03f910a427fb97ed`  
		Last Modified: Sat, 03 Mar 2018 17:55:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; 386

```console
$ docker pull postgres@sha256:d72c428d17230f8caf6641b3ac339fc5c8baabf53d695f23c2e5f94465f523b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15496011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef8be2e932015d9ad0bbe475efed8cffbcc67ea42b4ea8400000081e9d41fb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Feb 2018 17:52:26 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Mon, 19 Feb 2018 17:56:09 GMT
ENV LANG=en_US.utf8
# Mon, 19 Feb 2018 17:56:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Feb 2018 18:00:43 GMT
ENV PG_MAJOR=10
# Sat, 03 Mar 2018 15:23:33 GMT
ENV PG_VERSION=10.3
# Sat, 03 Mar 2018 15:23:33 GMT
ENV PG_SHA256=6ea268780ee35e88c65cdb0af7955ad90b7d0ef34573867f223f14e43467931a
# Sat, 03 Mar 2018 15:26:48 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sat, 03 Mar 2018 15:26:49 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sat, 03 Mar 2018 15:26:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 03 Mar 2018 15:26:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 03 Mar 2018 15:26:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 03 Mar 2018 15:26:51 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 03 Mar 2018 15:26:51 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sat, 03 Mar 2018 15:26:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 15:26:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 15:26:53 GMT
EXPOSE 5432/tcp
# Sat, 03 Mar 2018 15:26:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2498a94418c71256dc27af94cfe9aa50813d70e766f43f60093f721c10aaf8a9`  
		Last Modified: Mon, 19 Feb 2018 19:17:11 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60011400f7e67256e147cf05b5d449438943665e05ae1fb6bceedc4f961a5a5`  
		Last Modified: Mon, 19 Feb 2018 19:17:11 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b19c5ea7a8f0fecd92692957e8696266b239c6766296cad75db78baac0843bf`  
		Last Modified: Sat, 03 Mar 2018 16:35:14 GMT  
		Size: 13.4 MB (13359867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0903e8b70709c33e6e33df5cd6795fbca2e81db965cc2b296ad0bdb67bb60bb`  
		Last Modified: Sat, 03 Mar 2018 16:35:08 GMT  
		Size: 7.3 KB (7271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c110c586d12e180b8dc09d023e2ac0b845122fa1051c19b8ff22a638092e2e9`  
		Last Modified: Sat, 03 Mar 2018 16:35:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6193bcc2d20e97d6b3b22bfc621f58a7a5a0877d4d6a7948497993b6ff0348`  
		Last Modified: Sat, 03 Mar 2018 16:35:08 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9834e22ffecf0f35ca2d36326cb77d23415263b005eb00a8af76ab58604765`  
		Last Modified: Sat, 03 Mar 2018 16:35:08 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b27668a3ba5824209ca400e750028a5243556a7d2c24dc9244e057e9d45a2f0`  
		Last Modified: Sat, 03 Mar 2018 16:35:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:3bcdb787e8cd2f01f905accfa9144280b81735f4ca09af427e91f30c24672295
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14635690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd62f6e6f11e5e3f5caa8bcf71a10d39975dd9b99e6dc8f51626f417697101a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Sat, 17 Feb 2018 23:01:41 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 17 Feb 2018 23:01:43 GMT
ENV LANG=en_US.utf8
# Sat, 17 Feb 2018 23:01:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 23:01:48 GMT
ENV PG_MAJOR=10
# Fri, 02 Mar 2018 23:07:46 GMT
ENV PG_VERSION=10.3
# Fri, 02 Mar 2018 23:07:48 GMT
ENV PG_SHA256=6ea268780ee35e88c65cdb0af7955ad90b7d0ef34573867f223f14e43467931a
# Fri, 02 Mar 2018 23:11:08 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 02 Mar 2018 23:11:12 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 02 Mar 2018 23:11:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 02 Mar 2018 23:11:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 02 Mar 2018 23:11:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 02 Mar 2018 23:11:23 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 02 Mar 2018 23:11:25 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Fri, 02 Mar 2018 23:11:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 02 Mar 2018 23:11:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 23:11:33 GMT
EXPOSE 5432/tcp
# Fri, 02 Mar 2018 23:11:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a489c2288bce888c6fac93b540da6d11957e1b4920137f6f06f21ac757708c5`  
		Last Modified: Sat, 17 Feb 2018 23:05:42 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40f964dcf4eb7ac5150e2a57f549a4d89d6780315f8dbc2960a7b3de7697e08`  
		Last Modified: Sat, 17 Feb 2018 23:05:41 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201ccd0e965981adb8ecbd99b2ab57c08579c69e0bf2b2581e29b592ec58adf0`  
		Last Modified: Fri, 02 Mar 2018 23:31:21 GMT  
		Size: 12.5 MB (12544173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acd07c81f447f73f51c6014d0768cefd002884d013af33e8d3095de3911fa40`  
		Last Modified: Fri, 02 Mar 2018 23:31:13 GMT  
		Size: 7.3 KB (7267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b231e51ecd096f6de1e991269e5913d97641bf586e250ed532cadb33687d172c`  
		Last Modified: Fri, 02 Mar 2018 23:31:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae6449cad0dea97556bb46b9a037d536362c3d788ab6a7c9245181423258a28`  
		Last Modified: Fri, 02 Mar 2018 23:31:13 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f78d5a5b3ce059e29de580186070cb4b2ea98ddb4fda9c9009979b1939aa45d`  
		Last Modified: Fri, 02 Mar 2018 23:31:13 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6385a7763d27e6ae95f5883b281f8be7e4f3c15a7d457e9972f83a07eefa16`  
		Last Modified: Fri, 02 Mar 2018 23:31:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:a494e89c32d324c6395e39b01381f3ef394e89a0e1854dae63762148c4a63c10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14579738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:071cecec7e864955427961efd14c4b1fdc2622b57890307e1ff677c20b9fd2ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 18 Feb 2018 10:25:35 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sun, 18 Feb 2018 10:25:35 GMT
ENV LANG=en_US.utf8
# Sun, 18 Feb 2018 10:25:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sun, 18 Feb 2018 10:25:36 GMT
ENV PG_MAJOR=10
# Sat, 03 Mar 2018 10:34:59 GMT
ENV PG_VERSION=10.3
# Sat, 03 Mar 2018 10:34:59 GMT
ENV PG_SHA256=6ea268780ee35e88c65cdb0af7955ad90b7d0ef34573867f223f14e43467931a
# Sat, 03 Mar 2018 10:37:42 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sat, 03 Mar 2018 10:37:42 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sat, 03 Mar 2018 10:37:43 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 03 Mar 2018 10:37:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 03 Mar 2018 10:37:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 03 Mar 2018 10:37:43 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 03 Mar 2018 10:37:44 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sat, 03 Mar 2018 10:37:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 10:37:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 10:37:44 GMT
EXPOSE 5432/tcp
# Sat, 03 Mar 2018 10:37:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2901b2cb7072f4813c9b7ac67da7313fb2a8decdce071e54219eca565c3f9dc`  
		Last Modified: Sun, 18 Feb 2018 10:28:26 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bba4f50d1c4a54c9b128d41df2bd434e0840a25d049f44eeb5827254b2f0e4a`  
		Last Modified: Sun, 18 Feb 2018 10:28:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc7504c18fda75a2793b04efaa904ecc5dea7b7a04fc85c3614fc2184f8ea87`  
		Last Modified: Sat, 03 Mar 2018 11:11:48 GMT  
		Size: 12.4 MB (12384581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c65c26e0ac87c332808764fbf6c428ef85ffaa7c1955fda0cf4c50cee2f7474`  
		Last Modified: Sat, 03 Mar 2018 11:11:44 GMT  
		Size: 7.3 KB (7271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7e80609054481194000a6ff3178b8361a87acc3763aefec587e3c8a3cefb5e9`  
		Last Modified: Sat, 03 Mar 2018 11:12:06 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd5414a7ab032bd8b39dd8c7ad1d931f4f7e8b1f79d5bf980e117d9e36de595`  
		Last Modified: Sat, 03 Mar 2018 11:11:44 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cfe5a139ec522828c7b076e4da38fe05a67427c835c0f6791d655757eb4a47`  
		Last Modified: Sat, 03 Mar 2018 11:11:44 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd81caa19617ef4d3ebf5819529551bdb1b8c46adb04f9e53c907ba16818625`  
		Last Modified: Sat, 03 Mar 2018 11:11:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:62e56da9203fcc594a7fb5d3200becd93cd21ee77ddb9aefd818dab1b3b94227
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

### `postgres:9` - linux; amd64

```console
$ docker pull postgres@sha256:dddc320dbed9e6a675ddb7ea6fd752ed8d5bab59b1f42e1fdd4113aa9f18da2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104193661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee7bf928a9ff0aae3b18fe0c3c7dfac641db71e11d6b58676c4360145ab70bac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 16:54:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 16:54:18 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 16:54:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 16:54:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 16:55:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 16:55:07 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 16:55:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 16:55:13 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 16:55:13 GMT
ENV PG_MAJOR=9.6
# Wed, 14 Mar 2018 16:55:14 GMT
ENV PG_VERSION=9.6.8-1.pgdg80+1
# Wed, 14 Mar 2018 16:56:06 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 16:56:07 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 16:56:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 16:56:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Wed, 14 Mar 2018 16:56:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 16:56:09 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 16:56:09 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 16:56:10 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 16:56:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 16:56:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 16:56:11 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 16:56:11 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2b55494f4f6f1f36cae8ef654cea2c2f62d54cc15d25ee42b27fc01c0a9cc8`  
		Last Modified: Wed, 14 Mar 2018 17:02:49 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de62c3a085cd468f90288db23caa38a9e990e56229d604be3a800c7c5f18f379`  
		Last Modified: Wed, 14 Mar 2018 17:02:48 GMT  
		Size: 985.2 KB (985230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e503918e3074f46543a9e57e27130a399e265ff9923bc248328f878e6936bc1a`  
		Last Modified: Wed, 14 Mar 2018 17:02:51 GMT  
		Size: 7.1 MB (7113049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a66f5a91afedccafa1a5e0aab6ba8fb4b596ed179324b6be0fb2f03fe2a680`  
		Last Modified: Wed, 14 Mar 2018 17:02:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228a46786f0c34c2428916c692279f7086fe4e13b725315d6e53921b54ee9e1c`  
		Last Modified: Wed, 14 Mar 2018 17:02:46 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38f93ae5c964abd1bbd3683fcb649a25f4ddf0890226306393260cfb2aaf1d9`  
		Last Modified: Wed, 14 Mar 2018 17:02:57 GMT  
		Size: 43.5 MB (43470828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b11ebcb4431cd18a4796a7ba6105d25930317fa75a47dd76974951fd5100da1`  
		Last Modified: Wed, 14 Mar 2018 17:02:45 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c50446658d0a00931766cc367ea10af1ce09bb23cc7bbf13469a2fec1be9ae`  
		Last Modified: Wed, 14 Mar 2018 17:02:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c5fdafedc6ac27cb2da4f81bf0e38a98126cd2a9a344aa325714b12298147d`  
		Last Modified: Wed, 14 Mar 2018 17:02:44 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492a9cdd6a9d5b9bce7d631ef274de4b96a8ebdf4defc26fc48f2528f233a9c3`  
		Last Modified: Wed, 14 Mar 2018 17:02:47 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529f518ca15612f9fb19b284fde2f8a9206b79d1f408dc8958c9b609c3d2e2f2`  
		Last Modified: Wed, 14 Mar 2018 17:02:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; arm variant v5

```console
$ docker pull postgres@sha256:800a47ccb8a33674faf020218c255e684e572705e03fe72fa6e7ed609b8352de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96649397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e0975455c21b67f4c39c95de65d89e4a79961ebe526d8b687d1b9c4622b849`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:51:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 21:51:31 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 21:51:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 21:52:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 21:52:46 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 21:52:46 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 21:52:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 21:52:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 21:52:54 GMT
ENV PG_MAJOR=9.6
# Wed, 14 Mar 2018 21:52:55 GMT
ENV PG_VERSION=9.6.8-1.pgdg80+1
# Wed, 14 Mar 2018 22:12:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 22:12:27 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 22:12:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 22:12:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Wed, 14 Mar 2018 22:12:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 22:12:30 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 22:12:30 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 22:12:31 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 22:12:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 22:12:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 22:12:32 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 22:12:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c818186c2a34364ea24baef384535dfbf1f22bee54ed9f5c493ce7289b139c3`  
		Last Modified: Wed, 14 Mar 2018 23:07:23 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a4beb832950a923eb83efdb74b15472fc7930a53fbd629eb2675500a6b0632`  
		Last Modified: Wed, 14 Mar 2018 23:07:22 GMT  
		Size: 974.6 KB (974633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540ff776d130d6ca043479e195873e09381dd09ac8354c122fa99bedf93e5efd`  
		Last Modified: Wed, 14 Mar 2018 23:07:24 GMT  
		Size: 7.1 MB (7112937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8ffaf6845c130cd10f4de730a36069d6d385af3808dcd38e0dddcf0b379b0e`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfb113d6bbf190b4beb67576b3d36c93a4ad07853293ca9d1c709c8322ec05e`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6170d7dcaba34e2bb39a405c3f9ef2a8c1e5c277ee7f91e06184734b21bda6c3`  
		Last Modified: Wed, 14 Mar 2018 23:07:34 GMT  
		Size: 37.7 MB (37655722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f5e807a18332e1d68a7adb51b1bd8345a0c46f078ac5a3b29405ef664da8b7`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 7.1 KB (7110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596b90f95e152cd548271d7536be429483bc3e025014edf2ca6a3166845ee89a`  
		Last Modified: Wed, 14 Mar 2018 23:07:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96dbed3c58f9ca9ec57dac40d82178d6fdce5c6227a217c6416ea920f086ce2`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b602ab6b7120db80e45992fbf18f6efa851dddfbed0eedc12a8393d580f25c1`  
		Last Modified: Wed, 14 Mar 2018 23:07:19 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fdac22819b5b5a3c8a0cb74d35fb18613f2b84ba8c14110a7a6250dfc6d82cf`  
		Last Modified: Wed, 14 Mar 2018 23:07:20 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; arm variant v7

```console
$ docker pull postgres@sha256:79301a3b54c2aaf73ce91e16738b9793469825777f4f6706cfbd6e5bddc0cc53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178571207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b1e282205b9d503d04881ac2a00525a892d43bbc6c66dda39dcedc7f5421852`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 12:25:46 GMT
ADD file:6208a77a3fff4a68790f06b1b3a3e0fcb563724a9d1485d8e10592e2cf32b190 in / 
# Wed, 14 Mar 2018 12:25:46 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 03:38:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 03:38:37 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 28 Mar 2018 03:38:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Mar 2018 03:38:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 28 Mar 2018 03:38:59 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 28 Mar 2018 03:39:00 GMT
ENV LANG=en_US.utf8
# Wed, 28 Mar 2018 03:39:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Mar 2018 03:39:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 28 Mar 2018 03:55:09 GMT
ENV PG_MAJOR=9.6
# Wed, 28 Mar 2018 03:55:09 GMT
ENV PG_VERSION=9.6.8-1.pgdg80+1
# Wed, 28 Mar 2018 04:10:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 28 Mar 2018 04:10:05 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 28 Mar 2018 04:10:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 28 Mar 2018 04:10:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Wed, 28 Mar 2018 04:10:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Mar 2018 04:10:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 28 Mar 2018 04:10:08 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Mar 2018 04:10:08 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 28 Mar 2018 04:10:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 28 Mar 2018 04:10:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 04:10:09 GMT
EXPOSE 5432/tcp
# Wed, 28 Mar 2018 04:10:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8c1aa76b118f0b6f588a119501660e6c6984f1c8af222f2b04be33b64cada0c2`  
		Last Modified: Wed, 14 Mar 2018 12:37:22 GMT  
		Size: 44.1 MB (44078135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3ffdc7c95f36f6ab3e6038438d851ea38ba046a53ece176f2d35caddc75ba0`  
		Last Modified: Wed, 28 Mar 2018 04:53:11 GMT  
		Size: 9.0 MB (9002659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2af83fb1e1d8a7b0c24b01595114df2abbbb688d606c8ff88ba7694efeb348c`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 1.9 KB (1862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e342156e061add8ad9dfb369b32b557de2b001028dff9350b5fb1cf9e78f6a90`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 937.8 KB (937792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1f846fdb0dda2e9e8ae7b68700b39337abdba0a58c7bd33fab39e1ab982fed`  
		Last Modified: Wed, 28 Mar 2018 04:53:10 GMT  
		Size: 7.4 MB (7397480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f19e12270249fafb855a0d74b265a13e05a55d791b8beee9e9f2780ecca1aea`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803ad1f3db776e5dcdf942153b71efa528356ea4fae29713b6b241c9c84f655e`  
		Last Modified: Wed, 28 Mar 2018 04:53:07 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e1ca8d3fa7e3f003c27fb97e8543947950b2b217a62eb3f7cc4ae0da85b5df`  
		Last Modified: Wed, 28 Mar 2018 04:54:25 GMT  
		Size: 117.1 MB (117139284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c420412732da2d91cc6502f332a4239e56c1339215f4739843dd8ba0c2d402d`  
		Last Modified: Wed, 28 Mar 2018 04:53:52 GMT  
		Size: 7.1 KB (7108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9c55a611860de63db61bdfa12201f241839e290e275e698b7a1d6751cf8aaf`  
		Last Modified: Wed, 28 Mar 2018 04:53:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d77c68e1ac80b8f3b490338485b49d22fb1e22b24ea46bd6a8cc9e3bc29906`  
		Last Modified: Wed, 28 Mar 2018 04:53:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5f3ccfd6635cb8b6d2d8c0f61edf891881dad428d5c067c13122d3476c1ab3`  
		Last Modified: Wed, 28 Mar 2018 04:53:52 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b065291f6899c41c730ee86ee8a7fe6a444576e63c4e33c7664de6602e37cb`  
		Last Modified: Wed, 28 Mar 2018 04:53:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:bf226856f4db354c27ec62af3c5c0bd2d112b65a52ac40741ba5f9cd002b63c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95212566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd7e48d9637e1cd8dcaee706bdd06481b09c7ae8fa31ce0da83728cd00fdb4c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:12:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 01:12:29 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 01:12:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 01:13:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 01:14:10 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 01:14:11 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 01:14:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 01:14:33 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 01:14:34 GMT
ENV PG_MAJOR=9.6
# Thu, 15 Mar 2018 01:14:35 GMT
ENV PG_VERSION=9.6.8-1.pgdg80+1
# Thu, 15 Mar 2018 01:52:02 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 01:52:12 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 01:52:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 01:52:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 15 Mar 2018 01:52:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 01:52:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 01:52:39 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 01:52:43 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Mar 2018 01:52:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 01:52:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 01:52:58 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 01:52:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3866bf6991dcc95d7965e2c1e7d6e6c51df401b5dd2e84626cbe44b139346e61`  
		Last Modified: Thu, 15 Mar 2018 03:37:29 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1330e3465a4cd072827c77e795c9d16bb6784d60e3c6455380999d67f5d332d0`  
		Last Modified: Thu, 15 Mar 2018 03:37:28 GMT  
		Size: 952.0 KB (952004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4740d805464e7ac9dcaa1296146892e0450eb657f1b1d3060f1f6904b79266`  
		Last Modified: Thu, 15 Mar 2018 03:37:32 GMT  
		Size: 7.1 MB (7112991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7890777de807ec652b6ee43b8737666e74cb561b53d0bf3d59efac52d5e0281`  
		Last Modified: Thu, 15 Mar 2018 03:37:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa480058f0209611cf1374aa008b40a0bd581155b8f269472a20f8f8cc756e4`  
		Last Modified: Thu, 15 Mar 2018 03:37:27 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707cf4b0a9cb454b9d4132a40e471a3d0c5335f4cafb54f4e02df22f0c232bdc`  
		Last Modified: Thu, 15 Mar 2018 03:37:41 GMT  
		Size: 37.2 MB (37198059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f551a6dc749d11aa1899137eeddfce573e3da7c74b1bf05568b2b59b93b286`  
		Last Modified: Thu, 15 Mar 2018 03:37:25 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6022f13f9811443fbd39adf594bdf430f7750411cdf8cf5e4fab1a1ba7dac2e`  
		Last Modified: Thu, 15 Mar 2018 03:37:26 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470561996eca8354fe1fa9e3a2939150a87cb4889f2cf52371cd6ee5a1ce81fc`  
		Last Modified: Thu, 15 Mar 2018 03:37:25 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef83cbe9644564797c12434fec3b6522f865661c0b4eb5458ed571d8c624ee2`  
		Last Modified: Thu, 15 Mar 2018 03:37:25 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98fa46a6b2b9be8895379a74f8366e59e0473b845a95292fefb959594ef1f1da`  
		Last Modified: Thu, 15 Mar 2018 03:37:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; 386

```console
$ docker pull postgres@sha256:48e5ab86ad17ca1ad067d2a4ac55c8cbeaf8479f330d547521b3af40654e9e8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106162402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4c00ec82beb77c84990b9c83056073bc180d8e2ce74d9a4be042599caa8ec3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Mon, 19 Feb 2018 18:23:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 19 Feb 2018 18:23:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 19 Feb 2018 18:23:11 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Feb 2018 18:23:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 19 Feb 2018 18:24:16 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 19 Feb 2018 18:31:45 GMT
ENV LANG=en_US.utf8
# Mon, 19 Feb 2018 18:31:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Feb 2018 18:31:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 19 Feb 2018 18:31:53 GMT
ENV PG_MAJOR=9.6
# Sat, 03 Mar 2018 15:38:45 GMT
ENV PG_VERSION=9.6.8-1.pgdg80+1
# Sat, 03 Mar 2018 15:40:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 03 Mar 2018 15:40:15 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 03 Mar 2018 15:40:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 03 Mar 2018 15:40:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Sat, 03 Mar 2018 15:40:17 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 03 Mar 2018 15:40:18 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 03 Mar 2018 15:40:18 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 03 Mar 2018 15:40:18 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Sat, 03 Mar 2018 15:40:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 15:40:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 15:40:20 GMT
EXPOSE 5432/tcp
# Sat, 03 Mar 2018 15:40:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5057c70401974b44c0f1bff5a08e5b7223f2fa5b67f6919fe9d9a0272ffcb75b`  
		Last Modified: Mon, 19 Feb 2018 19:26:07 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6399b36dfc67ead03f31924ea4f72f12a74b332fa52917e427798659a7389fe`  
		Last Modified: Mon, 19 Feb 2018 19:26:05 GMT  
		Size: 964.0 KB (964020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c14510a3123271f8483e8277fd4e6edb9791c5e6088030f3c915044b860d38`  
		Last Modified: Mon, 19 Feb 2018 19:26:10 GMT  
		Size: 7.1 MB (7112907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4754edfd9320a47c2f64cae795bec1adf050f6f0efde9873d3d753973d890fe`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cafb68050a9756d26f310c634d1800ecf4fbcad70e13aba58656aa3705a7108`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb997cb3edc4e5fa9b7cc193307c2b66f435537d914ec8e64795e96adc1f55e`  
		Last Modified: Sat, 03 Mar 2018 16:57:17 GMT  
		Size: 45.3 MB (45281730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4d2a9e8d19e32569bc325f76edaf43b225ed4b175d0d4b3b1d31c79d95e78a`  
		Last Modified: Sat, 03 Mar 2018 16:56:59 GMT  
		Size: 7.1 KB (7111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf6be418665507b442ca8da452994d00dcff3eafb2632d94f24142d82fa50cd`  
		Last Modified: Sat, 03 Mar 2018 16:56:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0d63a2393788e619326480c9ffcc708a54af7bfc63c3342419871084967bdc`  
		Last Modified: Sat, 03 Mar 2018 16:56:59 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0a457b4d309f1da9162e04aa972d688758e4f2946b624900d3ca3f7b378c05`  
		Last Modified: Sat, 03 Mar 2018 16:57:00 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd39259d52543383be7699915a38183771147f90a88512aebbe019308283233`  
		Last Modified: Sat, 03 Mar 2018 16:56:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; ppc64le

```console
$ docker pull postgres@sha256:e045ae352ab7e34c527c7fca3935533cc0887cbb12ea9553692a4567bd3126fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102397286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1a50d0f2ce13156e7add1a75fcd978482d25b6ffdf9878321d7cb322453e385`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:54:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 03:54:35 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 03:54:38 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 03:57:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 03:58:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 03:58:39 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 03:58:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 03:58:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 03:59:01 GMT
ENV PG_MAJOR=9.6
# Thu, 15 Mar 2018 03:59:04 GMT
ENV PG_VERSION=9.6.8-1.pgdg80+1
# Thu, 15 Mar 2018 04:06:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 04:06:16 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 04:06:20 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 04:06:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 15 Mar 2018 04:06:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 04:06:31 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 04:06:32 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 04:06:34 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Mar 2018 04:06:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 04:06:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 04:06:43 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 04:06:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be05e26cbc28a26d00f212068d1f259dd2916fcd4e1868320d699f7dd47ed57b`  
		Last Modified: Thu, 15 Mar 2018 04:31:33 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4863081503d0792058f50abe3af50d55e383a6fdf1a734475fcd6203ca00d902`  
		Last Modified: Thu, 15 Mar 2018 04:31:32 GMT  
		Size: 954.2 KB (954250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9658240060ff7dec76f71d54ce9010a49d2b3c4bff07a0843002e7ad3682ab0b`  
		Last Modified: Thu, 15 Mar 2018 04:31:33 GMT  
		Size: 7.1 MB (7113258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecf75ba1ae59b220e897d7c3ca614052615c2eb4a302c5ff5fd98049f5d6cd5`  
		Last Modified: Thu, 15 Mar 2018 04:31:31 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a959f69f41c7310006204eff28b74c9644e16f2bf7980193df6d121024499f`  
		Last Modified: Thu, 15 Mar 2018 04:31:31 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4605173c935494435c6153025c9c34f971b243607fe96eb229a88090e2238212`  
		Last Modified: Thu, 15 Mar 2018 04:31:42 GMT  
		Size: 42.5 MB (42496494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170ff102b8916ba0f401de4ea35ec1745f29723786be1c0f5bdf8e09f3d63daa`  
		Last Modified: Thu, 15 Mar 2018 04:31:28 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e333300754373d4cc3b8cd06453c2472be9287beca4444204999617f874d54c6`  
		Last Modified: Thu, 15 Mar 2018 04:31:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d274ebf2327b2f9fa16ef13da7e601dac92fb492a5e8c6f9e44a1acedc5efe6d`  
		Last Modified: Thu, 15 Mar 2018 04:31:28 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51d01645012393a60bf4bd1d7e02de601527a0095401ac0134efec40b359e4a`  
		Last Modified: Thu, 15 Mar 2018 04:31:28 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea228c86dccf444dcd2db963e048b7633cae64dba9bf70e4601f6ee3c376dfe`  
		Last Modified: Thu, 15 Mar 2018 04:31:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; s390x

```console
$ docker pull postgres@sha256:59003c8507c7d1c75a9193dee1b5e78ebb9689cf561c4468bbfcea6abbedeed7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100629118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67def40183f89b003e608ee940f1d13d561e9e57448d5e87d008cf169ebf15a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 07:02:44 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 07:02:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 07:03:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 07:03:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 07:03:14 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 07:03:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 07:03:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 07:03:20 GMT
ENV PG_MAJOR=9.6
# Wed, 14 Mar 2018 07:03:20 GMT
ENV PG_VERSION=9.6.8-1.pgdg80+1
# Wed, 14 Mar 2018 07:11:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 07:11:52 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 07:11:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 07:11:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Wed, 14 Mar 2018 07:11:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 07:11:54 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 07:11:54 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 07:11:54 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 07:11:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 07:11:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 07:11:55 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 07:11:55 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dd957f9fe9a0b1b31d7bc9a788402552921f19ca569b02ea38e6ececd7e3f`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124fe371fdba391f4fe2074b49ffbb81c42dbdc1ff5bc67be5fb104e57c1370`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 970.3 KB (970296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daf81df21c7820de665e5a906e02c03e6b1b25866ab0ba5e7a76667f78c9a01`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 7.1 MB (7131276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c433e77c3b166e3c1031e6a90d286f74f6851b02becacf6a85b0eee3cfb1f2f`  
		Last Modified: Wed, 14 Mar 2018 07:35:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48fd35b2809c5418f91b47e912004fac6f97a8c938b95b458c5010dbe631d152`  
		Last Modified: Wed, 14 Mar 2018 07:35:51 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134b62564c8c5a0e24dc36dc806eea71d260c7036a4cf05ee9637ab7fd540a28`  
		Last Modified: Wed, 14 Mar 2018 07:35:58 GMT  
		Size: 39.7 MB (39716036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d50582105a0a96225001f7e463dcbf76015d6b9005e56bd4c520a78d6a1376`  
		Last Modified: Wed, 14 Mar 2018 07:35:49 GMT  
		Size: 7.1 KB (7105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc003a724f1f40fb1272fd30e571cfccb5ab14f718fbe08c18001cb3dd51def`  
		Last Modified: Wed, 14 Mar 2018 07:35:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3688586cd016b42c7d96ca716a32d5d5566cd36393d3e757d5bc692c497d380`  
		Last Modified: Wed, 14 Mar 2018 07:35:49 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43c03b3de716a71ada73d74423d80fa4a17d03be08152fd93d80daa383e76ee`  
		Last Modified: Wed, 14 Mar 2018 07:35:49 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63174b07d7c51c6ac076227456579ede8c4a892bfa468f9771994ca5851d243b`  
		Last Modified: Wed, 14 Mar 2018 07:35:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:045be6b7347dbb8c7a8637d1dfa3998228a2651751a3e2e6d63a0e6c4a3c5ea9
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

### `postgres:9.3` - linux; amd64

```console
$ docker pull postgres@sha256:eb840d463a8132f45c731599441a8e4f245ca838fc6f8437728a68b6c6ce5f8d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (102955327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8010d149fa0363e9fb6cba9a78ae9c3926574ddaef5a59effa17a93cebf5a428`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 16:54:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 16:54:18 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 16:54:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 16:54:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 16:55:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 16:55:07 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 16:55:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 16:55:13 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 16:59:56 GMT
ENV PG_MAJOR=9.3
# Wed, 14 Mar 2018 16:59:57 GMT
ENV PG_VERSION=9.3.22-1.pgdg80+1
# Wed, 14 Mar 2018 17:00:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 17:00:49 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 17:00:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 17:00:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Wed, 14 Mar 2018 17:00:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 17:00:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 17:00:51 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 17:00:52 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 17:00:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 17:00:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 17:00:53 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 17:00:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2b55494f4f6f1f36cae8ef654cea2c2f62d54cc15d25ee42b27fc01c0a9cc8`  
		Last Modified: Wed, 14 Mar 2018 17:02:49 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de62c3a085cd468f90288db23caa38a9e990e56229d604be3a800c7c5f18f379`  
		Last Modified: Wed, 14 Mar 2018 17:02:48 GMT  
		Size: 985.2 KB (985230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e503918e3074f46543a9e57e27130a399e265ff9923bc248328f878e6936bc1a`  
		Last Modified: Wed, 14 Mar 2018 17:02:51 GMT  
		Size: 7.1 MB (7113049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a66f5a91afedccafa1a5e0aab6ba8fb4b596ed179324b6be0fb2f03fe2a680`  
		Last Modified: Wed, 14 Mar 2018 17:02:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228a46786f0c34c2428916c692279f7086fe4e13b725315d6e53921b54ee9e1c`  
		Last Modified: Wed, 14 Mar 2018 17:02:46 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f71f34eb7832e7a9c6048257849e0d3c32b92f685979204a89272fb5b763f39`  
		Last Modified: Wed, 14 Mar 2018 17:05:50 GMT  
		Size: 42.2 MB (42233087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275ccd19cc9bb39ad285b68debd4b59ac8ab3fc03801eefcccaf4c1575a662e9`  
		Last Modified: Wed, 14 Mar 2018 17:05:39 GMT  
		Size: 6.5 KB (6512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88379d8bded9cdd1b23d55b1f5bd7c4ffadf4901fe2c66167c3a11d179949d77`  
		Last Modified: Wed, 14 Mar 2018 17:05:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a596a3048624b1e7743789f9c6c4c914fa70e899b2da890e6b76042ee14bb8a`  
		Last Modified: Wed, 14 Mar 2018 17:05:38 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d737e4a0fac04924520b53ac12fd41390b17e7c6a0bb02cdb40133738d04c8`  
		Last Modified: Wed, 14 Mar 2018 17:05:38 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae392536ea7f958dfd8dea29879628218b32c796936855a06e3ebe633fad4c80`  
		Last Modified: Wed, 14 Mar 2018 17:05:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; arm variant v5

```console
$ docker pull postgres@sha256:9d66eac40e1af08cadb9202cc86670b7d788c9a4ec39301a6837a9a5074173ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.5 MB (95461416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c432ac44d596b22de906cf16de70ac9315486eb15f66815a50544ef87a9e2133`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:51:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 21:51:31 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 21:51:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 21:52:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 21:52:46 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 21:52:46 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 21:52:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 21:52:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 22:49:12 GMT
ENV PG_MAJOR=9.3
# Wed, 14 Mar 2018 22:49:12 GMT
ENV PG_VERSION=9.3.22-1.pgdg80+1
# Wed, 14 Mar 2018 23:05:31 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 23:05:33 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 23:05:41 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 23:05:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Wed, 14 Mar 2018 23:05:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 23:05:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 23:05:58 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 23:05:59 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 23:06:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 23:06:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 23:06:08 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 23:06:08 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c818186c2a34364ea24baef384535dfbf1f22bee54ed9f5c493ce7289b139c3`  
		Last Modified: Wed, 14 Mar 2018 23:07:23 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a4beb832950a923eb83efdb74b15472fc7930a53fbd629eb2675500a6b0632`  
		Last Modified: Wed, 14 Mar 2018 23:07:22 GMT  
		Size: 974.6 KB (974633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540ff776d130d6ca043479e195873e09381dd09ac8354c122fa99bedf93e5efd`  
		Last Modified: Wed, 14 Mar 2018 23:07:24 GMT  
		Size: 7.1 MB (7112937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8ffaf6845c130cd10f4de730a36069d6d385af3808dcd38e0dddcf0b379b0e`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfb113d6bbf190b4beb67576b3d36c93a4ad07853293ca9d1c709c8322ec05e`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8f9b3c587520dfdd85a68e232aa48d01ef2e75b2d48f8d5002238b43c4f177`  
		Last Modified: Wed, 14 Mar 2018 23:10:13 GMT  
		Size: 36.5 MB (36468346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea2085e79fecc1759eb4c40a8c373d0278fc9a13733a5b7f178b8003a21d6e5`  
		Last Modified: Wed, 14 Mar 2018 23:09:58 GMT  
		Size: 6.5 KB (6505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d0c5969fc61cf0ef26d92339c91cb13f91312f03bf4a341b4effe5292f611c`  
		Last Modified: Wed, 14 Mar 2018 23:09:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cecff3b73c08cf278af9af2f9e42cdd1dd05fecf2b731ef36d1539abcfbe225`  
		Last Modified: Wed, 14 Mar 2018 23:09:58 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27937c5627640050cc0a15a26d72fca72a65ed183b049c868275b96107a29131`  
		Last Modified: Wed, 14 Mar 2018 23:09:59 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13228b2b47ba0d77ed15be51a9cbf84c952d2a1f47670cd07b73e09a45092783`  
		Last Modified: Wed, 14 Mar 2018 23:09:58 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; arm variant v7

```console
$ docker pull postgres@sha256:45fe54a5fcd0713fb7eb98974146ef3d0b4b744546437f98bfa742cdcb5d935b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.1 MB (177085183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f34f1696e35ee417bda2e429002685982bf48555df8d4683d0faf1162132822`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 12:25:46 GMT
ADD file:6208a77a3fff4a68790f06b1b3a3e0fcb563724a9d1485d8e10592e2cf32b190 in / 
# Wed, 14 Mar 2018 12:25:46 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 03:38:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 03:38:37 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 28 Mar 2018 03:38:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Mar 2018 03:38:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 28 Mar 2018 03:38:59 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 28 Mar 2018 03:39:00 GMT
ENV LANG=en_US.utf8
# Wed, 28 Mar 2018 03:39:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Mar 2018 03:39:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 28 Mar 2018 04:39:15 GMT
ENV PG_MAJOR=9.3
# Wed, 28 Mar 2018 04:39:15 GMT
ENV PG_VERSION=9.3.22-1.pgdg80+1
# Wed, 28 Mar 2018 04:52:11 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 28 Mar 2018 04:52:13 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 28 Mar 2018 04:52:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 28 Mar 2018 04:52:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Wed, 28 Mar 2018 04:52:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Mar 2018 04:52:15 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 28 Mar 2018 04:52:15 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Mar 2018 04:52:16 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 28 Mar 2018 04:52:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 28 Mar 2018 04:52:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 04:52:17 GMT
EXPOSE 5432/tcp
# Wed, 28 Mar 2018 04:52:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8c1aa76b118f0b6f588a119501660e6c6984f1c8af222f2b04be33b64cada0c2`  
		Last Modified: Wed, 14 Mar 2018 12:37:22 GMT  
		Size: 44.1 MB (44078135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3ffdc7c95f36f6ab3e6038438d851ea38ba046a53ece176f2d35caddc75ba0`  
		Last Modified: Wed, 28 Mar 2018 04:53:11 GMT  
		Size: 9.0 MB (9002659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2af83fb1e1d8a7b0c24b01595114df2abbbb688d606c8ff88ba7694efeb348c`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 1.9 KB (1862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e342156e061add8ad9dfb369b32b557de2b001028dff9350b5fb1cf9e78f6a90`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 937.8 KB (937792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1f846fdb0dda2e9e8ae7b68700b39337abdba0a58c7bd33fab39e1ab982fed`  
		Last Modified: Wed, 28 Mar 2018 04:53:10 GMT  
		Size: 7.4 MB (7397480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f19e12270249fafb855a0d74b265a13e05a55d791b8beee9e9f2780ecca1aea`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803ad1f3db776e5dcdf942153b71efa528356ea4fae29713b6b241c9c84f655e`  
		Last Modified: Wed, 28 Mar 2018 04:53:07 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f271e31163c487520284a656786e92bccd8d67305d21e5ae3f725ca239e34c`  
		Last Modified: Wed, 28 Mar 2018 04:56:37 GMT  
		Size: 115.7 MB (115653863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc605f3fe59402b8288ae4dcd7880e8357d1e19edfa8f55a64e5f116b6fde64f`  
		Last Modified: Wed, 28 Mar 2018 04:56:04 GMT  
		Size: 6.5 KB (6507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c38f852a5a70114ea1e6888db13bd3084c6b30021d07a7eadf99d99d0160c3`  
		Last Modified: Wed, 28 Mar 2018 04:56:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1041dfd384eff182135667f11bb3cff539368a9d70f33162984b2c3bb0751d`  
		Last Modified: Wed, 28 Mar 2018 04:56:04 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d249b605615c74385a06cd4899f864158c3da8d3996079c354a2a6c981b3ebb4`  
		Last Modified: Wed, 28 Mar 2018 04:56:05 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f199acac13ec90feb19b261b6060acf019d659d1d4c29d7e991701d190a5815d`  
		Last Modified: Wed, 28 Mar 2018 04:56:05 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:f10c2c4aa2793837ca5fdd22983c3d5e23b5905ed7c91290fa5da7b7440a1e02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (94031291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f206bcedb47fc462ea74c21305b4a06cd60ea9eb5d6ec3959746e9b30d64df98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:12:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 01:12:29 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 01:12:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 01:13:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 01:14:10 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 01:14:11 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 01:14:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 01:14:33 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 03:02:08 GMT
ENV PG_MAJOR=9.3
# Thu, 15 Mar 2018 03:02:09 GMT
ENV PG_VERSION=9.3.22-1.pgdg80+1
# Thu, 15 Mar 2018 03:34:42 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 03:34:53 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 03:34:56 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 03:34:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Thu, 15 Mar 2018 03:34:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 03:34:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 03:35:00 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 03:35:01 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Mar 2018 03:35:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 03:35:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 03:35:05 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 03:35:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3866bf6991dcc95d7965e2c1e7d6e6c51df401b5dd2e84626cbe44b139346e61`  
		Last Modified: Thu, 15 Mar 2018 03:37:29 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1330e3465a4cd072827c77e795c9d16bb6784d60e3c6455380999d67f5d332d0`  
		Last Modified: Thu, 15 Mar 2018 03:37:28 GMT  
		Size: 952.0 KB (952004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4740d805464e7ac9dcaa1296146892e0450eb657f1b1d3060f1f6904b79266`  
		Last Modified: Thu, 15 Mar 2018 03:37:32 GMT  
		Size: 7.1 MB (7112991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7890777de807ec652b6ee43b8737666e74cb561b53d0bf3d59efac52d5e0281`  
		Last Modified: Thu, 15 Mar 2018 03:37:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa480058f0209611cf1374aa008b40a0bd581155b8f269472a20f8f8cc756e4`  
		Last Modified: Thu, 15 Mar 2018 03:37:27 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2ce9a7efa68e3ec338e9e7fa3f2ec932f61fd26e5406be04731f8da4ed362`  
		Last Modified: Thu, 15 Mar 2018 03:40:43 GMT  
		Size: 36.0 MB (36017381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8107b71b63237861fcf8d7a71963a9d35bdb3208870644e53e64f566c8abe661`  
		Last Modified: Thu, 15 Mar 2018 03:40:28 GMT  
		Size: 6.5 KB (6511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4e587de33c07bd7c693cfc9ada76ab64cabc6d02b4288c74191334e4c26ddb`  
		Last Modified: Thu, 15 Mar 2018 03:40:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e31fcc7875caf6e0b91ebcf8c3db445e5c642f52889d0b43debe5f6cf4f4946`  
		Last Modified: Thu, 15 Mar 2018 03:40:27 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1698aae8edc3782b3a8fbba677af83df78179fcecb8fb26678a69a9ba51c664a`  
		Last Modified: Thu, 15 Mar 2018 03:40:28 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07f54a53140ab92777647a300646ab473bc8b52ef1e8b91035920b8b0515b61`  
		Last Modified: Thu, 15 Mar 2018 03:40:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; 386

```console
$ docker pull postgres@sha256:49f91ae8cf044eeabb3a7fbe9f4ee7042785c32f7ae7840a1de6693d99f4fdc4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104906059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ead465b171349f96875a98470af0640be072d217c3804dab0177ccad19cf595`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Mon, 19 Feb 2018 18:23:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 19 Feb 2018 18:23:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 19 Feb 2018 18:23:11 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Feb 2018 18:23:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 19 Feb 2018 18:24:16 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 19 Feb 2018 18:31:45 GMT
ENV LANG=en_US.utf8
# Mon, 19 Feb 2018 18:31:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Feb 2018 18:31:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 19 Feb 2018 19:04:39 GMT
ENV PG_MAJOR=9.3
# Sat, 03 Mar 2018 16:04:38 GMT
ENV PG_VERSION=9.3.22-1.pgdg80+1
# Sat, 03 Mar 2018 16:06:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 03 Mar 2018 16:06:05 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 03 Mar 2018 16:06:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 03 Mar 2018 16:06:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Sat, 03 Mar 2018 16:06:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 03 Mar 2018 16:06:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 03 Mar 2018 16:06:08 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 03 Mar 2018 16:06:08 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Sat, 03 Mar 2018 16:06:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 16:06:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 16:06:09 GMT
EXPOSE 5432/tcp
# Sat, 03 Mar 2018 16:06:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5057c70401974b44c0f1bff5a08e5b7223f2fa5b67f6919fe9d9a0272ffcb75b`  
		Last Modified: Mon, 19 Feb 2018 19:26:07 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6399b36dfc67ead03f31924ea4f72f12a74b332fa52917e427798659a7389fe`  
		Last Modified: Mon, 19 Feb 2018 19:26:05 GMT  
		Size: 964.0 KB (964020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c14510a3123271f8483e8277fd4e6edb9791c5e6088030f3c915044b860d38`  
		Last Modified: Mon, 19 Feb 2018 19:26:10 GMT  
		Size: 7.1 MB (7112907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4754edfd9320a47c2f64cae795bec1adf050f6f0efde9873d3d753973d890fe`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cafb68050a9756d26f310c634d1800ecf4fbcad70e13aba58656aa3705a7108`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d42a34a538c0d9569eccf128f2ad71ba96b4f9a6ab43067408b32d5d1cb2ef`  
		Last Modified: Sat, 03 Mar 2018 17:47:38 GMT  
		Size: 44.0 MB (44025996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0aa5ebe8b64a573316c72b06f3c17df660717e2a05773564172e0927947303`  
		Last Modified: Sat, 03 Mar 2018 17:47:24 GMT  
		Size: 6.5 KB (6507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1adf85edf45703f1d948354d4099395da5a65a41a0fbcac09b1f948fe161dc`  
		Last Modified: Sat, 03 Mar 2018 17:47:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deee1c093449e71282dabb9f5f4f59bf1f829e51753901863fa4446dd8da6b3f`  
		Last Modified: Sat, 03 Mar 2018 17:47:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edeb5bcfa745afdd265984f482b1f513a89252a1bbb7d0ce5ec89d607bbfb0ac`  
		Last Modified: Sat, 03 Mar 2018 17:47:23 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0153adc9079b0fa3f1c13418dc68a9781d5fbcfbce1e3c09076585b048cb6918`  
		Last Modified: Sat, 03 Mar 2018 17:47:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; ppc64le

```console
$ docker pull postgres@sha256:1a50e26cc1a884b6a3a01cba55814480759dbb82ccfe8ea0f12878f0bc481a40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.2 MB (101190803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:878188668c224212679d1bf62f83db3d82311d82133f2c80060c826e88386f0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:54:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 03:54:35 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 03:54:38 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 03:57:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 03:58:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 03:58:39 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 03:58:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 03:58:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 04:22:08 GMT
ENV PG_MAJOR=9.3
# Thu, 15 Mar 2018 04:22:09 GMT
ENV PG_VERSION=9.3.22-1.pgdg80+1
# Thu, 15 Mar 2018 04:29:37 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 04:29:43 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 04:29:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 04:29:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Thu, 15 Mar 2018 04:29:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 04:29:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 04:30:01 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 04:30:05 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Mar 2018 04:30:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 04:30:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 04:30:17 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 04:30:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be05e26cbc28a26d00f212068d1f259dd2916fcd4e1868320d699f7dd47ed57b`  
		Last Modified: Thu, 15 Mar 2018 04:31:33 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4863081503d0792058f50abe3af50d55e383a6fdf1a734475fcd6203ca00d902`  
		Last Modified: Thu, 15 Mar 2018 04:31:32 GMT  
		Size: 954.2 KB (954250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9658240060ff7dec76f71d54ce9010a49d2b3c4bff07a0843002e7ad3682ab0b`  
		Last Modified: Thu, 15 Mar 2018 04:31:33 GMT  
		Size: 7.1 MB (7113258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecf75ba1ae59b220e897d7c3ca614052615c2eb4a302c5ff5fd98049f5d6cd5`  
		Last Modified: Thu, 15 Mar 2018 04:31:31 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a959f69f41c7310006204eff28b74c9644e16f2bf7980193df6d121024499f`  
		Last Modified: Thu, 15 Mar 2018 04:31:31 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7eb695aa6395399554b8647139a71c5b1d57f4c09d1a368354a3d0a4ef1bd8`  
		Last Modified: Thu, 15 Mar 2018 04:33:39 GMT  
		Size: 41.3 MB (41290614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccd3b9a0880a5aeb83a626a3c31735d938824e11139b9aeb95564fb6793c1d7`  
		Last Modified: Thu, 15 Mar 2018 04:33:25 GMT  
		Size: 6.5 KB (6509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd545983b617f020005cbe9c01d8079db746ff929bcb90c1a1b8e5d77121678`  
		Last Modified: Thu, 15 Mar 2018 04:33:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fb7a5aa5b80b38b65f0551a61a3b9e9d34439da07439ada01bb863ab72dd4e`  
		Last Modified: Thu, 15 Mar 2018 04:33:26 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd6e6660ee2fe3f11998f2ecfcf22b795c5eb7512d48f6a8f29cb3efbb3987c`  
		Last Modified: Thu, 15 Mar 2018 04:33:25 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2563870f7453ec03048b716d3f5979ac1db9b8b15a77d977d76386c6046f1f`  
		Last Modified: Thu, 15 Mar 2018 04:33:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; s390x

```console
$ docker pull postgres@sha256:682f424a03f4d68eb7573cc9b13f7466c599a38a24a90f250a98ee0eb5d6c245
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.4 MB (99352894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450bdb45bf0e20868691e9840609d0ad31d81f66545bdcafaf5348e6f8814956`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 07:02:44 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 07:02:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 07:03:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 07:03:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 07:03:14 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 07:03:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 07:03:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 07:28:19 GMT
ENV PG_MAJOR=9.3
# Wed, 14 Mar 2018 07:28:19 GMT
ENV PG_VERSION=9.3.22-1.pgdg80+1
# Wed, 14 Mar 2018 07:35:34 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 07:35:35 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 07:35:36 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 07:35:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Wed, 14 Mar 2018 07:35:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 07:35:37 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 07:35:37 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 07:35:37 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 07:35:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 07:35:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 07:35:38 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 07:35:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dd957f9fe9a0b1b31d7bc9a788402552921f19ca569b02ea38e6ececd7e3f`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124fe371fdba391f4fe2074b49ffbb81c42dbdc1ff5bc67be5fb104e57c1370`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 970.3 KB (970296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daf81df21c7820de665e5a906e02c03e6b1b25866ab0ba5e7a76667f78c9a01`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 7.1 MB (7131276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c433e77c3b166e3c1031e6a90d286f74f6851b02becacf6a85b0eee3cfb1f2f`  
		Last Modified: Wed, 14 Mar 2018 07:35:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48fd35b2809c5418f91b47e912004fac6f97a8c938b95b458c5010dbe631d152`  
		Last Modified: Wed, 14 Mar 2018 07:35:51 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a27fa5653fbc780b24a71faea10d5cb0b120e5b0d488285ebb9fee9fd33fc6`  
		Last Modified: Wed, 14 Mar 2018 07:37:04 GMT  
		Size: 38.4 MB (38440407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130b03f89a532788297a81c4447193e764e779451b558cbaf5c675e8bf728f16`  
		Last Modified: Wed, 14 Mar 2018 07:36:54 GMT  
		Size: 6.5 KB (6509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e702dd717d4f646dd90adfa5b4f2f7db336eb855a92b3fcb3235420cf0e688`  
		Last Modified: Wed, 14 Mar 2018 07:36:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c063c0805b4e03c060acf8e4c9a92892fb992698ce85231be3dd205cd5639c13`  
		Last Modified: Wed, 14 Mar 2018 07:36:54 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15452f6c6672f1657218ded8521f61373c0c84c368d245e05b4e3021cbc8f8d4`  
		Last Modified: Wed, 14 Mar 2018 07:36:54 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0054081637b3e69c7fa63255485fe26f5fe577bd73e8a6164f3627de1bef69f5`  
		Last Modified: Wed, 14 Mar 2018 07:36:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.22`

```console
$ docker pull postgres@sha256:045be6b7347dbb8c7a8637d1dfa3998228a2651751a3e2e6d63a0e6c4a3c5ea9
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

### `postgres:9.3.22` - linux; amd64

```console
$ docker pull postgres@sha256:eb840d463a8132f45c731599441a8e4f245ca838fc6f8437728a68b6c6ce5f8d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (102955327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8010d149fa0363e9fb6cba9a78ae9c3926574ddaef5a59effa17a93cebf5a428`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 16:54:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 16:54:18 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 16:54:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 16:54:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 16:55:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 16:55:07 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 16:55:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 16:55:13 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 16:59:56 GMT
ENV PG_MAJOR=9.3
# Wed, 14 Mar 2018 16:59:57 GMT
ENV PG_VERSION=9.3.22-1.pgdg80+1
# Wed, 14 Mar 2018 17:00:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 17:00:49 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 17:00:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 17:00:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Wed, 14 Mar 2018 17:00:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 17:00:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 17:00:51 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 17:00:52 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 17:00:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 17:00:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 17:00:53 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 17:00:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2b55494f4f6f1f36cae8ef654cea2c2f62d54cc15d25ee42b27fc01c0a9cc8`  
		Last Modified: Wed, 14 Mar 2018 17:02:49 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de62c3a085cd468f90288db23caa38a9e990e56229d604be3a800c7c5f18f379`  
		Last Modified: Wed, 14 Mar 2018 17:02:48 GMT  
		Size: 985.2 KB (985230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e503918e3074f46543a9e57e27130a399e265ff9923bc248328f878e6936bc1a`  
		Last Modified: Wed, 14 Mar 2018 17:02:51 GMT  
		Size: 7.1 MB (7113049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a66f5a91afedccafa1a5e0aab6ba8fb4b596ed179324b6be0fb2f03fe2a680`  
		Last Modified: Wed, 14 Mar 2018 17:02:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228a46786f0c34c2428916c692279f7086fe4e13b725315d6e53921b54ee9e1c`  
		Last Modified: Wed, 14 Mar 2018 17:02:46 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f71f34eb7832e7a9c6048257849e0d3c32b92f685979204a89272fb5b763f39`  
		Last Modified: Wed, 14 Mar 2018 17:05:50 GMT  
		Size: 42.2 MB (42233087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275ccd19cc9bb39ad285b68debd4b59ac8ab3fc03801eefcccaf4c1575a662e9`  
		Last Modified: Wed, 14 Mar 2018 17:05:39 GMT  
		Size: 6.5 KB (6512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88379d8bded9cdd1b23d55b1f5bd7c4ffadf4901fe2c66167c3a11d179949d77`  
		Last Modified: Wed, 14 Mar 2018 17:05:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a596a3048624b1e7743789f9c6c4c914fa70e899b2da890e6b76042ee14bb8a`  
		Last Modified: Wed, 14 Mar 2018 17:05:38 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d737e4a0fac04924520b53ac12fd41390b17e7c6a0bb02cdb40133738d04c8`  
		Last Modified: Wed, 14 Mar 2018 17:05:38 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae392536ea7f958dfd8dea29879628218b32c796936855a06e3ebe633fad4c80`  
		Last Modified: Wed, 14 Mar 2018 17:05:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.22` - linux; arm variant v5

```console
$ docker pull postgres@sha256:9d66eac40e1af08cadb9202cc86670b7d788c9a4ec39301a6837a9a5074173ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.5 MB (95461416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c432ac44d596b22de906cf16de70ac9315486eb15f66815a50544ef87a9e2133`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:51:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 21:51:31 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 21:51:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 21:52:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 21:52:46 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 21:52:46 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 21:52:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 21:52:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 22:49:12 GMT
ENV PG_MAJOR=9.3
# Wed, 14 Mar 2018 22:49:12 GMT
ENV PG_VERSION=9.3.22-1.pgdg80+1
# Wed, 14 Mar 2018 23:05:31 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 23:05:33 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 23:05:41 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 23:05:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Wed, 14 Mar 2018 23:05:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 23:05:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 23:05:58 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 23:05:59 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 23:06:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 23:06:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 23:06:08 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 23:06:08 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c818186c2a34364ea24baef384535dfbf1f22bee54ed9f5c493ce7289b139c3`  
		Last Modified: Wed, 14 Mar 2018 23:07:23 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a4beb832950a923eb83efdb74b15472fc7930a53fbd629eb2675500a6b0632`  
		Last Modified: Wed, 14 Mar 2018 23:07:22 GMT  
		Size: 974.6 KB (974633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540ff776d130d6ca043479e195873e09381dd09ac8354c122fa99bedf93e5efd`  
		Last Modified: Wed, 14 Mar 2018 23:07:24 GMT  
		Size: 7.1 MB (7112937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8ffaf6845c130cd10f4de730a36069d6d385af3808dcd38e0dddcf0b379b0e`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfb113d6bbf190b4beb67576b3d36c93a4ad07853293ca9d1c709c8322ec05e`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8f9b3c587520dfdd85a68e232aa48d01ef2e75b2d48f8d5002238b43c4f177`  
		Last Modified: Wed, 14 Mar 2018 23:10:13 GMT  
		Size: 36.5 MB (36468346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea2085e79fecc1759eb4c40a8c373d0278fc9a13733a5b7f178b8003a21d6e5`  
		Last Modified: Wed, 14 Mar 2018 23:09:58 GMT  
		Size: 6.5 KB (6505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d0c5969fc61cf0ef26d92339c91cb13f91312f03bf4a341b4effe5292f611c`  
		Last Modified: Wed, 14 Mar 2018 23:09:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cecff3b73c08cf278af9af2f9e42cdd1dd05fecf2b731ef36d1539abcfbe225`  
		Last Modified: Wed, 14 Mar 2018 23:09:58 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27937c5627640050cc0a15a26d72fca72a65ed183b049c868275b96107a29131`  
		Last Modified: Wed, 14 Mar 2018 23:09:59 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13228b2b47ba0d77ed15be51a9cbf84c952d2a1f47670cd07b73e09a45092783`  
		Last Modified: Wed, 14 Mar 2018 23:09:58 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.22` - linux; arm variant v7

```console
$ docker pull postgres@sha256:45fe54a5fcd0713fb7eb98974146ef3d0b4b744546437f98bfa742cdcb5d935b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.1 MB (177085183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f34f1696e35ee417bda2e429002685982bf48555df8d4683d0faf1162132822`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 12:25:46 GMT
ADD file:6208a77a3fff4a68790f06b1b3a3e0fcb563724a9d1485d8e10592e2cf32b190 in / 
# Wed, 14 Mar 2018 12:25:46 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 03:38:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 03:38:37 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 28 Mar 2018 03:38:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Mar 2018 03:38:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 28 Mar 2018 03:38:59 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 28 Mar 2018 03:39:00 GMT
ENV LANG=en_US.utf8
# Wed, 28 Mar 2018 03:39:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Mar 2018 03:39:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 28 Mar 2018 04:39:15 GMT
ENV PG_MAJOR=9.3
# Wed, 28 Mar 2018 04:39:15 GMT
ENV PG_VERSION=9.3.22-1.pgdg80+1
# Wed, 28 Mar 2018 04:52:11 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 28 Mar 2018 04:52:13 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 28 Mar 2018 04:52:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 28 Mar 2018 04:52:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Wed, 28 Mar 2018 04:52:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Mar 2018 04:52:15 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 28 Mar 2018 04:52:15 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Mar 2018 04:52:16 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 28 Mar 2018 04:52:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 28 Mar 2018 04:52:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 04:52:17 GMT
EXPOSE 5432/tcp
# Wed, 28 Mar 2018 04:52:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8c1aa76b118f0b6f588a119501660e6c6984f1c8af222f2b04be33b64cada0c2`  
		Last Modified: Wed, 14 Mar 2018 12:37:22 GMT  
		Size: 44.1 MB (44078135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3ffdc7c95f36f6ab3e6038438d851ea38ba046a53ece176f2d35caddc75ba0`  
		Last Modified: Wed, 28 Mar 2018 04:53:11 GMT  
		Size: 9.0 MB (9002659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2af83fb1e1d8a7b0c24b01595114df2abbbb688d606c8ff88ba7694efeb348c`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 1.9 KB (1862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e342156e061add8ad9dfb369b32b557de2b001028dff9350b5fb1cf9e78f6a90`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 937.8 KB (937792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1f846fdb0dda2e9e8ae7b68700b39337abdba0a58c7bd33fab39e1ab982fed`  
		Last Modified: Wed, 28 Mar 2018 04:53:10 GMT  
		Size: 7.4 MB (7397480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f19e12270249fafb855a0d74b265a13e05a55d791b8beee9e9f2780ecca1aea`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803ad1f3db776e5dcdf942153b71efa528356ea4fae29713b6b241c9c84f655e`  
		Last Modified: Wed, 28 Mar 2018 04:53:07 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f271e31163c487520284a656786e92bccd8d67305d21e5ae3f725ca239e34c`  
		Last Modified: Wed, 28 Mar 2018 04:56:37 GMT  
		Size: 115.7 MB (115653863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc605f3fe59402b8288ae4dcd7880e8357d1e19edfa8f55a64e5f116b6fde64f`  
		Last Modified: Wed, 28 Mar 2018 04:56:04 GMT  
		Size: 6.5 KB (6507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c38f852a5a70114ea1e6888db13bd3084c6b30021d07a7eadf99d99d0160c3`  
		Last Modified: Wed, 28 Mar 2018 04:56:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1041dfd384eff182135667f11bb3cff539368a9d70f33162984b2c3bb0751d`  
		Last Modified: Wed, 28 Mar 2018 04:56:04 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d249b605615c74385a06cd4899f864158c3da8d3996079c354a2a6c981b3ebb4`  
		Last Modified: Wed, 28 Mar 2018 04:56:05 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f199acac13ec90feb19b261b6060acf019d659d1d4c29d7e991701d190a5815d`  
		Last Modified: Wed, 28 Mar 2018 04:56:05 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.22` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:f10c2c4aa2793837ca5fdd22983c3d5e23b5905ed7c91290fa5da7b7440a1e02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (94031291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f206bcedb47fc462ea74c21305b4a06cd60ea9eb5d6ec3959746e9b30d64df98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:12:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 01:12:29 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 01:12:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 01:13:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 01:14:10 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 01:14:11 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 01:14:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 01:14:33 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 03:02:08 GMT
ENV PG_MAJOR=9.3
# Thu, 15 Mar 2018 03:02:09 GMT
ENV PG_VERSION=9.3.22-1.pgdg80+1
# Thu, 15 Mar 2018 03:34:42 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 03:34:53 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 03:34:56 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 03:34:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Thu, 15 Mar 2018 03:34:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 03:34:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 03:35:00 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 03:35:01 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Mar 2018 03:35:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 03:35:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 03:35:05 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 03:35:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3866bf6991dcc95d7965e2c1e7d6e6c51df401b5dd2e84626cbe44b139346e61`  
		Last Modified: Thu, 15 Mar 2018 03:37:29 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1330e3465a4cd072827c77e795c9d16bb6784d60e3c6455380999d67f5d332d0`  
		Last Modified: Thu, 15 Mar 2018 03:37:28 GMT  
		Size: 952.0 KB (952004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4740d805464e7ac9dcaa1296146892e0450eb657f1b1d3060f1f6904b79266`  
		Last Modified: Thu, 15 Mar 2018 03:37:32 GMT  
		Size: 7.1 MB (7112991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7890777de807ec652b6ee43b8737666e74cb561b53d0bf3d59efac52d5e0281`  
		Last Modified: Thu, 15 Mar 2018 03:37:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa480058f0209611cf1374aa008b40a0bd581155b8f269472a20f8f8cc756e4`  
		Last Modified: Thu, 15 Mar 2018 03:37:27 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2ce9a7efa68e3ec338e9e7fa3f2ec932f61fd26e5406be04731f8da4ed362`  
		Last Modified: Thu, 15 Mar 2018 03:40:43 GMT  
		Size: 36.0 MB (36017381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8107b71b63237861fcf8d7a71963a9d35bdb3208870644e53e64f566c8abe661`  
		Last Modified: Thu, 15 Mar 2018 03:40:28 GMT  
		Size: 6.5 KB (6511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4e587de33c07bd7c693cfc9ada76ab64cabc6d02b4288c74191334e4c26ddb`  
		Last Modified: Thu, 15 Mar 2018 03:40:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e31fcc7875caf6e0b91ebcf8c3db445e5c642f52889d0b43debe5f6cf4f4946`  
		Last Modified: Thu, 15 Mar 2018 03:40:27 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1698aae8edc3782b3a8fbba677af83df78179fcecb8fb26678a69a9ba51c664a`  
		Last Modified: Thu, 15 Mar 2018 03:40:28 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07f54a53140ab92777647a300646ab473bc8b52ef1e8b91035920b8b0515b61`  
		Last Modified: Thu, 15 Mar 2018 03:40:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.22` - linux; 386

```console
$ docker pull postgres@sha256:49f91ae8cf044eeabb3a7fbe9f4ee7042785c32f7ae7840a1de6693d99f4fdc4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104906059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ead465b171349f96875a98470af0640be072d217c3804dab0177ccad19cf595`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Mon, 19 Feb 2018 18:23:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 19 Feb 2018 18:23:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 19 Feb 2018 18:23:11 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Feb 2018 18:23:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 19 Feb 2018 18:24:16 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 19 Feb 2018 18:31:45 GMT
ENV LANG=en_US.utf8
# Mon, 19 Feb 2018 18:31:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Feb 2018 18:31:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 19 Feb 2018 19:04:39 GMT
ENV PG_MAJOR=9.3
# Sat, 03 Mar 2018 16:04:38 GMT
ENV PG_VERSION=9.3.22-1.pgdg80+1
# Sat, 03 Mar 2018 16:06:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 03 Mar 2018 16:06:05 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 03 Mar 2018 16:06:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 03 Mar 2018 16:06:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Sat, 03 Mar 2018 16:06:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 03 Mar 2018 16:06:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 03 Mar 2018 16:06:08 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 03 Mar 2018 16:06:08 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Sat, 03 Mar 2018 16:06:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 16:06:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 16:06:09 GMT
EXPOSE 5432/tcp
# Sat, 03 Mar 2018 16:06:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5057c70401974b44c0f1bff5a08e5b7223f2fa5b67f6919fe9d9a0272ffcb75b`  
		Last Modified: Mon, 19 Feb 2018 19:26:07 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6399b36dfc67ead03f31924ea4f72f12a74b332fa52917e427798659a7389fe`  
		Last Modified: Mon, 19 Feb 2018 19:26:05 GMT  
		Size: 964.0 KB (964020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c14510a3123271f8483e8277fd4e6edb9791c5e6088030f3c915044b860d38`  
		Last Modified: Mon, 19 Feb 2018 19:26:10 GMT  
		Size: 7.1 MB (7112907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4754edfd9320a47c2f64cae795bec1adf050f6f0efde9873d3d753973d890fe`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cafb68050a9756d26f310c634d1800ecf4fbcad70e13aba58656aa3705a7108`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d42a34a538c0d9569eccf128f2ad71ba96b4f9a6ab43067408b32d5d1cb2ef`  
		Last Modified: Sat, 03 Mar 2018 17:47:38 GMT  
		Size: 44.0 MB (44025996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0aa5ebe8b64a573316c72b06f3c17df660717e2a05773564172e0927947303`  
		Last Modified: Sat, 03 Mar 2018 17:47:24 GMT  
		Size: 6.5 KB (6507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1adf85edf45703f1d948354d4099395da5a65a41a0fbcac09b1f948fe161dc`  
		Last Modified: Sat, 03 Mar 2018 17:47:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deee1c093449e71282dabb9f5f4f59bf1f829e51753901863fa4446dd8da6b3f`  
		Last Modified: Sat, 03 Mar 2018 17:47:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edeb5bcfa745afdd265984f482b1f513a89252a1bbb7d0ce5ec89d607bbfb0ac`  
		Last Modified: Sat, 03 Mar 2018 17:47:23 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0153adc9079b0fa3f1c13418dc68a9781d5fbcfbce1e3c09076585b048cb6918`  
		Last Modified: Sat, 03 Mar 2018 17:47:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.22` - linux; ppc64le

```console
$ docker pull postgres@sha256:1a50e26cc1a884b6a3a01cba55814480759dbb82ccfe8ea0f12878f0bc481a40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.2 MB (101190803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:878188668c224212679d1bf62f83db3d82311d82133f2c80060c826e88386f0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:54:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 03:54:35 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 03:54:38 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 03:57:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 03:58:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 03:58:39 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 03:58:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 03:58:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 04:22:08 GMT
ENV PG_MAJOR=9.3
# Thu, 15 Mar 2018 04:22:09 GMT
ENV PG_VERSION=9.3.22-1.pgdg80+1
# Thu, 15 Mar 2018 04:29:37 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 04:29:43 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 04:29:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 04:29:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Thu, 15 Mar 2018 04:29:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 04:29:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 04:30:01 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 04:30:05 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Mar 2018 04:30:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 04:30:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 04:30:17 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 04:30:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be05e26cbc28a26d00f212068d1f259dd2916fcd4e1868320d699f7dd47ed57b`  
		Last Modified: Thu, 15 Mar 2018 04:31:33 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4863081503d0792058f50abe3af50d55e383a6fdf1a734475fcd6203ca00d902`  
		Last Modified: Thu, 15 Mar 2018 04:31:32 GMT  
		Size: 954.2 KB (954250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9658240060ff7dec76f71d54ce9010a49d2b3c4bff07a0843002e7ad3682ab0b`  
		Last Modified: Thu, 15 Mar 2018 04:31:33 GMT  
		Size: 7.1 MB (7113258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecf75ba1ae59b220e897d7c3ca614052615c2eb4a302c5ff5fd98049f5d6cd5`  
		Last Modified: Thu, 15 Mar 2018 04:31:31 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a959f69f41c7310006204eff28b74c9644e16f2bf7980193df6d121024499f`  
		Last Modified: Thu, 15 Mar 2018 04:31:31 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7eb695aa6395399554b8647139a71c5b1d57f4c09d1a368354a3d0a4ef1bd8`  
		Last Modified: Thu, 15 Mar 2018 04:33:39 GMT  
		Size: 41.3 MB (41290614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccd3b9a0880a5aeb83a626a3c31735d938824e11139b9aeb95564fb6793c1d7`  
		Last Modified: Thu, 15 Mar 2018 04:33:25 GMT  
		Size: 6.5 KB (6509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd545983b617f020005cbe9c01d8079db746ff929bcb90c1a1b8e5d77121678`  
		Last Modified: Thu, 15 Mar 2018 04:33:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fb7a5aa5b80b38b65f0551a61a3b9e9d34439da07439ada01bb863ab72dd4e`  
		Last Modified: Thu, 15 Mar 2018 04:33:26 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd6e6660ee2fe3f11998f2ecfcf22b795c5eb7512d48f6a8f29cb3efbb3987c`  
		Last Modified: Thu, 15 Mar 2018 04:33:25 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2563870f7453ec03048b716d3f5979ac1db9b8b15a77d977d76386c6046f1f`  
		Last Modified: Thu, 15 Mar 2018 04:33:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.22` - linux; s390x

```console
$ docker pull postgres@sha256:682f424a03f4d68eb7573cc9b13f7466c599a38a24a90f250a98ee0eb5d6c245
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.4 MB (99352894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450bdb45bf0e20868691e9840609d0ad31d81f66545bdcafaf5348e6f8814956`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 07:02:44 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 07:02:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 07:03:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 07:03:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 07:03:14 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 07:03:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 07:03:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 07:28:19 GMT
ENV PG_MAJOR=9.3
# Wed, 14 Mar 2018 07:28:19 GMT
ENV PG_VERSION=9.3.22-1.pgdg80+1
# Wed, 14 Mar 2018 07:35:34 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 07:35:35 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 07:35:36 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 07:35:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Wed, 14 Mar 2018 07:35:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 07:35:37 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 07:35:37 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 07:35:37 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 07:35:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 07:35:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 07:35:38 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 07:35:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dd957f9fe9a0b1b31d7bc9a788402552921f19ca569b02ea38e6ececd7e3f`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124fe371fdba391f4fe2074b49ffbb81c42dbdc1ff5bc67be5fb104e57c1370`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 970.3 KB (970296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daf81df21c7820de665e5a906e02c03e6b1b25866ab0ba5e7a76667f78c9a01`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 7.1 MB (7131276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c433e77c3b166e3c1031e6a90d286f74f6851b02becacf6a85b0eee3cfb1f2f`  
		Last Modified: Wed, 14 Mar 2018 07:35:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48fd35b2809c5418f91b47e912004fac6f97a8c938b95b458c5010dbe631d152`  
		Last Modified: Wed, 14 Mar 2018 07:35:51 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a27fa5653fbc780b24a71faea10d5cb0b120e5b0d488285ebb9fee9fd33fc6`  
		Last Modified: Wed, 14 Mar 2018 07:37:04 GMT  
		Size: 38.4 MB (38440407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130b03f89a532788297a81c4447193e764e779451b558cbaf5c675e8bf728f16`  
		Last Modified: Wed, 14 Mar 2018 07:36:54 GMT  
		Size: 6.5 KB (6509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e702dd717d4f646dd90adfa5b4f2f7db336eb855a92b3fcb3235420cf0e688`  
		Last Modified: Wed, 14 Mar 2018 07:36:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c063c0805b4e03c060acf8e4c9a92892fb992698ce85231be3dd205cd5639c13`  
		Last Modified: Wed, 14 Mar 2018 07:36:54 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15452f6c6672f1657218ded8521f61373c0c84c368d245e05b4e3021cbc8f8d4`  
		Last Modified: Wed, 14 Mar 2018 07:36:54 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0054081637b3e69c7fa63255485fe26f5fe577bd73e8a6164f3627de1bef69f5`  
		Last Modified: Wed, 14 Mar 2018 07:36:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.22-alpine`

```console
$ docker pull postgres@sha256:18170c94721d66a3e4573e5526b0f8859717aa4b19a9b1e0b548eb010785cb9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.3.22-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:971126bb77b98cd85a31106936fe18d8e669b7655f31d4353a71c86f5be79de7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14031447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d72c6762a4ad7ca40bd7b5a33dd092f03ab3fdcb43711ea47d6d05c10eaf3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:26:41 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Jan 2018 04:26:41 GMT
ENV LANG=en_US.utf8
# Wed, 10 Jan 2018 04:26:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Jan 2018 04:36:59 GMT
ENV PG_MAJOR=9.3
# Fri, 02 Mar 2018 22:20:54 GMT
ENV PG_VERSION=9.3.22
# Fri, 02 Mar 2018 22:20:54 GMT
ENV PG_SHA256=1b18ed4aa59bab6283a0d8f3a00b9d896f4588bb2ba88ceef2816cb5c4cce91a
# Fri, 02 Mar 2018 22:20:54 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Fri, 02 Mar 2018 22:20:54 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Fri, 02 Mar 2018 22:22:56 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 02 Mar 2018 22:22:57 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 02 Mar 2018 22:22:58 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 02 Mar 2018 22:22:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 02 Mar 2018 22:22:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 02 Mar 2018 22:22:59 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 02 Mar 2018 22:23:00 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Fri, 02 Mar 2018 22:23:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 02 Mar 2018 22:23:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 22:23:01 GMT
EXPOSE 5432/tcp
# Fri, 02 Mar 2018 22:23:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bf519c70dfc41fc325a4d9771bb0f55ffd85a4b86bfa1d7b3bbc69d2fc2d8c`  
		Last Modified: Wed, 10 Jan 2018 04:41:24 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af56c798cc1e0da2941d090847e9dcd3bc175d165ac7a503cc7ebfed3d63d04`  
		Last Modified: Wed, 10 Jan 2018 04:41:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac1bbfb45200d42d5d8b2420b21e719e652e95fef52a7dfe90be2c7fdd99283`  
		Last Modified: Fri, 02 Mar 2018 22:31:08 GMT  
		Size: 12.1 MB (12052317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df650e40115180a00554ddeaebda9c27fc04eeb5a2ca7d0715646f3c527aeff9`  
		Last Modified: Fri, 02 Mar 2018 22:31:03 GMT  
		Size: 6.5 KB (6479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c049e9932d73d3cae4460fe04ffb26150abb6f04b8b13500b5fe51b2a7ec92`  
		Last Modified: Fri, 02 Mar 2018 22:31:03 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea2ad88e865e501be1ed2a1f870a2bc5c0a324a7978b4d4e78b79680b355b659`  
		Last Modified: Fri, 02 Mar 2018 22:31:03 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49cfe808059e500c5dda5b73a34818583482110f07440a3e3367d6809c02ca37`  
		Last Modified: Fri, 02 Mar 2018 22:31:03 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c752da5a555c65c4ad819b3484b656abc44381919620e7c861b07b10a8c249`  
		Last Modified: Fri, 02 Mar 2018 22:31:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:18170c94721d66a3e4573e5526b0f8859717aa4b19a9b1e0b548eb010785cb9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:971126bb77b98cd85a31106936fe18d8e669b7655f31d4353a71c86f5be79de7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14031447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d72c6762a4ad7ca40bd7b5a33dd092f03ab3fdcb43711ea47d6d05c10eaf3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:26:41 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Jan 2018 04:26:41 GMT
ENV LANG=en_US.utf8
# Wed, 10 Jan 2018 04:26:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Jan 2018 04:36:59 GMT
ENV PG_MAJOR=9.3
# Fri, 02 Mar 2018 22:20:54 GMT
ENV PG_VERSION=9.3.22
# Fri, 02 Mar 2018 22:20:54 GMT
ENV PG_SHA256=1b18ed4aa59bab6283a0d8f3a00b9d896f4588bb2ba88ceef2816cb5c4cce91a
# Fri, 02 Mar 2018 22:20:54 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Fri, 02 Mar 2018 22:20:54 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Fri, 02 Mar 2018 22:22:56 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 02 Mar 2018 22:22:57 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 02 Mar 2018 22:22:58 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 02 Mar 2018 22:22:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 02 Mar 2018 22:22:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 02 Mar 2018 22:22:59 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 02 Mar 2018 22:23:00 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Fri, 02 Mar 2018 22:23:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 02 Mar 2018 22:23:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 22:23:01 GMT
EXPOSE 5432/tcp
# Fri, 02 Mar 2018 22:23:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bf519c70dfc41fc325a4d9771bb0f55ffd85a4b86bfa1d7b3bbc69d2fc2d8c`  
		Last Modified: Wed, 10 Jan 2018 04:41:24 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af56c798cc1e0da2941d090847e9dcd3bc175d165ac7a503cc7ebfed3d63d04`  
		Last Modified: Wed, 10 Jan 2018 04:41:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac1bbfb45200d42d5d8b2420b21e719e652e95fef52a7dfe90be2c7fdd99283`  
		Last Modified: Fri, 02 Mar 2018 22:31:08 GMT  
		Size: 12.1 MB (12052317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df650e40115180a00554ddeaebda9c27fc04eeb5a2ca7d0715646f3c527aeff9`  
		Last Modified: Fri, 02 Mar 2018 22:31:03 GMT  
		Size: 6.5 KB (6479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c049e9932d73d3cae4460fe04ffb26150abb6f04b8b13500b5fe51b2a7ec92`  
		Last Modified: Fri, 02 Mar 2018 22:31:03 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea2ad88e865e501be1ed2a1f870a2bc5c0a324a7978b4d4e78b79680b355b659`  
		Last Modified: Fri, 02 Mar 2018 22:31:03 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49cfe808059e500c5dda5b73a34818583482110f07440a3e3367d6809c02ca37`  
		Last Modified: Fri, 02 Mar 2018 22:31:03 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c752da5a555c65c4ad819b3484b656abc44381919620e7c861b07b10a8c249`  
		Last Modified: Fri, 02 Mar 2018 22:31:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:de1936dd4cf43ee6fcce50a9fa42108c2ae09aa4a3f383ce2ba7793031afdc8b
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

### `postgres:9.4` - linux; amd64

```console
$ docker pull postgres@sha256:2424db28113bc5d94183d7d63f64206dd2d551f269682ff43535aeda0b96c8ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.3 MB (103327170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed5db6e669ffe319a2b56409f9a1daac305e3871ff2a5d22505a1d8dcab3ce82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 16:54:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 16:54:18 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 16:54:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 16:54:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 16:55:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 16:55:07 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 16:55:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 16:55:13 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 16:58:35 GMT
ENV PG_MAJOR=9.4
# Wed, 14 Mar 2018 16:58:36 GMT
ENV PG_VERSION=9.4.17-1.pgdg80+1
# Wed, 14 Mar 2018 16:59:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 16:59:34 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 16:59:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 16:59:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Wed, 14 Mar 2018 16:59:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 16:59:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 16:59:36 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 16:59:37 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 16:59:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 16:59:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 16:59:38 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 16:59:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2b55494f4f6f1f36cae8ef654cea2c2f62d54cc15d25ee42b27fc01c0a9cc8`  
		Last Modified: Wed, 14 Mar 2018 17:02:49 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de62c3a085cd468f90288db23caa38a9e990e56229d604be3a800c7c5f18f379`  
		Last Modified: Wed, 14 Mar 2018 17:02:48 GMT  
		Size: 985.2 KB (985230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e503918e3074f46543a9e57e27130a399e265ff9923bc248328f878e6936bc1a`  
		Last Modified: Wed, 14 Mar 2018 17:02:51 GMT  
		Size: 7.1 MB (7113049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a66f5a91afedccafa1a5e0aab6ba8fb4b596ed179324b6be0fb2f03fe2a680`  
		Last Modified: Wed, 14 Mar 2018 17:02:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228a46786f0c34c2428916c692279f7086fe4e13b725315d6e53921b54ee9e1c`  
		Last Modified: Wed, 14 Mar 2018 17:02:46 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096bd7895b4ff525cef7e6b91e3c1763b26cb3ee5cd4fa6a94c6668ec53e788d`  
		Last Modified: Wed, 14 Mar 2018 17:04:59 GMT  
		Size: 42.6 MB (42604749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63a2b6421e8c5d9ee564a430bbadb695b95633f7a24b4569f34801a744641a6`  
		Last Modified: Wed, 14 Mar 2018 17:04:48 GMT  
		Size: 6.7 KB (6693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44021231c1492b02734c16b00cd5e80d90899fd05ef5b85e0031f96aa9605880`  
		Last Modified: Wed, 14 Mar 2018 17:04:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f6211c740f9f267b2e7234f48d2d26c44e5b889c7d261dee3d697e8edf1d64`  
		Last Modified: Wed, 14 Mar 2018 17:04:47 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c31eadcfabeddb548fddb37b175ac368e9770bfcdb4941f3938b335ef10fdaa`  
		Last Modified: Wed, 14 Mar 2018 17:04:46 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619c67eb888e7b5dee3c96e34c8ea74b3a3f05dc77256d2dc6d06728670cbf16`  
		Last Modified: Wed, 14 Mar 2018 17:04:46 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; arm variant v5

```console
$ docker pull postgres@sha256:8169b73b403c5ea8517078835be8bb35fe21f4992bf9910bb37077edfa8591b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95812735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:329b8f8aedd13d0c62d6b63a63f8979ff417f9239ae369558f72801db8b5286b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:51:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 21:51:31 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 21:51:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 21:52:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 21:52:46 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 21:52:46 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 21:52:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 21:52:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 22:31:52 GMT
ENV PG_MAJOR=9.4
# Wed, 14 Mar 2018 22:31:52 GMT
ENV PG_VERSION=9.4.17-1.pgdg80+1
# Wed, 14 Mar 2018 22:48:47 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 22:48:48 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 22:48:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 22:48:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Wed, 14 Mar 2018 22:48:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 22:48:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 22:48:51 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 22:48:52 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 22:48:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 22:48:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 22:48:53 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 22:48:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c818186c2a34364ea24baef384535dfbf1f22bee54ed9f5c493ce7289b139c3`  
		Last Modified: Wed, 14 Mar 2018 23:07:23 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a4beb832950a923eb83efdb74b15472fc7930a53fbd629eb2675500a6b0632`  
		Last Modified: Wed, 14 Mar 2018 23:07:22 GMT  
		Size: 974.6 KB (974633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540ff776d130d6ca043479e195873e09381dd09ac8354c122fa99bedf93e5efd`  
		Last Modified: Wed, 14 Mar 2018 23:07:24 GMT  
		Size: 7.1 MB (7112937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8ffaf6845c130cd10f4de730a36069d6d385af3808dcd38e0dddcf0b379b0e`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfb113d6bbf190b4beb67576b3d36c93a4ad07853293ca9d1c709c8322ec05e`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b423c4e0e113ec589575718f086ae67b9e8eade68b5d486c4034587eeb41d95a`  
		Last Modified: Wed, 14 Mar 2018 23:09:22 GMT  
		Size: 36.8 MB (36819481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a26db358491a1c65999116bbcc71a8c1f65d6eeaec20366208450190c15a6c5`  
		Last Modified: Wed, 14 Mar 2018 23:09:08 GMT  
		Size: 6.7 KB (6690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8ee60b5b045acdfd1c147d7b19a6d543845a75d9d43b36eee88215aafe10cd`  
		Last Modified: Wed, 14 Mar 2018 23:09:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a260895e51aaeeeb91defa960d9f87017d6dcd631fe76fd0f1d375d15af1bae3`  
		Last Modified: Wed, 14 Mar 2018 23:09:08 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28361e7dcf09c6b47c2d39413345879feddcfb4a9c16983974250e411a4a138e`  
		Last Modified: Wed, 14 Mar 2018 23:09:09 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168d12161167ad082bc2775d5470a3c7031c0e7ee4d24c940961a09fc8d74822`  
		Last Modified: Wed, 14 Mar 2018 23:09:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; arm variant v7

```console
$ docker pull postgres@sha256:d9b8d64437e60ec2d900a2ef3d89b24c58e86d2a4a14b2d684a9f00369625c8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.5 MB (177481301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f95504a380fc313087a439c81563172b0390ff3f27b4f628ba1299575e69898f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 12:25:46 GMT
ADD file:6208a77a3fff4a68790f06b1b3a3e0fcb563724a9d1485d8e10592e2cf32b190 in / 
# Wed, 14 Mar 2018 12:25:46 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 03:38:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 03:38:37 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 28 Mar 2018 03:38:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Mar 2018 03:38:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 28 Mar 2018 03:38:59 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 28 Mar 2018 03:39:00 GMT
ENV LANG=en_US.utf8
# Wed, 28 Mar 2018 03:39:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Mar 2018 03:39:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 28 Mar 2018 04:25:16 GMT
ENV PG_MAJOR=9.4
# Wed, 28 Mar 2018 04:25:17 GMT
ENV PG_VERSION=9.4.17-1.pgdg80+1
# Wed, 28 Mar 2018 04:38:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 28 Mar 2018 04:38:48 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 28 Mar 2018 04:38:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 28 Mar 2018 04:38:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Wed, 28 Mar 2018 04:38:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Mar 2018 04:38:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 28 Mar 2018 04:38:50 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Mar 2018 04:38:50 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 28 Mar 2018 04:38:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 28 Mar 2018 04:38:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 04:38:51 GMT
EXPOSE 5432/tcp
# Wed, 28 Mar 2018 04:38:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8c1aa76b118f0b6f588a119501660e6c6984f1c8af222f2b04be33b64cada0c2`  
		Last Modified: Wed, 14 Mar 2018 12:37:22 GMT  
		Size: 44.1 MB (44078135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3ffdc7c95f36f6ab3e6038438d851ea38ba046a53ece176f2d35caddc75ba0`  
		Last Modified: Wed, 28 Mar 2018 04:53:11 GMT  
		Size: 9.0 MB (9002659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2af83fb1e1d8a7b0c24b01595114df2abbbb688d606c8ff88ba7694efeb348c`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 1.9 KB (1862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e342156e061add8ad9dfb369b32b557de2b001028dff9350b5fb1cf9e78f6a90`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 937.8 KB (937792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1f846fdb0dda2e9e8ae7b68700b39337abdba0a58c7bd33fab39e1ab982fed`  
		Last Modified: Wed, 28 Mar 2018 04:53:10 GMT  
		Size: 7.4 MB (7397480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f19e12270249fafb855a0d74b265a13e05a55d791b8beee9e9f2780ecca1aea`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803ad1f3db776e5dcdf942153b71efa528356ea4fae29713b6b241c9c84f655e`  
		Last Modified: Wed, 28 Mar 2018 04:53:07 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187c660ddd3283150c22fc669f6a275914cebb1d978212a5e6513ae9fc4b66c8`  
		Last Modified: Wed, 28 Mar 2018 04:55:55 GMT  
		Size: 116.0 MB (116049791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d6b4ef1471030681e1caae8b011fb6ea74bcd6665fccdd52e4d7e57fef2ed3`  
		Last Modified: Wed, 28 Mar 2018 04:55:22 GMT  
		Size: 6.7 KB (6694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8227d23f4327a706cb3c6caea2ecb517c16e057625787b7c1f7476eb7f2e4d03`  
		Last Modified: Wed, 28 Mar 2018 04:55:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b7f6c451a32069278c07fa816dacb20667e964cf0ea75ddbc0e99d713348c5`  
		Last Modified: Wed, 28 Mar 2018 04:55:24 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18dc855a0f68e10393384138b2d77ce91a0c8933cb8f5f08762cce19b9dc95b6`  
		Last Modified: Wed, 28 Mar 2018 04:55:22 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d654ccc8e3e3987d955349ba3460e03a64a961c3885f7193791a067d2cda1e4a`  
		Last Modified: Wed, 28 Mar 2018 04:55:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:ff9114d8180c82403c57ffb5dc877530db3ca17f5afaf3d7b912091c641b5c0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.4 MB (94374319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a0d00fd786b900f397334777d8e8b64b0babc200318055593f2b84ee128a5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:12:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 01:12:29 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 01:12:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 01:13:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 01:14:10 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 01:14:11 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 01:14:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 01:14:33 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 02:28:09 GMT
ENV PG_MAJOR=9.4
# Thu, 15 Mar 2018 02:28:10 GMT
ENV PG_VERSION=9.4.17-1.pgdg80+1
# Thu, 15 Mar 2018 03:01:15 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 03:01:20 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 03:01:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 03:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Thu, 15 Mar 2018 03:01:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 03:01:30 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 03:01:31 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 03:01:32 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Mar 2018 03:01:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 03:01:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 03:01:36 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 03:01:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3866bf6991dcc95d7965e2c1e7d6e6c51df401b5dd2e84626cbe44b139346e61`  
		Last Modified: Thu, 15 Mar 2018 03:37:29 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1330e3465a4cd072827c77e795c9d16bb6784d60e3c6455380999d67f5d332d0`  
		Last Modified: Thu, 15 Mar 2018 03:37:28 GMT  
		Size: 952.0 KB (952004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4740d805464e7ac9dcaa1296146892e0450eb657f1b1d3060f1f6904b79266`  
		Last Modified: Thu, 15 Mar 2018 03:37:32 GMT  
		Size: 7.1 MB (7112991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7890777de807ec652b6ee43b8737666e74cb561b53d0bf3d59efac52d5e0281`  
		Last Modified: Thu, 15 Mar 2018 03:37:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa480058f0209611cf1374aa008b40a0bd581155b8f269472a20f8f8cc756e4`  
		Last Modified: Thu, 15 Mar 2018 03:37:27 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1890a22e7814c4180f31d10b07e41538c94e609f62229f413dcf6e8451f26880`  
		Last Modified: Thu, 15 Mar 2018 03:39:48 GMT  
		Size: 36.4 MB (36360227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b709070abfc291a6494b936beda9e06e7f3f67539ebbc9e852f6c448ef626e6d`  
		Last Modified: Thu, 15 Mar 2018 03:39:33 GMT  
		Size: 6.7 KB (6694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5608689c5b876b4b6f4be596681d38feafb1bdfe7300b887fa2bbfb02ff25401`  
		Last Modified: Thu, 15 Mar 2018 03:39:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659ccba0d925d86d9d38f2f8aa24c17d760e1affacf2475c98a70664b46f60c`  
		Last Modified: Thu, 15 Mar 2018 03:39:33 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258bba7638477cebe774a7e2a47983e3f48c4115019180a13a47e7f4761b2c0b`  
		Last Modified: Thu, 15 Mar 2018 03:39:33 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191dc2ad035d7b8f7be4f8d05f541af376020759525c3a7d25fefa2cdf1433cc`  
		Last Modified: Thu, 15 Mar 2018 03:39:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; 386

```console
$ docker pull postgres@sha256:8828c74244afbb568b190415ae9aba7b604c69b90a994278f468c0087b1fdb35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.3 MB (105281841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f78d14b559fa4a03401ebeb7e84eb8a643be078afbd8818e31fcf68050f5de0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Mon, 19 Feb 2018 18:23:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 19 Feb 2018 18:23:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 19 Feb 2018 18:23:11 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Feb 2018 18:23:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 19 Feb 2018 18:24:16 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 19 Feb 2018 18:31:45 GMT
ENV LANG=en_US.utf8
# Mon, 19 Feb 2018 18:31:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Feb 2018 18:31:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 19 Feb 2018 18:53:57 GMT
ENV PG_MAJOR=9.4
# Sat, 03 Mar 2018 15:57:54 GMT
ENV PG_VERSION=9.4.17-1.pgdg80+1
# Sat, 03 Mar 2018 15:59:11 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 03 Mar 2018 15:59:13 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 03 Mar 2018 15:59:13 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 03 Mar 2018 15:59:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Sat, 03 Mar 2018 15:59:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 03 Mar 2018 15:59:15 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 03 Mar 2018 15:59:15 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 03 Mar 2018 15:59:15 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Sat, 03 Mar 2018 15:59:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 15:59:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 15:59:17 GMT
EXPOSE 5432/tcp
# Sat, 03 Mar 2018 15:59:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5057c70401974b44c0f1bff5a08e5b7223f2fa5b67f6919fe9d9a0272ffcb75b`  
		Last Modified: Mon, 19 Feb 2018 19:26:07 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6399b36dfc67ead03f31924ea4f72f12a74b332fa52917e427798659a7389fe`  
		Last Modified: Mon, 19 Feb 2018 19:26:05 GMT  
		Size: 964.0 KB (964020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c14510a3123271f8483e8277fd4e6edb9791c5e6088030f3c915044b860d38`  
		Last Modified: Mon, 19 Feb 2018 19:26:10 GMT  
		Size: 7.1 MB (7112907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4754edfd9320a47c2f64cae795bec1adf050f6f0efde9873d3d753973d890fe`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cafb68050a9756d26f310c634d1800ecf4fbcad70e13aba58656aa3705a7108`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ceb39eae469e494b31ab8e22bd48e36c43c63e732a3e5b8df275a7700107a74`  
		Last Modified: Sat, 03 Mar 2018 17:31:47 GMT  
		Size: 44.4 MB (44401590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636d3dc90b5da533841dbb05c9e43ca134d2ac9374224597de64222d5f3c3c2b`  
		Last Modified: Sat, 03 Mar 2018 17:31:33 GMT  
		Size: 6.7 KB (6690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885f75fe867c42769337432bcef84bc89f08963e660f1546bd5adc7219302113`  
		Last Modified: Sat, 03 Mar 2018 17:31:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8009cbef436218fdbee3459c0508e10e481066e3a52ac6463c4f6989fb3fa1`  
		Last Modified: Sat, 03 Mar 2018 17:31:32 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc10d6b6aa85e275cc50ef779c82d352be73cb40590d7347d852a1cb67dd7803`  
		Last Modified: Sat, 03 Mar 2018 17:31:32 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c386dbc9ab333d2b2b852f7be5577b9ba47a197cec4573b1c8106a1e545c4bae`  
		Last Modified: Sat, 03 Mar 2018 17:31:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; ppc64le

```console
$ docker pull postgres@sha256:2111cfa01c070028356da297fcf19abf817ce44391ee4b9510c5cdefb36da375
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101552239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2108bb933df95b849e5b5d9a28290cbd8cc9968a035a92a48aea3cedb17f21c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:54:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 03:54:35 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 03:54:38 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 03:57:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 03:58:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 03:58:39 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 03:58:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 03:58:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 04:15:24 GMT
ENV PG_MAJOR=9.4
# Thu, 15 Mar 2018 04:15:26 GMT
ENV PG_VERSION=9.4.17-1.pgdg80+1
# Thu, 15 Mar 2018 04:21:32 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 04:21:36 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 04:21:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 04:21:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Thu, 15 Mar 2018 04:21:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 04:21:47 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 04:21:49 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 04:21:50 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Mar 2018 04:21:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 04:21:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 04:21:57 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 04:21:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be05e26cbc28a26d00f212068d1f259dd2916fcd4e1868320d699f7dd47ed57b`  
		Last Modified: Thu, 15 Mar 2018 04:31:33 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4863081503d0792058f50abe3af50d55e383a6fdf1a734475fcd6203ca00d902`  
		Last Modified: Thu, 15 Mar 2018 04:31:32 GMT  
		Size: 954.2 KB (954250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9658240060ff7dec76f71d54ce9010a49d2b3c4bff07a0843002e7ad3682ab0b`  
		Last Modified: Thu, 15 Mar 2018 04:31:33 GMT  
		Size: 7.1 MB (7113258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecf75ba1ae59b220e897d7c3ca614052615c2eb4a302c5ff5fd98049f5d6cd5`  
		Last Modified: Thu, 15 Mar 2018 04:31:31 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a959f69f41c7310006204eff28b74c9644e16f2bf7980193df6d121024499f`  
		Last Modified: Thu, 15 Mar 2018 04:31:31 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2175217d2a3a5f946a25b242fd6026afbafed50b5de4630963795f72b319d5b`  
		Last Modified: Thu, 15 Mar 2018 04:32:50 GMT  
		Size: 41.7 MB (41651865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5790ca97a62c8af1cbfae85a7f45f3293012941407e713653475ce639386e20`  
		Last Modified: Thu, 15 Mar 2018 04:32:36 GMT  
		Size: 6.7 KB (6693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3620c7cd60c0802fe9fc8a1c0055f6d381728e97f0555e64d26b9a07cccd17`  
		Last Modified: Thu, 15 Mar 2018 04:32:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca310e5406125c0acbbaa490a38550529c69937843490e4c90042964f35fce2`  
		Last Modified: Thu, 15 Mar 2018 04:32:36 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e864fc4572ab915375b2fafa0faa5894b791f5e0e42a5085ae14a28e357686`  
		Last Modified: Thu, 15 Mar 2018 04:32:36 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab36f3083b09613abc632a14fb16385362866bba56f24592751d97717ee15c0`  
		Last Modified: Thu, 15 Mar 2018 04:32:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; s390x

```console
$ docker pull postgres@sha256:365e42e43ac61e4ab0a75e1340b9eaeca9ddede2910517d31beee820f20bdd26
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.7 MB (99727735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf84ff112975785be32491042daebe3f1f0e7c8dc4a04cd1a11d84ed9b6d317`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 07:02:44 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 07:02:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 07:03:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 07:03:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 07:03:14 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 07:03:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 07:03:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 07:20:38 GMT
ENV PG_MAJOR=9.4
# Wed, 14 Mar 2018 07:20:38 GMT
ENV PG_VERSION=9.4.17-1.pgdg80+1
# Wed, 14 Mar 2018 07:28:07 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 07:28:08 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 07:28:09 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 07:28:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Wed, 14 Mar 2018 07:28:09 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 07:28:09 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 07:28:10 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 07:28:10 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 07:28:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 07:28:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 07:28:11 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 07:28:11 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dd957f9fe9a0b1b31d7bc9a788402552921f19ca569b02ea38e6ececd7e3f`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124fe371fdba391f4fe2074b49ffbb81c42dbdc1ff5bc67be5fb104e57c1370`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 970.3 KB (970296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daf81df21c7820de665e5a906e02c03e6b1b25866ab0ba5e7a76667f78c9a01`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 7.1 MB (7131276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c433e77c3b166e3c1031e6a90d286f74f6851b02becacf6a85b0eee3cfb1f2f`  
		Last Modified: Wed, 14 Mar 2018 07:35:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48fd35b2809c5418f91b47e912004fac6f97a8c938b95b458c5010dbe631d152`  
		Last Modified: Wed, 14 Mar 2018 07:35:51 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1629b63b3e6e479e9ffe76e5d3cf8947b5167896e89149081464eae7d8033509`  
		Last Modified: Wed, 14 Mar 2018 07:36:42 GMT  
		Size: 38.8 MB (38815068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d332f6993cfe1a7618271a111ca51fc061deba554a90ecf0786d250254ff53f`  
		Last Modified: Wed, 14 Mar 2018 07:36:33 GMT  
		Size: 6.7 KB (6694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4777dcd38087bb9b93efe5ef79d9bfdbbea6b97c6d09aef6bbea7aaa36bfd3be`  
		Last Modified: Wed, 14 Mar 2018 07:36:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d0042cf419646cfc1d91f709da74d1d152a07124b6991e15460914157e32d1`  
		Last Modified: Wed, 14 Mar 2018 07:36:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0092565a9975ded3d24709983b2858059d61ce85cbed05a48158ae1a96b7e6`  
		Last Modified: Wed, 14 Mar 2018 07:36:33 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00463c3fb55367f3baeae8d031fa3f91dc558c5c108badaf028f5a2db3864b31`  
		Last Modified: Wed, 14 Mar 2018 07:36:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.17`

```console
$ docker pull postgres@sha256:de1936dd4cf43ee6fcce50a9fa42108c2ae09aa4a3f383ce2ba7793031afdc8b
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

### `postgres:9.4.17` - linux; amd64

```console
$ docker pull postgres@sha256:2424db28113bc5d94183d7d63f64206dd2d551f269682ff43535aeda0b96c8ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.3 MB (103327170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed5db6e669ffe319a2b56409f9a1daac305e3871ff2a5d22505a1d8dcab3ce82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 16:54:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 16:54:18 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 16:54:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 16:54:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 16:55:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 16:55:07 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 16:55:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 16:55:13 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 16:58:35 GMT
ENV PG_MAJOR=9.4
# Wed, 14 Mar 2018 16:58:36 GMT
ENV PG_VERSION=9.4.17-1.pgdg80+1
# Wed, 14 Mar 2018 16:59:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 16:59:34 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 16:59:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 16:59:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Wed, 14 Mar 2018 16:59:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 16:59:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 16:59:36 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 16:59:37 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 16:59:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 16:59:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 16:59:38 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 16:59:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2b55494f4f6f1f36cae8ef654cea2c2f62d54cc15d25ee42b27fc01c0a9cc8`  
		Last Modified: Wed, 14 Mar 2018 17:02:49 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de62c3a085cd468f90288db23caa38a9e990e56229d604be3a800c7c5f18f379`  
		Last Modified: Wed, 14 Mar 2018 17:02:48 GMT  
		Size: 985.2 KB (985230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e503918e3074f46543a9e57e27130a399e265ff9923bc248328f878e6936bc1a`  
		Last Modified: Wed, 14 Mar 2018 17:02:51 GMT  
		Size: 7.1 MB (7113049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a66f5a91afedccafa1a5e0aab6ba8fb4b596ed179324b6be0fb2f03fe2a680`  
		Last Modified: Wed, 14 Mar 2018 17:02:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228a46786f0c34c2428916c692279f7086fe4e13b725315d6e53921b54ee9e1c`  
		Last Modified: Wed, 14 Mar 2018 17:02:46 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096bd7895b4ff525cef7e6b91e3c1763b26cb3ee5cd4fa6a94c6668ec53e788d`  
		Last Modified: Wed, 14 Mar 2018 17:04:59 GMT  
		Size: 42.6 MB (42604749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63a2b6421e8c5d9ee564a430bbadb695b95633f7a24b4569f34801a744641a6`  
		Last Modified: Wed, 14 Mar 2018 17:04:48 GMT  
		Size: 6.7 KB (6693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44021231c1492b02734c16b00cd5e80d90899fd05ef5b85e0031f96aa9605880`  
		Last Modified: Wed, 14 Mar 2018 17:04:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f6211c740f9f267b2e7234f48d2d26c44e5b889c7d261dee3d697e8edf1d64`  
		Last Modified: Wed, 14 Mar 2018 17:04:47 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c31eadcfabeddb548fddb37b175ac368e9770bfcdb4941f3938b335ef10fdaa`  
		Last Modified: Wed, 14 Mar 2018 17:04:46 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619c67eb888e7b5dee3c96e34c8ea74b3a3f05dc77256d2dc6d06728670cbf16`  
		Last Modified: Wed, 14 Mar 2018 17:04:46 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.17` - linux; arm variant v5

```console
$ docker pull postgres@sha256:8169b73b403c5ea8517078835be8bb35fe21f4992bf9910bb37077edfa8591b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95812735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:329b8f8aedd13d0c62d6b63a63f8979ff417f9239ae369558f72801db8b5286b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:51:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 21:51:31 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 21:51:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 21:52:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 21:52:46 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 21:52:46 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 21:52:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 21:52:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 22:31:52 GMT
ENV PG_MAJOR=9.4
# Wed, 14 Mar 2018 22:31:52 GMT
ENV PG_VERSION=9.4.17-1.pgdg80+1
# Wed, 14 Mar 2018 22:48:47 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 22:48:48 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 22:48:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 22:48:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Wed, 14 Mar 2018 22:48:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 22:48:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 22:48:51 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 22:48:52 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 22:48:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 22:48:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 22:48:53 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 22:48:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c818186c2a34364ea24baef384535dfbf1f22bee54ed9f5c493ce7289b139c3`  
		Last Modified: Wed, 14 Mar 2018 23:07:23 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a4beb832950a923eb83efdb74b15472fc7930a53fbd629eb2675500a6b0632`  
		Last Modified: Wed, 14 Mar 2018 23:07:22 GMT  
		Size: 974.6 KB (974633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540ff776d130d6ca043479e195873e09381dd09ac8354c122fa99bedf93e5efd`  
		Last Modified: Wed, 14 Mar 2018 23:07:24 GMT  
		Size: 7.1 MB (7112937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8ffaf6845c130cd10f4de730a36069d6d385af3808dcd38e0dddcf0b379b0e`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfb113d6bbf190b4beb67576b3d36c93a4ad07853293ca9d1c709c8322ec05e`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b423c4e0e113ec589575718f086ae67b9e8eade68b5d486c4034587eeb41d95a`  
		Last Modified: Wed, 14 Mar 2018 23:09:22 GMT  
		Size: 36.8 MB (36819481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a26db358491a1c65999116bbcc71a8c1f65d6eeaec20366208450190c15a6c5`  
		Last Modified: Wed, 14 Mar 2018 23:09:08 GMT  
		Size: 6.7 KB (6690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8ee60b5b045acdfd1c147d7b19a6d543845a75d9d43b36eee88215aafe10cd`  
		Last Modified: Wed, 14 Mar 2018 23:09:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a260895e51aaeeeb91defa960d9f87017d6dcd631fe76fd0f1d375d15af1bae3`  
		Last Modified: Wed, 14 Mar 2018 23:09:08 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28361e7dcf09c6b47c2d39413345879feddcfb4a9c16983974250e411a4a138e`  
		Last Modified: Wed, 14 Mar 2018 23:09:09 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168d12161167ad082bc2775d5470a3c7031c0e7ee4d24c940961a09fc8d74822`  
		Last Modified: Wed, 14 Mar 2018 23:09:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.17` - linux; arm variant v7

```console
$ docker pull postgres@sha256:d9b8d64437e60ec2d900a2ef3d89b24c58e86d2a4a14b2d684a9f00369625c8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.5 MB (177481301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f95504a380fc313087a439c81563172b0390ff3f27b4f628ba1299575e69898f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 12:25:46 GMT
ADD file:6208a77a3fff4a68790f06b1b3a3e0fcb563724a9d1485d8e10592e2cf32b190 in / 
# Wed, 14 Mar 2018 12:25:46 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 03:38:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 03:38:37 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 28 Mar 2018 03:38:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Mar 2018 03:38:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 28 Mar 2018 03:38:59 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 28 Mar 2018 03:39:00 GMT
ENV LANG=en_US.utf8
# Wed, 28 Mar 2018 03:39:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Mar 2018 03:39:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 28 Mar 2018 04:25:16 GMT
ENV PG_MAJOR=9.4
# Wed, 28 Mar 2018 04:25:17 GMT
ENV PG_VERSION=9.4.17-1.pgdg80+1
# Wed, 28 Mar 2018 04:38:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 28 Mar 2018 04:38:48 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 28 Mar 2018 04:38:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 28 Mar 2018 04:38:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Wed, 28 Mar 2018 04:38:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Mar 2018 04:38:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 28 Mar 2018 04:38:50 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Mar 2018 04:38:50 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 28 Mar 2018 04:38:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 28 Mar 2018 04:38:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 04:38:51 GMT
EXPOSE 5432/tcp
# Wed, 28 Mar 2018 04:38:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8c1aa76b118f0b6f588a119501660e6c6984f1c8af222f2b04be33b64cada0c2`  
		Last Modified: Wed, 14 Mar 2018 12:37:22 GMT  
		Size: 44.1 MB (44078135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3ffdc7c95f36f6ab3e6038438d851ea38ba046a53ece176f2d35caddc75ba0`  
		Last Modified: Wed, 28 Mar 2018 04:53:11 GMT  
		Size: 9.0 MB (9002659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2af83fb1e1d8a7b0c24b01595114df2abbbb688d606c8ff88ba7694efeb348c`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 1.9 KB (1862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e342156e061add8ad9dfb369b32b557de2b001028dff9350b5fb1cf9e78f6a90`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 937.8 KB (937792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1f846fdb0dda2e9e8ae7b68700b39337abdba0a58c7bd33fab39e1ab982fed`  
		Last Modified: Wed, 28 Mar 2018 04:53:10 GMT  
		Size: 7.4 MB (7397480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f19e12270249fafb855a0d74b265a13e05a55d791b8beee9e9f2780ecca1aea`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803ad1f3db776e5dcdf942153b71efa528356ea4fae29713b6b241c9c84f655e`  
		Last Modified: Wed, 28 Mar 2018 04:53:07 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187c660ddd3283150c22fc669f6a275914cebb1d978212a5e6513ae9fc4b66c8`  
		Last Modified: Wed, 28 Mar 2018 04:55:55 GMT  
		Size: 116.0 MB (116049791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d6b4ef1471030681e1caae8b011fb6ea74bcd6665fccdd52e4d7e57fef2ed3`  
		Last Modified: Wed, 28 Mar 2018 04:55:22 GMT  
		Size: 6.7 KB (6694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8227d23f4327a706cb3c6caea2ecb517c16e057625787b7c1f7476eb7f2e4d03`  
		Last Modified: Wed, 28 Mar 2018 04:55:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b7f6c451a32069278c07fa816dacb20667e964cf0ea75ddbc0e99d713348c5`  
		Last Modified: Wed, 28 Mar 2018 04:55:24 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18dc855a0f68e10393384138b2d77ce91a0c8933cb8f5f08762cce19b9dc95b6`  
		Last Modified: Wed, 28 Mar 2018 04:55:22 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d654ccc8e3e3987d955349ba3460e03a64a961c3885f7193791a067d2cda1e4a`  
		Last Modified: Wed, 28 Mar 2018 04:55:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.17` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:ff9114d8180c82403c57ffb5dc877530db3ca17f5afaf3d7b912091c641b5c0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.4 MB (94374319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a0d00fd786b900f397334777d8e8b64b0babc200318055593f2b84ee128a5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:12:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 01:12:29 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 01:12:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 01:13:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 01:14:10 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 01:14:11 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 01:14:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 01:14:33 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 02:28:09 GMT
ENV PG_MAJOR=9.4
# Thu, 15 Mar 2018 02:28:10 GMT
ENV PG_VERSION=9.4.17-1.pgdg80+1
# Thu, 15 Mar 2018 03:01:15 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 03:01:20 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 03:01:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 03:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Thu, 15 Mar 2018 03:01:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 03:01:30 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 03:01:31 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 03:01:32 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Mar 2018 03:01:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 03:01:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 03:01:36 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 03:01:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3866bf6991dcc95d7965e2c1e7d6e6c51df401b5dd2e84626cbe44b139346e61`  
		Last Modified: Thu, 15 Mar 2018 03:37:29 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1330e3465a4cd072827c77e795c9d16bb6784d60e3c6455380999d67f5d332d0`  
		Last Modified: Thu, 15 Mar 2018 03:37:28 GMT  
		Size: 952.0 KB (952004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4740d805464e7ac9dcaa1296146892e0450eb657f1b1d3060f1f6904b79266`  
		Last Modified: Thu, 15 Mar 2018 03:37:32 GMT  
		Size: 7.1 MB (7112991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7890777de807ec652b6ee43b8737666e74cb561b53d0bf3d59efac52d5e0281`  
		Last Modified: Thu, 15 Mar 2018 03:37:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa480058f0209611cf1374aa008b40a0bd581155b8f269472a20f8f8cc756e4`  
		Last Modified: Thu, 15 Mar 2018 03:37:27 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1890a22e7814c4180f31d10b07e41538c94e609f62229f413dcf6e8451f26880`  
		Last Modified: Thu, 15 Mar 2018 03:39:48 GMT  
		Size: 36.4 MB (36360227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b709070abfc291a6494b936beda9e06e7f3f67539ebbc9e852f6c448ef626e6d`  
		Last Modified: Thu, 15 Mar 2018 03:39:33 GMT  
		Size: 6.7 KB (6694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5608689c5b876b4b6f4be596681d38feafb1bdfe7300b887fa2bbfb02ff25401`  
		Last Modified: Thu, 15 Mar 2018 03:39:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659ccba0d925d86d9d38f2f8aa24c17d760e1affacf2475c98a70664b46f60c`  
		Last Modified: Thu, 15 Mar 2018 03:39:33 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258bba7638477cebe774a7e2a47983e3f48c4115019180a13a47e7f4761b2c0b`  
		Last Modified: Thu, 15 Mar 2018 03:39:33 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191dc2ad035d7b8f7be4f8d05f541af376020759525c3a7d25fefa2cdf1433cc`  
		Last Modified: Thu, 15 Mar 2018 03:39:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.17` - linux; 386

```console
$ docker pull postgres@sha256:8828c74244afbb568b190415ae9aba7b604c69b90a994278f468c0087b1fdb35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.3 MB (105281841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f78d14b559fa4a03401ebeb7e84eb8a643be078afbd8818e31fcf68050f5de0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Mon, 19 Feb 2018 18:23:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 19 Feb 2018 18:23:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 19 Feb 2018 18:23:11 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Feb 2018 18:23:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 19 Feb 2018 18:24:16 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 19 Feb 2018 18:31:45 GMT
ENV LANG=en_US.utf8
# Mon, 19 Feb 2018 18:31:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Feb 2018 18:31:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 19 Feb 2018 18:53:57 GMT
ENV PG_MAJOR=9.4
# Sat, 03 Mar 2018 15:57:54 GMT
ENV PG_VERSION=9.4.17-1.pgdg80+1
# Sat, 03 Mar 2018 15:59:11 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 03 Mar 2018 15:59:13 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 03 Mar 2018 15:59:13 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 03 Mar 2018 15:59:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Sat, 03 Mar 2018 15:59:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 03 Mar 2018 15:59:15 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 03 Mar 2018 15:59:15 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 03 Mar 2018 15:59:15 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Sat, 03 Mar 2018 15:59:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 15:59:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 15:59:17 GMT
EXPOSE 5432/tcp
# Sat, 03 Mar 2018 15:59:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5057c70401974b44c0f1bff5a08e5b7223f2fa5b67f6919fe9d9a0272ffcb75b`  
		Last Modified: Mon, 19 Feb 2018 19:26:07 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6399b36dfc67ead03f31924ea4f72f12a74b332fa52917e427798659a7389fe`  
		Last Modified: Mon, 19 Feb 2018 19:26:05 GMT  
		Size: 964.0 KB (964020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c14510a3123271f8483e8277fd4e6edb9791c5e6088030f3c915044b860d38`  
		Last Modified: Mon, 19 Feb 2018 19:26:10 GMT  
		Size: 7.1 MB (7112907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4754edfd9320a47c2f64cae795bec1adf050f6f0efde9873d3d753973d890fe`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cafb68050a9756d26f310c634d1800ecf4fbcad70e13aba58656aa3705a7108`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ceb39eae469e494b31ab8e22bd48e36c43c63e732a3e5b8df275a7700107a74`  
		Last Modified: Sat, 03 Mar 2018 17:31:47 GMT  
		Size: 44.4 MB (44401590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636d3dc90b5da533841dbb05c9e43ca134d2ac9374224597de64222d5f3c3c2b`  
		Last Modified: Sat, 03 Mar 2018 17:31:33 GMT  
		Size: 6.7 KB (6690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885f75fe867c42769337432bcef84bc89f08963e660f1546bd5adc7219302113`  
		Last Modified: Sat, 03 Mar 2018 17:31:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8009cbef436218fdbee3459c0508e10e481066e3a52ac6463c4f6989fb3fa1`  
		Last Modified: Sat, 03 Mar 2018 17:31:32 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc10d6b6aa85e275cc50ef779c82d352be73cb40590d7347d852a1cb67dd7803`  
		Last Modified: Sat, 03 Mar 2018 17:31:32 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c386dbc9ab333d2b2b852f7be5577b9ba47a197cec4573b1c8106a1e545c4bae`  
		Last Modified: Sat, 03 Mar 2018 17:31:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.17` - linux; ppc64le

```console
$ docker pull postgres@sha256:2111cfa01c070028356da297fcf19abf817ce44391ee4b9510c5cdefb36da375
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101552239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2108bb933df95b849e5b5d9a28290cbd8cc9968a035a92a48aea3cedb17f21c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:54:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 03:54:35 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 03:54:38 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 03:57:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 03:58:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 03:58:39 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 03:58:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 03:58:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 04:15:24 GMT
ENV PG_MAJOR=9.4
# Thu, 15 Mar 2018 04:15:26 GMT
ENV PG_VERSION=9.4.17-1.pgdg80+1
# Thu, 15 Mar 2018 04:21:32 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 04:21:36 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 04:21:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 04:21:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Thu, 15 Mar 2018 04:21:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 04:21:47 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 04:21:49 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 04:21:50 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Mar 2018 04:21:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 04:21:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 04:21:57 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 04:21:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be05e26cbc28a26d00f212068d1f259dd2916fcd4e1868320d699f7dd47ed57b`  
		Last Modified: Thu, 15 Mar 2018 04:31:33 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4863081503d0792058f50abe3af50d55e383a6fdf1a734475fcd6203ca00d902`  
		Last Modified: Thu, 15 Mar 2018 04:31:32 GMT  
		Size: 954.2 KB (954250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9658240060ff7dec76f71d54ce9010a49d2b3c4bff07a0843002e7ad3682ab0b`  
		Last Modified: Thu, 15 Mar 2018 04:31:33 GMT  
		Size: 7.1 MB (7113258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecf75ba1ae59b220e897d7c3ca614052615c2eb4a302c5ff5fd98049f5d6cd5`  
		Last Modified: Thu, 15 Mar 2018 04:31:31 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a959f69f41c7310006204eff28b74c9644e16f2bf7980193df6d121024499f`  
		Last Modified: Thu, 15 Mar 2018 04:31:31 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2175217d2a3a5f946a25b242fd6026afbafed50b5de4630963795f72b319d5b`  
		Last Modified: Thu, 15 Mar 2018 04:32:50 GMT  
		Size: 41.7 MB (41651865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5790ca97a62c8af1cbfae85a7f45f3293012941407e713653475ce639386e20`  
		Last Modified: Thu, 15 Mar 2018 04:32:36 GMT  
		Size: 6.7 KB (6693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3620c7cd60c0802fe9fc8a1c0055f6d381728e97f0555e64d26b9a07cccd17`  
		Last Modified: Thu, 15 Mar 2018 04:32:36 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca310e5406125c0acbbaa490a38550529c69937843490e4c90042964f35fce2`  
		Last Modified: Thu, 15 Mar 2018 04:32:36 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e864fc4572ab915375b2fafa0faa5894b791f5e0e42a5085ae14a28e357686`  
		Last Modified: Thu, 15 Mar 2018 04:32:36 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab36f3083b09613abc632a14fb16385362866bba56f24592751d97717ee15c0`  
		Last Modified: Thu, 15 Mar 2018 04:32:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.17` - linux; s390x

```console
$ docker pull postgres@sha256:365e42e43ac61e4ab0a75e1340b9eaeca9ddede2910517d31beee820f20bdd26
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.7 MB (99727735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf84ff112975785be32491042daebe3f1f0e7c8dc4a04cd1a11d84ed9b6d317`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 07:02:44 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 07:02:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 07:03:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 07:03:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 07:03:14 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 07:03:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 07:03:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 07:20:38 GMT
ENV PG_MAJOR=9.4
# Wed, 14 Mar 2018 07:20:38 GMT
ENV PG_VERSION=9.4.17-1.pgdg80+1
# Wed, 14 Mar 2018 07:28:07 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 07:28:08 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 07:28:09 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 07:28:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Wed, 14 Mar 2018 07:28:09 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 07:28:09 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 07:28:10 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 07:28:10 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 07:28:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 07:28:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 07:28:11 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 07:28:11 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dd957f9fe9a0b1b31d7bc9a788402552921f19ca569b02ea38e6ececd7e3f`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124fe371fdba391f4fe2074b49ffbb81c42dbdc1ff5bc67be5fb104e57c1370`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 970.3 KB (970296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daf81df21c7820de665e5a906e02c03e6b1b25866ab0ba5e7a76667f78c9a01`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 7.1 MB (7131276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c433e77c3b166e3c1031e6a90d286f74f6851b02becacf6a85b0eee3cfb1f2f`  
		Last Modified: Wed, 14 Mar 2018 07:35:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48fd35b2809c5418f91b47e912004fac6f97a8c938b95b458c5010dbe631d152`  
		Last Modified: Wed, 14 Mar 2018 07:35:51 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1629b63b3e6e479e9ffe76e5d3cf8947b5167896e89149081464eae7d8033509`  
		Last Modified: Wed, 14 Mar 2018 07:36:42 GMT  
		Size: 38.8 MB (38815068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d332f6993cfe1a7618271a111ca51fc061deba554a90ecf0786d250254ff53f`  
		Last Modified: Wed, 14 Mar 2018 07:36:33 GMT  
		Size: 6.7 KB (6694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4777dcd38087bb9b93efe5ef79d9bfdbbea6b97c6d09aef6bbea7aaa36bfd3be`  
		Last Modified: Wed, 14 Mar 2018 07:36:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d0042cf419646cfc1d91f709da74d1d152a07124b6991e15460914157e32d1`  
		Last Modified: Wed, 14 Mar 2018 07:36:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0092565a9975ded3d24709983b2858059d61ce85cbed05a48158ae1a96b7e6`  
		Last Modified: Wed, 14 Mar 2018 07:36:33 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00463c3fb55367f3baeae8d031fa3f91dc558c5c108badaf028f5a2db3864b31`  
		Last Modified: Wed, 14 Mar 2018 07:36:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.17-alpine`

```console
$ docker pull postgres@sha256:fceaec1ddcf0c3e8d99a6003665c07d7657206293fb110a55e3c6eae51ae7746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4.17-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:fb13709633c0d83175686eb4b9347e3b2cac5f80eef475ac2dce5defc9ce0bf8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14321634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f556b7efa259ddc3539aeb97a69e5301c9b225bcfd3c9bfd8ad98edac6153aed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:26:41 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Jan 2018 04:26:41 GMT
ENV LANG=en_US.utf8
# Wed, 10 Jan 2018 04:26:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Jan 2018 04:33:41 GMT
ENV PG_MAJOR=9.4
# Fri, 02 Mar 2018 22:17:20 GMT
ENV PG_VERSION=9.4.17
# Fri, 02 Mar 2018 22:17:20 GMT
ENV PG_SHA256=7a320cd335052b840d209dc9688f09965763351c590e3cc7bf577591179fd7c6
# Fri, 02 Mar 2018 22:19:16 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 02 Mar 2018 22:19:16 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 02 Mar 2018 22:19:17 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 02 Mar 2018 22:19:17 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 02 Mar 2018 22:19:18 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 02 Mar 2018 22:19:18 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 02 Mar 2018 22:19:19 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Fri, 02 Mar 2018 22:19:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 02 Mar 2018 22:19:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 22:19:20 GMT
EXPOSE 5432/tcp
# Fri, 02 Mar 2018 22:19:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bf519c70dfc41fc325a4d9771bb0f55ffd85a4b86bfa1d7b3bbc69d2fc2d8c`  
		Last Modified: Wed, 10 Jan 2018 04:41:24 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af56c798cc1e0da2941d090847e9dcd3bc175d165ac7a503cc7ebfed3d63d04`  
		Last Modified: Wed, 10 Jan 2018 04:41:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7704372bf5b156596757f88394a037ceb5612ef13a9abfe2b64bd522273546`  
		Last Modified: Fri, 02 Mar 2018 22:29:40 GMT  
		Size: 12.3 MB (12342326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd007a3959b2f8180f972e3367af0a993a8b19e65d0a31301585d9d4a6d57f2e`  
		Last Modified: Fri, 02 Mar 2018 22:29:36 GMT  
		Size: 6.7 KB (6660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6019ed394ad9e8dc35bd224d59c3b9444ab391f12c98dc7b5d820f9a1b11b0`  
		Last Modified: Fri, 02 Mar 2018 22:29:36 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e6bf44b26e5b30367bf62a0a5163ccdbaa64e14c08f8f81d7cac333c246d00`  
		Last Modified: Fri, 02 Mar 2018 22:29:36 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1ca07704b39c4a5c9e4265ffd5761a08f520b65fe4cd83046f44e6f9309b8`  
		Last Modified: Fri, 02 Mar 2018 22:29:36 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54493d9c2ac0de8cdafc87affffa3463cde40ac2427479ff5762d665d16f2dc`  
		Last Modified: Fri, 02 Mar 2018 22:29:36 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:fceaec1ddcf0c3e8d99a6003665c07d7657206293fb110a55e3c6eae51ae7746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:fb13709633c0d83175686eb4b9347e3b2cac5f80eef475ac2dce5defc9ce0bf8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14321634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f556b7efa259ddc3539aeb97a69e5301c9b225bcfd3c9bfd8ad98edac6153aed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:26:41 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Jan 2018 04:26:41 GMT
ENV LANG=en_US.utf8
# Wed, 10 Jan 2018 04:26:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Jan 2018 04:33:41 GMT
ENV PG_MAJOR=9.4
# Fri, 02 Mar 2018 22:17:20 GMT
ENV PG_VERSION=9.4.17
# Fri, 02 Mar 2018 22:17:20 GMT
ENV PG_SHA256=7a320cd335052b840d209dc9688f09965763351c590e3cc7bf577591179fd7c6
# Fri, 02 Mar 2018 22:19:16 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 02 Mar 2018 22:19:16 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 02 Mar 2018 22:19:17 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 02 Mar 2018 22:19:17 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 02 Mar 2018 22:19:18 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 02 Mar 2018 22:19:18 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 02 Mar 2018 22:19:19 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Fri, 02 Mar 2018 22:19:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 02 Mar 2018 22:19:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 22:19:20 GMT
EXPOSE 5432/tcp
# Fri, 02 Mar 2018 22:19:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bf519c70dfc41fc325a4d9771bb0f55ffd85a4b86bfa1d7b3bbc69d2fc2d8c`  
		Last Modified: Wed, 10 Jan 2018 04:41:24 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af56c798cc1e0da2941d090847e9dcd3bc175d165ac7a503cc7ebfed3d63d04`  
		Last Modified: Wed, 10 Jan 2018 04:41:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7704372bf5b156596757f88394a037ceb5612ef13a9abfe2b64bd522273546`  
		Last Modified: Fri, 02 Mar 2018 22:29:40 GMT  
		Size: 12.3 MB (12342326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd007a3959b2f8180f972e3367af0a993a8b19e65d0a31301585d9d4a6d57f2e`  
		Last Modified: Fri, 02 Mar 2018 22:29:36 GMT  
		Size: 6.7 KB (6660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6019ed394ad9e8dc35bd224d59c3b9444ab391f12c98dc7b5d820f9a1b11b0`  
		Last Modified: Fri, 02 Mar 2018 22:29:36 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e6bf44b26e5b30367bf62a0a5163ccdbaa64e14c08f8f81d7cac333c246d00`  
		Last Modified: Fri, 02 Mar 2018 22:29:36 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1ca07704b39c4a5c9e4265ffd5761a08f520b65fe4cd83046f44e6f9309b8`  
		Last Modified: Fri, 02 Mar 2018 22:29:36 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54493d9c2ac0de8cdafc87affffa3463cde40ac2427479ff5762d665d16f2dc`  
		Last Modified: Fri, 02 Mar 2018 22:29:36 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:ab00843d1a6770f8f79684729aa9f408b115f2ee949ac584f7e1b67a92e2931f
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

### `postgres:9.5` - linux; amd64

```console
$ docker pull postgres@sha256:0b137e3455847b43071ac411b29280bb2b81535e497ff9a11a99f55addef0b77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.7 MB (103669158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c5aa9a16b8b6eb4ecad27514270339a0ab454f2f57cd06b2b97344a2ddb2864`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 16:54:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 16:54:18 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 16:54:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 16:54:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 16:55:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 16:55:07 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 16:55:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 16:55:13 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 16:56:39 GMT
ENV PG_MAJOR=9.5
# Wed, 14 Mar 2018 16:56:39 GMT
ENV PG_VERSION=9.5.12-1.pgdg80+1
# Wed, 14 Mar 2018 16:57:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 16:57:34 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 16:57:34 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 16:57:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Wed, 14 Mar 2018 16:57:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 16:57:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 16:57:36 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 16:57:36 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 16:57:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 16:57:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 16:57:37 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 16:57:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2b55494f4f6f1f36cae8ef654cea2c2f62d54cc15d25ee42b27fc01c0a9cc8`  
		Last Modified: Wed, 14 Mar 2018 17:02:49 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de62c3a085cd468f90288db23caa38a9e990e56229d604be3a800c7c5f18f379`  
		Last Modified: Wed, 14 Mar 2018 17:02:48 GMT  
		Size: 985.2 KB (985230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e503918e3074f46543a9e57e27130a399e265ff9923bc248328f878e6936bc1a`  
		Last Modified: Wed, 14 Mar 2018 17:02:51 GMT  
		Size: 7.1 MB (7113049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a66f5a91afedccafa1a5e0aab6ba8fb4b596ed179324b6be0fb2f03fe2a680`  
		Last Modified: Wed, 14 Mar 2018 17:02:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228a46786f0c34c2428916c692279f7086fe4e13b725315d6e53921b54ee9e1c`  
		Last Modified: Wed, 14 Mar 2018 17:02:46 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40ee819d9600467c8b52f75f4dbeb7e390b10137c56f2ebf04d247babf4e2e8`  
		Last Modified: Wed, 14 Mar 2018 17:04:06 GMT  
		Size: 42.9 MB (42946608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4140a8cc9ed00dd7b7acb43091cd703484d049b874c65cc1cdd4a228501d087`  
		Last Modified: Wed, 14 Mar 2018 17:03:54 GMT  
		Size: 6.8 KB (6830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee6a04ac0dafb038efd209f92fc6abffc93424bb4921459fc808f97e01feb94`  
		Last Modified: Wed, 14 Mar 2018 17:03:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3583a4040a6879b51fd248a5916b75ac08d37e0eabdd76d37bd5d82e3171f907`  
		Last Modified: Wed, 14 Mar 2018 17:03:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d642fbd9e33bfa1ece101b54464bcb9c365af3ede3acbfe62a0afc8655fff83d`  
		Last Modified: Wed, 14 Mar 2018 17:03:54 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207403eaf46e064769f8a8f088f6817e0fb7dc9bc78b040ea8fc2e3f8ac663e3`  
		Last Modified: Wed, 14 Mar 2018 17:03:54 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; arm variant v5

```console
$ docker pull postgres@sha256:3e3621234e251a03c8cf4048e23f66bc054f6681554f7acb9568b978b1c7098f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96134946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d8994e469bf46150007a0f503fa936a7d52e6dffb0f379721b18cb9515fff81`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:51:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 21:51:31 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 21:51:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 21:52:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 21:52:46 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 21:52:46 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 21:52:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 21:52:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 22:12:51 GMT
ENV PG_MAJOR=9.5
# Wed, 14 Mar 2018 22:12:51 GMT
ENV PG_VERSION=9.5.12-1.pgdg80+1
# Wed, 14 Mar 2018 22:30:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 22:30:45 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 22:30:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 22:31:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Wed, 14 Mar 2018 22:31:02 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 22:31:03 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 22:31:11 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 22:31:12 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 22:31:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 22:31:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 22:31:21 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 22:31:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c818186c2a34364ea24baef384535dfbf1f22bee54ed9f5c493ce7289b139c3`  
		Last Modified: Wed, 14 Mar 2018 23:07:23 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a4beb832950a923eb83efdb74b15472fc7930a53fbd629eb2675500a6b0632`  
		Last Modified: Wed, 14 Mar 2018 23:07:22 GMT  
		Size: 974.6 KB (974633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540ff776d130d6ca043479e195873e09381dd09ac8354c122fa99bedf93e5efd`  
		Last Modified: Wed, 14 Mar 2018 23:07:24 GMT  
		Size: 7.1 MB (7112937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8ffaf6845c130cd10f4de730a36069d6d385af3808dcd38e0dddcf0b379b0e`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfb113d6bbf190b4beb67576b3d36c93a4ad07853293ca9d1c709c8322ec05e`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83fc992f34ed8fa9b5cc30627bdbed9406e8ac10f0b0522593cd223e49242dc`  
		Last Modified: Wed, 14 Mar 2018 23:08:39 GMT  
		Size: 37.1 MB (37141540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fbe78b39ecc1e4f0fba1a58ebbd07adff634293cfd83a2557dab57076b3429`  
		Last Modified: Wed, 14 Mar 2018 23:08:27 GMT  
		Size: 6.8 KB (6835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3dc1976bc6dd66a91649777c330c9f647bd736d7e9e5380177e6a99d7077ef3`  
		Last Modified: Wed, 14 Mar 2018 23:08:26 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676af73941a8ba16bcba440afd13020958942e3a2e1c72d0afe3db4c5d6af53e`  
		Last Modified: Wed, 14 Mar 2018 23:08:26 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92c73992a42703842051044868be6a17d1180eeabe42782063f8cf0f0142c8c`  
		Last Modified: Wed, 14 Mar 2018 23:08:26 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1cc87bbb2c46220cf26fa77f5ae666610147610d0381cc24f2de5c5a9bcf6a`  
		Last Modified: Wed, 14 Mar 2018 23:08:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; arm variant v7

```console
$ docker pull postgres@sha256:1a459ffd39008c9eccd21fa217f9dd1edf7e91bf4c4d7a6be0064a6eadf29e91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177766987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:823bfdcf7d222f8740ea79e6d9db392cde6df909740a28ed44b4390bd3f3d31f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 12:25:46 GMT
ADD file:6208a77a3fff4a68790f06b1b3a3e0fcb563724a9d1485d8e10592e2cf32b190 in / 
# Wed, 14 Mar 2018 12:25:46 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 03:38:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 03:38:37 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 28 Mar 2018 03:38:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Mar 2018 03:38:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 28 Mar 2018 03:38:59 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 28 Mar 2018 03:39:00 GMT
ENV LANG=en_US.utf8
# Wed, 28 Mar 2018 03:39:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Mar 2018 03:39:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 28 Mar 2018 04:10:27 GMT
ENV PG_MAJOR=9.5
# Wed, 28 Mar 2018 04:10:27 GMT
ENV PG_VERSION=9.5.12-1.pgdg80+1
# Wed, 28 Mar 2018 04:24:43 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 28 Mar 2018 04:24:44 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 28 Mar 2018 04:24:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 28 Mar 2018 04:24:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Wed, 28 Mar 2018 04:24:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Mar 2018 04:24:46 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 28 Mar 2018 04:24:46 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Mar 2018 04:24:47 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 28 Mar 2018 04:24:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 28 Mar 2018 04:24:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 04:24:48 GMT
EXPOSE 5432/tcp
# Wed, 28 Mar 2018 04:24:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8c1aa76b118f0b6f588a119501660e6c6984f1c8af222f2b04be33b64cada0c2`  
		Last Modified: Wed, 14 Mar 2018 12:37:22 GMT  
		Size: 44.1 MB (44078135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3ffdc7c95f36f6ab3e6038438d851ea38ba046a53ece176f2d35caddc75ba0`  
		Last Modified: Wed, 28 Mar 2018 04:53:11 GMT  
		Size: 9.0 MB (9002659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2af83fb1e1d8a7b0c24b01595114df2abbbb688d606c8ff88ba7694efeb348c`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 1.9 KB (1862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e342156e061add8ad9dfb369b32b557de2b001028dff9350b5fb1cf9e78f6a90`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 937.8 KB (937792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1f846fdb0dda2e9e8ae7b68700b39337abdba0a58c7bd33fab39e1ab982fed`  
		Last Modified: Wed, 28 Mar 2018 04:53:10 GMT  
		Size: 7.4 MB (7397480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f19e12270249fafb855a0d74b265a13e05a55d791b8beee9e9f2780ecca1aea`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803ad1f3db776e5dcdf942153b71efa528356ea4fae29713b6b241c9c84f655e`  
		Last Modified: Wed, 28 Mar 2018 04:53:07 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8dfdb22cb1383a9fdf19541762c2dfb8f962499e5d23a038a8f0fb5b0b65407`  
		Last Modified: Wed, 28 Mar 2018 04:55:12 GMT  
		Size: 116.3 MB (116335332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ad5ec37178bbfc3ee46865183461ea91268956892f67a21c482c0b9c433a8d`  
		Last Modified: Wed, 28 Mar 2018 04:54:38 GMT  
		Size: 6.8 KB (6838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2fcd559b6eefc6115dd5ebbfd0b9054d0b3ff6618b0cebd28a8323c6242002`  
		Last Modified: Wed, 28 Mar 2018 04:54:38 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b184fefcb7b8332a6e585c892d129de9776954faf0b8f45a79adae6a14fbf4f1`  
		Last Modified: Wed, 28 Mar 2018 04:54:38 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e24529b0c42bd00bf86647e254b97db11ac286d130cbd561b6874b1228706c`  
		Last Modified: Wed, 28 Mar 2018 04:54:38 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd611f07d0cc8bf0c0f58e73ae726685546732cc3fe375bb2c50f673cdb4bef`  
		Last Modified: Wed, 28 Mar 2018 04:54:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:ee711d0e0c8ca96c624ac824c786444c27fb3d9abf507da899201adff76d2428
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 MB (94695843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdd5475800ba879657110a2d7c86c9cc320ec4fc58c0edbc683f57d598c2313`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:12:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 01:12:29 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 01:12:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 01:13:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 01:14:10 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 01:14:11 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 01:14:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 01:14:33 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 01:53:22 GMT
ENV PG_MAJOR=9.5
# Thu, 15 Mar 2018 01:53:23 GMT
ENV PG_VERSION=9.5.12-1.pgdg80+1
# Thu, 15 Mar 2018 02:26:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 02:26:57 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 02:27:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 02:27:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Thu, 15 Mar 2018 02:27:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 02:27:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 02:27:25 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 02:27:28 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Mar 2018 02:27:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 02:27:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 02:27:42 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 02:27:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3866bf6991dcc95d7965e2c1e7d6e6c51df401b5dd2e84626cbe44b139346e61`  
		Last Modified: Thu, 15 Mar 2018 03:37:29 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1330e3465a4cd072827c77e795c9d16bb6784d60e3c6455380999d67f5d332d0`  
		Last Modified: Thu, 15 Mar 2018 03:37:28 GMT  
		Size: 952.0 KB (952004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4740d805464e7ac9dcaa1296146892e0450eb657f1b1d3060f1f6904b79266`  
		Last Modified: Thu, 15 Mar 2018 03:37:32 GMT  
		Size: 7.1 MB (7112991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7890777de807ec652b6ee43b8737666e74cb561b53d0bf3d59efac52d5e0281`  
		Last Modified: Thu, 15 Mar 2018 03:37:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa480058f0209611cf1374aa008b40a0bd581155b8f269472a20f8f8cc756e4`  
		Last Modified: Thu, 15 Mar 2018 03:37:27 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581536dfe9f6addeddcd0f1798905f15c745f67cc15cbb426cbb9fb9325c23c4`  
		Last Modified: Thu, 15 Mar 2018 03:38:54 GMT  
		Size: 36.7 MB (36681610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8be8b1e16d4639bb3795cc96f72d814826c01cc962d466b4e406bbc118a79d`  
		Last Modified: Thu, 15 Mar 2018 03:38:38 GMT  
		Size: 6.8 KB (6837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68ab2f6e621ea4eaf56f9a6269d637afa452023b31fc32cd6603daca89ca2b9`  
		Last Modified: Thu, 15 Mar 2018 03:38:38 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a88717da8529d8a3bad542b54ff2fe97799fb8a751664339c130d4958586471`  
		Last Modified: Thu, 15 Mar 2018 03:38:39 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d342c933dec7eabdd23a4c682da11074967db2f611a4e7401693f214a23991`  
		Last Modified: Thu, 15 Mar 2018 03:38:38 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644fa0de77bb6642957200ab09224a592f4ad88382ae2b473e413861175c0d6`  
		Last Modified: Thu, 15 Mar 2018 03:38:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; 386

```console
$ docker pull postgres@sha256:bf97f99a2f39573091efad083afb80bb724eb4a6504379a81ae947b77464079e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.6 MB (105635391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61e8600c513bcdb1fac29bca3775d79be0570a9caa4cd419197550e44f41f170`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Mon, 19 Feb 2018 18:23:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 19 Feb 2018 18:23:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 19 Feb 2018 18:23:11 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Feb 2018 18:23:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 19 Feb 2018 18:24:16 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 19 Feb 2018 18:31:45 GMT
ENV LANG=en_US.utf8
# Mon, 19 Feb 2018 18:31:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Feb 2018 18:31:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 19 Feb 2018 18:43:12 GMT
ENV PG_MAJOR=9.5
# Sat, 03 Mar 2018 15:50:45 GMT
ENV PG_VERSION=9.5.12-1.pgdg80+1
# Sat, 03 Mar 2018 15:52:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 03 Mar 2018 15:52:09 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 03 Mar 2018 15:52:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 03 Mar 2018 15:52:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Sat, 03 Mar 2018 15:52:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 03 Mar 2018 15:52:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 03 Mar 2018 15:52:12 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 03 Mar 2018 15:52:12 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Sat, 03 Mar 2018 15:52:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 15:52:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 15:52:13 GMT
EXPOSE 5432/tcp
# Sat, 03 Mar 2018 15:52:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5057c70401974b44c0f1bff5a08e5b7223f2fa5b67f6919fe9d9a0272ffcb75b`  
		Last Modified: Mon, 19 Feb 2018 19:26:07 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6399b36dfc67ead03f31924ea4f72f12a74b332fa52917e427798659a7389fe`  
		Last Modified: Mon, 19 Feb 2018 19:26:05 GMT  
		Size: 964.0 KB (964020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c14510a3123271f8483e8277fd4e6edb9791c5e6088030f3c915044b860d38`  
		Last Modified: Mon, 19 Feb 2018 19:26:10 GMT  
		Size: 7.1 MB (7112907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4754edfd9320a47c2f64cae795bec1adf050f6f0efde9873d3d753973d890fe`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cafb68050a9756d26f310c634d1800ecf4fbcad70e13aba58656aa3705a7108`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd52a509d7f42df432784f3a2a3e1f84d233609c367f8243245f9264f756da0`  
		Last Modified: Sat, 03 Mar 2018 17:20:50 GMT  
		Size: 44.8 MB (44754997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887bbd3a388d2cfa54e45831fb751a9785756be85b54ea76df4f21a5cd1f61c3`  
		Last Modified: Sat, 03 Mar 2018 17:20:36 GMT  
		Size: 6.8 KB (6833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b72a72e9739e7262d2a64b959ac1ce7a8eb71cb9935c11e1190d26456611c74`  
		Last Modified: Sat, 03 Mar 2018 17:20:36 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3b78e6f7a04c19530b33e65888e41bff4bb2f006c0ccac7bf0f5e253222e6`  
		Last Modified: Sat, 03 Mar 2018 17:20:36 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ca72106c19831138a9fad0c8023a808dd52043d27af4ad83ef9edc40fba485`  
		Last Modified: Sat, 03 Mar 2018 17:20:35 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afe7f199fd7145299c4ef0040f4d1cd7ccc41250b82d96fdcefe3692bd078b6`  
		Last Modified: Sat, 03 Mar 2018 17:20:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; ppc64le

```console
$ docker pull postgres@sha256:ca83fee42142761b26e6791299e3aafac8a6ab755d84bd7a14e0ca831546b85e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.9 MB (101880677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9959d827ad2d52b1ed61a5c30bcdf86b4d40fa66b5724ac01963676f1d87c5f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:54:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 03:54:35 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 03:54:38 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 03:57:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 03:58:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 03:58:39 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 03:58:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 03:58:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 04:06:57 GMT
ENV PG_MAJOR=9.5
# Thu, 15 Mar 2018 04:06:59 GMT
ENV PG_VERSION=9.5.12-1.pgdg80+1
# Thu, 15 Mar 2018 04:14:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 04:14:29 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 04:14:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 04:14:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Thu, 15 Mar 2018 04:14:42 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 04:14:46 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 04:14:49 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 04:14:51 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Mar 2018 04:14:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 04:14:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 04:15:01 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 04:15:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be05e26cbc28a26d00f212068d1f259dd2916fcd4e1868320d699f7dd47ed57b`  
		Last Modified: Thu, 15 Mar 2018 04:31:33 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4863081503d0792058f50abe3af50d55e383a6fdf1a734475fcd6203ca00d902`  
		Last Modified: Thu, 15 Mar 2018 04:31:32 GMT  
		Size: 954.2 KB (954250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9658240060ff7dec76f71d54ce9010a49d2b3c4bff07a0843002e7ad3682ab0b`  
		Last Modified: Thu, 15 Mar 2018 04:31:33 GMT  
		Size: 7.1 MB (7113258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecf75ba1ae59b220e897d7c3ca614052615c2eb4a302c5ff5fd98049f5d6cd5`  
		Last Modified: Thu, 15 Mar 2018 04:31:31 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a959f69f41c7310006204eff28b74c9644e16f2bf7980193df6d121024499f`  
		Last Modified: Thu, 15 Mar 2018 04:31:31 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d4884820a18db157ae471099ddeaa0879348ea7165aff6c64dfd079a0e83d0`  
		Last Modified: Thu, 15 Mar 2018 04:32:19 GMT  
		Size: 42.0 MB (41980165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfa5310183d94bee732b0e5b5a8a7b262c03c3135046fbc87c674a01c6750a5`  
		Last Modified: Thu, 15 Mar 2018 04:32:06 GMT  
		Size: 6.8 KB (6831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedbe7d6e48ba981bf601a963477e780973a0ec64790ab5e7ea90ea44690c468`  
		Last Modified: Thu, 15 Mar 2018 04:32:06 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c8eb2594a45cf5795a9414d214567fa3fc9c509dfa906c935868933a74fd3c`  
		Last Modified: Thu, 15 Mar 2018 04:32:06 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c9ad028195fa28734fd1e037ace4be19123af326a0d7c401217dd4bf18865b`  
		Last Modified: Thu, 15 Mar 2018 04:32:06 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51dd1e6392fde15626be8024a782b8420e11c534e16e2a18a0bb3ce37789ba9`  
		Last Modified: Thu, 15 Mar 2018 04:32:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; s390x

```console
$ docker pull postgres@sha256:da694c73ddd7425c66dec89b9a114b92faf75580a4ac9208dbde02dba738ae37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.1 MB (100085056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82d255343688b9474064d56189b9af4f1f13874a841f12244bf795d98719be05`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 07:02:44 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 07:02:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 07:03:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 07:03:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 07:03:14 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 07:03:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 07:03:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 07:12:12 GMT
ENV PG_MAJOR=9.5
# Wed, 14 Mar 2018 07:12:12 GMT
ENV PG_VERSION=9.5.12-1.pgdg80+1
# Wed, 14 Mar 2018 07:20:22 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 07:20:23 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 07:20:23 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 07:20:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Wed, 14 Mar 2018 07:20:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 07:20:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 07:20:27 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 07:20:27 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 07:20:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 07:20:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 07:20:28 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 07:20:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dd957f9fe9a0b1b31d7bc9a788402552921f19ca569b02ea38e6ececd7e3f`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124fe371fdba391f4fe2074b49ffbb81c42dbdc1ff5bc67be5fb104e57c1370`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 970.3 KB (970296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daf81df21c7820de665e5a906e02c03e6b1b25866ab0ba5e7a76667f78c9a01`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 7.1 MB (7131276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c433e77c3b166e3c1031e6a90d286f74f6851b02becacf6a85b0eee3cfb1f2f`  
		Last Modified: Wed, 14 Mar 2018 07:35:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48fd35b2809c5418f91b47e912004fac6f97a8c938b95b458c5010dbe631d152`  
		Last Modified: Wed, 14 Mar 2018 07:35:51 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4eaf01e84aac00c58cdfbf351ec1009a4131ade972a9ff006b496428bf6cec`  
		Last Modified: Wed, 14 Mar 2018 07:36:23 GMT  
		Size: 39.2 MB (39172242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8af987bd96fb260b4e6e2c18edac9cc0d7b3eecdb2dae4d7d1891d03c27e82`  
		Last Modified: Wed, 14 Mar 2018 07:36:14 GMT  
		Size: 6.8 KB (6836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2136909b90a6a0e42661f99aa28c990082a290d840b6e884325cf7c35f57a23`  
		Last Modified: Wed, 14 Mar 2018 07:36:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4063227a9aa244049922a6f9188a5c7a9f88357953bf4aa34f969a130484ebe`  
		Last Modified: Wed, 14 Mar 2018 07:36:14 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1cf986b3ec105c91abd25e0ad0a3dc509d9e05fb114c9ae73fdc1c7d191de1`  
		Last Modified: Wed, 14 Mar 2018 07:36:14 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ebbcdc846d31987e075a7a94f6ebbe7e6850b81a801aa8b574c3bd7a41cee9`  
		Last Modified: Wed, 14 Mar 2018 07:36:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.12`

```console
$ docker pull postgres@sha256:ab00843d1a6770f8f79684729aa9f408b115f2ee949ac584f7e1b67a92e2931f
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

### `postgres:9.5.12` - linux; amd64

```console
$ docker pull postgres@sha256:0b137e3455847b43071ac411b29280bb2b81535e497ff9a11a99f55addef0b77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.7 MB (103669158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c5aa9a16b8b6eb4ecad27514270339a0ab454f2f57cd06b2b97344a2ddb2864`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 16:54:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 16:54:18 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 16:54:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 16:54:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 16:55:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 16:55:07 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 16:55:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 16:55:13 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 16:56:39 GMT
ENV PG_MAJOR=9.5
# Wed, 14 Mar 2018 16:56:39 GMT
ENV PG_VERSION=9.5.12-1.pgdg80+1
# Wed, 14 Mar 2018 16:57:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 16:57:34 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 16:57:34 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 16:57:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Wed, 14 Mar 2018 16:57:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 16:57:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 16:57:36 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 16:57:36 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 16:57:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 16:57:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 16:57:37 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 16:57:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2b55494f4f6f1f36cae8ef654cea2c2f62d54cc15d25ee42b27fc01c0a9cc8`  
		Last Modified: Wed, 14 Mar 2018 17:02:49 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de62c3a085cd468f90288db23caa38a9e990e56229d604be3a800c7c5f18f379`  
		Last Modified: Wed, 14 Mar 2018 17:02:48 GMT  
		Size: 985.2 KB (985230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e503918e3074f46543a9e57e27130a399e265ff9923bc248328f878e6936bc1a`  
		Last Modified: Wed, 14 Mar 2018 17:02:51 GMT  
		Size: 7.1 MB (7113049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a66f5a91afedccafa1a5e0aab6ba8fb4b596ed179324b6be0fb2f03fe2a680`  
		Last Modified: Wed, 14 Mar 2018 17:02:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228a46786f0c34c2428916c692279f7086fe4e13b725315d6e53921b54ee9e1c`  
		Last Modified: Wed, 14 Mar 2018 17:02:46 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40ee819d9600467c8b52f75f4dbeb7e390b10137c56f2ebf04d247babf4e2e8`  
		Last Modified: Wed, 14 Mar 2018 17:04:06 GMT  
		Size: 42.9 MB (42946608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4140a8cc9ed00dd7b7acb43091cd703484d049b874c65cc1cdd4a228501d087`  
		Last Modified: Wed, 14 Mar 2018 17:03:54 GMT  
		Size: 6.8 KB (6830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee6a04ac0dafb038efd209f92fc6abffc93424bb4921459fc808f97e01feb94`  
		Last Modified: Wed, 14 Mar 2018 17:03:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3583a4040a6879b51fd248a5916b75ac08d37e0eabdd76d37bd5d82e3171f907`  
		Last Modified: Wed, 14 Mar 2018 17:03:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d642fbd9e33bfa1ece101b54464bcb9c365af3ede3acbfe62a0afc8655fff83d`  
		Last Modified: Wed, 14 Mar 2018 17:03:54 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207403eaf46e064769f8a8f088f6817e0fb7dc9bc78b040ea8fc2e3f8ac663e3`  
		Last Modified: Wed, 14 Mar 2018 17:03:54 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.12` - linux; arm variant v5

```console
$ docker pull postgres@sha256:3e3621234e251a03c8cf4048e23f66bc054f6681554f7acb9568b978b1c7098f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96134946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d8994e469bf46150007a0f503fa936a7d52e6dffb0f379721b18cb9515fff81`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:51:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 21:51:31 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 21:51:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 21:52:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 21:52:46 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 21:52:46 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 21:52:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 21:52:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 22:12:51 GMT
ENV PG_MAJOR=9.5
# Wed, 14 Mar 2018 22:12:51 GMT
ENV PG_VERSION=9.5.12-1.pgdg80+1
# Wed, 14 Mar 2018 22:30:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 22:30:45 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 22:30:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 22:31:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Wed, 14 Mar 2018 22:31:02 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 22:31:03 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 22:31:11 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 22:31:12 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 22:31:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 22:31:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 22:31:21 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 22:31:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c818186c2a34364ea24baef384535dfbf1f22bee54ed9f5c493ce7289b139c3`  
		Last Modified: Wed, 14 Mar 2018 23:07:23 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a4beb832950a923eb83efdb74b15472fc7930a53fbd629eb2675500a6b0632`  
		Last Modified: Wed, 14 Mar 2018 23:07:22 GMT  
		Size: 974.6 KB (974633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540ff776d130d6ca043479e195873e09381dd09ac8354c122fa99bedf93e5efd`  
		Last Modified: Wed, 14 Mar 2018 23:07:24 GMT  
		Size: 7.1 MB (7112937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8ffaf6845c130cd10f4de730a36069d6d385af3808dcd38e0dddcf0b379b0e`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfb113d6bbf190b4beb67576b3d36c93a4ad07853293ca9d1c709c8322ec05e`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83fc992f34ed8fa9b5cc30627bdbed9406e8ac10f0b0522593cd223e49242dc`  
		Last Modified: Wed, 14 Mar 2018 23:08:39 GMT  
		Size: 37.1 MB (37141540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fbe78b39ecc1e4f0fba1a58ebbd07adff634293cfd83a2557dab57076b3429`  
		Last Modified: Wed, 14 Mar 2018 23:08:27 GMT  
		Size: 6.8 KB (6835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3dc1976bc6dd66a91649777c330c9f647bd736d7e9e5380177e6a99d7077ef3`  
		Last Modified: Wed, 14 Mar 2018 23:08:26 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676af73941a8ba16bcba440afd13020958942e3a2e1c72d0afe3db4c5d6af53e`  
		Last Modified: Wed, 14 Mar 2018 23:08:26 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92c73992a42703842051044868be6a17d1180eeabe42782063f8cf0f0142c8c`  
		Last Modified: Wed, 14 Mar 2018 23:08:26 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1cc87bbb2c46220cf26fa77f5ae666610147610d0381cc24f2de5c5a9bcf6a`  
		Last Modified: Wed, 14 Mar 2018 23:08:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.12` - linux; arm variant v7

```console
$ docker pull postgres@sha256:1a459ffd39008c9eccd21fa217f9dd1edf7e91bf4c4d7a6be0064a6eadf29e91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177766987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:823bfdcf7d222f8740ea79e6d9db392cde6df909740a28ed44b4390bd3f3d31f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 12:25:46 GMT
ADD file:6208a77a3fff4a68790f06b1b3a3e0fcb563724a9d1485d8e10592e2cf32b190 in / 
# Wed, 14 Mar 2018 12:25:46 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 03:38:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 03:38:37 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 28 Mar 2018 03:38:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Mar 2018 03:38:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 28 Mar 2018 03:38:59 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 28 Mar 2018 03:39:00 GMT
ENV LANG=en_US.utf8
# Wed, 28 Mar 2018 03:39:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Mar 2018 03:39:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 28 Mar 2018 04:10:27 GMT
ENV PG_MAJOR=9.5
# Wed, 28 Mar 2018 04:10:27 GMT
ENV PG_VERSION=9.5.12-1.pgdg80+1
# Wed, 28 Mar 2018 04:24:43 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 28 Mar 2018 04:24:44 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 28 Mar 2018 04:24:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 28 Mar 2018 04:24:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Wed, 28 Mar 2018 04:24:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Mar 2018 04:24:46 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 28 Mar 2018 04:24:46 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Mar 2018 04:24:47 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 28 Mar 2018 04:24:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 28 Mar 2018 04:24:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 04:24:48 GMT
EXPOSE 5432/tcp
# Wed, 28 Mar 2018 04:24:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8c1aa76b118f0b6f588a119501660e6c6984f1c8af222f2b04be33b64cada0c2`  
		Last Modified: Wed, 14 Mar 2018 12:37:22 GMT  
		Size: 44.1 MB (44078135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3ffdc7c95f36f6ab3e6038438d851ea38ba046a53ece176f2d35caddc75ba0`  
		Last Modified: Wed, 28 Mar 2018 04:53:11 GMT  
		Size: 9.0 MB (9002659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2af83fb1e1d8a7b0c24b01595114df2abbbb688d606c8ff88ba7694efeb348c`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 1.9 KB (1862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e342156e061add8ad9dfb369b32b557de2b001028dff9350b5fb1cf9e78f6a90`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 937.8 KB (937792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1f846fdb0dda2e9e8ae7b68700b39337abdba0a58c7bd33fab39e1ab982fed`  
		Last Modified: Wed, 28 Mar 2018 04:53:10 GMT  
		Size: 7.4 MB (7397480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f19e12270249fafb855a0d74b265a13e05a55d791b8beee9e9f2780ecca1aea`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803ad1f3db776e5dcdf942153b71efa528356ea4fae29713b6b241c9c84f655e`  
		Last Modified: Wed, 28 Mar 2018 04:53:07 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8dfdb22cb1383a9fdf19541762c2dfb8f962499e5d23a038a8f0fb5b0b65407`  
		Last Modified: Wed, 28 Mar 2018 04:55:12 GMT  
		Size: 116.3 MB (116335332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ad5ec37178bbfc3ee46865183461ea91268956892f67a21c482c0b9c433a8d`  
		Last Modified: Wed, 28 Mar 2018 04:54:38 GMT  
		Size: 6.8 KB (6838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2fcd559b6eefc6115dd5ebbfd0b9054d0b3ff6618b0cebd28a8323c6242002`  
		Last Modified: Wed, 28 Mar 2018 04:54:38 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b184fefcb7b8332a6e585c892d129de9776954faf0b8f45a79adae6a14fbf4f1`  
		Last Modified: Wed, 28 Mar 2018 04:54:38 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e24529b0c42bd00bf86647e254b97db11ac286d130cbd561b6874b1228706c`  
		Last Modified: Wed, 28 Mar 2018 04:54:38 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd611f07d0cc8bf0c0f58e73ae726685546732cc3fe375bb2c50f673cdb4bef`  
		Last Modified: Wed, 28 Mar 2018 04:54:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.12` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:ee711d0e0c8ca96c624ac824c786444c27fb3d9abf507da899201adff76d2428
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 MB (94695843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdd5475800ba879657110a2d7c86c9cc320ec4fc58c0edbc683f57d598c2313`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:12:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 01:12:29 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 01:12:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 01:13:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 01:14:10 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 01:14:11 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 01:14:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 01:14:33 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 01:53:22 GMT
ENV PG_MAJOR=9.5
# Thu, 15 Mar 2018 01:53:23 GMT
ENV PG_VERSION=9.5.12-1.pgdg80+1
# Thu, 15 Mar 2018 02:26:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 02:26:57 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 02:27:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 02:27:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Thu, 15 Mar 2018 02:27:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 02:27:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 02:27:25 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 02:27:28 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Mar 2018 02:27:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 02:27:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 02:27:42 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 02:27:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3866bf6991dcc95d7965e2c1e7d6e6c51df401b5dd2e84626cbe44b139346e61`  
		Last Modified: Thu, 15 Mar 2018 03:37:29 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1330e3465a4cd072827c77e795c9d16bb6784d60e3c6455380999d67f5d332d0`  
		Last Modified: Thu, 15 Mar 2018 03:37:28 GMT  
		Size: 952.0 KB (952004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4740d805464e7ac9dcaa1296146892e0450eb657f1b1d3060f1f6904b79266`  
		Last Modified: Thu, 15 Mar 2018 03:37:32 GMT  
		Size: 7.1 MB (7112991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7890777de807ec652b6ee43b8737666e74cb561b53d0bf3d59efac52d5e0281`  
		Last Modified: Thu, 15 Mar 2018 03:37:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa480058f0209611cf1374aa008b40a0bd581155b8f269472a20f8f8cc756e4`  
		Last Modified: Thu, 15 Mar 2018 03:37:27 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581536dfe9f6addeddcd0f1798905f15c745f67cc15cbb426cbb9fb9325c23c4`  
		Last Modified: Thu, 15 Mar 2018 03:38:54 GMT  
		Size: 36.7 MB (36681610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8be8b1e16d4639bb3795cc96f72d814826c01cc962d466b4e406bbc118a79d`  
		Last Modified: Thu, 15 Mar 2018 03:38:38 GMT  
		Size: 6.8 KB (6837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68ab2f6e621ea4eaf56f9a6269d637afa452023b31fc32cd6603daca89ca2b9`  
		Last Modified: Thu, 15 Mar 2018 03:38:38 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a88717da8529d8a3bad542b54ff2fe97799fb8a751664339c130d4958586471`  
		Last Modified: Thu, 15 Mar 2018 03:38:39 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d342c933dec7eabdd23a4c682da11074967db2f611a4e7401693f214a23991`  
		Last Modified: Thu, 15 Mar 2018 03:38:38 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f644fa0de77bb6642957200ab09224a592f4ad88382ae2b473e413861175c0d6`  
		Last Modified: Thu, 15 Mar 2018 03:38:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.12` - linux; 386

```console
$ docker pull postgres@sha256:bf97f99a2f39573091efad083afb80bb724eb4a6504379a81ae947b77464079e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.6 MB (105635391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61e8600c513bcdb1fac29bca3775d79be0570a9caa4cd419197550e44f41f170`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Mon, 19 Feb 2018 18:23:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 19 Feb 2018 18:23:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 19 Feb 2018 18:23:11 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Feb 2018 18:23:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 19 Feb 2018 18:24:16 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 19 Feb 2018 18:31:45 GMT
ENV LANG=en_US.utf8
# Mon, 19 Feb 2018 18:31:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Feb 2018 18:31:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 19 Feb 2018 18:43:12 GMT
ENV PG_MAJOR=9.5
# Sat, 03 Mar 2018 15:50:45 GMT
ENV PG_VERSION=9.5.12-1.pgdg80+1
# Sat, 03 Mar 2018 15:52:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 03 Mar 2018 15:52:09 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 03 Mar 2018 15:52:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 03 Mar 2018 15:52:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Sat, 03 Mar 2018 15:52:10 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 03 Mar 2018 15:52:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 03 Mar 2018 15:52:12 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 03 Mar 2018 15:52:12 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Sat, 03 Mar 2018 15:52:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 15:52:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 15:52:13 GMT
EXPOSE 5432/tcp
# Sat, 03 Mar 2018 15:52:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5057c70401974b44c0f1bff5a08e5b7223f2fa5b67f6919fe9d9a0272ffcb75b`  
		Last Modified: Mon, 19 Feb 2018 19:26:07 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6399b36dfc67ead03f31924ea4f72f12a74b332fa52917e427798659a7389fe`  
		Last Modified: Mon, 19 Feb 2018 19:26:05 GMT  
		Size: 964.0 KB (964020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c14510a3123271f8483e8277fd4e6edb9791c5e6088030f3c915044b860d38`  
		Last Modified: Mon, 19 Feb 2018 19:26:10 GMT  
		Size: 7.1 MB (7112907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4754edfd9320a47c2f64cae795bec1adf050f6f0efde9873d3d753973d890fe`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cafb68050a9756d26f310c634d1800ecf4fbcad70e13aba58656aa3705a7108`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd52a509d7f42df432784f3a2a3e1f84d233609c367f8243245f9264f756da0`  
		Last Modified: Sat, 03 Mar 2018 17:20:50 GMT  
		Size: 44.8 MB (44754997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887bbd3a388d2cfa54e45831fb751a9785756be85b54ea76df4f21a5cd1f61c3`  
		Last Modified: Sat, 03 Mar 2018 17:20:36 GMT  
		Size: 6.8 KB (6833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b72a72e9739e7262d2a64b959ac1ce7a8eb71cb9935c11e1190d26456611c74`  
		Last Modified: Sat, 03 Mar 2018 17:20:36 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3b78e6f7a04c19530b33e65888e41bff4bb2f006c0ccac7bf0f5e253222e6`  
		Last Modified: Sat, 03 Mar 2018 17:20:36 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ca72106c19831138a9fad0c8023a808dd52043d27af4ad83ef9edc40fba485`  
		Last Modified: Sat, 03 Mar 2018 17:20:35 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afe7f199fd7145299c4ef0040f4d1cd7ccc41250b82d96fdcefe3692bd078b6`  
		Last Modified: Sat, 03 Mar 2018 17:20:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.12` - linux; ppc64le

```console
$ docker pull postgres@sha256:ca83fee42142761b26e6791299e3aafac8a6ab755d84bd7a14e0ca831546b85e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.9 MB (101880677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9959d827ad2d52b1ed61a5c30bcdf86b4d40fa66b5724ac01963676f1d87c5f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:54:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 03:54:35 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 03:54:38 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 03:57:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 03:58:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 03:58:39 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 03:58:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 03:58:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 04:06:57 GMT
ENV PG_MAJOR=9.5
# Thu, 15 Mar 2018 04:06:59 GMT
ENV PG_VERSION=9.5.12-1.pgdg80+1
# Thu, 15 Mar 2018 04:14:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 04:14:29 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 04:14:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 04:14:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Thu, 15 Mar 2018 04:14:42 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 04:14:46 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 04:14:49 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 04:14:51 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Mar 2018 04:14:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 04:14:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 04:15:01 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 04:15:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be05e26cbc28a26d00f212068d1f259dd2916fcd4e1868320d699f7dd47ed57b`  
		Last Modified: Thu, 15 Mar 2018 04:31:33 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4863081503d0792058f50abe3af50d55e383a6fdf1a734475fcd6203ca00d902`  
		Last Modified: Thu, 15 Mar 2018 04:31:32 GMT  
		Size: 954.2 KB (954250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9658240060ff7dec76f71d54ce9010a49d2b3c4bff07a0843002e7ad3682ab0b`  
		Last Modified: Thu, 15 Mar 2018 04:31:33 GMT  
		Size: 7.1 MB (7113258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecf75ba1ae59b220e897d7c3ca614052615c2eb4a302c5ff5fd98049f5d6cd5`  
		Last Modified: Thu, 15 Mar 2018 04:31:31 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a959f69f41c7310006204eff28b74c9644e16f2bf7980193df6d121024499f`  
		Last Modified: Thu, 15 Mar 2018 04:31:31 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d4884820a18db157ae471099ddeaa0879348ea7165aff6c64dfd079a0e83d0`  
		Last Modified: Thu, 15 Mar 2018 04:32:19 GMT  
		Size: 42.0 MB (41980165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfa5310183d94bee732b0e5b5a8a7b262c03c3135046fbc87c674a01c6750a5`  
		Last Modified: Thu, 15 Mar 2018 04:32:06 GMT  
		Size: 6.8 KB (6831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedbe7d6e48ba981bf601a963477e780973a0ec64790ab5e7ea90ea44690c468`  
		Last Modified: Thu, 15 Mar 2018 04:32:06 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c8eb2594a45cf5795a9414d214567fa3fc9c509dfa906c935868933a74fd3c`  
		Last Modified: Thu, 15 Mar 2018 04:32:06 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c9ad028195fa28734fd1e037ace4be19123af326a0d7c401217dd4bf18865b`  
		Last Modified: Thu, 15 Mar 2018 04:32:06 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51dd1e6392fde15626be8024a782b8420e11c534e16e2a18a0bb3ce37789ba9`  
		Last Modified: Thu, 15 Mar 2018 04:32:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.12` - linux; s390x

```console
$ docker pull postgres@sha256:da694c73ddd7425c66dec89b9a114b92faf75580a4ac9208dbde02dba738ae37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.1 MB (100085056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82d255343688b9474064d56189b9af4f1f13874a841f12244bf795d98719be05`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 07:02:44 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 07:02:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 07:03:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 07:03:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 07:03:14 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 07:03:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 07:03:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 07:12:12 GMT
ENV PG_MAJOR=9.5
# Wed, 14 Mar 2018 07:12:12 GMT
ENV PG_VERSION=9.5.12-1.pgdg80+1
# Wed, 14 Mar 2018 07:20:22 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 07:20:23 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 07:20:23 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 07:20:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Wed, 14 Mar 2018 07:20:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 07:20:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 07:20:27 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 07:20:27 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 07:20:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 07:20:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 07:20:28 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 07:20:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dd957f9fe9a0b1b31d7bc9a788402552921f19ca569b02ea38e6ececd7e3f`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124fe371fdba391f4fe2074b49ffbb81c42dbdc1ff5bc67be5fb104e57c1370`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 970.3 KB (970296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daf81df21c7820de665e5a906e02c03e6b1b25866ab0ba5e7a76667f78c9a01`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 7.1 MB (7131276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c433e77c3b166e3c1031e6a90d286f74f6851b02becacf6a85b0eee3cfb1f2f`  
		Last Modified: Wed, 14 Mar 2018 07:35:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48fd35b2809c5418f91b47e912004fac6f97a8c938b95b458c5010dbe631d152`  
		Last Modified: Wed, 14 Mar 2018 07:35:51 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4eaf01e84aac00c58cdfbf351ec1009a4131ade972a9ff006b496428bf6cec`  
		Last Modified: Wed, 14 Mar 2018 07:36:23 GMT  
		Size: 39.2 MB (39172242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8af987bd96fb260b4e6e2c18edac9cc0d7b3eecdb2dae4d7d1891d03c27e82`  
		Last Modified: Wed, 14 Mar 2018 07:36:14 GMT  
		Size: 6.8 KB (6836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2136909b90a6a0e42661f99aa28c990082a290d840b6e884325cf7c35f57a23`  
		Last Modified: Wed, 14 Mar 2018 07:36:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4063227a9aa244049922a6f9188a5c7a9f88357953bf4aa34f969a130484ebe`  
		Last Modified: Wed, 14 Mar 2018 07:36:14 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1cf986b3ec105c91abd25e0ad0a3dc509d9e05fb114c9ae73fdc1c7d191de1`  
		Last Modified: Wed, 14 Mar 2018 07:36:14 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ebbcdc846d31987e075a7a94f6ebbe7e6850b81a801aa8b574c3bd7a41cee9`  
		Last Modified: Wed, 14 Mar 2018 07:36:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.12-alpine`

```console
$ docker pull postgres@sha256:52c2a4a451a5cda8916861f4d2c21d4a36715e8fc8376547720fb33612386d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5.12-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:f1cdad645f950b112f8c8273c46de46a22bf1b61d8d3375548b257b873207469
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14459943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e61724866da993de026a94bd9515b8ca8d8c51f7ac71bcfcef2cf7ea4b3e13bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:26:41 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Jan 2018 04:26:41 GMT
ENV LANG=en_US.utf8
# Wed, 10 Jan 2018 04:26:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Jan 2018 04:30:24 GMT
ENV PG_MAJOR=9.5
# Fri, 02 Mar 2018 22:13:20 GMT
ENV PG_VERSION=9.5.12
# Fri, 02 Mar 2018 22:13:20 GMT
ENV PG_SHA256=02e86f5c66467731bbec18fde96e0daf38c13c9141d8e7d41be663ab6fa6f698
# Fri, 02 Mar 2018 22:15:30 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 02 Mar 2018 22:15:31 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 02 Mar 2018 22:15:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 02 Mar 2018 22:15:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 02 Mar 2018 22:15:32 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 02 Mar 2018 22:15:33 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 02 Mar 2018 22:15:33 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Fri, 02 Mar 2018 22:15:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 02 Mar 2018 22:15:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 22:15:34 GMT
EXPOSE 5432/tcp
# Fri, 02 Mar 2018 22:15:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bf519c70dfc41fc325a4d9771bb0f55ffd85a4b86bfa1d7b3bbc69d2fc2d8c`  
		Last Modified: Wed, 10 Jan 2018 04:41:24 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af56c798cc1e0da2941d090847e9dcd3bc175d165ac7a503cc7ebfed3d63d04`  
		Last Modified: Wed, 10 Jan 2018 04:41:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9aa6f49f89603b7d0247b544f024373d978f8c6d7f354f656972cb7da40ee4`  
		Last Modified: Fri, 02 Mar 2018 22:28:15 GMT  
		Size: 12.5 MB (12480497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c596d4c9b7ce21011d086c174192bbf5ebb835cdb03bc80cf8b2ef2bf13c390b`  
		Last Modified: Fri, 02 Mar 2018 22:28:11 GMT  
		Size: 6.8 KB (6798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437d59174fa9a9c0e82114f40b133c1ddae94f33282db0c5913626fec8f3c32a`  
		Last Modified: Fri, 02 Mar 2018 22:28:11 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c440e86c3a04138cced1575eb84f72928c191469e60194901703f5640d2d6e7`  
		Last Modified: Fri, 02 Mar 2018 22:28:11 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc06a8ac612c934e18e57a30cb809257aebe52a371ebccc7d60529781c978503`  
		Last Modified: Fri, 02 Mar 2018 22:28:11 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2051c47fa3182cf9e9078b2fdae3c61c3cbbc3c49a5c3f103552da45c07a65`  
		Last Modified: Fri, 02 Mar 2018 22:28:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:52c2a4a451a5cda8916861f4d2c21d4a36715e8fc8376547720fb33612386d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:f1cdad645f950b112f8c8273c46de46a22bf1b61d8d3375548b257b873207469
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14459943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e61724866da993de026a94bd9515b8ca8d8c51f7ac71bcfcef2cf7ea4b3e13bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:26:41 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Jan 2018 04:26:41 GMT
ENV LANG=en_US.utf8
# Wed, 10 Jan 2018 04:26:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Jan 2018 04:30:24 GMT
ENV PG_MAJOR=9.5
# Fri, 02 Mar 2018 22:13:20 GMT
ENV PG_VERSION=9.5.12
# Fri, 02 Mar 2018 22:13:20 GMT
ENV PG_SHA256=02e86f5c66467731bbec18fde96e0daf38c13c9141d8e7d41be663ab6fa6f698
# Fri, 02 Mar 2018 22:15:30 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 02 Mar 2018 22:15:31 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 02 Mar 2018 22:15:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 02 Mar 2018 22:15:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 02 Mar 2018 22:15:32 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 02 Mar 2018 22:15:33 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 02 Mar 2018 22:15:33 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Fri, 02 Mar 2018 22:15:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 02 Mar 2018 22:15:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 22:15:34 GMT
EXPOSE 5432/tcp
# Fri, 02 Mar 2018 22:15:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bf519c70dfc41fc325a4d9771bb0f55ffd85a4b86bfa1d7b3bbc69d2fc2d8c`  
		Last Modified: Wed, 10 Jan 2018 04:41:24 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af56c798cc1e0da2941d090847e9dcd3bc175d165ac7a503cc7ebfed3d63d04`  
		Last Modified: Wed, 10 Jan 2018 04:41:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9aa6f49f89603b7d0247b544f024373d978f8c6d7f354f656972cb7da40ee4`  
		Last Modified: Fri, 02 Mar 2018 22:28:15 GMT  
		Size: 12.5 MB (12480497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c596d4c9b7ce21011d086c174192bbf5ebb835cdb03bc80cf8b2ef2bf13c390b`  
		Last Modified: Fri, 02 Mar 2018 22:28:11 GMT  
		Size: 6.8 KB (6798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437d59174fa9a9c0e82114f40b133c1ddae94f33282db0c5913626fec8f3c32a`  
		Last Modified: Fri, 02 Mar 2018 22:28:11 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c440e86c3a04138cced1575eb84f72928c191469e60194901703f5640d2d6e7`  
		Last Modified: Fri, 02 Mar 2018 22:28:11 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc06a8ac612c934e18e57a30cb809257aebe52a371ebccc7d60529781c978503`  
		Last Modified: Fri, 02 Mar 2018 22:28:11 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2051c47fa3182cf9e9078b2fdae3c61c3cbbc3c49a5c3f103552da45c07a65`  
		Last Modified: Fri, 02 Mar 2018 22:28:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:62e56da9203fcc594a7fb5d3200becd93cd21ee77ddb9aefd818dab1b3b94227
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

### `postgres:9.6` - linux; amd64

```console
$ docker pull postgres@sha256:dddc320dbed9e6a675ddb7ea6fd752ed8d5bab59b1f42e1fdd4113aa9f18da2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104193661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee7bf928a9ff0aae3b18fe0c3c7dfac641db71e11d6b58676c4360145ab70bac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 16:54:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 16:54:18 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 16:54:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 16:54:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 16:55:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 16:55:07 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 16:55:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 16:55:13 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 16:55:13 GMT
ENV PG_MAJOR=9.6
# Wed, 14 Mar 2018 16:55:14 GMT
ENV PG_VERSION=9.6.8-1.pgdg80+1
# Wed, 14 Mar 2018 16:56:06 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 16:56:07 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 16:56:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 16:56:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Wed, 14 Mar 2018 16:56:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 16:56:09 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 16:56:09 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 16:56:10 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 16:56:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 16:56:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 16:56:11 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 16:56:11 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2b55494f4f6f1f36cae8ef654cea2c2f62d54cc15d25ee42b27fc01c0a9cc8`  
		Last Modified: Wed, 14 Mar 2018 17:02:49 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de62c3a085cd468f90288db23caa38a9e990e56229d604be3a800c7c5f18f379`  
		Last Modified: Wed, 14 Mar 2018 17:02:48 GMT  
		Size: 985.2 KB (985230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e503918e3074f46543a9e57e27130a399e265ff9923bc248328f878e6936bc1a`  
		Last Modified: Wed, 14 Mar 2018 17:02:51 GMT  
		Size: 7.1 MB (7113049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a66f5a91afedccafa1a5e0aab6ba8fb4b596ed179324b6be0fb2f03fe2a680`  
		Last Modified: Wed, 14 Mar 2018 17:02:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228a46786f0c34c2428916c692279f7086fe4e13b725315d6e53921b54ee9e1c`  
		Last Modified: Wed, 14 Mar 2018 17:02:46 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38f93ae5c964abd1bbd3683fcb649a25f4ddf0890226306393260cfb2aaf1d9`  
		Last Modified: Wed, 14 Mar 2018 17:02:57 GMT  
		Size: 43.5 MB (43470828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b11ebcb4431cd18a4796a7ba6105d25930317fa75a47dd76974951fd5100da1`  
		Last Modified: Wed, 14 Mar 2018 17:02:45 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c50446658d0a00931766cc367ea10af1ce09bb23cc7bbf13469a2fec1be9ae`  
		Last Modified: Wed, 14 Mar 2018 17:02:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c5fdafedc6ac27cb2da4f81bf0e38a98126cd2a9a344aa325714b12298147d`  
		Last Modified: Wed, 14 Mar 2018 17:02:44 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492a9cdd6a9d5b9bce7d631ef274de4b96a8ebdf4defc26fc48f2528f233a9c3`  
		Last Modified: Wed, 14 Mar 2018 17:02:47 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529f518ca15612f9fb19b284fde2f8a9206b79d1f408dc8958c9b609c3d2e2f2`  
		Last Modified: Wed, 14 Mar 2018 17:02:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; arm variant v5

```console
$ docker pull postgres@sha256:800a47ccb8a33674faf020218c255e684e572705e03fe72fa6e7ed609b8352de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96649397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e0975455c21b67f4c39c95de65d89e4a79961ebe526d8b687d1b9c4622b849`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:51:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 21:51:31 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 21:51:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 21:52:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 21:52:46 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 21:52:46 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 21:52:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 21:52:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 21:52:54 GMT
ENV PG_MAJOR=9.6
# Wed, 14 Mar 2018 21:52:55 GMT
ENV PG_VERSION=9.6.8-1.pgdg80+1
# Wed, 14 Mar 2018 22:12:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 22:12:27 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 22:12:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 22:12:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Wed, 14 Mar 2018 22:12:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 22:12:30 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 22:12:30 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 22:12:31 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 22:12:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 22:12:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 22:12:32 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 22:12:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c818186c2a34364ea24baef384535dfbf1f22bee54ed9f5c493ce7289b139c3`  
		Last Modified: Wed, 14 Mar 2018 23:07:23 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a4beb832950a923eb83efdb74b15472fc7930a53fbd629eb2675500a6b0632`  
		Last Modified: Wed, 14 Mar 2018 23:07:22 GMT  
		Size: 974.6 KB (974633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540ff776d130d6ca043479e195873e09381dd09ac8354c122fa99bedf93e5efd`  
		Last Modified: Wed, 14 Mar 2018 23:07:24 GMT  
		Size: 7.1 MB (7112937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8ffaf6845c130cd10f4de730a36069d6d385af3808dcd38e0dddcf0b379b0e`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfb113d6bbf190b4beb67576b3d36c93a4ad07853293ca9d1c709c8322ec05e`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6170d7dcaba34e2bb39a405c3f9ef2a8c1e5c277ee7f91e06184734b21bda6c3`  
		Last Modified: Wed, 14 Mar 2018 23:07:34 GMT  
		Size: 37.7 MB (37655722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f5e807a18332e1d68a7adb51b1bd8345a0c46f078ac5a3b29405ef664da8b7`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 7.1 KB (7110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596b90f95e152cd548271d7536be429483bc3e025014edf2ca6a3166845ee89a`  
		Last Modified: Wed, 14 Mar 2018 23:07:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96dbed3c58f9ca9ec57dac40d82178d6fdce5c6227a217c6416ea920f086ce2`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b602ab6b7120db80e45992fbf18f6efa851dddfbed0eedc12a8393d580f25c1`  
		Last Modified: Wed, 14 Mar 2018 23:07:19 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fdac22819b5b5a3c8a0cb74d35fb18613f2b84ba8c14110a7a6250dfc6d82cf`  
		Last Modified: Wed, 14 Mar 2018 23:07:20 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; arm variant v7

```console
$ docker pull postgres@sha256:79301a3b54c2aaf73ce91e16738b9793469825777f4f6706cfbd6e5bddc0cc53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178571207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b1e282205b9d503d04881ac2a00525a892d43bbc6c66dda39dcedc7f5421852`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 12:25:46 GMT
ADD file:6208a77a3fff4a68790f06b1b3a3e0fcb563724a9d1485d8e10592e2cf32b190 in / 
# Wed, 14 Mar 2018 12:25:46 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 03:38:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 03:38:37 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 28 Mar 2018 03:38:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Mar 2018 03:38:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 28 Mar 2018 03:38:59 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 28 Mar 2018 03:39:00 GMT
ENV LANG=en_US.utf8
# Wed, 28 Mar 2018 03:39:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Mar 2018 03:39:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 28 Mar 2018 03:55:09 GMT
ENV PG_MAJOR=9.6
# Wed, 28 Mar 2018 03:55:09 GMT
ENV PG_VERSION=9.6.8-1.pgdg80+1
# Wed, 28 Mar 2018 04:10:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 28 Mar 2018 04:10:05 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 28 Mar 2018 04:10:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 28 Mar 2018 04:10:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Wed, 28 Mar 2018 04:10:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Mar 2018 04:10:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 28 Mar 2018 04:10:08 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Mar 2018 04:10:08 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 28 Mar 2018 04:10:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 28 Mar 2018 04:10:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 04:10:09 GMT
EXPOSE 5432/tcp
# Wed, 28 Mar 2018 04:10:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8c1aa76b118f0b6f588a119501660e6c6984f1c8af222f2b04be33b64cada0c2`  
		Last Modified: Wed, 14 Mar 2018 12:37:22 GMT  
		Size: 44.1 MB (44078135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3ffdc7c95f36f6ab3e6038438d851ea38ba046a53ece176f2d35caddc75ba0`  
		Last Modified: Wed, 28 Mar 2018 04:53:11 GMT  
		Size: 9.0 MB (9002659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2af83fb1e1d8a7b0c24b01595114df2abbbb688d606c8ff88ba7694efeb348c`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 1.9 KB (1862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e342156e061add8ad9dfb369b32b557de2b001028dff9350b5fb1cf9e78f6a90`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 937.8 KB (937792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1f846fdb0dda2e9e8ae7b68700b39337abdba0a58c7bd33fab39e1ab982fed`  
		Last Modified: Wed, 28 Mar 2018 04:53:10 GMT  
		Size: 7.4 MB (7397480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f19e12270249fafb855a0d74b265a13e05a55d791b8beee9e9f2780ecca1aea`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803ad1f3db776e5dcdf942153b71efa528356ea4fae29713b6b241c9c84f655e`  
		Last Modified: Wed, 28 Mar 2018 04:53:07 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e1ca8d3fa7e3f003c27fb97e8543947950b2b217a62eb3f7cc4ae0da85b5df`  
		Last Modified: Wed, 28 Mar 2018 04:54:25 GMT  
		Size: 117.1 MB (117139284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c420412732da2d91cc6502f332a4239e56c1339215f4739843dd8ba0c2d402d`  
		Last Modified: Wed, 28 Mar 2018 04:53:52 GMT  
		Size: 7.1 KB (7108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9c55a611860de63db61bdfa12201f241839e290e275e698b7a1d6751cf8aaf`  
		Last Modified: Wed, 28 Mar 2018 04:53:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d77c68e1ac80b8f3b490338485b49d22fb1e22b24ea46bd6a8cc9e3bc29906`  
		Last Modified: Wed, 28 Mar 2018 04:53:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5f3ccfd6635cb8b6d2d8c0f61edf891881dad428d5c067c13122d3476c1ab3`  
		Last Modified: Wed, 28 Mar 2018 04:53:52 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b065291f6899c41c730ee86ee8a7fe6a444576e63c4e33c7664de6602e37cb`  
		Last Modified: Wed, 28 Mar 2018 04:53:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:bf226856f4db354c27ec62af3c5c0bd2d112b65a52ac40741ba5f9cd002b63c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95212566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd7e48d9637e1cd8dcaee706bdd06481b09c7ae8fa31ce0da83728cd00fdb4c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:12:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 01:12:29 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 01:12:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 01:13:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 01:14:10 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 01:14:11 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 01:14:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 01:14:33 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 01:14:34 GMT
ENV PG_MAJOR=9.6
# Thu, 15 Mar 2018 01:14:35 GMT
ENV PG_VERSION=9.6.8-1.pgdg80+1
# Thu, 15 Mar 2018 01:52:02 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 01:52:12 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 01:52:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 01:52:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 15 Mar 2018 01:52:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 01:52:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 01:52:39 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 01:52:43 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Mar 2018 01:52:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 01:52:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 01:52:58 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 01:52:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3866bf6991dcc95d7965e2c1e7d6e6c51df401b5dd2e84626cbe44b139346e61`  
		Last Modified: Thu, 15 Mar 2018 03:37:29 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1330e3465a4cd072827c77e795c9d16bb6784d60e3c6455380999d67f5d332d0`  
		Last Modified: Thu, 15 Mar 2018 03:37:28 GMT  
		Size: 952.0 KB (952004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4740d805464e7ac9dcaa1296146892e0450eb657f1b1d3060f1f6904b79266`  
		Last Modified: Thu, 15 Mar 2018 03:37:32 GMT  
		Size: 7.1 MB (7112991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7890777de807ec652b6ee43b8737666e74cb561b53d0bf3d59efac52d5e0281`  
		Last Modified: Thu, 15 Mar 2018 03:37:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa480058f0209611cf1374aa008b40a0bd581155b8f269472a20f8f8cc756e4`  
		Last Modified: Thu, 15 Mar 2018 03:37:27 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707cf4b0a9cb454b9d4132a40e471a3d0c5335f4cafb54f4e02df22f0c232bdc`  
		Last Modified: Thu, 15 Mar 2018 03:37:41 GMT  
		Size: 37.2 MB (37198059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f551a6dc749d11aa1899137eeddfce573e3da7c74b1bf05568b2b59b93b286`  
		Last Modified: Thu, 15 Mar 2018 03:37:25 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6022f13f9811443fbd39adf594bdf430f7750411cdf8cf5e4fab1a1ba7dac2e`  
		Last Modified: Thu, 15 Mar 2018 03:37:26 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470561996eca8354fe1fa9e3a2939150a87cb4889f2cf52371cd6ee5a1ce81fc`  
		Last Modified: Thu, 15 Mar 2018 03:37:25 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef83cbe9644564797c12434fec3b6522f865661c0b4eb5458ed571d8c624ee2`  
		Last Modified: Thu, 15 Mar 2018 03:37:25 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98fa46a6b2b9be8895379a74f8366e59e0473b845a95292fefb959594ef1f1da`  
		Last Modified: Thu, 15 Mar 2018 03:37:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; 386

```console
$ docker pull postgres@sha256:48e5ab86ad17ca1ad067d2a4ac55c8cbeaf8479f330d547521b3af40654e9e8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106162402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4c00ec82beb77c84990b9c83056073bc180d8e2ce74d9a4be042599caa8ec3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Mon, 19 Feb 2018 18:23:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 19 Feb 2018 18:23:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 19 Feb 2018 18:23:11 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Feb 2018 18:23:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 19 Feb 2018 18:24:16 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 19 Feb 2018 18:31:45 GMT
ENV LANG=en_US.utf8
# Mon, 19 Feb 2018 18:31:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Feb 2018 18:31:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 19 Feb 2018 18:31:53 GMT
ENV PG_MAJOR=9.6
# Sat, 03 Mar 2018 15:38:45 GMT
ENV PG_VERSION=9.6.8-1.pgdg80+1
# Sat, 03 Mar 2018 15:40:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 03 Mar 2018 15:40:15 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 03 Mar 2018 15:40:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 03 Mar 2018 15:40:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Sat, 03 Mar 2018 15:40:17 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 03 Mar 2018 15:40:18 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 03 Mar 2018 15:40:18 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 03 Mar 2018 15:40:18 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Sat, 03 Mar 2018 15:40:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 15:40:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 15:40:20 GMT
EXPOSE 5432/tcp
# Sat, 03 Mar 2018 15:40:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5057c70401974b44c0f1bff5a08e5b7223f2fa5b67f6919fe9d9a0272ffcb75b`  
		Last Modified: Mon, 19 Feb 2018 19:26:07 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6399b36dfc67ead03f31924ea4f72f12a74b332fa52917e427798659a7389fe`  
		Last Modified: Mon, 19 Feb 2018 19:26:05 GMT  
		Size: 964.0 KB (964020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c14510a3123271f8483e8277fd4e6edb9791c5e6088030f3c915044b860d38`  
		Last Modified: Mon, 19 Feb 2018 19:26:10 GMT  
		Size: 7.1 MB (7112907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4754edfd9320a47c2f64cae795bec1adf050f6f0efde9873d3d753973d890fe`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cafb68050a9756d26f310c634d1800ecf4fbcad70e13aba58656aa3705a7108`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb997cb3edc4e5fa9b7cc193307c2b66f435537d914ec8e64795e96adc1f55e`  
		Last Modified: Sat, 03 Mar 2018 16:57:17 GMT  
		Size: 45.3 MB (45281730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4d2a9e8d19e32569bc325f76edaf43b225ed4b175d0d4b3b1d31c79d95e78a`  
		Last Modified: Sat, 03 Mar 2018 16:56:59 GMT  
		Size: 7.1 KB (7111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf6be418665507b442ca8da452994d00dcff3eafb2632d94f24142d82fa50cd`  
		Last Modified: Sat, 03 Mar 2018 16:56:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0d63a2393788e619326480c9ffcc708a54af7bfc63c3342419871084967bdc`  
		Last Modified: Sat, 03 Mar 2018 16:56:59 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0a457b4d309f1da9162e04aa972d688758e4f2946b624900d3ca3f7b378c05`  
		Last Modified: Sat, 03 Mar 2018 16:57:00 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd39259d52543383be7699915a38183771147f90a88512aebbe019308283233`  
		Last Modified: Sat, 03 Mar 2018 16:56:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; ppc64le

```console
$ docker pull postgres@sha256:e045ae352ab7e34c527c7fca3935533cc0887cbb12ea9553692a4567bd3126fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102397286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1a50d0f2ce13156e7add1a75fcd978482d25b6ffdf9878321d7cb322453e385`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:54:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 03:54:35 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 03:54:38 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 03:57:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 03:58:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 03:58:39 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 03:58:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 03:58:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 03:59:01 GMT
ENV PG_MAJOR=9.6
# Thu, 15 Mar 2018 03:59:04 GMT
ENV PG_VERSION=9.6.8-1.pgdg80+1
# Thu, 15 Mar 2018 04:06:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 04:06:16 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 04:06:20 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 04:06:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 15 Mar 2018 04:06:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 04:06:31 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 04:06:32 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 04:06:34 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Mar 2018 04:06:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 04:06:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 04:06:43 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 04:06:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be05e26cbc28a26d00f212068d1f259dd2916fcd4e1868320d699f7dd47ed57b`  
		Last Modified: Thu, 15 Mar 2018 04:31:33 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4863081503d0792058f50abe3af50d55e383a6fdf1a734475fcd6203ca00d902`  
		Last Modified: Thu, 15 Mar 2018 04:31:32 GMT  
		Size: 954.2 KB (954250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9658240060ff7dec76f71d54ce9010a49d2b3c4bff07a0843002e7ad3682ab0b`  
		Last Modified: Thu, 15 Mar 2018 04:31:33 GMT  
		Size: 7.1 MB (7113258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecf75ba1ae59b220e897d7c3ca614052615c2eb4a302c5ff5fd98049f5d6cd5`  
		Last Modified: Thu, 15 Mar 2018 04:31:31 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a959f69f41c7310006204eff28b74c9644e16f2bf7980193df6d121024499f`  
		Last Modified: Thu, 15 Mar 2018 04:31:31 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4605173c935494435c6153025c9c34f971b243607fe96eb229a88090e2238212`  
		Last Modified: Thu, 15 Mar 2018 04:31:42 GMT  
		Size: 42.5 MB (42496494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170ff102b8916ba0f401de4ea35ec1745f29723786be1c0f5bdf8e09f3d63daa`  
		Last Modified: Thu, 15 Mar 2018 04:31:28 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e333300754373d4cc3b8cd06453c2472be9287beca4444204999617f874d54c6`  
		Last Modified: Thu, 15 Mar 2018 04:31:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d274ebf2327b2f9fa16ef13da7e601dac92fb492a5e8c6f9e44a1acedc5efe6d`  
		Last Modified: Thu, 15 Mar 2018 04:31:28 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51d01645012393a60bf4bd1d7e02de601527a0095401ac0134efec40b359e4a`  
		Last Modified: Thu, 15 Mar 2018 04:31:28 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea228c86dccf444dcd2db963e048b7633cae64dba9bf70e4601f6ee3c376dfe`  
		Last Modified: Thu, 15 Mar 2018 04:31:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; s390x

```console
$ docker pull postgres@sha256:59003c8507c7d1c75a9193dee1b5e78ebb9689cf561c4468bbfcea6abbedeed7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100629118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67def40183f89b003e608ee940f1d13d561e9e57448d5e87d008cf169ebf15a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 07:02:44 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 07:02:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 07:03:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 07:03:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 07:03:14 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 07:03:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 07:03:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 07:03:20 GMT
ENV PG_MAJOR=9.6
# Wed, 14 Mar 2018 07:03:20 GMT
ENV PG_VERSION=9.6.8-1.pgdg80+1
# Wed, 14 Mar 2018 07:11:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 07:11:52 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 07:11:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 07:11:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Wed, 14 Mar 2018 07:11:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 07:11:54 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 07:11:54 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 07:11:54 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 07:11:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 07:11:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 07:11:55 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 07:11:55 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dd957f9fe9a0b1b31d7bc9a788402552921f19ca569b02ea38e6ececd7e3f`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124fe371fdba391f4fe2074b49ffbb81c42dbdc1ff5bc67be5fb104e57c1370`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 970.3 KB (970296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daf81df21c7820de665e5a906e02c03e6b1b25866ab0ba5e7a76667f78c9a01`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 7.1 MB (7131276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c433e77c3b166e3c1031e6a90d286f74f6851b02becacf6a85b0eee3cfb1f2f`  
		Last Modified: Wed, 14 Mar 2018 07:35:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48fd35b2809c5418f91b47e912004fac6f97a8c938b95b458c5010dbe631d152`  
		Last Modified: Wed, 14 Mar 2018 07:35:51 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134b62564c8c5a0e24dc36dc806eea71d260c7036a4cf05ee9637ab7fd540a28`  
		Last Modified: Wed, 14 Mar 2018 07:35:58 GMT  
		Size: 39.7 MB (39716036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d50582105a0a96225001f7e463dcbf76015d6b9005e56bd4c520a78d6a1376`  
		Last Modified: Wed, 14 Mar 2018 07:35:49 GMT  
		Size: 7.1 KB (7105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc003a724f1f40fb1272fd30e571cfccb5ab14f718fbe08c18001cb3dd51def`  
		Last Modified: Wed, 14 Mar 2018 07:35:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3688586cd016b42c7d96ca716a32d5d5566cd36393d3e757d5bc692c497d380`  
		Last Modified: Wed, 14 Mar 2018 07:35:49 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43c03b3de716a71ada73d74423d80fa4a17d03be08152fd93d80daa383e76ee`  
		Last Modified: Wed, 14 Mar 2018 07:35:49 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63174b07d7c51c6ac076227456579ede8c4a892bfa468f9771994ca5851d243b`  
		Last Modified: Wed, 14 Mar 2018 07:35:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.8`

```console
$ docker pull postgres@sha256:62e56da9203fcc594a7fb5d3200becd93cd21ee77ddb9aefd818dab1b3b94227
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

### `postgres:9.6.8` - linux; amd64

```console
$ docker pull postgres@sha256:dddc320dbed9e6a675ddb7ea6fd752ed8d5bab59b1f42e1fdd4113aa9f18da2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104193661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee7bf928a9ff0aae3b18fe0c3c7dfac641db71e11d6b58676c4360145ab70bac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 16:54:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 16:54:18 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 16:54:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 16:54:50 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 16:55:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 16:55:07 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 16:55:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 16:55:13 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 16:55:13 GMT
ENV PG_MAJOR=9.6
# Wed, 14 Mar 2018 16:55:14 GMT
ENV PG_VERSION=9.6.8-1.pgdg80+1
# Wed, 14 Mar 2018 16:56:06 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 16:56:07 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 16:56:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 16:56:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Wed, 14 Mar 2018 16:56:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 16:56:09 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 16:56:09 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 16:56:10 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 16:56:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 16:56:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 16:56:11 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 16:56:11 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2b55494f4f6f1f36cae8ef654cea2c2f62d54cc15d25ee42b27fc01c0a9cc8`  
		Last Modified: Wed, 14 Mar 2018 17:02:49 GMT  
		Size: 2.1 KB (2091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de62c3a085cd468f90288db23caa38a9e990e56229d604be3a800c7c5f18f379`  
		Last Modified: Wed, 14 Mar 2018 17:02:48 GMT  
		Size: 985.2 KB (985230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e503918e3074f46543a9e57e27130a399e265ff9923bc248328f878e6936bc1a`  
		Last Modified: Wed, 14 Mar 2018 17:02:51 GMT  
		Size: 7.1 MB (7113049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a66f5a91afedccafa1a5e0aab6ba8fb4b596ed179324b6be0fb2f03fe2a680`  
		Last Modified: Wed, 14 Mar 2018 17:02:46 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228a46786f0c34c2428916c692279f7086fe4e13b725315d6e53921b54ee9e1c`  
		Last Modified: Wed, 14 Mar 2018 17:02:46 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38f93ae5c964abd1bbd3683fcb649a25f4ddf0890226306393260cfb2aaf1d9`  
		Last Modified: Wed, 14 Mar 2018 17:02:57 GMT  
		Size: 43.5 MB (43470828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b11ebcb4431cd18a4796a7ba6105d25930317fa75a47dd76974951fd5100da1`  
		Last Modified: Wed, 14 Mar 2018 17:02:45 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c50446658d0a00931766cc367ea10af1ce09bb23cc7bbf13469a2fec1be9ae`  
		Last Modified: Wed, 14 Mar 2018 17:02:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c5fdafedc6ac27cb2da4f81bf0e38a98126cd2a9a344aa325714b12298147d`  
		Last Modified: Wed, 14 Mar 2018 17:02:44 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492a9cdd6a9d5b9bce7d631ef274de4b96a8ebdf4defc26fc48f2528f233a9c3`  
		Last Modified: Wed, 14 Mar 2018 17:02:47 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529f518ca15612f9fb19b284fde2f8a9206b79d1f408dc8958c9b609c3d2e2f2`  
		Last Modified: Wed, 14 Mar 2018 17:02:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.8` - linux; arm variant v5

```console
$ docker pull postgres@sha256:800a47ccb8a33674faf020218c255e684e572705e03fe72fa6e7ed609b8352de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96649397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e0975455c21b67f4c39c95de65d89e4a79961ebe526d8b687d1b9c4622b849`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 19:55:39 GMT
ADD file:4e1092328fe0aabf46bb091fe0fbee6bf44c434f8d0d262902005bbecb69c5cc in / 
# Wed, 14 Mar 2018 19:55:39 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:51:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 21:51:31 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 21:51:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 21:52:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 21:52:46 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 21:52:46 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 21:52:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 21:52:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 21:52:54 GMT
ENV PG_MAJOR=9.6
# Wed, 14 Mar 2018 21:52:55 GMT
ENV PG_VERSION=9.6.8-1.pgdg80+1
# Wed, 14 Mar 2018 22:12:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 22:12:27 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 22:12:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 22:12:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Wed, 14 Mar 2018 22:12:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 22:12:30 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 22:12:30 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 22:12:31 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 22:12:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 22:12:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 22:12:32 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 22:12:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d6c8df84f6d163cc0438ee1b71ec7d86a796a60b2c010df85016296ce8991655`  
		Last Modified: Wed, 14 Mar 2018 20:06:36 GMT  
		Size: 50.9 MB (50890011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c818186c2a34364ea24baef384535dfbf1f22bee54ed9f5c493ce7289b139c3`  
		Last Modified: Wed, 14 Mar 2018 23:07:23 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a4beb832950a923eb83efdb74b15472fc7930a53fbd629eb2675500a6b0632`  
		Last Modified: Wed, 14 Mar 2018 23:07:22 GMT  
		Size: 974.6 KB (974633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540ff776d130d6ca043479e195873e09381dd09ac8354c122fa99bedf93e5efd`  
		Last Modified: Wed, 14 Mar 2018 23:07:24 GMT  
		Size: 7.1 MB (7112937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8ffaf6845c130cd10f4de730a36069d6d385af3808dcd38e0dddcf0b379b0e`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfb113d6bbf190b4beb67576b3d36c93a4ad07853293ca9d1c709c8322ec05e`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6170d7dcaba34e2bb39a405c3f9ef2a8c1e5c277ee7f91e06184734b21bda6c3`  
		Last Modified: Wed, 14 Mar 2018 23:07:34 GMT  
		Size: 37.7 MB (37655722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f5e807a18332e1d68a7adb51b1bd8345a0c46f078ac5a3b29405ef664da8b7`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 7.1 KB (7110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596b90f95e152cd548271d7536be429483bc3e025014edf2ca6a3166845ee89a`  
		Last Modified: Wed, 14 Mar 2018 23:07:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96dbed3c58f9ca9ec57dac40d82178d6fdce5c6227a217c6416ea920f086ce2`  
		Last Modified: Wed, 14 Mar 2018 23:07:21 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b602ab6b7120db80e45992fbf18f6efa851dddfbed0eedc12a8393d580f25c1`  
		Last Modified: Wed, 14 Mar 2018 23:07:19 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fdac22819b5b5a3c8a0cb74d35fb18613f2b84ba8c14110a7a6250dfc6d82cf`  
		Last Modified: Wed, 14 Mar 2018 23:07:20 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.8` - linux; arm variant v7

```console
$ docker pull postgres@sha256:79301a3b54c2aaf73ce91e16738b9793469825777f4f6706cfbd6e5bddc0cc53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178571207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b1e282205b9d503d04881ac2a00525a892d43bbc6c66dda39dcedc7f5421852`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 12:25:46 GMT
ADD file:6208a77a3fff4a68790f06b1b3a3e0fcb563724a9d1485d8e10592e2cf32b190 in / 
# Wed, 14 Mar 2018 12:25:46 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 03:38:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 03:38:37 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 28 Mar 2018 03:38:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Mar 2018 03:38:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 28 Mar 2018 03:38:59 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 28 Mar 2018 03:39:00 GMT
ENV LANG=en_US.utf8
# Wed, 28 Mar 2018 03:39:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Mar 2018 03:39:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 28 Mar 2018 03:55:09 GMT
ENV PG_MAJOR=9.6
# Wed, 28 Mar 2018 03:55:09 GMT
ENV PG_VERSION=9.6.8-1.pgdg80+1
# Wed, 28 Mar 2018 04:10:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 28 Mar 2018 04:10:05 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 28 Mar 2018 04:10:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 28 Mar 2018 04:10:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Wed, 28 Mar 2018 04:10:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Mar 2018 04:10:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 28 Mar 2018 04:10:08 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Mar 2018 04:10:08 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 28 Mar 2018 04:10:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 28 Mar 2018 04:10:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 04:10:09 GMT
EXPOSE 5432/tcp
# Wed, 28 Mar 2018 04:10:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8c1aa76b118f0b6f588a119501660e6c6984f1c8af222f2b04be33b64cada0c2`  
		Last Modified: Wed, 14 Mar 2018 12:37:22 GMT  
		Size: 44.1 MB (44078135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3ffdc7c95f36f6ab3e6038438d851ea38ba046a53ece176f2d35caddc75ba0`  
		Last Modified: Wed, 28 Mar 2018 04:53:11 GMT  
		Size: 9.0 MB (9002659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2af83fb1e1d8a7b0c24b01595114df2abbbb688d606c8ff88ba7694efeb348c`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 1.9 KB (1862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e342156e061add8ad9dfb369b32b557de2b001028dff9350b5fb1cf9e78f6a90`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 937.8 KB (937792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1f846fdb0dda2e9e8ae7b68700b39337abdba0a58c7bd33fab39e1ab982fed`  
		Last Modified: Wed, 28 Mar 2018 04:53:10 GMT  
		Size: 7.4 MB (7397480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f19e12270249fafb855a0d74b265a13e05a55d791b8beee9e9f2780ecca1aea`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803ad1f3db776e5dcdf942153b71efa528356ea4fae29713b6b241c9c84f655e`  
		Last Modified: Wed, 28 Mar 2018 04:53:07 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e1ca8d3fa7e3f003c27fb97e8543947950b2b217a62eb3f7cc4ae0da85b5df`  
		Last Modified: Wed, 28 Mar 2018 04:54:25 GMT  
		Size: 117.1 MB (117139284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c420412732da2d91cc6502f332a4239e56c1339215f4739843dd8ba0c2d402d`  
		Last Modified: Wed, 28 Mar 2018 04:53:52 GMT  
		Size: 7.1 KB (7108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9c55a611860de63db61bdfa12201f241839e290e275e698b7a1d6751cf8aaf`  
		Last Modified: Wed, 28 Mar 2018 04:53:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d77c68e1ac80b8f3b490338485b49d22fb1e22b24ea46bd6a8cc9e3bc29906`  
		Last Modified: Wed, 28 Mar 2018 04:53:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5f3ccfd6635cb8b6d2d8c0f61edf891881dad428d5c067c13122d3476c1ab3`  
		Last Modified: Wed, 28 Mar 2018 04:53:52 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b065291f6899c41c730ee86ee8a7fe6a444576e63c4e33c7664de6602e37cb`  
		Last Modified: Wed, 28 Mar 2018 04:53:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.8` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:bf226856f4db354c27ec62af3c5c0bd2d112b65a52ac40741ba5f9cd002b63c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95212566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd7e48d9637e1cd8dcaee706bdd06481b09c7ae8fa31ce0da83728cd00fdb4c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:12:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 01:12:29 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 01:12:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 01:13:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 01:14:10 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 01:14:11 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 01:14:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 01:14:33 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 01:14:34 GMT
ENV PG_MAJOR=9.6
# Thu, 15 Mar 2018 01:14:35 GMT
ENV PG_VERSION=9.6.8-1.pgdg80+1
# Thu, 15 Mar 2018 01:52:02 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 01:52:12 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 01:52:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 01:52:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 15 Mar 2018 01:52:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 01:52:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 01:52:39 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 01:52:43 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Mar 2018 01:52:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 01:52:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 01:52:58 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 01:52:59 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3866bf6991dcc95d7965e2c1e7d6e6c51df401b5dd2e84626cbe44b139346e61`  
		Last Modified: Thu, 15 Mar 2018 03:37:29 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1330e3465a4cd072827c77e795c9d16bb6784d60e3c6455380999d67f5d332d0`  
		Last Modified: Thu, 15 Mar 2018 03:37:28 GMT  
		Size: 952.0 KB (952004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4740d805464e7ac9dcaa1296146892e0450eb657f1b1d3060f1f6904b79266`  
		Last Modified: Thu, 15 Mar 2018 03:37:32 GMT  
		Size: 7.1 MB (7112991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7890777de807ec652b6ee43b8737666e74cb561b53d0bf3d59efac52d5e0281`  
		Last Modified: Thu, 15 Mar 2018 03:37:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa480058f0209611cf1374aa008b40a0bd581155b8f269472a20f8f8cc756e4`  
		Last Modified: Thu, 15 Mar 2018 03:37:27 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707cf4b0a9cb454b9d4132a40e471a3d0c5335f4cafb54f4e02df22f0c232bdc`  
		Last Modified: Thu, 15 Mar 2018 03:37:41 GMT  
		Size: 37.2 MB (37198059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f551a6dc749d11aa1899137eeddfce573e3da7c74b1bf05568b2b59b93b286`  
		Last Modified: Thu, 15 Mar 2018 03:37:25 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6022f13f9811443fbd39adf594bdf430f7750411cdf8cf5e4fab1a1ba7dac2e`  
		Last Modified: Thu, 15 Mar 2018 03:37:26 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470561996eca8354fe1fa9e3a2939150a87cb4889f2cf52371cd6ee5a1ce81fc`  
		Last Modified: Thu, 15 Mar 2018 03:37:25 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef83cbe9644564797c12434fec3b6522f865661c0b4eb5458ed571d8c624ee2`  
		Last Modified: Thu, 15 Mar 2018 03:37:25 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98fa46a6b2b9be8895379a74f8366e59e0473b845a95292fefb959594ef1f1da`  
		Last Modified: Thu, 15 Mar 2018 03:37:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.8` - linux; 386

```console
$ docker pull postgres@sha256:48e5ab86ad17ca1ad067d2a4ac55c8cbeaf8479f330d547521b3af40654e9e8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106162402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4c00ec82beb77c84990b9c83056073bc180d8e2ce74d9a4be042599caa8ec3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Mon, 19 Feb 2018 18:23:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 19 Feb 2018 18:23:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 19 Feb 2018 18:23:11 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Feb 2018 18:23:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 19 Feb 2018 18:24:16 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 19 Feb 2018 18:31:45 GMT
ENV LANG=en_US.utf8
# Mon, 19 Feb 2018 18:31:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Feb 2018 18:31:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 19 Feb 2018 18:31:53 GMT
ENV PG_MAJOR=9.6
# Sat, 03 Mar 2018 15:38:45 GMT
ENV PG_VERSION=9.6.8-1.pgdg80+1
# Sat, 03 Mar 2018 15:40:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 03 Mar 2018 15:40:15 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 03 Mar 2018 15:40:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 03 Mar 2018 15:40:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Sat, 03 Mar 2018 15:40:17 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 03 Mar 2018 15:40:18 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 03 Mar 2018 15:40:18 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 03 Mar 2018 15:40:18 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Sat, 03 Mar 2018 15:40:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 15:40:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 15:40:20 GMT
EXPOSE 5432/tcp
# Sat, 03 Mar 2018 15:40:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5057c70401974b44c0f1bff5a08e5b7223f2fa5b67f6919fe9d9a0272ffcb75b`  
		Last Modified: Mon, 19 Feb 2018 19:26:07 GMT  
		Size: 2.1 KB (2082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6399b36dfc67ead03f31924ea4f72f12a74b332fa52917e427798659a7389fe`  
		Last Modified: Mon, 19 Feb 2018 19:26:05 GMT  
		Size: 964.0 KB (964020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c14510a3123271f8483e8277fd4e6edb9791c5e6088030f3c915044b860d38`  
		Last Modified: Mon, 19 Feb 2018 19:26:10 GMT  
		Size: 7.1 MB (7112907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4754edfd9320a47c2f64cae795bec1adf050f6f0efde9873d3d753973d890fe`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cafb68050a9756d26f310c634d1800ecf4fbcad70e13aba58656aa3705a7108`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 4.5 KB (4494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb997cb3edc4e5fa9b7cc193307c2b66f435537d914ec8e64795e96adc1f55e`  
		Last Modified: Sat, 03 Mar 2018 16:57:17 GMT  
		Size: 45.3 MB (45281730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4d2a9e8d19e32569bc325f76edaf43b225ed4b175d0d4b3b1d31c79d95e78a`  
		Last Modified: Sat, 03 Mar 2018 16:56:59 GMT  
		Size: 7.1 KB (7111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf6be418665507b442ca8da452994d00dcff3eafb2632d94f24142d82fa50cd`  
		Last Modified: Sat, 03 Mar 2018 16:56:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0d63a2393788e619326480c9ffcc708a54af7bfc63c3342419871084967bdc`  
		Last Modified: Sat, 03 Mar 2018 16:56:59 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0a457b4d309f1da9162e04aa972d688758e4f2946b624900d3ca3f7b378c05`  
		Last Modified: Sat, 03 Mar 2018 16:57:00 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd39259d52543383be7699915a38183771147f90a88512aebbe019308283233`  
		Last Modified: Sat, 03 Mar 2018 16:56:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.8` - linux; ppc64le

```console
$ docker pull postgres@sha256:e045ae352ab7e34c527c7fca3935533cc0887cbb12ea9553692a4567bd3126fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102397286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1a50d0f2ce13156e7add1a75fcd978482d25b6ffdf9878321d7cb322453e385`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 00:32:18 GMT
ADD file:a6ce5f76128adbe25d645aecee3745170f8a75a73a0e40d65b4198b322025f61 in / 
# Wed, 14 Mar 2018 00:32:19 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:54:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 03:54:35 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 03:54:38 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 03:57:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 03:58:35 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 03:58:39 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 03:58:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 03:58:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 03:59:01 GMT
ENV PG_MAJOR=9.6
# Thu, 15 Mar 2018 03:59:04 GMT
ENV PG_VERSION=9.6.8-1.pgdg80+1
# Thu, 15 Mar 2018 04:06:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 04:06:16 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 04:06:20 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 04:06:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 15 Mar 2018 04:06:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 04:06:31 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 04:06:32 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 04:06:34 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Mar 2018 04:06:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 04:06:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 04:06:43 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 04:06:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a87bd2b531300d02e0cb399797953ca9c847bd638a0a3d7f9c3adcfb967f32ce`  
		Last Modified: Wed, 14 Mar 2018 00:38:38 GMT  
		Size: 51.8 MB (51817165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be05e26cbc28a26d00f212068d1f259dd2916fcd4e1868320d699f7dd47ed57b`  
		Last Modified: Thu, 15 Mar 2018 04:31:33 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4863081503d0792058f50abe3af50d55e383a6fdf1a734475fcd6203ca00d902`  
		Last Modified: Thu, 15 Mar 2018 04:31:32 GMT  
		Size: 954.2 KB (954250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9658240060ff7dec76f71d54ce9010a49d2b3c4bff07a0843002e7ad3682ab0b`  
		Last Modified: Thu, 15 Mar 2018 04:31:33 GMT  
		Size: 7.1 MB (7113258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecf75ba1ae59b220e897d7c3ca614052615c2eb4a302c5ff5fd98049f5d6cd5`  
		Last Modified: Thu, 15 Mar 2018 04:31:31 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a959f69f41c7310006204eff28b74c9644e16f2bf7980193df6d121024499f`  
		Last Modified: Thu, 15 Mar 2018 04:31:31 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4605173c935494435c6153025c9c34f971b243607fe96eb229a88090e2238212`  
		Last Modified: Thu, 15 Mar 2018 04:31:42 GMT  
		Size: 42.5 MB (42496494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170ff102b8916ba0f401de4ea35ec1745f29723786be1c0f5bdf8e09f3d63daa`  
		Last Modified: Thu, 15 Mar 2018 04:31:28 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e333300754373d4cc3b8cd06453c2472be9287beca4444204999617f874d54c6`  
		Last Modified: Thu, 15 Mar 2018 04:31:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d274ebf2327b2f9fa16ef13da7e601dac92fb492a5e8c6f9e44a1acedc5efe6d`  
		Last Modified: Thu, 15 Mar 2018 04:31:28 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51d01645012393a60bf4bd1d7e02de601527a0095401ac0134efec40b359e4a`  
		Last Modified: Thu, 15 Mar 2018 04:31:28 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea228c86dccf444dcd2db963e048b7633cae64dba9bf70e4601f6ee3c376dfe`  
		Last Modified: Thu, 15 Mar 2018 04:31:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.8` - linux; s390x

```console
$ docker pull postgres@sha256:59003c8507c7d1c75a9193dee1b5e78ebb9689cf561c4468bbfcea6abbedeed7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100629118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67def40183f89b003e608ee940f1d13d561e9e57448d5e87d008cf169ebf15a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:53 GMT
ADD file:4f85a37eded7f246b2b04ad9c50b04a578b30985fa427d1ced53437a88a760f1 in / 
# Wed, 14 Mar 2018 05:21:54 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 07:02:44 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 07:02:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 07:03:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 07:03:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 07:03:14 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 07:03:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 07:03:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 07:03:20 GMT
ENV PG_MAJOR=9.6
# Wed, 14 Mar 2018 07:03:20 GMT
ENV PG_VERSION=9.6.8-1.pgdg80+1
# Wed, 14 Mar 2018 07:11:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 07:11:52 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 07:11:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 07:11:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Wed, 14 Mar 2018 07:11:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 07:11:54 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 07:11:54 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 07:11:54 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Wed, 14 Mar 2018 07:11:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 07:11:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 07:11:55 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 07:11:55 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ccd1a0cc23d7ab6837be3aa2f9af33195c4b20de649ee2c39e8b1a87709575ed`  
		Last Modified: Wed, 14 Mar 2018 05:26:10 GMT  
		Size: 52.8 MB (52795472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568dd957f9fe9a0b1b31d7bc9a788402552921f19ca569b02ea38e6ececd7e3f`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124fe371fdba391f4fe2074b49ffbb81c42dbdc1ff5bc67be5fb104e57c1370`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 970.3 KB (970296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daf81df21c7820de665e5a906e02c03e6b1b25866ab0ba5e7a76667f78c9a01`  
		Last Modified: Wed, 14 Mar 2018 07:35:52 GMT  
		Size: 7.1 MB (7131276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c433e77c3b166e3c1031e6a90d286f74f6851b02becacf6a85b0eee3cfb1f2f`  
		Last Modified: Wed, 14 Mar 2018 07:35:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48fd35b2809c5418f91b47e912004fac6f97a8c938b95b458c5010dbe631d152`  
		Last Modified: Wed, 14 Mar 2018 07:35:51 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134b62564c8c5a0e24dc36dc806eea71d260c7036a4cf05ee9637ab7fd540a28`  
		Last Modified: Wed, 14 Mar 2018 07:35:58 GMT  
		Size: 39.7 MB (39716036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d50582105a0a96225001f7e463dcbf76015d6b9005e56bd4c520a78d6a1376`  
		Last Modified: Wed, 14 Mar 2018 07:35:49 GMT  
		Size: 7.1 KB (7105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc003a724f1f40fb1272fd30e571cfccb5ab14f718fbe08c18001cb3dd51def`  
		Last Modified: Wed, 14 Mar 2018 07:35:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3688586cd016b42c7d96ca716a32d5d5566cd36393d3e757d5bc692c497d380`  
		Last Modified: Wed, 14 Mar 2018 07:35:49 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43c03b3de716a71ada73d74423d80fa4a17d03be08152fd93d80daa383e76ee`  
		Last Modified: Wed, 14 Mar 2018 07:35:49 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63174b07d7c51c6ac076227456579ede8c4a892bfa468f9771994ca5851d243b`  
		Last Modified: Wed, 14 Mar 2018 07:35:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.8-alpine`

```console
$ docker pull postgres@sha256:49f5c42990833857f4caa6d06437b3ce6391e830b05e07c11c6c7737be535649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6.8-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:a83f22a8b4b491033ef0d943d25a99b9d40f5d7ce3146354c6d7663db5d3035b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14738065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27674feae2a60aa84cc7ddfd13d666dc3b8089cca7177f93394dea006d7787f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:26:41 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Jan 2018 04:26:41 GMT
ENV LANG=en_US.utf8
# Wed, 10 Jan 2018 04:26:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Jan 2018 04:26:42 GMT
ENV PG_MAJOR=9.6
# Fri, 02 Mar 2018 22:09:17 GMT
ENV PG_VERSION=9.6.8
# Fri, 02 Mar 2018 22:09:17 GMT
ENV PG_SHA256=eafdb3b912e9ec34bdd28b651d00226a6253ba65036cb9a41cad2d9e82e3eb70
# Fri, 02 Mar 2018 22:11:36 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 02 Mar 2018 22:11:37 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 02 Mar 2018 22:11:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 02 Mar 2018 22:11:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 02 Mar 2018 22:11:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 02 Mar 2018 22:11:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 02 Mar 2018 22:11:39 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Fri, 02 Mar 2018 22:11:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 02 Mar 2018 22:11:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 22:11:40 GMT
EXPOSE 5432/tcp
# Fri, 02 Mar 2018 22:11:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bf519c70dfc41fc325a4d9771bb0f55ffd85a4b86bfa1d7b3bbc69d2fc2d8c`  
		Last Modified: Wed, 10 Jan 2018 04:41:24 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af56c798cc1e0da2941d090847e9dcd3bc175d165ac7a503cc7ebfed3d63d04`  
		Last Modified: Wed, 10 Jan 2018 04:41:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077cb44f64d822601ddf0b8f4f5fe4140bc489f82ae0066c647f12f0d054f69d`  
		Last Modified: Fri, 02 Mar 2018 22:26:35 GMT  
		Size: 12.8 MB (12758341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c0b4e4b112efe4f89816e0fcd787eaa4274a6d40028e4376024ff92987c98`  
		Last Modified: Fri, 02 Mar 2018 22:26:30 GMT  
		Size: 7.1 KB (7074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5aaf13584a34894a6f9c023e1b3627321b5634dcc997f72b4e5eda9fad113f`  
		Last Modified: Fri, 02 Mar 2018 22:26:30 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d107cc6da0a1c50dec2171997ca2c06a4e99de7e154b2d53282fc82910a7690`  
		Last Modified: Fri, 02 Mar 2018 22:26:30 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e963d42ebcc55269ec8547fb1e8ba32fa32c4d8b92d65716271b7c724ba764e`  
		Last Modified: Fri, 02 Mar 2018 22:26:30 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812c7e30646a4e072bdeaa3e07006225d26ce9b97e9bdeab8d1cad36abdcfdbe`  
		Last Modified: Fri, 02 Mar 2018 22:26:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:49f5c42990833857f4caa6d06437b3ce6391e830b05e07c11c6c7737be535649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:a83f22a8b4b491033ef0d943d25a99b9d40f5d7ce3146354c6d7663db5d3035b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14738065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27674feae2a60aa84cc7ddfd13d666dc3b8089cca7177f93394dea006d7787f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:26:41 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Jan 2018 04:26:41 GMT
ENV LANG=en_US.utf8
# Wed, 10 Jan 2018 04:26:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Jan 2018 04:26:42 GMT
ENV PG_MAJOR=9.6
# Fri, 02 Mar 2018 22:09:17 GMT
ENV PG_VERSION=9.6.8
# Fri, 02 Mar 2018 22:09:17 GMT
ENV PG_SHA256=eafdb3b912e9ec34bdd28b651d00226a6253ba65036cb9a41cad2d9e82e3eb70
# Fri, 02 Mar 2018 22:11:36 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 02 Mar 2018 22:11:37 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 02 Mar 2018 22:11:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 02 Mar 2018 22:11:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 02 Mar 2018 22:11:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 02 Mar 2018 22:11:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 02 Mar 2018 22:11:39 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Fri, 02 Mar 2018 22:11:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 02 Mar 2018 22:11:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 22:11:40 GMT
EXPOSE 5432/tcp
# Fri, 02 Mar 2018 22:11:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bf519c70dfc41fc325a4d9771bb0f55ffd85a4b86bfa1d7b3bbc69d2fc2d8c`  
		Last Modified: Wed, 10 Jan 2018 04:41:24 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af56c798cc1e0da2941d090847e9dcd3bc175d165ac7a503cc7ebfed3d63d04`  
		Last Modified: Wed, 10 Jan 2018 04:41:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077cb44f64d822601ddf0b8f4f5fe4140bc489f82ae0066c647f12f0d054f69d`  
		Last Modified: Fri, 02 Mar 2018 22:26:35 GMT  
		Size: 12.8 MB (12758341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c0b4e4b112efe4f89816e0fcd787eaa4274a6d40028e4376024ff92987c98`  
		Last Modified: Fri, 02 Mar 2018 22:26:30 GMT  
		Size: 7.1 KB (7074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5aaf13584a34894a6f9c023e1b3627321b5634dcc997f72b4e5eda9fad113f`  
		Last Modified: Fri, 02 Mar 2018 22:26:30 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d107cc6da0a1c50dec2171997ca2c06a4e99de7e154b2d53282fc82910a7690`  
		Last Modified: Fri, 02 Mar 2018 22:26:30 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e963d42ebcc55269ec8547fb1e8ba32fa32c4d8b92d65716271b7c724ba764e`  
		Last Modified: Fri, 02 Mar 2018 22:26:30 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812c7e30646a4e072bdeaa3e07006225d26ce9b97e9bdeab8d1cad36abdcfdbe`  
		Last Modified: Fri, 02 Mar 2018 22:26:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:49f5c42990833857f4caa6d06437b3ce6391e830b05e07c11c6c7737be535649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:a83f22a8b4b491033ef0d943d25a99b9d40f5d7ce3146354c6d7663db5d3035b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14738065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27674feae2a60aa84cc7ddfd13d666dc3b8089cca7177f93394dea006d7787f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:26:41 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 Jan 2018 04:26:41 GMT
ENV LANG=en_US.utf8
# Wed, 10 Jan 2018 04:26:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 Jan 2018 04:26:42 GMT
ENV PG_MAJOR=9.6
# Fri, 02 Mar 2018 22:09:17 GMT
ENV PG_VERSION=9.6.8
# Fri, 02 Mar 2018 22:09:17 GMT
ENV PG_SHA256=eafdb3b912e9ec34bdd28b651d00226a6253ba65036cb9a41cad2d9e82e3eb70
# Fri, 02 Mar 2018 22:11:36 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 02 Mar 2018 22:11:37 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 02 Mar 2018 22:11:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 02 Mar 2018 22:11:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 02 Mar 2018 22:11:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 02 Mar 2018 22:11:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 02 Mar 2018 22:11:39 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Fri, 02 Mar 2018 22:11:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 02 Mar 2018 22:11:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 22:11:40 GMT
EXPOSE 5432/tcp
# Fri, 02 Mar 2018 22:11:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bf519c70dfc41fc325a4d9771bb0f55ffd85a4b86bfa1d7b3bbc69d2fc2d8c`  
		Last Modified: Wed, 10 Jan 2018 04:41:24 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af56c798cc1e0da2941d090847e9dcd3bc175d165ac7a503cc7ebfed3d63d04`  
		Last Modified: Wed, 10 Jan 2018 04:41:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077cb44f64d822601ddf0b8f4f5fe4140bc489f82ae0066c647f12f0d054f69d`  
		Last Modified: Fri, 02 Mar 2018 22:26:35 GMT  
		Size: 12.8 MB (12758341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c0b4e4b112efe4f89816e0fcd787eaa4274a6d40028e4376024ff92987c98`  
		Last Modified: Fri, 02 Mar 2018 22:26:30 GMT  
		Size: 7.1 KB (7074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5aaf13584a34894a6f9c023e1b3627321b5634dcc997f72b4e5eda9fad113f`  
		Last Modified: Fri, 02 Mar 2018 22:26:30 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d107cc6da0a1c50dec2171997ca2c06a4e99de7e154b2d53282fc82910a7690`  
		Last Modified: Fri, 02 Mar 2018 22:26:30 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e963d42ebcc55269ec8547fb1e8ba32fa32c4d8b92d65716271b7c724ba764e`  
		Last Modified: Fri, 02 Mar 2018 22:26:30 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812c7e30646a4e072bdeaa3e07006225d26ce9b97e9bdeab8d1cad36abdcfdbe`  
		Last Modified: Fri, 02 Mar 2018 22:26:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:89c84fcccc147d403916f4d9964bc4d83297ea7c782d79b05dad5b6c172a7dce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:alpine` - linux; amd64

```console
$ docker pull postgres@sha256:353e84be19b5234c0660bb93caa5186b13a8bbdbd69438e9939af1bba96a3f7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14963501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4f4231d6f0b59e5ef92464c89cb31ba3b970e181635573f13e98b8a39676605`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Sun, 18 Feb 2018 02:31:30 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sun, 18 Feb 2018 02:31:31 GMT
ENV LANG=en_US.utf8
# Sun, 18 Feb 2018 02:31:32 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sun, 18 Feb 2018 02:31:32 GMT
ENV PG_MAJOR=10
# Fri, 02 Mar 2018 22:05:07 GMT
ENV PG_VERSION=10.3
# Fri, 02 Mar 2018 22:05:08 GMT
ENV PG_SHA256=6ea268780ee35e88c65cdb0af7955ad90b7d0ef34573867f223f14e43467931a
# Fri, 02 Mar 2018 22:07:29 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 02 Mar 2018 22:07:30 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 02 Mar 2018 22:07:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 02 Mar 2018 22:07:31 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 02 Mar 2018 22:07:32 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 02 Mar 2018 22:07:32 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 02 Mar 2018 22:07:32 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Fri, 02 Mar 2018 22:07:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 02 Mar 2018 22:07:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 22:07:33 GMT
EXPOSE 5432/tcp
# Fri, 02 Mar 2018 22:07:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a503b44e1ce09191fd553fe4a22ab09d16dfd3164c7d0f59c7c1a54a85545fa9`  
		Last Modified: Sun, 18 Feb 2018 02:35:11 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2117067130936383676d224fd32133e2e2e9be9847a8288271d021edede1e2b7`  
		Last Modified: Sun, 18 Feb 2018 02:35:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea28caf317dd0751f2c3b414d9fc9a6e0c16f870ce51256ab1f20945c4a5f523`  
		Last Modified: Fri, 02 Mar 2018 22:24:39 GMT  
		Size: 12.9 MB (12888214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b37749335b4d31eb69b77b4b9eaa5dd2c0b321ae251a5188ac6ce4c2a80c54`  
		Last Modified: Fri, 02 Mar 2018 22:24:32 GMT  
		Size: 7.3 KB (7267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e94ebc5400c93d98e6938e463ffd98b58adf1e9115aff2110150c8d86de338`  
		Last Modified: Fri, 02 Mar 2018 22:24:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77dd3a51253d6e36dc0ad3bf3fd566eda787dfd206483495cea81e696d4a0233`  
		Last Modified: Fri, 02 Mar 2018 22:24:32 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633a37734b127dc003dcab1c1480169500436c5f61f741cb28d62dba30fab0fd`  
		Last Modified: Fri, 02 Mar 2018 22:24:32 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872e6b940bbba5b6b9ea54c71cfc2d18351ca136c227153ea448fdc8368eb7d3`  
		Last Modified: Fri, 02 Mar 2018 22:24:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:e22b8c305561115e26608b74405a59c858fa1acb1f2fe1d7152c3c5f75608b79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14279456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c9c59fec35ec5139c57d457c8ee696b77379be37baef8aa2d7515632975ef90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:41 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Mon, 26 Feb 2018 23:48:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:42 GMT
CMD ["/bin/sh"]
# Thu, 15 Mar 2018 21:33:48 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 15 Mar 2018 21:33:49 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 21:33:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 21:33:53 GMT
ENV PG_MAJOR=10
# Thu, 15 Mar 2018 21:33:54 GMT
ENV PG_VERSION=10.3
# Thu, 15 Mar 2018 21:33:54 GMT
ENV PG_SHA256=6ea268780ee35e88c65cdb0af7955ad90b7d0ef34573867f223f14e43467931a
# Thu, 15 Mar 2018 22:12:42 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 15 Mar 2018 22:12:47 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 22:12:51 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 22:12:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 22:12:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 22:12:56 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 22:12:57 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Thu, 15 Mar 2018 22:13:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 22:13:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 22:13:03 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 22:13:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5993b3593c77413be85d318297ad8313b945069768a7e454d487fd47fa4b4343`  
		Last Modified: Mon, 26 Feb 2018 23:49:26 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2118fb81ed232392a613e92278922d79bb7f2ad14b33715d4aabafca70b3ce`  
		Last Modified: Thu, 15 Mar 2018 22:13:19 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7cec4fb2ae908cc241abcb569a057ffc5293a4d38f12600d231c5d4dd6996a4`  
		Last Modified: Thu, 15 Mar 2018 22:13:20 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:658f59ad036c7695321156db4741553ba959fe4d85d1bc60639f530cacff18c8`  
		Last Modified: Thu, 15 Mar 2018 22:13:41 GMT  
		Size: 12.2 MB (12231098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5877cc5bcea34b4ab95b6a5484ae8ae21b231c0e58f90ba98a4eb9af00e13ac`  
		Last Modified: Thu, 15 Mar 2018 22:13:16 GMT  
		Size: 7.3 KB (7275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498055b494737e3446218b1d442943aca6ef9589665597a6fead1a496de699a5`  
		Last Modified: Thu, 15 Mar 2018 22:13:16 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36566105be76c3c7b0941f8e06bf12b93dcf9ba58fe552551c77d36d61f0ea3`  
		Last Modified: Thu, 15 Mar 2018 22:13:16 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e254636972f42f6fcd9d4d244a220aa8d39a6736849cd54435a323af4a64ff`  
		Last Modified: Thu, 15 Mar 2018 22:13:16 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed646fbe123b0241713e1abc06e4446c85f8846717b12b1428bbff488515450`  
		Last Modified: Thu, 15 Mar 2018 22:13:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:669433e95b2485cd9ec121d23a6dfaf5f794a8fbd0bfe41d87a584e210714d5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13786228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a53279a58b1fddb7be5ab93a0e3ccd8b0bb81e18b21788a3496e8bff94a72a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Sun, 18 Feb 2018 15:21:15 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sun, 18 Feb 2018 15:21:16 GMT
ENV LANG=en_US.utf8
# Sun, 18 Feb 2018 15:21:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sun, 18 Feb 2018 15:21:18 GMT
ENV PG_MAJOR=10
# Sat, 03 Mar 2018 15:52:11 GMT
ENV PG_VERSION=10.3
# Sat, 03 Mar 2018 15:52:12 GMT
ENV PG_SHA256=6ea268780ee35e88c65cdb0af7955ad90b7d0ef34573867f223f14e43467931a
# Sat, 03 Mar 2018 15:56:19 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sat, 03 Mar 2018 15:56:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sat, 03 Mar 2018 15:56:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 03 Mar 2018 15:56:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 03 Mar 2018 15:56:25 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 03 Mar 2018 15:56:25 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 03 Mar 2018 15:56:26 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sat, 03 Mar 2018 15:56:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 15:56:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 15:56:29 GMT
EXPOSE 5432/tcp
# Sat, 03 Mar 2018 15:56:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b32a887a236e5d7d39764e4fd9993db95c4c900f09b4be497a01589e37cef85`  
		Last Modified: Sun, 18 Feb 2018 15:26:29 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1f330d87363983accf413df8ec516758c5479fc2e75cef865c71f55033b9a8`  
		Last Modified: Sun, 18 Feb 2018 15:26:19 GMT  
		Size: 112.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e22516e4efd4dfb4898d3f2a02592ff1171062d5b44b88b74a299ce126992ab`  
		Last Modified: Sat, 03 Mar 2018 17:55:23 GMT  
		Size: 11.8 MB (11787451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30678fee576c0ff9a936645c5cf8180dcad51b48dc18ce7e214ef6858b5f13e`  
		Last Modified: Sat, 03 Mar 2018 17:55:16 GMT  
		Size: 7.3 KB (7267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc6ef8c0e9873863f22a1c2ab3853d2687287eafd41b6a1eeec758dd0fd4bf1`  
		Last Modified: Sat, 03 Mar 2018 17:55:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73344c601a04feafa4e1c88b76c49a8e01b9398830950a834fdfd9400b7f107e`  
		Last Modified: Sat, 03 Mar 2018 17:55:16 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec884e3b5778375dc6e6f4201dcf50c1ea731e636321049742105ae92a08fe9`  
		Last Modified: Sat, 03 Mar 2018 17:55:16 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ce5a5ae408b24acedbef1dd55226713afeb95ee9fca37e03f910a427fb97ed`  
		Last Modified: Sat, 03 Mar 2018 17:55:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; 386

```console
$ docker pull postgres@sha256:d72c428d17230f8caf6641b3ac339fc5c8baabf53d695f23c2e5f94465f523b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15496011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef8be2e932015d9ad0bbe475efed8cffbcc67ea42b4ea8400000081e9d41fb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Mon, 19 Feb 2018 17:52:26 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Mon, 19 Feb 2018 17:56:09 GMT
ENV LANG=en_US.utf8
# Mon, 19 Feb 2018 17:56:09 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Feb 2018 18:00:43 GMT
ENV PG_MAJOR=10
# Sat, 03 Mar 2018 15:23:33 GMT
ENV PG_VERSION=10.3
# Sat, 03 Mar 2018 15:23:33 GMT
ENV PG_SHA256=6ea268780ee35e88c65cdb0af7955ad90b7d0ef34573867f223f14e43467931a
# Sat, 03 Mar 2018 15:26:48 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sat, 03 Mar 2018 15:26:49 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sat, 03 Mar 2018 15:26:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 03 Mar 2018 15:26:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 03 Mar 2018 15:26:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 03 Mar 2018 15:26:51 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 03 Mar 2018 15:26:51 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sat, 03 Mar 2018 15:26:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 15:26:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 15:26:53 GMT
EXPOSE 5432/tcp
# Sat, 03 Mar 2018 15:26:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2498a94418c71256dc27af94cfe9aa50813d70e766f43f60093f721c10aaf8a9`  
		Last Modified: Mon, 19 Feb 2018 19:17:11 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60011400f7e67256e147cf05b5d449438943665e05ae1fb6bceedc4f961a5a5`  
		Last Modified: Mon, 19 Feb 2018 19:17:11 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b19c5ea7a8f0fecd92692957e8696266b239c6766296cad75db78baac0843bf`  
		Last Modified: Sat, 03 Mar 2018 16:35:14 GMT  
		Size: 13.4 MB (13359867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0903e8b70709c33e6e33df5cd6795fbca2e81db965cc2b296ad0bdb67bb60bb`  
		Last Modified: Sat, 03 Mar 2018 16:35:08 GMT  
		Size: 7.3 KB (7271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c110c586d12e180b8dc09d023e2ac0b845122fa1051c19b8ff22a638092e2e9`  
		Last Modified: Sat, 03 Mar 2018 16:35:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6193bcc2d20e97d6b3b22bfc621f58a7a5a0877d4d6a7948497993b6ff0348`  
		Last Modified: Sat, 03 Mar 2018 16:35:08 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9834e22ffecf0f35ca2d36326cb77d23415263b005eb00a8af76ab58604765`  
		Last Modified: Sat, 03 Mar 2018 16:35:08 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b27668a3ba5824209ca400e750028a5243556a7d2c24dc9244e057e9d45a2f0`  
		Last Modified: Sat, 03 Mar 2018 16:35:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:3bcdb787e8cd2f01f905accfa9144280b81735f4ca09af427e91f30c24672295
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14635690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bd62f6e6f11e5e3f5caa8bcf71a10d39975dd9b99e6dc8f51626f417697101a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Sat, 17 Feb 2018 23:01:41 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 17 Feb 2018 23:01:43 GMT
ENV LANG=en_US.utf8
# Sat, 17 Feb 2018 23:01:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 23:01:48 GMT
ENV PG_MAJOR=10
# Fri, 02 Mar 2018 23:07:46 GMT
ENV PG_VERSION=10.3
# Fri, 02 Mar 2018 23:07:48 GMT
ENV PG_SHA256=6ea268780ee35e88c65cdb0af7955ad90b7d0ef34573867f223f14e43467931a
# Fri, 02 Mar 2018 23:11:08 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 02 Mar 2018 23:11:12 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 02 Mar 2018 23:11:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 02 Mar 2018 23:11:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 02 Mar 2018 23:11:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 02 Mar 2018 23:11:23 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 02 Mar 2018 23:11:25 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Fri, 02 Mar 2018 23:11:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 02 Mar 2018 23:11:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Mar 2018 23:11:33 GMT
EXPOSE 5432/tcp
# Fri, 02 Mar 2018 23:11:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a489c2288bce888c6fac93b540da6d11957e1b4920137f6f06f21ac757708c5`  
		Last Modified: Sat, 17 Feb 2018 23:05:42 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40f964dcf4eb7ac5150e2a57f549a4d89d6780315f8dbc2960a7b3de7697e08`  
		Last Modified: Sat, 17 Feb 2018 23:05:41 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201ccd0e965981adb8ecbd99b2ab57c08579c69e0bf2b2581e29b592ec58adf0`  
		Last Modified: Fri, 02 Mar 2018 23:31:21 GMT  
		Size: 12.5 MB (12544173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acd07c81f447f73f51c6014d0768cefd002884d013af33e8d3095de3911fa40`  
		Last Modified: Fri, 02 Mar 2018 23:31:13 GMT  
		Size: 7.3 KB (7267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b231e51ecd096f6de1e991269e5913d97641bf586e250ed532cadb33687d172c`  
		Last Modified: Fri, 02 Mar 2018 23:31:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae6449cad0dea97556bb46b9a037d536362c3d788ab6a7c9245181423258a28`  
		Last Modified: Fri, 02 Mar 2018 23:31:13 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f78d5a5b3ce059e29de580186070cb4b2ea98ddb4fda9c9009979b1939aa45d`  
		Last Modified: Fri, 02 Mar 2018 23:31:13 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6385a7763d27e6ae95f5883b281f8be7e4f3c15a7d457e9972f83a07eefa16`  
		Last Modified: Fri, 02 Mar 2018 23:31:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; s390x

```console
$ docker pull postgres@sha256:a494e89c32d324c6395e39b01381f3ef394e89a0e1854dae63762148c4a63c10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14579738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:071cecec7e864955427961efd14c4b1fdc2622b57890307e1ff677c20b9fd2ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 18 Feb 2018 10:25:35 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sun, 18 Feb 2018 10:25:35 GMT
ENV LANG=en_US.utf8
# Sun, 18 Feb 2018 10:25:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sun, 18 Feb 2018 10:25:36 GMT
ENV PG_MAJOR=10
# Sat, 03 Mar 2018 10:34:59 GMT
ENV PG_VERSION=10.3
# Sat, 03 Mar 2018 10:34:59 GMT
ENV PG_SHA256=6ea268780ee35e88c65cdb0af7955ad90b7d0ef34573867f223f14e43467931a
# Sat, 03 Mar 2018 10:37:42 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sat, 03 Mar 2018 10:37:42 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sat, 03 Mar 2018 10:37:43 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 03 Mar 2018 10:37:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 03 Mar 2018 10:37:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 03 Mar 2018 10:37:43 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 03 Mar 2018 10:37:44 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sat, 03 Mar 2018 10:37:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 10:37:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 10:37:44 GMT
EXPOSE 5432/tcp
# Sat, 03 Mar 2018 10:37:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2901b2cb7072f4813c9b7ac67da7313fb2a8decdce071e54219eca565c3f9dc`  
		Last Modified: Sun, 18 Feb 2018 10:28:26 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bba4f50d1c4a54c9b128d41df2bd434e0840a25d049f44eeb5827254b2f0e4a`  
		Last Modified: Sun, 18 Feb 2018 10:28:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc7504c18fda75a2793b04efaa904ecc5dea7b7a04fc85c3614fc2184f8ea87`  
		Last Modified: Sat, 03 Mar 2018 11:11:48 GMT  
		Size: 12.4 MB (12384581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c65c26e0ac87c332808764fbf6c428ef85ffaa7c1955fda0cf4c50cee2f7474`  
		Last Modified: Sat, 03 Mar 2018 11:11:44 GMT  
		Size: 7.3 KB (7271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7e80609054481194000a6ff3178b8361a87acc3763aefec587e3c8a3cefb5e9`  
		Last Modified: Sat, 03 Mar 2018 11:12:06 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd5414a7ab032bd8b39dd8c7ad1d931f4f7e8b1f79d5bf980e117d9e36de595`  
		Last Modified: Sat, 03 Mar 2018 11:11:44 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cfe5a139ec522828c7b076e4da38fe05a67427c835c0f6791d655757eb4a47`  
		Last Modified: Sat, 03 Mar 2018 11:11:44 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd81caa19617ef4d3ebf5819529551bdb1b8c46adb04f9e53c907ba16818625`  
		Last Modified: Sat, 03 Mar 2018 11:11:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:688206b4a9c0e9052337820c666c8bbeab3d86e191ee2795ca4893ecf8d6088b
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
$ docker pull postgres@sha256:ff701059135dd30a3eb25ff7c4a756463fc489d1fa541f158b45a746e916a619
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117208766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30121e967865d4c32e5a7d0a08c22c90823f32112fcac23fc527733cbb88a932`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 16:52:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 16:53:00 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 16:53:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 16:53:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 16:53:18 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 16:53:19 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 16:53:19 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 16:53:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 16:53:23 GMT
ENV PG_MAJOR=10
# Wed, 14 Mar 2018 16:53:23 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Wed, 14 Mar 2018 16:53:44 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 16:53:45 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 16:53:46 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 16:53:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Wed, 14 Mar 2018 16:53:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 16:53:47 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 16:53:47 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 16:53:47 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Wed, 14 Mar 2018 16:53:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 16:53:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 16:53:49 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 16:53:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94aaf8397f8c6d0fb16018031f4d3df03b9faf9d142f1d6337b85ae7d284ad2`  
		Last Modified: Wed, 14 Mar 2018 17:01:37 GMT  
		Size: 6.9 MB (6921121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0853c2cf63f7276625470d4f1ab58d9262370407497bbf7c6764c2679c83ce91`  
		Last Modified: Wed, 14 Mar 2018 17:01:33 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487961619c6f05e40ca7383ae356541c9a92a618abace366dcbd143278b39cc2`  
		Last Modified: Wed, 14 Mar 2018 17:01:33 GMT  
		Size: 956.7 KB (956669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3fe80b87ac6438872bf5b3932c1edc5bebd4b3e2944f1cf95c3b84fe5ad1270`  
		Last Modified: Wed, 14 Mar 2018 17:01:32 GMT  
		Size: 6.6 MB (6577639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca9a0468275305df330e9d9cb2f41c3f5e4810238e20c220556330dde8d62b0`  
		Last Modified: Wed, 14 Mar 2018 17:01:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08717267268ed8912fab875b330f03806b6c8766737faf7f6c3a4a55d66e4d4`  
		Last Modified: Wed, 14 Mar 2018 17:01:30 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e01a893aae58df0fa34734eadb93ed02911dffe4ce6990babab42b0a522419`  
		Last Modified: Wed, 14 Mar 2018 17:01:47 GMT  
		Size: 57.6 MB (57602387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a59d7eed20da36968d96939aa0a0c73099cb585c9af05bd6fac48d7e7622ae9`  
		Last Modified: Wed, 14 Mar 2018 17:01:32 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ce89955be96eb49ffadcfbf3b86d8514f78f565864b09cd3a3a88feb2d0af7`  
		Last Modified: Wed, 14 Mar 2018 17:01:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d094cdd68b6c30ff11a463ddd347616f2c2804e76cd22c287feddec17fb3dc`  
		Last Modified: Wed, 14 Mar 2018 17:01:28 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551b1e46cd6f383a15907c0982691a2a45b1a6629c7d5ba382d07af8d78ac47d`  
		Last Modified: Wed, 14 Mar 2018 17:01:28 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3591a6c2a192fb49f29af4cefe4ed133d908ad0c89023f114e2817617e403fa`  
		Last Modified: Wed, 14 Mar 2018 17:01:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v5

```console
$ docker pull postgres@sha256:42df1fa4c34b1308de7a2e51b1f6bc162c8a8b0e1f70adfdedb7a1a528c292cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.5 MB (116506845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8cae6cd641284f8030bb2b3b08547d0ca8eccdbfc8e5fcf30b8ae4e2be0d335`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:02 GMT
ADD file:df0457084f7e40c64d40dd7ffb2d5365160faee6f8b02c443bc3d1cb36a0f40d in / 
# Wed, 14 Mar 2018 20:01:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:30:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 21:30:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 21:30:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 21:31:15 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 21:31:26 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Mar 2018 21:31:27 GMT
ENV LANG=en_US.utf8
# Wed, 14 Mar 2018 21:31:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 21:31:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 21:31:32 GMT
ENV PG_MAJOR=10
# Wed, 14 Mar 2018 21:31:32 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Wed, 14 Mar 2018 21:51:00 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 14 Mar 2018 21:51:01 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Mar 2018 21:51:02 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 14 Mar 2018 21:51:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Wed, 14 Mar 2018 21:51:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Mar 2018 21:51:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 14 Mar 2018 21:51:04 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Mar 2018 21:51:05 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Wed, 14 Mar 2018 21:51:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 21:51:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 21:51:07 GMT
EXPOSE 5432/tcp
# Wed, 14 Mar 2018 21:51:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:25301cba2d4ef04878f7296fe55faa4b0b2fafbc29758d9fca5a199350d7827c`  
		Last Modified: Wed, 14 Mar 2018 20:12:18 GMT  
		Size: 43.8 MB (43819573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcd22cc643ce33ee7dd8f2087cbf6a8c2a37ce6b745c0532ed40aabbfef4f66`  
		Last Modified: Wed, 14 Mar 2018 23:06:32 GMT  
		Size: 6.7 MB (6654968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd309ba29defb6570d03db357d16a1945aad44ccf54a18b7c161647fc7b43d9`  
		Last Modified: Wed, 14 Mar 2018 23:06:31 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2cb30058939b8753113d242bb2c866fdf6fe642cf73c3c1d21b83296496e2bd`  
		Last Modified: Wed, 14 Mar 2018 23:06:30 GMT  
		Size: 946.8 KB (946773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1642ce7eda1608fe463dbdea9727429b5e14875e8db9e2e31b0f4b147881c3`  
		Last Modified: Wed, 14 Mar 2018 23:06:31 GMT  
		Size: 6.6 MB (6577822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854fde913950b7900c41f5f7d666bb449ff5a67771ab81164ad741170037309`  
		Last Modified: Wed, 14 Mar 2018 23:06:29 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d82e5d7fd3123dd562e4a0867f0ae4e8240612d1b30f5678cba003d89f098da`  
		Last Modified: Wed, 14 Mar 2018 23:06:28 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70facabd4e892a96d8093c06f1b8d78c6c7ae1929cdcc4744219c1439522635f`  
		Last Modified: Wed, 14 Mar 2018 23:06:47 GMT  
		Size: 58.5 MB (58491782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0bb5ec552d6a66d670c678fa77b3220cc490db840a515fba39dac467c5f840`  
		Last Modified: Wed, 14 Mar 2018 23:06:27 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f6abdd61b24a03e260f8a54a1e53c2ca061628eadbe2653b42acf423ba8d5c`  
		Last Modified: Wed, 14 Mar 2018 23:06:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76fe0b0db3a012a8be0d9b76005f3cb995052b7c996c85685987a2423cbefa4b`  
		Last Modified: Wed, 14 Mar 2018 23:06:27 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12c888e0dd754d046733783d906c8a6ad718574c5dde99afa2e24e76678086a`  
		Last Modified: Wed, 14 Mar 2018 23:06:29 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444a2b3f448b1e14079b56153e1e419304911792c85c0e0e79e9a8b519941f4b`  
		Last Modified: Wed, 14 Mar 2018 23:06:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v7

```console
$ docker pull postgres@sha256:eb8995c21cf02d64a79b32b11065c97746298d66b43de555e696a446f23a164c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.6 MB (178569315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fdecaf51fe601124b5b9c5fedcf58e72f0cf0bc17b609dcb471d68b2b11db7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 12:25:46 GMT
ADD file:6208a77a3fff4a68790f06b1b3a3e0fcb563724a9d1485d8e10592e2cf32b190 in / 
# Wed, 14 Mar 2018 12:25:46 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 03:38:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 03:38:37 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 28 Mar 2018 03:38:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 28 Mar 2018 03:38:51 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 28 Mar 2018 03:38:59 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 28 Mar 2018 03:39:00 GMT
ENV LANG=en_US.utf8
# Wed, 28 Mar 2018 03:39:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Mar 2018 03:39:06 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 28 Mar 2018 03:39:06 GMT
ENV PG_MAJOR=10
# Wed, 28 Mar 2018 03:39:07 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Wed, 28 Mar 2018 03:54:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 28 Mar 2018 03:54:51 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 28 Mar 2018 03:54:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 28 Mar 2018 03:54:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Wed, 28 Mar 2018 03:54:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 28 Mar 2018 03:54:53 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 28 Mar 2018 03:54:53 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 28 Mar 2018 03:54:54 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Wed, 28 Mar 2018 03:54:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 28 Mar 2018 03:54:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Mar 2018 03:54:55 GMT
EXPOSE 5432/tcp
# Wed, 28 Mar 2018 03:54:55 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8c1aa76b118f0b6f588a119501660e6c6984f1c8af222f2b04be33b64cada0c2`  
		Last Modified: Wed, 14 Mar 2018 12:37:22 GMT  
		Size: 44.1 MB (44078135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3ffdc7c95f36f6ab3e6038438d851ea38ba046a53ece176f2d35caddc75ba0`  
		Last Modified: Wed, 28 Mar 2018 04:53:11 GMT  
		Size: 9.0 MB (9002659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2af83fb1e1d8a7b0c24b01595114df2abbbb688d606c8ff88ba7694efeb348c`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 1.9 KB (1862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e342156e061add8ad9dfb369b32b557de2b001028dff9350b5fb1cf9e78f6a90`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 937.8 KB (937792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1f846fdb0dda2e9e8ae7b68700b39337abdba0a58c7bd33fab39e1ab982fed`  
		Last Modified: Wed, 28 Mar 2018 04:53:10 GMT  
		Size: 7.4 MB (7397480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f19e12270249fafb855a0d74b265a13e05a55d791b8beee9e9f2780ecca1aea`  
		Last Modified: Wed, 28 Mar 2018 04:53:08 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803ad1f3db776e5dcdf942153b71efa528356ea4fae29713b6b241c9c84f655e`  
		Last Modified: Wed, 28 Mar 2018 04:53:07 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2137ab972c1572c6a08e09637f16e8b74dbbe82bbc966ea52104141b3a29a9db`  
		Last Modified: Wed, 28 Mar 2018 04:53:39 GMT  
		Size: 117.1 MB (117137200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae40a6d22c046196abd48b10d49ded45bbfe29548dcd036e467bc3d4436628c`  
		Last Modified: Wed, 28 Mar 2018 04:53:06 GMT  
		Size: 7.3 KB (7302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef782d6343fbe0b2353ebeaf76236d6326a427fa971aaa07c78770fb11d9bc9`  
		Last Modified: Wed, 28 Mar 2018 04:53:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ef52526e24f86a307a3a552c43ab24651758ae678e757dc691dc1b9c9e18c9`  
		Last Modified: Wed, 28 Mar 2018 04:53:06 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125bdb6f664a756e9f5149995e47dfeeec63b9bef85b191a64af4690d723d53d`  
		Last Modified: Wed, 28 Mar 2018 04:53:06 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d474153b8e3f14e4ba89f409a36fd4e656053b198353525ab3e5eb3756b6e77`  
		Last Modified: Wed, 28 Mar 2018 04:53:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:7959615a26da8fb38991d6a84e8c2deb70216040bb3ddec9ce386fae2edc53cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114470058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:234c75743f8e15319bf6b503e54e4f3646b503efca9939c89294c5e83159cf4c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 00:33:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 00:33:57 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 00:33:58 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 00:34:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 00:34:51 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 00:34:56 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 00:34:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 00:35:01 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 00:35:14 GMT
ENV PG_MAJOR=10
# Thu, 15 Mar 2018 00:35:14 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Thu, 15 Mar 2018 01:10:42 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 01:10:44 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 01:10:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 01:11:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Thu, 15 Mar 2018 01:11:01 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 01:11:03 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 01:11:04 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 01:11:05 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 15 Mar 2018 01:11:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 01:11:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 01:11:22 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 01:11:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742fb531d5f1aa10aeee51aea3fac73644b2c5579e911a7adab2615eb1c0bef1`  
		Last Modified: Thu, 15 Mar 2018 03:36:11 GMT  
		Size: 6.5 MB (6496326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed4564bac9b9ff1cb34456125abae468bba79985c0a574c685c941e3c8589bd7`  
		Last Modified: Thu, 15 Mar 2018 03:36:08 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9496af3c9e1a3980823e13c748b721092ed4508991e4cbb22c624de2302bd7e`  
		Last Modified: Thu, 15 Mar 2018 03:36:08 GMT  
		Size: 924.3 KB (924289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe0248633a050d1750baf17453bed3f178aaca2d9425822c3fd1615c809cd79`  
		Last Modified: Thu, 15 Mar 2018 03:36:13 GMT  
		Size: 6.6 MB (6577545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195dcc28c9087b68be81755f295d3d8835c38d07c8fa98a7b98276f36b35ae35`  
		Last Modified: Thu, 15 Mar 2018 03:36:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96614583066fd537d808ffb5ab93b172a59b1eef8a57c04f5473ef95bcf6c9e`  
		Last Modified: Thu, 15 Mar 2018 03:36:07 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb10d152128bff78acfdbcaee10bff477c75854f5c6eff49ed8e420d89b3a54`  
		Last Modified: Thu, 15 Mar 2018 03:36:27 GMT  
		Size: 57.5 MB (57548199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc658c47ad5f92586eaea78191f647086499bcd7dd294249ddb1e78a6e065767`  
		Last Modified: Thu, 15 Mar 2018 03:36:05 GMT  
		Size: 7.3 KB (7301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aabcb9a7677a244b1d5795e27d2525899983e10ffadee6ee901462c641ca013`  
		Last Modified: Thu, 15 Mar 2018 03:36:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206de354f6a3a3604b9d0383d13dfc5b46d74c29a517bcbc20464064ec71bd45`  
		Last Modified: Thu, 15 Mar 2018 03:36:05 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76c0aa6042d67a3eba44bacc027f6e037d81affa1143423bd84db94572f9a18`  
		Last Modified: Thu, 15 Mar 2018 03:36:05 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cd5eb945a5c308cbca6e3b26d7d8bff59e3a54028b59b3ae9789828f1d78b9`  
		Last Modified: Thu, 15 Mar 2018 03:36:05 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; 386

```console
$ docker pull postgres@sha256:6da148b171968aeab56a0b7c9a6417bd30d80fda2e2f53c6a5eb6229989f273b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.3 MB (119282274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d25c624578613fed87ec17545ab70aba3c6a3b1320378fc9a793588fa454774e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 18:12:00 GMT
ADD file:efda076eaa7f21dc730f082db8e71fd3465cb5b7fda01796074ec390e25d312b in / 
# Thu, 15 Feb 2018 18:24:00 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 14:24:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 14:26:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 16 Feb 2018 14:26:22 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 14:28:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Feb 2018 14:34:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 16 Feb 2018 14:34:33 GMT
ENV LANG=en_US.utf8
# Fri, 16 Feb 2018 14:34:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Feb 2018 14:34:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Feb 2018 14:34:38 GMT
ENV PG_MAJOR=10
# Sat, 03 Mar 2018 15:04:20 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Sat, 03 Mar 2018 15:04:59 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 03 Mar 2018 15:05:00 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 03 Mar 2018 15:05:01 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 03 Mar 2018 15:05:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Sat, 03 Mar 2018 15:05:02 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 03 Mar 2018 15:05:03 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 03 Mar 2018 15:05:03 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 03 Mar 2018 15:05:04 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Sat, 03 Mar 2018 15:05:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 15:05:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 15:05:05 GMT
EXPOSE 5432/tcp
# Sat, 03 Mar 2018 15:05:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9e00c93ed72d016aab52ea3c3a3423ddc9ea91d0005937106ed39c4005989991`  
		Last Modified: Thu, 15 Feb 2018 01:16:02 GMT  
		Size: 45.8 MB (45837726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58335890e26ea82aabf5cb7b94a2ce9c8684db5edc43306f4091740b56ca652d`  
		Last Modified: Fri, 16 Feb 2018 15:00:17 GMT  
		Size: 7.2 MB (7225945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f52524840b4c9050b676763a239e8516043627ce912f92f8a5ca340977fa746`  
		Last Modified: Fri, 16 Feb 2018 15:00:13 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e93b8dc6e434e12cb8256a2c341d8bbef58670cfd62feaa769aa1e480168b5`  
		Last Modified: Fri, 16 Feb 2018 15:00:11 GMT  
		Size: 936.5 KB (936496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76a4fc97c7f44414ddd5c2bb285475c05da732522d84201326ea169ef41fef08`  
		Last Modified: Fri, 16 Feb 2018 15:00:15 GMT  
		Size: 6.6 MB (6577474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9b5b94ff20d27f5001c7372e30bc52baff15b629d43d2aaa2d526ecaae6f71`  
		Last Modified: Fri, 16 Feb 2018 15:00:11 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e670ed1bd76e0c26268a12dafee75a0ce35d423137494764dc0aa90989ae94`  
		Last Modified: Fri, 16 Feb 2018 15:00:10 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af55e53bb1dd7c4a7afa5ac75c64675aa682a3a651e9c7af054c8167ef345eb1`  
		Last Modified: Sat, 03 Mar 2018 16:15:35 GMT  
		Size: 58.7 MB (58688766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1466eb4c837a10e3701a28927225c0ada1b0a067b20048b7334b276840376682`  
		Last Modified: Sat, 03 Mar 2018 16:15:16 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac99d1874f112cb90581242b4b7b9782da742417dd731d81da6cd2b484f2ccc1`  
		Last Modified: Sat, 03 Mar 2018 16:15:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db69f0d24cc2bfbba47608b229faa367c60ba3aa0676881acb74acfcb948dde`  
		Last Modified: Sat, 03 Mar 2018 16:15:15 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b56e38646f8f13f4c918ad38b85917f539afcc5885e8eae3442bbb7c5b6347`  
		Last Modified: Sat, 03 Mar 2018 16:15:16 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabf8247e5be6cf3b6f9dfde4c0574c6ff32cc070bdcfaffdce693cd7c49b7df`  
		Last Modified: Sat, 03 Mar 2018 16:15:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; ppc64le

```console
$ docker pull postgres@sha256:7312c98cd6aa60aca6c00eda1182a05f39ef00c552c3732434652605c9e6c78f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117128213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:744698ea06b0c4a6f7ce4c3f4cedfef3b62409da8522ede8bd9d4cc77062f7a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:46:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 03:46:31 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Mar 2018 03:46:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Mar 2018 03:47:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Mar 2018 03:48:07 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Mar 2018 03:48:09 GMT
ENV LANG=en_US.utf8
# Thu, 15 Mar 2018 03:48:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Mar 2018 03:48:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Mar 2018 03:48:45 GMT
ENV PG_MAJOR=10
# Thu, 15 Mar 2018 03:48:47 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Thu, 15 Mar 2018 03:53:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Mar 2018 03:53:32 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Mar 2018 03:53:36 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Mar 2018 03:53:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Thu, 15 Mar 2018 03:53:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Mar 2018 03:53:42 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Mar 2018 03:53:44 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Mar 2018 03:53:46 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 15 Mar 2018 03:53:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Mar 2018 03:53:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Mar 2018 03:53:57 GMT
EXPOSE 5432/tcp
# Thu, 15 Mar 2018 03:54:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e700b8d90094d3bbf679f34a49eaced5d3335039b8766cca7ea80dbebf5d426d`  
		Last Modified: Thu, 15 Mar 2018 04:30:53 GMT  
		Size: 6.8 MB (6784046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a139e050bed75157f232c53a7abac69e8a85cb562bdaf0ae8fbe1c887bbe9133`  
		Last Modified: Thu, 15 Mar 2018 04:30:50 GMT  
		Size: 1.8 KB (1757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73940be0507e695b04e21c55675e9f40bc9f5e7abd51262f434e62c2ca83992`  
		Last Modified: Thu, 15 Mar 2018 04:30:50 GMT  
		Size: 925.6 KB (925565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45dc4e562aac70b7f650ce7ee2887d44a8380b4aefff8989efe5d2f274fe666`  
		Last Modified: Thu, 15 Mar 2018 04:30:50 GMT  
		Size: 6.6 MB (6577961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c700103927d3d4837c91132639ae88f5345f4d1f84cf7a4f47d75ae687788ab`  
		Last Modified: Thu, 15 Mar 2018 04:30:48 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf85671134843b8ba6b5285f1b33b99fa68162db253052e11658e2e24bbb28cd`  
		Last Modified: Thu, 15 Mar 2018 04:30:48 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da346bddcfa62fcad1ee6ce1d7e8036017e128abce7a926515e865e9f80aadd`  
		Last Modified: Thu, 15 Mar 2018 04:31:03 GMT  
		Size: 57.4 MB (57447648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19815a652f24143bf840b9ebc1d0f4d7405137099270fbc0fe3704c07a11a242`  
		Last Modified: Thu, 15 Mar 2018 04:30:45 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab667313607b793dd75558ab6d90267f0ec876ccb39707155e26f2fdc0c03796`  
		Last Modified: Thu, 15 Mar 2018 04:30:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc0d774869f1ceee2909c5e85353b7a4bbca1e480053c536f077aab52947c11`  
		Last Modified: Thu, 15 Mar 2018 04:30:45 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4c62305bd0abdf2ef81fa08a554f4990674f6aa854342652c813624533583b`  
		Last Modified: Thu, 15 Mar 2018 04:30:45 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f84b7b1b403e55f5c2893243294734a146ab736e7830eb0c9b52ea970c6c703`  
		Last Modified: Thu, 15 Mar 2018 04:30:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; s390x

```console
$ docker pull postgres@sha256:f8cdcfa93e9d12ef7d32873d39d3ecfc0041fa2f1c11ea1b48ff66a7c0cd07a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119401162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa480c02396619d77053de54c48187370738754d56281c7038d41fcf1976bed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 14 Mar 2018 05:23:49 GMT
ADD file:0d1edaf8dfadb3f8f127a53726a33b0679e90f8d66b891fa1434e47535999cc2 in / 
# Wed, 14 Mar 2018 05:23:50 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:01:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 07:01:59 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Mar 2018 07:01:59 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Mar 2018 05:49:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Mar 2018 05:49:11 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 16 Mar 2018 05:49:11 GMT
ENV LANG=en_US.utf8
# Fri, 16 Mar 2018 05:49:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Mar 2018 05:49:14 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Mar 2018 05:49:14 GMT
ENV PG_MAJOR=10
# Fri, 16 Mar 2018 05:49:15 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Fri, 16 Mar 2018 05:58:25 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Mar 2018 05:58:26 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 16 Mar 2018 05:58:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 16 Mar 2018 05:58:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 16 Mar 2018 05:58:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 16 Mar 2018 05:58:27 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 16 Mar 2018 05:58:27 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 16 Mar 2018 05:58:28 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Fri, 16 Mar 2018 05:58:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Mar 2018 05:58:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Mar 2018 05:58:29 GMT
EXPOSE 5432/tcp
# Fri, 16 Mar 2018 05:58:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4777ebf2c92e16819bdac8f1861addbd58c0ed81dbb208e677f5bc404331f1df`  
		Last Modified: Wed, 14 Mar 2018 05:28:34 GMT  
		Size: 45.0 MB (44977147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f415a03836a1559e732e5c66df383a374bd151f75b935cbd716918420fd8c5d9`  
		Last Modified: Fri, 16 Mar 2018 05:59:05 GMT  
		Size: 7.0 MB (6952964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6b189c9a01938409033dd8b21de4f99582365b2fddd9586f20e619c8c39f40`  
		Last Modified: Fri, 16 Mar 2018 05:59:05 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36825e3e9692781a7531b8c7aaaa30b740ddb915f8c140ff41b53673938a7313`  
		Last Modified: Fri, 16 Mar 2018 05:59:04 GMT  
		Size: 942.4 KB (942378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86b7c6b26f53f5309e6515d7204b954c8c5a4941f46b53715f830c58ddc1389`  
		Last Modified: Fri, 16 Mar 2018 05:59:05 GMT  
		Size: 6.6 MB (6601330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc117b370b010c5afda830b5fb675a76f2e7b276d2b44313d2084d75b8e7252f`  
		Last Modified: Fri, 16 Mar 2018 05:59:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292064ed7fa702116a08d04ee020edbce7782aa5d3afd2060b3602015f781b0f`  
		Last Modified: Fri, 16 Mar 2018 05:59:03 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4acb654312a8f6306ffc13758a524e9e4b4b39fc344c3453296bf848d478312b`  
		Last Modified: Fri, 16 Mar 2018 05:59:14 GMT  
		Size: 59.9 MB (59911467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5775596edf8b2dffe68bf143c055b97548e12d8dc186fd6052095452f4e7ee`  
		Last Modified: Fri, 16 Mar 2018 05:59:01 GMT  
		Size: 7.3 KB (7299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de14416bb0278134d1e06a06ba7348da6c90e6ddc0206745b16a924b52eae8`  
		Last Modified: Fri, 16 Mar 2018 05:59:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92d5585448b171267708d503fe31fc4b0afb3984927689fac1008e7fe8a5d9ab`  
		Last Modified: Fri, 16 Mar 2018 05:59:01 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a28273760900064a018392ad2ce0fb7e950effae2d763dfbd71334955dfae9`  
		Last Modified: Fri, 16 Mar 2018 05:59:01 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e178227a113e54dd29e11e07cfe4513221f4a2729d7193e13c92ebf790f199`  
		Last Modified: Fri, 16 Mar 2018 05:59:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
