## `postgres:11-beta1`

```console
$ docker pull postgres@sha256:efb051e3217e794a5a564804872e96be8d1e130aa26b6d742134114dba056306
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

### `postgres:11-beta1` - linux; amd64

```console
$ docker pull postgres@sha256:b9433c5ae766b22e2b0920607211d72667c3994184c9bad3f0d29b2cb8292c27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113702948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f847d2269722da63f02ee384725dd7fb1026e1ce4378d1e7d98114b0e88176a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Sat, 09 Jun 2018 00:26:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 09 Jun 2018 00:26:46 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 09 Jun 2018 00:26:47 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Jun 2018 00:27:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Jun 2018 00:27:17 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 09 Jun 2018 00:27:18 GMT
ENV LANG=en_US.utf8
# Sat, 09 Jun 2018 00:27:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Jun 2018 00:27:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 09 Jun 2018 00:27:27 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Jun 2018 00:27:27 GMT
ENV PG_MAJOR=11
# Sat, 09 Jun 2018 00:27:27 GMT
ENV PG_VERSION=11~beta1-2.pgdg90+1
# Sat, 09 Jun 2018 00:28:31 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 09 Jun 2018 00:28:32 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 09 Jun 2018 00:28:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 09 Jun 2018 00:28:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Sat, 09 Jun 2018 00:28:33 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 09 Jun 2018 00:28:34 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 09 Jun 2018 00:28:34 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 09 Jun 2018 00:28:34 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Sat, 09 Jun 2018 00:28:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 09 Jun 2018 00:28:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 00:28:35 GMT
EXPOSE 5432/tcp
# Sat, 09 Jun 2018 00:28:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f47e9dfd161066d68d0ee03f00bbe746babaa95c62f91e47e702d62ea44c815`  
		Last Modified: Sat, 09 Jun 2018 00:53:05 GMT  
		Size: 4.5 MB (4498574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365e1eb16a96835450c9f701172b6cdf88f4475b7b0f00e782cf414c780ae0bb`  
		Last Modified: Sat, 09 Jun 2018 00:53:02 GMT  
		Size: 1.7 KB (1749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c537ee5f45d29712643752135b9cea584e84a04e81bd328573197ecfd4dfc669`  
		Last Modified: Sat, 09 Jun 2018 00:53:03 GMT  
		Size: 952.1 KB (952051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e33f5a09fbaeaaa6eff49cd079523da3a290e96751a4ef7ee765f7296e8193`  
		Last Modified: Sat, 09 Jun 2018 00:53:05 GMT  
		Size: 6.2 MB (6182475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48edfb2fccd07f64b533e73f4351000d56dc5a026fcbcd7b8b0c74ff15e1d1a`  
		Last Modified: Sat, 09 Jun 2018 00:53:00 GMT  
		Size: 295.5 KB (295463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ea3d468f97dcbfb5f15d546ed9970dfb106b2c8bd07beecdc3f020130c6d57`  
		Last Modified: Sat, 09 Jun 2018 00:53:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6364e948654f4df8dacd2eb42febd0e889786af957348eded577658fe90eba`  
		Last Modified: Sat, 09 Jun 2018 00:53:00 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5157e3bcdea5a981d1573461e509881b83ea75242e10668a2975c556d4b8b3`  
		Last Modified: Sat, 09 Jun 2018 00:53:30 GMT  
		Size: 79.3 MB (79261858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63eb67581112e56f22d04c7046675dd69977b872f610f43f57711884e6efbb7c`  
		Last Modified: Sat, 09 Jun 2018 00:52:57 GMT  
		Size: 7.5 KB (7487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dafb16e89122ed6316251611572651f24ca3f65df6d097cc709caa36fd3ea30`  
		Last Modified: Sat, 09 Jun 2018 00:52:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa4b3c3b003d8c28590f5bd0eb1ee5f31cdb0b50ec2ed6d05a57d359a3337339`  
		Last Modified: Sat, 09 Jun 2018 00:52:57 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b476b13137e6bf94e2819c9067d8c20085a5daa011e7c7487c72d06c1e4f9e`  
		Last Modified: Sat, 09 Jun 2018 00:52:57 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e720303f4b9f1ada369cc0794b52c7205c63664915fc9d744c66c2e35240937f`  
		Last Modified: Sat, 09 Jun 2018 00:52:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta1` - linux; arm variant v5

```console
$ docker pull postgres@sha256:964e966ccbba4d4e2e17f8401d51197433916b9865986db813be2736a68b4d78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85748899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:723e9a7a870d9e9d493f8e98b23af151ed2dc55f2f3877b9d681b718a2b0f03c`
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
# Sat, 26 May 2018 09:12:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 09:12:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 26 May 2018 09:12:49 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 31 May 2018 09:29:26 GMT
ENV PG_MAJOR=11
# Thu, 31 May 2018 09:29:26 GMT
ENV PG_VERSION=11~beta1-2.pgdg90+1
# Thu, 31 May 2018 09:48:22 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 31 May 2018 09:48:23 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 31 May 2018 09:48:24 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 31 May 2018 09:48:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Thu, 31 May 2018 09:48:25 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 31 May 2018 09:48:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 31 May 2018 09:48:26 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 31 May 2018 09:48:27 GMT
COPY file:c49fc46420f20b85e4b925fcc0ab847c8455bb1e218f0d244b631ce49f4e8cea in /usr/local/bin/ 
# Thu, 31 May 2018 09:48:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 31 May 2018 09:48:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 May 2018 09:48:28 GMT
EXPOSE 5432/tcp
# Thu, 31 May 2018 09:48:29 GMT
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
	-	`sha256:ff937731f2185af8ae5d99fa6fb1cd3977179eb0642871872d0a0d00ca706a86`  
		Last Modified: Sat, 26 May 2018 10:42:10 GMT  
		Size: 293.3 KB (293305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ceeea8c84774fc38ca83d99ab8f9cdea4160eef630c382367289c74b20dea55`  
		Last Modified: Sat, 26 May 2018 10:42:10 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492db0b9d3e16ca274b612f2d92515eae515c6abf5de87a8fbfb15725c9b1082`  
		Last Modified: Sat, 26 May 2018 10:42:10 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240fde0271e85661628f27a2e66caf8e2695dfc182ec1b074a25190fb8038bbe`  
		Last Modified: Thu, 31 May 2018 09:49:28 GMT  
		Size: 52.9 MB (52904768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91e5ea630d431713d6e3e8714fe913496e8485118120b8ada1834e0a79f42fb`  
		Last Modified: Thu, 31 May 2018 09:49:09 GMT  
		Size: 7.5 KB (7487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c4c8d769610a47c11297fada462e13ba36b494480a5b24c5f8c44526485b4b`  
		Last Modified: Thu, 31 May 2018 09:49:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c624a45cb357df1cd925bc73551b782c09f9026d163c2216ec47c84fbbe75f5f`  
		Last Modified: Thu, 31 May 2018 09:49:08 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c7284a8fb6dac369d82ec67d81e8717d18b50148bf3c4dbfccc2a68423286c`  
		Last Modified: Thu, 31 May 2018 09:49:09 GMT  
		Size: 2.2 KB (2173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08225ee9959700cdd0b7d875839bf4fcf3904e020ae8ba404efc33142d61a996`  
		Last Modified: Thu, 31 May 2018 09:49:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta1` - linux; arm variant v7

```console
$ docker pull postgres@sha256:ba5c072d6a0d64d43a0343f3da1c1671c1c25212602e9519859e7c2b140aa2c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81728172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d63a2ab76e6fb70bea9470de1c31c6b7a5a467d34d75f30a147fefa21519d57`
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
# Sat, 26 May 2018 11:58:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 11:58:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 26 May 2018 11:58:19 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 31 May 2018 12:26:33 GMT
ENV PG_MAJOR=11
# Thu, 31 May 2018 12:26:33 GMT
ENV PG_VERSION=11~beta1-2.pgdg90+1
# Thu, 31 May 2018 12:43:25 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 31 May 2018 12:43:27 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 31 May 2018 12:43:38 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 31 May 2018 12:43:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Thu, 31 May 2018 12:43:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 31 May 2018 12:44:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 31 May 2018 12:44:11 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 31 May 2018 12:44:12 GMT
COPY file:c49fc46420f20b85e4b925fcc0ab847c8455bb1e218f0d244b631ce49f4e8cea in /usr/local/bin/ 
# Thu, 31 May 2018 12:44:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 31 May 2018 12:44:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 May 2018 12:44:24 GMT
EXPOSE 5432/tcp
# Thu, 31 May 2018 12:44:24 GMT
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
	-	`sha256:b4ce93630238a21f46e3e53a86a36b58ec792e568f63487364c6073c4dfa3076`  
		Last Modified: Sat, 26 May 2018 13:20:31 GMT  
		Size: 291.7 KB (291706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e302f6e8d65babe854db806742ce5b68101586c4c0a9e67539014955da085b`  
		Last Modified: Sat, 26 May 2018 13:20:31 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98d3f06e438a01232b5d63bb2f81ce538101bf0b38260a16a0eaec35b99b809`  
		Last Modified: Sat, 26 May 2018 13:20:30 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55479ffe68f86703d84b13ef865a32264d7df3b0ed9c49df9b292a802eb9e7d1`  
		Last Modified: Thu, 31 May 2018 12:45:30 GMT  
		Size: 51.2 MB (51153628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8b5adff8c2d2c801e07637306c450b47eecb7501060ad6f499d2ad70e9e70c`  
		Last Modified: Thu, 31 May 2018 12:45:13 GMT  
		Size: 7.5 KB (7486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b827184b870964ed85af7ac337becd19d41b9cad3baaa94448aba3f0d592dd`  
		Last Modified: Thu, 31 May 2018 12:45:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48239675b0c88aa4f0d79be1843aa6cca09503d80c55434bd03db376e1d03364`  
		Last Modified: Thu, 31 May 2018 12:45:13 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b134cf39ce61b99d20da87954fe144341bc1b640e26f8278392cf05b5f51944b`  
		Last Modified: Thu, 31 May 2018 12:45:13 GMT  
		Size: 2.2 KB (2172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14914689d6891fefb6ad1a27715d44a743ed77c5cb9134fd9b8899e46b684091`  
		Last Modified: Thu, 31 May 2018 12:45:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta1` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:5cefa7293a7f38d6b29edade6eaba031344de7db8ffc68afa4d673f1b12b364f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.8 MB (83774778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84c91422e57e6a28e815fb88f5a927395063312630bc27a9bbfb7a0fb4bfeea6`
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
# Tue, 29 May 2018 19:40:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 May 2018 19:40:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 29 May 2018 19:40:50 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 31 May 2018 09:33:02 GMT
ENV PG_MAJOR=11
# Thu, 31 May 2018 09:33:03 GMT
ENV PG_VERSION=11~beta1-2.pgdg90+1
# Thu, 31 May 2018 10:09:41 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 31 May 2018 10:09:46 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 31 May 2018 10:09:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 31 May 2018 10:09:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Thu, 31 May 2018 10:09:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 31 May 2018 10:09:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 31 May 2018 10:09:56 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 31 May 2018 10:09:57 GMT
COPY file:c49fc46420f20b85e4b925fcc0ab847c8455bb1e218f0d244b631ce49f4e8cea in /usr/local/bin/ 
# Thu, 31 May 2018 10:10:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 31 May 2018 10:10:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 May 2018 10:10:03 GMT
EXPOSE 5432/tcp
# Thu, 31 May 2018 10:10:04 GMT
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
	-	`sha256:100ea1671466fa440391a9ab16fc374f6d4cd79623c084186b338e106266316d`  
		Last Modified: Tue, 29 May 2018 22:12:56 GMT  
		Size: 292.0 KB (292015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d357f69b02ae16dac3ef97230bb20d2f8fc5ed8f1c8f14841e9025c86e33c638`  
		Last Modified: Tue, 29 May 2018 22:12:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e812c492156cd36a15bc0898091fc997b041bcfb68422402f1f9affc2b966171`  
		Last Modified: Tue, 29 May 2018 22:12:56 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f9f08cf09f5b8de3fe3513b0328f818c2d0f8c106f52d6f097b000e3c800fd`  
		Last Modified: Thu, 31 May 2018 10:19:51 GMT  
		Size: 51.9 MB (51943293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f350ab1159c24bb490cd553431efe01be718eae74d00c0fff31084ede594a1b`  
		Last Modified: Thu, 31 May 2018 10:18:48 GMT  
		Size: 7.5 KB (7489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e475a140d73bbae658c161fafe3ee725923b17d046b31532c4aacdfe403ee9`  
		Last Modified: Thu, 31 May 2018 10:18:48 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5474b11d371b2fe4e29bdc343a1388c9332e23692444739b1a4f0f37b10ea98d`  
		Last Modified: Thu, 31 May 2018 10:18:47 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770f8801ffb89228083d3e429344394bf8cfde22644514dbcfaf350800fa70d9`  
		Last Modified: Thu, 31 May 2018 10:18:47 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c4ca1460d56e9189cc8febc575a8559668c4379cfa965b95eda7a32e0a2fce2`  
		Last Modified: Thu, 31 May 2018 10:18:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta1` - linux; 386

```console
$ docker pull postgres@sha256:5d9ee1f70fe99d42a7639828ea0434fc097f407b143e31d0639d7cd8fcfa6e90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117494225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a6fb5dc7c2cefcdd5e4a0f1810c41071a565cb836ce96cc8c3fd1cbc3109296`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Thu, 31 May 2018 04:47:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 31 May 2018 04:47:13 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 31 May 2018 04:47:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 May 2018 04:47:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 31 May 2018 04:47:44 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 31 May 2018 04:47:45 GMT
ENV LANG=en_US.utf8
# Thu, 31 May 2018 04:47:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 04:47:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 31 May 2018 04:47:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 31 May 2018 04:47:55 GMT
ENV PG_MAJOR=11
# Thu, 31 May 2018 04:47:55 GMT
ENV PG_VERSION=11~beta1-2.pgdg90+1
# Thu, 31 May 2018 04:48:41 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 31 May 2018 04:48:42 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 31 May 2018 04:48:42 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 31 May 2018 04:48:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Thu, 31 May 2018 04:48:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 31 May 2018 04:48:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 31 May 2018 04:48:44 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 31 May 2018 04:52:08 GMT
COPY file:c49fc46420f20b85e4b925fcc0ab847c8455bb1e218f0d244b631ce49f4e8cea in /usr/local/bin/ 
# Thu, 31 May 2018 04:52:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 31 May 2018 04:52:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 May 2018 04:52:09 GMT
EXPOSE 5432/tcp
# Thu, 31 May 2018 04:52:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10411256abaea9e024b719570a8b8678be9b54c16bbcc33e0ec27a7e8f233c02`  
		Last Modified: Thu, 31 May 2018 05:14:51 GMT  
		Size: 4.8 MB (4803873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1823ab438c47c4bc520b01de76295be9fbde064cdb9cb80927b353e3d0d62c`  
		Last Modified: Thu, 31 May 2018 05:14:48 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26c2b223d66a0c1cc3131b78e5928bf79dbd13a3d29772a674993a7f82503cc`  
		Last Modified: Thu, 31 May 2018 05:14:48 GMT  
		Size: 931.6 KB (931579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5fa094b7015acf4856cbb8a7f71d3bb21dbad8a0f2cd3d53fcf96e87caa6ddc`  
		Last Modified: Thu, 31 May 2018 05:14:48 GMT  
		Size: 6.2 MB (6182389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1081ea029602d42f1ee6880c6030157e69ad72e1bd659daed5cdfae16cff1d`  
		Last Modified: Thu, 31 May 2018 05:14:46 GMT  
		Size: 296.5 KB (296517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c2ed342b06e8e1e0029b25da09d41b5c900441630f07b0e1bbda74e8db0a9b`  
		Last Modified: Thu, 31 May 2018 05:14:45 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833fb6869f71ad7760b38710b429c0bf2f8b7cd202781623cd63e92e0978e206`  
		Last Modified: Thu, 31 May 2018 05:14:45 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbb622b461e0efaa9fbfa61e6cd12ad08407b94e523e3251e84e07b0dd452b0`  
		Last Modified: Thu, 31 May 2018 05:15:20 GMT  
		Size: 82.1 MB (82124930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d28d9b122589b2c8395cc430a6f6084c32276d64f28a22097e14f228c8d19f1`  
		Last Modified: Thu, 31 May 2018 05:14:43 GMT  
		Size: 7.5 KB (7489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e6f67a9d8245e294afe00b452dc189e047257ac0945f43bc53ffe013533470`  
		Last Modified: Thu, 31 May 2018 05:14:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc667ceb8879b48e2b6688a721042bfe18f76cd45b61057366d2e3996a370b27`  
		Last Modified: Thu, 31 May 2018 05:14:43 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ec8057d0ca1c64ba7a881ac2c0b191fc465a3e89be5ec5ce6ba6f9afee5056`  
		Last Modified: Thu, 31 May 2018 05:14:43 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8316fc4993c80be36f0cfb66b1b2e31836c9d6e8bc40d9085725890959b27433`  
		Last Modified: Thu, 31 May 2018 05:14:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta1` - linux; ppc64le

```console
$ docker pull postgres@sha256:028a18db24570cc04afe4271521fd190b610804d7a832a6aad7f4511e68f023d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.4 MB (86354406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24fd774687e1387c1c9e9721520e56c71de5f48c4ab279e9e2bb5ad3f5895a5c`
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
# Sat, 26 May 2018 09:39:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 09:39:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 26 May 2018 09:39:39 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 31 May 2018 10:03:08 GMT
ENV PG_MAJOR=11
# Thu, 31 May 2018 10:03:12 GMT
ENV PG_VERSION=11~beta1-2.pgdg90+1
# Thu, 31 May 2018 10:05:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 31 May 2018 10:05:18 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 31 May 2018 10:05:21 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 31 May 2018 10:05:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Thu, 31 May 2018 10:05:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 31 May 2018 10:05:27 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 31 May 2018 10:05:28 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 31 May 2018 10:05:29 GMT
COPY file:c49fc46420f20b85e4b925fcc0ab847c8455bb1e218f0d244b631ce49f4e8cea in /usr/local/bin/ 
# Thu, 31 May 2018 10:05:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 31 May 2018 10:05:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 May 2018 10:05:36 GMT
EXPOSE 5432/tcp
# Thu, 31 May 2018 10:05:38 GMT
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
	-	`sha256:049b479c5eba8d10e4fe3fa00d952d6ed0679244bfb507a3d2eac59607541418`  
		Last Modified: Sat, 26 May 2018 09:59:03 GMT  
		Size: 293.4 KB (293378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d89b870dda53e2b63bae9826a7ced6cced148a17159a8d6d7214560a96fe7d`  
		Last Modified: Sat, 26 May 2018 09:59:02 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e32d150776db43dfd6f0794735abe9d30179e44bc3dba7121be915960c8e325`  
		Last Modified: Sat, 26 May 2018 09:59:02 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c292ded2664bdd8380c6fe4d85ed21824360c4760bda8f5b7cd015849eac5d`  
		Last Modified: Thu, 31 May 2018 10:09:37 GMT  
		Size: 51.8 MB (51825392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee24977e8f477abdd9ac1dc8096f95c1be89b0febf9e1c290256d95f3f1fed2`  
		Last Modified: Thu, 31 May 2018 10:09:21 GMT  
		Size: 7.5 KB (7489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609564564447d2cfad3684d10e50a1df702f223f2cf097e34f55a2f1cc042a51`  
		Last Modified: Thu, 31 May 2018 10:09:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899a19cf81ff9f4a7d708299cb3c4451bcc0b6cfdb0fccb173099f168e74a86a`  
		Last Modified: Thu, 31 May 2018 10:09:20 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb17cd59c238f7551d0fc76cd11fcd519ba54b150e9dd84a5c4dbe7db10daef`  
		Last Modified: Thu, 31 May 2018 10:09:21 GMT  
		Size: 2.2 KB (2171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974ed7795cd6bcd03cdb5d0fee9136742a6ea7d6a6a22b82db59cfa3467b77df`  
		Last Modified: Thu, 31 May 2018 10:09:20 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta1` - linux; s390x

```console
$ docker pull postgres@sha256:96af7c9e0c9ccfd81f0254750240893e3e791e5a268009da960401520cac02fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88651917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd969984eeefdd41dfbb17884e4cbde13a16f952191bd95d4572c3f76daaf2f2`
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
# Sat, 26 May 2018 12:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Sat, 26 May 2018 12:47:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 26 May 2018 12:47:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 31 May 2018 12:10:06 GMT
ENV PG_MAJOR=11
# Thu, 31 May 2018 12:10:06 GMT
ENV PG_VERSION=11~beta1-2.pgdg90+1
# Thu, 31 May 2018 12:23:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 31 May 2018 12:23:13 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 31 May 2018 12:23:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 31 May 2018 12:23:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Thu, 31 May 2018 12:23:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 31 May 2018 12:23:15 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 31 May 2018 12:23:16 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 31 May 2018 12:23:16 GMT
COPY file:c49fc46420f20b85e4b925fcc0ab847c8455bb1e218f0d244b631ce49f4e8cea in /usr/local/bin/ 
# Thu, 31 May 2018 12:23:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 31 May 2018 12:23:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 May 2018 12:23:17 GMT
EXPOSE 5432/tcp
# Thu, 31 May 2018 12:23:17 GMT
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
	-	`sha256:7de49bd07dcdf9fad015c4d4bd637287a3f1b659d1df8ebdcf658b434794b755`  
		Last Modified: Sat, 26 May 2018 13:37:07 GMT  
		Size: 294.4 KB (294387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc56aef30dafe95e3ab3d91d0f9de5035ab08cc413ceea8220ede03878f9ed8`  
		Last Modified: Sat, 26 May 2018 13:37:05 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d4b6298c560a3a7b2e7ab6d2dc154c67bad51e07b4b298641234c766bb59c3e`  
		Last Modified: Sat, 26 May 2018 13:37:04 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9149a3d8935ba1927426113ee997967c8641909249863f822ed7b91aff806df`  
		Last Modified: Thu, 31 May 2018 12:28:38 GMT  
		Size: 54.3 MB (54316147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42056dc49be928855a25b3512798293a54d55c35f15488d8db8b77f7d8ac420a`  
		Last Modified: Thu, 31 May 2018 12:28:23 GMT  
		Size: 7.5 KB (7490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ff9324f58381f7c3471eb105ff013f55495820fe6a50829ba8e4c981753ae1`  
		Last Modified: Thu, 31 May 2018 12:28:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e5f1d40081e3f05a4a554a2ebe196096f393e015a083d03ded74197486311f`  
		Last Modified: Thu, 31 May 2018 12:28:22 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450baed9bf1609e7f7a8267680c81e8629c4ec78d81ca7e624508b19ed9448ee`  
		Last Modified: Thu, 31 May 2018 12:28:22 GMT  
		Size: 2.2 KB (2174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:677727e6d9c7aa560b3a3846b3bf5393acae7a2b83295c6a22ae67085cd2bc2b`  
		Last Modified: Thu, 31 May 2018 12:28:23 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
