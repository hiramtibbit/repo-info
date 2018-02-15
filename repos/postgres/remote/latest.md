## `postgres:latest`

```console
$ docker pull postgres@sha256:8d6ef8c5043a929f4a07f2c07589f7c15960694fcd063da94bd945931bd9c634
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
$ docker pull postgres@sha256:76cd0810eabda72a9d3ee2551bb12a133f032b9003f78ccef4609d59cd9287f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117056068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e3b6a866c37f64ef035bfae5dc2cbb1470d7445d9f0c2462c161d75bc233c8b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:04:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 06:04:06 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 12 Dec 2017 06:04:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 06:04:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 06:04:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 12 Dec 2017 06:04:44 GMT
ENV LANG=en_US.utf8
# Tue, 12 Dec 2017 06:04:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 06:04:48 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 06:04:48 GMT
ENV PG_MAJOR=10
# Thu, 08 Feb 2018 23:55:20 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Thu, 08 Feb 2018 23:55:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 08 Feb 2018 23:55:47 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 08 Feb 2018 23:55:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Feb 2018 23:55:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Thu, 08 Feb 2018 23:55:48 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Feb 2018 23:55:49 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Feb 2018 23:55:49 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Feb 2018 23:55:50 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 08 Feb 2018 23:55:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Feb 2018 23:55:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Feb 2018 23:55:51 GMT
EXPOSE 5432/tcp
# Thu, 08 Feb 2018 23:55:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ec0e6c372cb6a90b3c04cab7c4134482753e799da4c656f788d7cd49e96518`  
		Last Modified: Tue, 12 Dec 2017 06:14:23 GMT  
		Size: 6.9 MB (6920957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1542fb91f3cd6043831f02c687a7dbfd4d379887287f397fc6cfb6288cccd3`  
		Last Modified: Tue, 12 Dec 2017 06:14:21 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7195e6423888bfbdb8384d7fded1fa5c7db1699a30ba5058cf48ce3abab3b63`  
		Last Modified: Tue, 12 Dec 2017 06:14:18 GMT  
		Size: 956.7 KB (956678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95424deca6a23c0774b150aac53a17ccc9a1fdcb33d20e9db0c74aa5b2ac5995`  
		Last Modified: Tue, 12 Dec 2017 06:14:20 GMT  
		Size: 6.6 MB (6577482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7d4b3a4ce29f536e447c68e63cb887ac105090f61ee19754495787afb52077`  
		Last Modified: Tue, 12 Dec 2017 06:14:17 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbde41d4a8cce145353a8a71a3f19e3d3085c8996636a92bf7a4f022f93f72f5`  
		Last Modified: Tue, 12 Dec 2017 06:14:17 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a0cfa9789de6c5caac1850569ddd6c64a167a78d7fd238a9f13b31a6647c18`  
		Last Modified: Fri, 09 Feb 2018 00:17:56 GMT  
		Size: 57.5 MB (57463445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371d656a7cd4151d99b7fecd621435f218dc371744d7c30ca7d6c8b6bb9c6e55`  
		Last Modified: Fri, 09 Feb 2018 00:17:34 GMT  
		Size: 7.3 KB (7302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b98f92bd47891cb788477f1b47ce4a3e0adf579e054441be69243be948c4730`  
		Last Modified: Fri, 09 Feb 2018 00:17:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1899e851087967cceedeb4387b5eef051283765c5f443cd6beb945ffa61527f9`  
		Last Modified: Fri, 09 Feb 2018 00:17:34 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d421aa09a81faf4b3392a974eacf2545ad30c8e453dc6fc6e77bf1a2e01fd7a`  
		Last Modified: Fri, 09 Feb 2018 00:17:34 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8423a5b1da74feae9cf379561a80055fef8759fb28a63cc1a91f839d356cfb72`  
		Last Modified: Fri, 09 Feb 2018 00:17:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v5

```console
$ docker pull postgres@sha256:6193dc7bc6ded09d8ad111c60eeebee5600b3b1c758b144ba09bb758f2cc8e4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116355233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7812389f20a87aca3e12399597d66641b3ec1233291783b074b0ee8b417f63e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 12 Dec 2017 21:01:46 GMT
ADD file:f8517f9f02293861c50bd41f708eb4f907ae9a1d2f9b6c917602b677f174fbc0 in / 
# Tue, 12 Dec 2017 21:01:46 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:32:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 21:32:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 12 Dec 2017 21:32:39 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 21:33:00 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 21:33:10 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 12 Dec 2017 21:33:11 GMT
ENV LANG=en_US.utf8
# Tue, 12 Dec 2017 21:33:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 21:33:15 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 21:33:15 GMT
ENV PG_MAJOR=10
# Fri, 09 Feb 2018 07:38:37 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Fri, 09 Feb 2018 07:58:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 09 Feb 2018 07:58:31 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 09 Feb 2018 07:58:32 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Feb 2018 07:58:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 09 Feb 2018 07:58:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Feb 2018 07:58:33 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Feb 2018 07:58:33 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Feb 2018 07:58:33 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Fri, 09 Feb 2018 07:58:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Feb 2018 07:58:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Feb 2018 07:58:34 GMT
EXPOSE 5432/tcp
# Fri, 09 Feb 2018 07:58:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b858507a828940bb4f637f38191bc4c62a00a6857fcddefc11c003815277c27d`  
		Last Modified: Tue, 12 Dec 2017 21:11:55 GMT  
		Size: 43.8 MB (43809184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a32022aee9c79063e1da081793dd0f770b76e58befac5dd7b8f5c3e369cf1d3`  
		Last Modified: Tue, 12 Dec 2017 23:10:31 GMT  
		Size: 6.7 MB (6654716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f638de1be7804f1c9663a1ddba036ac348d4a7e4e018205f8f3610579ce9f60`  
		Last Modified: Tue, 12 Dec 2017 23:10:29 GMT  
		Size: 1.7 KB (1736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d773eee6a7e577470b6b14e7c4d15e18fdf6d8a1af6e71fd4a5346f4f28c9818`  
		Last Modified: Tue, 12 Dec 2017 23:10:29 GMT  
		Size: 946.7 KB (946702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:963848217fb3ba6be62c20b28081355d6753cd4e38e48f708080e4c9260c79d2`  
		Last Modified: Tue, 12 Dec 2017 23:10:30 GMT  
		Size: 6.6 MB (6577492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6df2d996e2cadea20571070f2d865a22ca85c298525037056d0840a370c1364`  
		Last Modified: Tue, 12 Dec 2017 23:10:27 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c069cce57ffaf4014bcbdf9e9471c6fd893868a645d0f923f22b408f0f674266`  
		Last Modified: Tue, 12 Dec 2017 23:10:27 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a36f74d7d55b562a0985355c9a7193534a61c389ae187c2e612f11d8dd5613d1`  
		Last Modified: Fri, 09 Feb 2018 09:11:14 GMT  
		Size: 58.4 MB (58351213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6163b7fd66b019b07ab41d8a8e2b0b17d1ababc713ccd603ed76e91fd8bfe7`  
		Last Modified: Fri, 09 Feb 2018 09:10:55 GMT  
		Size: 7.3 KB (7299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08bf85fbd7c03fb843be4c988a84e5dc6a6414ba65a8cefc36e409079aca340a`  
		Last Modified: Fri, 09 Feb 2018 09:10:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2912121bce2135dbc531690bb2382f776048e172c986467c389aa5e18cb7ba71`  
		Last Modified: Fri, 09 Feb 2018 09:10:55 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1119ebf9f192e965e12a8e27c99f7e2ebf6a1f4b26e458a83221068a11b0f2`  
		Last Modified: Fri, 09 Feb 2018 09:10:55 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60220732db5d950093547df1cb33b5c4619c517cd3b8ec8e65c386ee5a93a2a0`  
		Last Modified: Fri, 09 Feb 2018 09:10:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v7

```console
$ docker pull postgres@sha256:69d80c5f12bbd9c179527cc0bc4422ddb70c658693acafa4aeb13ab503914aa1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112313445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f72768baaa84bc762adea5fe90c170e97997ed4105c7247d091939abf7d2e61b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 15:04:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 15:04:54 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 12 Dec 2017 15:04:55 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 15:05:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 15:05:20 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 12 Dec 2017 15:05:21 GMT
ENV LANG=en_US.utf8
# Tue, 12 Dec 2017 15:05:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 15:05:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 15:05:26 GMT
ENV PG_MAJOR=10
# Fri, 09 Feb 2018 04:38:38 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Fri, 09 Feb 2018 04:55:45 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 09 Feb 2018 04:55:46 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 09 Feb 2018 04:55:47 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Feb 2018 04:55:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 09 Feb 2018 04:55:47 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Feb 2018 04:55:48 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Feb 2018 04:55:48 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Feb 2018 04:55:49 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Fri, 09 Feb 2018 04:55:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Feb 2018 04:55:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Feb 2018 04:55:50 GMT
EXPOSE 5432/tcp
# Fri, 09 Feb 2018 04:55:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0e10ef01c84000f6f5865b480436e689e2d437a4a8b63b01d5ce85532872b636`  
		Last Modified: Tue, 12 Dec 2017 13:44:34 GMT  
		Size: 41.8 MB (41849695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2599f010d2f5fb532162b70eff65c28f3584453560bd1faa791fe864c351df`  
		Last Modified: Tue, 12 Dec 2017 16:36:10 GMT  
		Size: 6.3 MB (6291957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d8a748f685454cf039464afdcb76cc69c7a1327c6cb5b6bd1e9ad738e9d3d3`  
		Last Modified: Tue, 12 Dec 2017 16:36:08 GMT  
		Size: 1.7 KB (1735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c82ae4a81ae1398f9f660030dcb2954426785de444e3ee5d558b2a3fb597427`  
		Last Modified: Tue, 12 Dec 2017 16:36:08 GMT  
		Size: 931.3 KB (931263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88c7f6987c9a35404318d4344f07d57f40eb56234d35264a10b5264480ab921`  
		Last Modified: Tue, 12 Dec 2017 16:36:09 GMT  
		Size: 6.6 MB (6577502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e223c055523452722c0fe45309637cf4545df6c169e33212360de546812f5c8`  
		Last Modified: Tue, 12 Dec 2017 16:36:07 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e81a89f2c1f8fa56e790df5d89432c40b029e3cf58e0186cbb0ead0defa9b51`  
		Last Modified: Tue, 12 Dec 2017 16:36:07 GMT  
		Size: 4.5 KB (4483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ae69f7728f9a2ec264b24d8eaf5d5b126705f2c902adc08bf38e7f588d1149a`  
		Last Modified: Fri, 09 Feb 2018 06:01:50 GMT  
		Size: 56.6 MB (56647101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8875b96c3e91a10bf9d7b5c47e99d3d52758515297b5e55c00bcd1c3d73864fb`  
		Last Modified: Fri, 09 Feb 2018 06:01:33 GMT  
		Size: 7.3 KB (7299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dcd6f00f9dc897500bfc921fb835f84660c1d46f6c413d958db280084b0d974`  
		Last Modified: Fri, 09 Feb 2018 06:01:32 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12177a3a14b60dcf911c0636aea5e0feeb7df1c2688e921bb2c4838fc6187bf2`  
		Last Modified: Fri, 09 Feb 2018 06:01:32 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9d5368a3ae3396739e5b0b449e06158a237c5766dfd2b3537fa223508abd29`  
		Last Modified: Fri, 09 Feb 2018 06:01:33 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6ce00aa9a8bcf6459c73b2d0def8273749957420cca4e581625ffbdfdda886`  
		Last Modified: Fri, 09 Feb 2018 06:01:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:66fd8a45482f88f327b4e31c06a345a79e6b618d219a923d4500c3555f345aaf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114337125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22a89302778c97d41fe1a00cfcb7bbd68aabff4fd0a3ba5159b0643124a24809`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Wed, 20 Dec 2017 15:21:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 20 Dec 2017 15:21:08 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 20 Dec 2017 15:21:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Dec 2017 15:21:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 20 Dec 2017 15:21:56 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 20 Dec 2017 15:21:57 GMT
ENV LANG=en_US.utf8
# Wed, 20 Dec 2017 15:21:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 20 Dec 2017 15:22:17 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 20 Dec 2017 15:22:18 GMT
ENV PG_MAJOR=10
# Fri, 09 Feb 2018 15:21:02 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Fri, 09 Feb 2018 15:52:02 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 09 Feb 2018 15:52:05 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 09 Feb 2018 15:52:07 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Feb 2018 15:52:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 09 Feb 2018 15:52:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Feb 2018 15:52:10 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Feb 2018 15:52:11 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Feb 2018 15:52:11 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Fri, 09 Feb 2018 15:52:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Feb 2018 15:52:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Feb 2018 15:52:15 GMT
EXPOSE 5432/tcp
# Fri, 09 Feb 2018 15:52:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d9dff990dbf5b642087b5ca02d15db02b52b9abe3fe54df8ec88a5bcd55e92`  
		Last Modified: Wed, 20 Dec 2017 17:49:09 GMT  
		Size: 6.5 MB (6496071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1ab0a4c55a516cbcec2f3d24795f6209ebec0d1a490154b942062522d25f60`  
		Last Modified: Wed, 20 Dec 2017 17:49:07 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca19bf0c151f0891d5afe75c165fe5bc7bce97ae4cdae552175a632e17947b01`  
		Last Modified: Wed, 20 Dec 2017 17:49:07 GMT  
		Size: 924.2 KB (924245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500497e77334b6587e9462e2e63064cc3a5d3ea4cef1efb43de05d74c5b28659`  
		Last Modified: Wed, 20 Dec 2017 17:49:08 GMT  
		Size: 6.6 MB (6577341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be521acff6ab2de814f05803aa71e43f1081118ffd7cb34e9f6454bf1259658`  
		Last Modified: Wed, 20 Dec 2017 17:49:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2999935092854c991d8ca6e3b26c90f89257373d6d52c7857f5cce6b29b55262`  
		Last Modified: Wed, 20 Dec 2017 17:49:06 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53643c28e9cbae89f94a07e554e4974cb48e2ec6577d04aa08f2e97ee72a89a5`  
		Last Modified: Fri, 09 Feb 2018 17:53:10 GMT  
		Size: 57.4 MB (57410777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92c0b83e3fa545c15ec251ecf7f9739a370e33c3765012dbfdf59f6231b6fc8f`  
		Last Modified: Fri, 09 Feb 2018 17:52:48 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fc812aeb44df4e1403b341cac7747a26afcf0f28881491494fef0af95ef8a1`  
		Last Modified: Fri, 09 Feb 2018 17:52:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b330248c6d7cd151f0786d9670e66c15952f174d5eb426f36d97c1336cd7fa62`  
		Last Modified: Fri, 09 Feb 2018 17:52:48 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4af40739a0d778569fec2635c61bf6f122edd79cd2dd4bf9fcf70fa0216b96`  
		Last Modified: Fri, 09 Feb 2018 17:52:49 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c82dd914a060824d9fc491ae6f85d0114b2bcc0c8845b8a75b470f22d5e679`  
		Last Modified: Fri, 09 Feb 2018 17:52:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; 386

```console
$ docker pull postgres@sha256:940a70d6272a7b50ea32055c64d475e341c53e79f10f12106f1b41c11fde2697
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119130492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e6275fd2876322a32da054c6ea4ec3d4f938c8ed38fd8a3ff1faa2370d758e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 12 Dec 2017 14:28:39 GMT
ADD file:a6cfca6b73e41be73fc4e964d25ccb94f9c3538d1bd6623f5f203d3594167a5f in / 
# Tue, 12 Dec 2017 14:28:39 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 15:21:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Dec 2017 15:21:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 13 Dec 2017 15:21:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 15:21:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Dec 2017 15:21:55 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 13 Dec 2017 15:21:55 GMT
ENV LANG=en_US.utf8
# Wed, 13 Dec 2017 15:21:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Dec 2017 15:22:00 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 13 Dec 2017 15:22:01 GMT
ENV PG_MAJOR=10
# Fri, 09 Feb 2018 15:01:08 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Fri, 09 Feb 2018 15:01:50 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 09 Feb 2018 15:01:51 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 09 Feb 2018 15:01:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Feb 2018 15:01:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 09 Feb 2018 15:01:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Feb 2018 15:01:54 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Feb 2018 15:01:54 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Feb 2018 15:01:54 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Fri, 09 Feb 2018 15:01:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Feb 2018 15:01:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Feb 2018 15:01:56 GMT
EXPOSE 5432/tcp
# Fri, 09 Feb 2018 15:01:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:50d72515450fee13bee4f8be703ed400c6fc2f1bc9a5699f1d6917eb6dde6aa0`  
		Last Modified: Tue, 12 Dec 2017 15:01:52 GMT  
		Size: 45.8 MB (45827066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565926489c072707cc073c11c481a49b62950a5560c9cc0cefd5f26ae4891785`  
		Last Modified: Wed, 13 Dec 2017 15:30:21 GMT  
		Size: 7.2 MB (7225730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c23e6e73137f11d12bf991b4f8f693fb13e074438bfd2502b9a16d8e609d72`  
		Last Modified: Wed, 13 Dec 2017 15:30:18 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abeee6aeb1fe5195d8dc064cb298ca92f8862c5b8393a7a328bb746c544dcd64`  
		Last Modified: Wed, 13 Dec 2017 15:30:16 GMT  
		Size: 936.5 KB (936505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f2e9c96c68642848037e8ef74fc131f9954c7304b1e70832d9cd1df9f22c2c`  
		Last Modified: Wed, 13 Dec 2017 15:30:22 GMT  
		Size: 6.6 MB (6577468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e3fa3257d30b2677f6e0e7bc8aec05a1256657307d5d04f37ebecd4321148`  
		Last Modified: Wed, 13 Dec 2017 15:30:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884a2090f35402d6b7ae3aeffdd830441c5f3de78dc33cadd46f939aa04c45f6`  
		Last Modified: Wed, 13 Dec 2017 15:30:16 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e2a917dd391a7d8d6290d5ea19692967a06b8a39ad17c923a8ba0554eb7d58`  
		Last Modified: Fri, 09 Feb 2018 16:09:33 GMT  
		Size: 58.5 MB (58547860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855c22ab190cb7656899524e967c017c84a0606466bebd72b2644e002fc93ed2`  
		Last Modified: Fri, 09 Feb 2018 16:09:08 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73703ad05efaf0bff4f7280163ec8e7c27c5766d8de7a0ff8322a84c3f560fc`  
		Last Modified: Fri, 09 Feb 2018 16:09:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac5b53a4d4459a84e5f19566a11ae733a91680488e0074e3923e2a1546b5f2d`  
		Last Modified: Fri, 09 Feb 2018 16:09:07 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bb25477719d04c4a2ff40425a39d0a5da67b612ca33715d8a0f770dc91402d`  
		Last Modified: Fri, 09 Feb 2018 16:09:08 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2778dd8ccdb7ed93668a60e0c6985b421be4889edb04fdddd8771e955b941dc`  
		Last Modified: Fri, 09 Feb 2018 16:09:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; ppc64le

```console
$ docker pull postgres@sha256:06e6fc03b70fa4a5894cbcf795324f9c9324a1fb7e8b6dc815bfb35927d8fa2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (117005694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca607c83e915c602fdfa4bcb0a34ba4d4424c22b787a02a8a27ee74ee24f6be6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 01:37:41 GMT
ADD file:7e6ef12294e8694d6e9f12ca4b08b7d37810560a9354608f3c26da2d7bb58ee7 in / 
# Thu, 15 Feb 2018 01:37:43 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:18:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:18:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 07:18:49 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:20:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 07:20:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 07:20:57 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 07:21:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 07:21:11 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 07:21:20 GMT
ENV PG_MAJOR=10
# Thu, 15 Feb 2018 07:21:22 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Thu, 15 Feb 2018 07:27:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 07:27:38 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 07:27:44 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 07:27:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Thu, 15 Feb 2018 07:27:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 07:27:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 07:27:59 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 07:28:02 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:28:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 07:28:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:28:18 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 07:28:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:13243907a6ee503282f5b315b55be9aa688e7041decc7709ce64da512fcd0a07`  
		Last Modified: Thu, 15 Feb 2018 01:45:54 GMT  
		Size: 45.4 MB (45387828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c9fa529784f7012e73218eee34f6429a1dce275c525ce2577121e931ed9ec2`  
		Last Modified: Thu, 15 Feb 2018 08:09:12 GMT  
		Size: 6.8 MB (6784033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f167421da821b12df6858e0de511e007236e27c543306200561ac3e1a67d9d3`  
		Last Modified: Thu, 15 Feb 2018 08:09:08 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9574586077ef9a64d546205a89c73105f03b97b07d9881da90e835ffd479eaa0`  
		Last Modified: Thu, 15 Feb 2018 08:09:11 GMT  
		Size: 925.6 KB (925596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ef820af68d6ecf227dbf732b96ee91a5debffd8e4aad6e7a717a81b241a2e4`  
		Last Modified: Thu, 15 Feb 2018 08:09:09 GMT  
		Size: 6.6 MB (6577806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055b96b939054ec8b8f52ac041d1eb9e4c0a8ee6b6715fd45fb3dc5d12586526`  
		Last Modified: Thu, 15 Feb 2018 08:09:07 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2480f438706f6e963a728e253b06b60d1b61eba16685a8784f65f8a28d33bf5e`  
		Last Modified: Thu, 15 Feb 2018 08:09:06 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f7f820f7ca1dbe9ac4e5ae4d78a5d943f8559e9ac33d1df81852b6e81cdf9e`  
		Last Modified: Thu, 15 Feb 2018 08:09:21 GMT  
		Size: 57.3 MB (57314485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e2da0c8b7684561db2c0b84ffe4d37a4048aacb4b1fcfac8b8721824d1cdb2`  
		Last Modified: Thu, 15 Feb 2018 08:09:04 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924ceeac51c76c67f6b37885b515ca939fb73a5d2d457abbaa3bff9aa3c2e107`  
		Last Modified: Thu, 15 Feb 2018 08:09:03 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707183a3611f04c3619f6ae1be7f1d1617432a6cd54d921532213de0f529919b`  
		Last Modified: Thu, 15 Feb 2018 08:09:03 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a835377d7f50d4abcb5ed17d64ecdac4bafd346ea4770c6858fd9ead367cd0c6`  
		Last Modified: Thu, 15 Feb 2018 08:09:03 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3262e2d72d1a36b178a40792f1b5ecbe45ee022c61eaebe90d317132e9a6f9e1`  
		Last Modified: Thu, 15 Feb 2018 08:09:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; s390x

```console
$ docker pull postgres@sha256:e5c2879cb4fc63c90bf2ff8630e7edb514e3af645027a7e74865a387dd292609
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.3 MB (119259271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bca06d0a7db3b6aa5dd125860158f88b1cd4dfff5b32a264858f106ee64c598`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:26 GMT
ADD file:52c2ff6c220e01ce9ef3bf8a808c3f51de553ffa707ffd3e664068af07974881 in / 
# Tue, 12 Dec 2017 06:25:27 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 07:54:04 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 12 Dec 2017 07:54:04 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 07:54:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 07:54:22 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 12 Dec 2017 07:54:22 GMT
ENV LANG=en_US.utf8
# Tue, 12 Dec 2017 07:54:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Dec 2017 07:54:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Dec 2017 07:54:26 GMT
ENV PG_MAJOR=10
# Fri, 09 Feb 2018 10:25:29 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Fri, 09 Feb 2018 10:34:41 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 09 Feb 2018 10:34:42 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 09 Feb 2018 10:34:42 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Feb 2018 10:34:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 09 Feb 2018 10:34:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Feb 2018 10:34:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Feb 2018 10:34:43 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Feb 2018 10:34:43 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Fri, 09 Feb 2018 10:34:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Feb 2018 10:34:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Feb 2018 10:34:44 GMT
EXPOSE 5432/tcp
# Fri, 09 Feb 2018 10:34:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:794821622a8cf94cd3f0f66e7708e7aed250701b9f626d2c58e22a73ca6869cf`  
		Last Modified: Tue, 12 Dec 2017 06:30:44 GMT  
		Size: 45.0 MB (44967073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ee0e01e71257d805fb9fccb36d94dba5c9476a2bd6033a9fbed61b4a8dc67f`  
		Last Modified: Tue, 12 Dec 2017 08:40:09 GMT  
		Size: 7.0 MB (6952812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b3c7a10253b13fb6ca0570575655bb57afa3e944ad87d3f6985419f91cd43c`  
		Last Modified: Tue, 12 Dec 2017 08:40:07 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31354d0f686bb25a64208d3a28d687200d4a5d04f61c0cb02cd2f8f1ec7c8a85`  
		Last Modified: Tue, 12 Dec 2017 08:40:08 GMT  
		Size: 942.3 KB (942290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5568cf13756dcd41c33b0a6c0e50554c9ece4eefbe7a0476a496f6fe2bb76459`  
		Last Modified: Tue, 12 Dec 2017 08:40:08 GMT  
		Size: 6.6 MB (6598607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74dbac67f9a9ac74cf56f12294021c63ad1dcc1a47b34b14009a28e77c08f468`  
		Last Modified: Tue, 12 Dec 2017 08:40:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c3acc9b4eb2b1da44beb4bbfe07669074359d70e56370fb669534a1c9e6995`  
		Last Modified: Tue, 12 Dec 2017 08:40:06 GMT  
		Size: 4.5 KB (4483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3ad16125ff35319128537c02335782e2dbf96773526de4164c8a40475f513b`  
		Last Modified: Fri, 09 Feb 2018 11:10:34 GMT  
		Size: 59.8 MB (59782613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a061ca678d4d69b4bfb4ca6e732395d45079aee36294f7c3030998026b093d0d`  
		Last Modified: Fri, 09 Feb 2018 11:10:22 GMT  
		Size: 7.3 KB (7302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32d80d727a9de2e2194eaf3d488b0f540e21df8a810fb885bae4824ef8d83a9`  
		Last Modified: Fri, 09 Feb 2018 11:10:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466ff98d6272c163e7b6233009f89ea25faeabf345e5035c9e40fe1d77417007`  
		Last Modified: Fri, 09 Feb 2018 11:10:22 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcf2540eaa2df3cc30c6ca3a93478d0653793d433e1844131e3d5025ecf3520`  
		Last Modified: Fri, 09 Feb 2018 11:10:22 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f572e3eae74e06573725338448012a4367049fb609a7a5502b9b30cbe89b16ef`  
		Last Modified: Fri, 09 Feb 2018 11:10:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
