## `postgres:latest`

```console
$ docker pull postgres@sha256:23c92d48934b254c007c08812638acfd849fe1c179a34b63c752a62100c6524d
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
$ docker pull postgres@sha256:4bee009f05db292e794d4c288b587be60c3a526cc3bf669100be981ef0551284
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.6 MB (85576094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ed9a4ab65b9f0a5eeb1783c05d303bf6a7b9921519218c1a3a5b456a00359c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Tue, 01 May 2018 05:32:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 05:32:34 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 01 May 2018 05:32:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 01 May 2018 05:32:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 01 May 2018 05:32:55 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 01 May 2018 05:32:55 GMT
ENV LANG=en_US.utf8
# Tue, 01 May 2018 05:32:56 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 01 May 2018 05:32:59 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 01 May 2018 05:33:00 GMT
ENV PG_MAJOR=10
# Tue, 01 May 2018 05:33:00 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Tue, 01 May 2018 05:33:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 01 May 2018 05:33:34 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 01 May 2018 05:33:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 01 May 2018 05:33:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Tue, 01 May 2018 05:33:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 01 May 2018 05:33:37 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 01 May 2018 05:33:37 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 09 May 2018 18:00:51 GMT
COPY file:7c253f63c92c3efb72f4d093f40ce68607cf7d015dd31345cf467d0b81cfc847 in /usr/local/bin/ 
# Wed, 09 May 2018 18:00:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 09 May 2018 18:00:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 May 2018 18:00:53 GMT
EXPOSE 5432/tcp
# Wed, 09 May 2018 18:00:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8218dd41bf9456c09b17f71395d18c9cdc6c45e318c4dbe86f15462d04edc29f`  
		Last Modified: Tue, 01 May 2018 06:24:57 GMT  
		Size: 4.5 MB (4498484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b7fa2e6bd832ef489841c1bf68ae37339abafbc2721c7c98b6bf4254f382ba`  
		Last Modified: Tue, 01 May 2018 06:24:56 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7288a45ee17ff5d06aa7209347aa962fcb07853957fce7e204e07fc06f38dea4`  
		Last Modified: Tue, 01 May 2018 06:24:55 GMT  
		Size: 952.0 KB (951999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0f8a67376c82f767d4449c6b8dde684a41b38c42439c94b919411cdac994a5`  
		Last Modified: Tue, 01 May 2018 06:24:56 GMT  
		Size: 6.2 MB (6182334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670a6cc35896b8a87b91b3d4e70ac07a02a9e01ed44aceb3506282fb0c5ca855`  
		Last Modified: Tue, 01 May 2018 06:24:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813e446217560cf8ffa9ffe69c0a87d711e492be41aa89e85b66d52212a0602e`  
		Last Modified: Tue, 01 May 2018 06:24:53 GMT  
		Size: 4.5 KB (4483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220a4cd75207c72586ab15c547a5f348fc89b4683f9ca3840ff12f337a6e81e3`  
		Last Modified: Tue, 01 May 2018 06:25:08 GMT  
		Size: 51.4 MB (51431381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f20067ce75a1b3470dfe70f06054ec91050969eb73610fd3b99c5db32dd9945`  
		Last Modified: Tue, 01 May 2018 06:24:52 GMT  
		Size: 7.3 KB (7299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4adafe999f3987e0bbebfc338c9f107b70057e2002e44c24708a3b7885da999a`  
		Last Modified: Tue, 01 May 2018 06:24:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e66192554458393184cc98d03000fdd2787554f1390d6f98f13f5ed239780d`  
		Last Modified: Tue, 01 May 2018 06:24:51 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fde6b04f988c425011b293267cc96dbce05f23241bacc838012fa97f256a92`  
		Last Modified: Wed, 09 May 2018 18:02:06 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de83ca23e556b3c2d5529372c34e2463e92ba022e6d478eef0f72b7b716765e`  
		Last Modified: Wed, 09 May 2018 18:02:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v5

```console
$ docker pull postgres@sha256:27db78972961752c5d033890e6afb4385d4ed6421de6775bd114ba6d022913c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84926214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:828c5657dd8bdcb680cd9544f3fe16c32935e39ba9d8b9338ee610c2f1ab375d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:29 GMT
ADD file:ca564f3cd7bd0fee7f6e56d1a55f5f92da6d4bf55ce3bf20ca398e9e95cdf8df in / 
# Sat, 28 Apr 2018 08:53:30 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:45:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 09:45:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 28 Apr 2018 09:45:50 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 09:46:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 28 Apr 2018 09:46:19 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 28 Apr 2018 09:46:19 GMT
ENV LANG=en_US.utf8
# Sat, 28 Apr 2018 09:46:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 28 Apr 2018 09:46:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 28 Apr 2018 09:46:23 GMT
ENV PG_MAJOR=10
# Sat, 28 Apr 2018 09:46:23 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Sat, 28 Apr 2018 10:05:46 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 28 Apr 2018 10:05:47 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 28 Apr 2018 10:05:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 28 Apr 2018 10:05:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Sat, 28 Apr 2018 10:05:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 28 Apr 2018 10:05:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 28 Apr 2018 10:05:50 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 10 May 2018 08:48:36 GMT
COPY file:7c253f63c92c3efb72f4d093f40ce68607cf7d015dd31345cf467d0b81cfc847 in /usr/local/bin/ 
# Thu, 10 May 2018 08:48:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 10 May 2018 08:48:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 10 May 2018 08:48:38 GMT
EXPOSE 5432/tcp
# Thu, 10 May 2018 08:48:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b2a4458ef3b9777a47503028af324e4890546ca8e24a86697b3219a6e3069450`  
		Last Modified: Sat, 28 Apr 2018 09:02:15 GMT  
		Size: 21.2 MB (21175666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699a01c5d9d73de74ab61b1f6df882eda08ec238c794ca8b2bad17e25549f6ca`  
		Last Modified: Sat, 28 Apr 2018 11:17:04 GMT  
		Size: 4.2 MB (4231562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4bbe5cef7a7f43eb8ce179c3328b67b9ea3982ca5fe3b50587d5ece9e2bf302`  
		Last Modified: Sat, 28 Apr 2018 11:17:02 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b5c73a7d641e03303be0977f959e3a423360c619ec478fa885ad7b516f20b5`  
		Last Modified: Sat, 28 Apr 2018 11:17:02 GMT  
		Size: 942.5 KB (942467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ea438e13b2fc1774611596fa6b91511c66b44c9fc1d14419c31b176dae5b30`  
		Last Modified: Sat, 28 Apr 2018 11:17:04 GMT  
		Size: 6.2 MB (6184642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08588eace5b761964421a61b574e542fe94aa39774a79f6a4191008ba38762b`  
		Last Modified: Sat, 28 Apr 2018 11:17:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab29bef69d6271d1193e97d5dbb68d4fe8623ff51daacb91ba25b0e8f9f657c`  
		Last Modified: Sat, 28 Apr 2018 11:17:01 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beac8795059e3d6766f184f0681cd353f9f9d400bc9c90ac7b3292f25e1b28d`  
		Last Modified: Sat, 28 Apr 2018 11:17:18 GMT  
		Size: 52.4 MB (52375954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99401df55b82e9c44fc483f146e0346c872e956a58663415fa08284e90794cd3`  
		Last Modified: Sat, 28 Apr 2018 11:17:00 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ad4b86094a4951973602fa9976a98d5265312486f363dcebe4c7113a8fc4c9`  
		Last Modified: Sat, 28 Apr 2018 11:17:00 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791d770d3d6d8935d795c3c548b523c2404a4f47b757c75f860e7b5976616d52`  
		Last Modified: Sat, 28 Apr 2018 11:17:00 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a253659ca859adef7a8e912d758bf68545ee666342d9299ca0d6fcfab24470d`  
		Last Modified: Thu, 10 May 2018 08:49:41 GMT  
		Size: 1.8 KB (1800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3e5fd7b760350dd3f6641e2904916545f6a38cb5580692755f73a28a3fc1d0`  
		Last Modified: Thu, 10 May 2018 08:49:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v7

```console
$ docker pull postgres@sha256:f75151b46a44db6710ad4c7dc82e9c64beaaae631cc7aa4a63473f468b888812
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.9 MB (80924738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:584697d2db21801cfbaa685074be42bf1d56522946aabc6013a87af9d1ba48bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 14:03:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 14:03:47 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 28 Apr 2018 14:03:54 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 14:04:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 28 Apr 2018 14:04:18 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 28 Apr 2018 14:04:28 GMT
ENV LANG=en_US.utf8
# Sat, 28 Apr 2018 14:04:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 28 Apr 2018 14:04:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 28 Apr 2018 14:04:43 GMT
ENV PG_MAJOR=10
# Sat, 28 Apr 2018 14:04:43 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Sat, 28 Apr 2018 14:22:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 28 Apr 2018 14:22:27 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 28 Apr 2018 14:22:30 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 28 Apr 2018 14:22:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Sat, 28 Apr 2018 14:22:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 28 Apr 2018 14:22:34 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 28 Apr 2018 14:22:34 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 10 May 2018 12:07:02 GMT
COPY file:7c253f63c92c3efb72f4d093f40ce68607cf7d015dd31345cf467d0b81cfc847 in /usr/local/bin/ 
# Thu, 10 May 2018 12:07:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 10 May 2018 12:07:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 10 May 2018 12:07:04 GMT
EXPOSE 5432/tcp
# Thu, 10 May 2018 12:07:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7acfc6b0ea1b93199e367ec8cb8e3795d786c9c4a5756b415e1228be828f2802`  
		Last Modified: Sat, 28 Apr 2018 15:26:58 GMT  
		Size: 3.9 MB (3868675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf208e90f01cd4b0df24f3e8505b253519526a6345456a1c403bff60d7246e5a`  
		Last Modified: Sat, 28 Apr 2018 15:26:57 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e3446acb74a3fdd22ee91b290880ddd40323b3e11cf87d80f38b99f20b6554`  
		Last Modified: Sat, 28 Apr 2018 15:26:58 GMT  
		Size: 926.2 KB (926228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5dfd071fbf71173bcda4acf5bbcd2a2be97d5ae15cf7cf67e21e67544e6798`  
		Last Modified: Sat, 28 Apr 2018 15:26:58 GMT  
		Size: 6.2 MB (6184666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6e9aed3c4cb8cac4341b7d0a5cd11a83209fc19b98ccb79273af0a08e73236`  
		Last Modified: Sat, 28 Apr 2018 15:26:56 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c818a4f2486da404da9e4e190abb7efd29d2abbf6c1ec34b9c5a9750995a384`  
		Last Modified: Sat, 28 Apr 2018 15:26:56 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c387255142bda94109ebdb6c6d38638294ead27caf6e579756441840cf9756b2`  
		Last Modified: Sat, 28 Apr 2018 15:27:11 GMT  
		Size: 50.6 MB (50642461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d63b851e4fb690fde5e96ce721a637ec13917c6328b8a4796742cf8c5c6840e`  
		Last Modified: Sat, 28 Apr 2018 15:26:55 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f0c17fc39b066d928836ff94e69c61f653598055a9964df7802c2a1c496dfb`  
		Last Modified: Sat, 28 Apr 2018 15:26:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9927e98683448290c53ac921c4d54e2e9f053d74d3f3006b740bf7304e93bd`  
		Last Modified: Sat, 28 Apr 2018 15:26:55 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e653cf370caab06b1c37806662a6a964741eb237f7ed9f2a01e37382b4dde26b`  
		Last Modified: Thu, 10 May 2018 12:08:38 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb62d5dedf9b3378bb8c5a039ba41e062cc7858d4feb7acf8659c19f737949e8`  
		Last Modified: Thu, 10 May 2018 12:08:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:8e9af7200b21a851f690b45a815cf796f5524cd65da0c87637f4c9f215014d4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (82962621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbb7481ff9d5887ceceed147477ccbe96785b853222127e4413e7a167f5706a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 30 Apr 2018 23:33:18 GMT
ADD file:d423aa6d423df239af0602fe8134c14cb277778de23c8553d629d3b4b510f38b in / 
# Mon, 30 Apr 2018 23:33:20 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 23:56:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 30 Apr 2018 23:56:43 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 30 Apr 2018 23:56:45 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 23:57:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 30 Apr 2018 23:57:58 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 30 Apr 2018 23:57:59 GMT
ENV LANG=en_US.utf8
# Mon, 30 Apr 2018 23:58:17 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 23:58:21 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 01 May 2018 13:00:04 GMT
ENV PG_MAJOR=10
# Tue, 01 May 2018 13:00:05 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Tue, 01 May 2018 13:33:45 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 01 May 2018 13:33:49 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 01 May 2018 13:33:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 01 May 2018 13:33:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Tue, 01 May 2018 13:33:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 01 May 2018 13:33:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 01 May 2018 13:34:00 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 10 May 2018 09:51:45 GMT
COPY file:7c253f63c92c3efb72f4d093f40ce68607cf7d015dd31345cf467d0b81cfc847 in /usr/local/bin/ 
# Thu, 10 May 2018 09:51:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 10 May 2018 09:51:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 10 May 2018 09:51:49 GMT
EXPOSE 5432/tcp
# Thu, 10 May 2018 09:51:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:18d6337cc9064ce5276eac2eb6da6c5fe3f204bc7f1392f5ad1ba468817c609e`  
		Last Modified: Mon, 30 Apr 2018 23:54:34 GMT  
		Size: 20.3 MB (20347907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4d703d0a34039b449a858abb5900285074a06989452bae681a156eeed0025e`  
		Last Modified: Tue, 01 May 2018 03:17:16 GMT  
		Size: 4.1 MB (4073359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91948ab08316299d5142c6c5d42f13fbfe908809a3f00b09f76aca51a12c0b81`  
		Last Modified: Tue, 01 May 2018 03:17:04 GMT  
		Size: 1.8 KB (1756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61acf63bf72b438c713c3103aa31512ec360061ef300c6a8e1fccc57d5e8c047`  
		Last Modified: Tue, 01 May 2018 03:17:05 GMT  
		Size: 919.5 KB (919450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630cb60c340a6a8962c2b9836384b9e6330c57626bc4e67e16b560ef7717b35a`  
		Last Modified: Tue, 01 May 2018 03:17:30 GMT  
		Size: 6.2 MB (6182312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698dbf9bde06d1b7bd81add2fafa833c4309c343af377c06b2ac30f6f4897b3c`  
		Last Modified: Tue, 01 May 2018 03:17:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd17c8f454b439dd47df29c26a6b8dab21d64809c0d6c8c4ea844f0f4da1d64`  
		Last Modified: Tue, 01 May 2018 03:17:01 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2baf63bd8b6f143c30c594a552032b34096b44bb3f43a0bb9cba4587deefe8a1`  
		Last Modified: Tue, 01 May 2018 13:35:31 GMT  
		Size: 51.4 MB (51423720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d2eed9bb1b865e2a926f6f72c46e93144f94d8b0de2a9ba97ff2be7a81152b`  
		Last Modified: Tue, 01 May 2018 13:35:03 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:326839afca9bfc42a4516364197ed6f7b148e77a976212afa57bb58d13186af1`  
		Last Modified: Tue, 01 May 2018 13:35:03 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9063102977ca34d38fff852d4be239e4b4d44d77f9ce7ec0afff7cd1498a2e47`  
		Last Modified: Tue, 01 May 2018 13:35:03 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2434ad8a21774a3a9b193b02c10d67e0eedc73542edda89c7e92b08082587e`  
		Last Modified: Thu, 10 May 2018 09:54:43 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f238ee431665f0d11dfb12ef640f1fd33cf197e821f4ad37ac4d4bb355d3d77`  
		Last Modified: Thu, 10 May 2018 09:54:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; 386

```console
$ docker pull postgres@sha256:3040a70c79a4cd2503a65227f89e9f56987291d666c9cc90c97fd29b199c1381
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.6 MB (87605045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07254dc3091aa25faaf189028d906a090268b4a22ba68378bddc3781089ed49d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:19:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 17:19:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 28 Apr 2018 17:19:39 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 17:19:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 28 Apr 2018 17:19:58 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 28 Apr 2018 17:19:59 GMT
ENV LANG=en_US.utf8
# Sat, 28 Apr 2018 17:19:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 28 Apr 2018 17:20:02 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 28 Apr 2018 17:20:02 GMT
ENV PG_MAJOR=10
# Sat, 28 Apr 2018 17:20:03 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Sat, 28 Apr 2018 17:20:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 28 Apr 2018 17:20:39 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 28 Apr 2018 17:20:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 28 Apr 2018 17:20:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Sat, 28 Apr 2018 17:20:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 28 Apr 2018 17:20:40 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 28 Apr 2018 17:20:40 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 10 May 2018 12:18:39 GMT
COPY file:7c253f63c92c3efb72f4d093f40ce68607cf7d015dd31345cf467d0b81cfc847 in /usr/local/bin/ 
# Thu, 10 May 2018 12:18:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 10 May 2018 12:18:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 10 May 2018 12:18:41 GMT
EXPOSE 5432/tcp
# Thu, 10 May 2018 12:18:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb66c80de4e81cafd03b13a2bc668487072e2d817d4c1e60050ac16c6c9952e`  
		Last Modified: Sat, 28 Apr 2018 17:23:23 GMT  
		Size: 4.8 MB (4803836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dde6811e5d3aeac50fd219d194a8d6d7629343c5c8abd305342b27215897093`  
		Last Modified: Sat, 28 Apr 2018 17:23:22 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c962b15415326003b86f527cb2213d1373e167c1b2ddb4382e2618ba05be8f59`  
		Last Modified: Sat, 28 Apr 2018 17:23:20 GMT  
		Size: 931.6 KB (931565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929152749f568ac18b62f5da0bf93e985a24b51749e42c6d18e0622689f280a5`  
		Last Modified: Sat, 28 Apr 2018 17:23:21 GMT  
		Size: 6.2 MB (6182269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5535ba8e43c660626dbf36fbc486722e845e6c3e20b3c6befae0fc2553be9238`  
		Last Modified: Sat, 28 Apr 2018 17:23:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6b474f857baf5ddafe9588a0bda44305329338b8b6b44425a0acd8d1461edb`  
		Last Modified: Sat, 28 Apr 2018 17:23:20 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58181cdac63ab45c84a3e944568ca708aa32a7bb3552748a1a653491df6b642b`  
		Last Modified: Sat, 28 Apr 2018 17:23:33 GMT  
		Size: 52.5 MB (52533001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f9780b733ade17617169a64c5dbbf2a6e70c31a90a7d1c58e62ffbadd1087f`  
		Last Modified: Sat, 28 Apr 2018 17:23:19 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077824ffaa8f17de24232cd1db6a97b9198214e88627c0275cd1e68b90f10af0`  
		Last Modified: Sat, 28 Apr 2018 17:23:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0452e4d069e36b1cfbd72430f97744f85a1be3dca96060ef569d1345c1f28468`  
		Last Modified: Sat, 28 Apr 2018 17:23:20 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744a051dc72b23048f98daed4a8fbe6a8bd9ccc8add4e4c6db7722c4f48b9074`  
		Last Modified: Thu, 10 May 2018 12:19:51 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5f0c0f8dba9a89455a7a0aa34e89e29335aea0abb7cd69cf7a550af3dfd74d`  
		Last Modified: Thu, 10 May 2018 12:19:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; ppc64le

```console
$ docker pull postgres@sha256:7b4a8a34a16b14409a4afecd470b06d66ff23cec67d63b2f3d8992385df583aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.5 MB (85537010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b83edae6a910972cbff4ea326c17a53641eff37754efc204d4b67aceee8db317`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:54 GMT
ADD file:c561a92d41ab01d60c88efa7b21fd9b48e6c0c96fb8d2552f4cebbed3df42bca in / 
# Sat, 28 Apr 2018 08:20:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:01:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 10:01:27 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 28 Apr 2018 10:01:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 10:02:02 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 28 Apr 2018 10:02:15 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 28 Apr 2018 10:02:16 GMT
ENV LANG=en_US.utf8
# Sat, 28 Apr 2018 10:02:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 28 Apr 2018 10:02:26 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 28 Apr 2018 10:02:27 GMT
ENV PG_MAJOR=10
# Sat, 28 Apr 2018 10:02:28 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Sat, 28 Apr 2018 10:04:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 28 Apr 2018 10:04:38 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 28 Apr 2018 10:04:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 28 Apr 2018 10:04:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Sat, 28 Apr 2018 10:04:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 28 Apr 2018 10:04:44 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 28 Apr 2018 10:04:45 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 12 May 2018 10:24:09 GMT
COPY file:7c253f63c92c3efb72f4d093f40ce68607cf7d015dd31345cf467d0b81cfc847 in /usr/local/bin/ 
# Sat, 12 May 2018 10:24:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 12 May 2018 10:24:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 May 2018 10:24:13 GMT
EXPOSE 5432/tcp
# Sat, 12 May 2018 10:24:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:39214b2a7dd7dd2d1069dd155ce8ab2206bb1fda22be8136b88451c8be20e82f`  
		Last Modified: Sat, 28 Apr 2018 08:30:28 GMT  
		Size: 22.8 MB (22753096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841a8621fb7995ceb6a46da3422e5e22d913c000e359f2450431ec3b9ee0f8e6`  
		Last Modified: Sat, 28 Apr 2018 10:15:50 GMT  
		Size: 4.4 MB (4360617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6787f1e8428fb3469a1b9a091b26a3c902a8c99116b57e8c57618c28fc3b3dc0`  
		Last Modified: Sat, 28 Apr 2018 10:15:47 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9db6bfdf9decd379feac1bfc8d370f3ffb5a2044c394891a7c0f28348afcde5`  
		Last Modified: Sat, 28 Apr 2018 10:15:46 GMT  
		Size: 920.6 KB (920629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0afdfb3e1b350179e5fcbf46f42de11e0ebb353d9add9aabb776538dac93d6`  
		Last Modified: Sat, 28 Apr 2018 10:15:47 GMT  
		Size: 6.2 MB (6184801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c645d93a3bf3fde4c51692e381ee0ba2d568b6e177c0ac8bc700aa943cd7bb3`  
		Last Modified: Sat, 28 Apr 2018 10:15:45 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781d586e67b455192b97adf26d8385768c93d746df5df821694b3212cc62a79d`  
		Last Modified: Sat, 28 Apr 2018 10:15:47 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b41bd090bf60ccbdf8236a7ec598b34e474b18b2a7b95b2a9eb8ab0c2844195`  
		Last Modified: Sat, 28 Apr 2018 10:16:00 GMT  
		Size: 51.3 MB (51301937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a260ab087fa832013c6529b5e8ffff05f7cc515f826612763afed4351667807`  
		Last Modified: Sat, 28 Apr 2018 10:15:43 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:056c8de92419b6bfd3984f100612c0baa26408e608f45e507b21c4c83a517d85`  
		Last Modified: Sat, 28 Apr 2018 10:15:43 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2802a8e715ef9294ebdba6c12f0ea949bdc2bd2a3926a2625e5dc7ca0e8af501`  
		Last Modified: Sat, 28 Apr 2018 10:15:43 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853a9fbfae3fc23cd25839e9d83cbcc2199ae2b703307ff559c123a33df498cd`  
		Last Modified: Sat, 12 May 2018 10:26:13 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bfb7be177625160a883fd09853ff0981cd47e663d46c1bc31b28c9391f03e4`  
		Last Modified: Sat, 12 May 2018 10:26:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; s390x

```console
$ docker pull postgres@sha256:f9c779ed9ce54279d0dc749da7018e5def48037f0abe4dcb1ad8164ea7f4812a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87819741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a182a0bb701d399d2abbf674c3a753a5c9a43c3b420fbb952ea79522192962`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:29 GMT
ADD file:89223bc6886b09479a52e6d05479980ad8e46c8c707ac40cd81b664fe9827428 in / 
# Sat, 28 Apr 2018 11:45:29 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 14:31:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 14:31:09 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 28 Apr 2018 14:31:09 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 14:31:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 28 Apr 2018 14:31:24 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 28 Apr 2018 14:31:25 GMT
ENV LANG=en_US.utf8
# Sat, 28 Apr 2018 14:31:25 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 28 Apr 2018 14:31:28 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 28 Apr 2018 14:31:28 GMT
ENV PG_MAJOR=10
# Sat, 28 Apr 2018 14:31:28 GMT
ENV PG_VERSION=10.3-1.pgdg90+1
# Sat, 28 Apr 2018 14:40:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 28 Apr 2018 14:40:14 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 28 Apr 2018 14:40:15 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 28 Apr 2018 14:40:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Sat, 28 Apr 2018 14:40:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 28 Apr 2018 14:40:16 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 28 Apr 2018 14:40:16 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 10 May 2018 13:32:13 GMT
COPY file:7c253f63c92c3efb72f4d093f40ce68607cf7d015dd31345cf467d0b81cfc847 in /usr/local/bin/ 
# Thu, 10 May 2018 13:32:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 10 May 2018 13:32:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 10 May 2018 13:32:16 GMT
EXPOSE 5432/tcp
# Thu, 10 May 2018 13:32:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:39cbaa616b05fb96ca4be9aac8b4d99ba8bf573e07a754a8c43dbec7ff518bbb`  
		Last Modified: Sat, 28 Apr 2018 11:51:43 GMT  
		Size: 22.3 MB (22349898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52f45bae0d23d0ac926a498b3ef305251f0c896de2a185b049342f9cc2f5647`  
		Last Modified: Sat, 28 Apr 2018 15:12:42 GMT  
		Size: 4.5 MB (4529932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87e9dfc5670cc92e1763731a0886fa25bde4528d22559ef4da324b47113d127`  
		Last Modified: Sat, 28 Apr 2018 15:12:40 GMT  
		Size: 1.7 KB (1745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08cd3c851b1264eda4ff00d73f69c8d06ba5df7620cedbe3f2b8d7977ef876a`  
		Last Modified: Sat, 28 Apr 2018 15:12:40 GMT  
		Size: 938.1 KB (938074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c912ea19017e406dc0289aa02fb9ed69c11d9b2229dab6a8e6444b10cecdff79`  
		Last Modified: Sat, 28 Apr 2018 15:12:40 GMT  
		Size: 6.2 MB (6207049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac4f7bb53d3291b92adef5572b876c36b8e51ceeeefd42091faf47c55ebc959`  
		Last Modified: Sat, 28 Apr 2018 15:12:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fc781eafc7b8f96da476acc81e49591759e60158dfd235cc93c97f39da7027`  
		Last Modified: Sat, 28 Apr 2018 15:12:38 GMT  
		Size: 4.5 KB (4483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65dc4129d31048665cb066e4cb2868f3b1d1466c2c3bedaeed7228fa92f3f9a0`  
		Last Modified: Sat, 28 Apr 2018 15:12:49 GMT  
		Size: 53.8 MB (53778926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db7e5639edfcd599afbc8b056bcf596cd34e1a79ad1c36f120b4f268ef3b2cf`  
		Last Modified: Sat, 28 Apr 2018 15:12:38 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6e98bd690c5198fb73cddb53d222159df0c46f1dc3760817aba55c3a3efac4`  
		Last Modified: Sat, 28 Apr 2018 15:12:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94587f1fa6ce32aa29b8164e6ed42e0a9170b7f11dc4bc31001870dc463e682`  
		Last Modified: Sat, 28 Apr 2018 15:12:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e38804f61a1e11405f9c89aad401046a6cd0815191616012f37adcf041d03de`  
		Last Modified: Thu, 10 May 2018 13:35:55 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2718796ed60c7ff587fa94c62e84d2fa6890fc3f842199b32d81bec37d4484f5`  
		Last Modified: Thu, 10 May 2018 13:35:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
