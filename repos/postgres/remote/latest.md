## `postgres:latest`

```console
$ docker pull postgres@sha256:ea56e0ae17910aad7e32857a450fdf17bf6621453ad343c49d547a0f5c7277b7
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
$ docker pull postgres@sha256:33f81891e938ac26bbca81c0699dce8a1438e29f9c6767f3a6ae1a3d3b5fba98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.1 MB (86127668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63f824b22e5babde4bbdef5bfd35c8319e1a7e0aba04e531cb592e80c29904ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 00:01:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 00:01:30 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Jun 2018 00:01:30 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 00:01:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Jun 2018 00:01:49 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Jun 2018 00:01:49 GMT
ENV LANG=en_US.utf8
# Wed, 27 Jun 2018 00:01:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 00:01:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Jun 2018 00:01:57 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Jun 2018 00:03:01 GMT
ENV PG_MAJOR=10
# Wed, 27 Jun 2018 00:03:01 GMT
ENV PG_VERSION=10.4-2.pgdg90+1
# Wed, 27 Jun 2018 00:03:22 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Jun 2018 00:03:22 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Jun 2018 00:03:23 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Jun 2018 00:03:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Wed, 27 Jun 2018 00:03:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Jun 2018 00:03:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Jun 2018 00:03:25 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Jun 2018 00:03:25 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Wed, 27 Jun 2018 00:03:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 00:03:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 00:03:26 GMT
EXPOSE 5432/tcp
# Wed, 27 Jun 2018 00:03:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d56a90db572b0c96eede485bdca63d5b72756c2e3e16c7e12cbc0ed6b206fcc`  
		Last Modified: Wed, 27 Jun 2018 00:09:45 GMT  
		Size: 4.5 MB (4498573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa8599293e7800b7d3f9da8e208a1917a0d6820b24f859b320fe057edc3de846`  
		Last Modified: Wed, 27 Jun 2018 00:09:45 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bd9675b49fe901a1de37452f0bdf9ec605b6df47c673cdfc78085b9c256aeb`  
		Last Modified: Wed, 27 Jun 2018 00:09:43 GMT  
		Size: 952.0 KB (952035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581f1a42ac273581da7888dee83e1d16b5ee9847e8d535d3c1fdd89fa939867c`  
		Last Modified: Wed, 27 Jun 2018 00:09:44 GMT  
		Size: 6.2 MB (6182558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce8349d91f8fa731aec394bde32bee4bcb775691d15089885ad0e9513e4de63`  
		Last Modified: Wed, 27 Jun 2018 00:09:42 GMT  
		Size: 295.4 KB (295423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a301f7af71e2abbe907510053ad3dc7233d6d72394c84ab52b51960a5ec1e01f`  
		Last Modified: Wed, 27 Jun 2018 00:09:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe1fac7ebd2c38e92eaee8bdabbf4f43e289d2ac9d9f656f0f834662e8ff15b`  
		Last Modified: Wed, 27 Jun 2018 00:09:41 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d5716364589707cd4f40a1d98fa0c20338c5483c60c0847518a23d323774e`  
		Last Modified: Wed, 27 Jun 2018 00:11:10 GMT  
		Size: 51.7 MB (51685811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b24f6e8dd00eb082a3a16a385c4d42e53cf1867b926006e5a788a21f8270a2`  
		Last Modified: Wed, 27 Jun 2018 00:10:55 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb24c2319c236d0b7006459efc0f1e761cb0f61f039c3c1dfe36dd71b22732a7`  
		Last Modified: Wed, 27 Jun 2018 00:10:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49589447c43be693b296b70754ac1a24ef29c91937605d98d2ff768dfeb4e1e0`  
		Last Modified: Wed, 27 Jun 2018 00:10:55 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37415c98dcddd8238dd3ff7c5fc484044e361beebcde72baccc1eea100743d9`  
		Last Modified: Wed, 27 Jun 2018 00:10:55 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a84915fd4392a99f96be31601d4298ae92284162f515f7cee1a335bafa4a7c`  
		Last Modified: Wed, 27 Jun 2018 00:10:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v5

```console
$ docker pull postgres@sha256:bf24cbfefe1b08710f710d2568bfe4800d8e4c4f2fec36e2e21e206e6697ac94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.5 MB (85474420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c9babe15536fd1193b705c72e0965db59b029d765693467a133a95018367e25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Jun 2018 08:54:01 GMT
ADD file:f1e0d5c56a23a29918cb3b7691cee8f22620b4c54ee70a0dbb4b8151b2be3355 in / 
# Wed, 27 Jun 2018 08:54:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:36:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 09:36:17 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Jun 2018 09:36:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 09:36:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Jun 2018 09:36:47 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Jun 2018 09:36:47 GMT
ENV LANG=en_US.utf8
# Wed, 27 Jun 2018 09:36:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:36:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Jun 2018 09:37:00 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Jun 2018 09:56:27 GMT
ENV PG_MAJOR=10
# Wed, 27 Jun 2018 09:56:27 GMT
ENV PG_VERSION=10.4-2.pgdg90+1
# Wed, 27 Jun 2018 10:15:51 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Jun 2018 10:15:53 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Jun 2018 10:15:54 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Jun 2018 10:15:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Wed, 27 Jun 2018 10:15:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Jun 2018 10:15:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Jun 2018 10:15:55 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Jun 2018 10:15:56 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Wed, 27 Jun 2018 10:15:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 10:15:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 10:15:57 GMT
EXPOSE 5432/tcp
# Wed, 27 Jun 2018 10:15:58 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:151bc45ca30d5401779cd71c1dd194a7e6f64f1214de3f4f025bc53daf823199`  
		Last Modified: Wed, 27 Jun 2018 09:03:17 GMT  
		Size: 21.2 MB (21177290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6b5acbc7969b443159a48c6899abd0ccb20233f368a53f5bf74c40a1a55920`  
		Last Modified: Wed, 27 Jun 2018 11:27:48 GMT  
		Size: 4.2 MB (4231611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c886ccb910d4a7831e324f2c338292f748e43a76ac50b309a6202f327d0b30`  
		Last Modified: Wed, 27 Jun 2018 11:27:46 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8696221c75283e73d6b34b06671d8e228d2b866fa47c39ad8ee2d6a62a03dd8`  
		Last Modified: Wed, 27 Jun 2018 11:27:45 GMT  
		Size: 942.5 KB (942470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2cc72c6d40817da44a8fc63787bb8d6708ad94a5a545d89169b418e1d84caa`  
		Last Modified: Wed, 27 Jun 2018 11:27:47 GMT  
		Size: 6.2 MB (6185065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcdfbf1244fff7477938f01281dd6b8c4c42e619c497171fead66b1b0751913`  
		Last Modified: Wed, 27 Jun 2018 11:27:45 GMT  
		Size: 293.3 KB (293267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d091e8a91088ea42f8dcb5a71acb205c8b92c0e0b38ffde27f08270871c67f5c`  
		Last Modified: Wed, 27 Jun 2018 11:27:44 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e607e763f51ec8cc1d93f42a78062f3f9a23cf0f8fdd93953fe9483bce8199b`  
		Last Modified: Wed, 27 Jun 2018 11:27:44 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff66a293864703290a933a5c271b65c94fe1764948b5ac4899269f97f59e1b8a`  
		Last Modified: Wed, 27 Jun 2018 11:28:34 GMT  
		Size: 52.6 MB (52628365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3703de497f2faca4373a6dd680109745b36a6a324ed433952143bd796bb520`  
		Last Modified: Wed, 27 Jun 2018 11:28:15 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca16accd051cba911c03d3b43e04d3a9b75a4035c46e57d3f0e236715fd0b61`  
		Last Modified: Wed, 27 Jun 2018 11:28:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adfce5955019625d67c45c654fbee463ae76f56cf1e2df1104047365c2cbaa70`  
		Last Modified: Wed, 27 Jun 2018 11:28:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817b213683a04b5b10974be710e2fbf4a7a291d87c75ebb0bb5089f7ef79546a`  
		Last Modified: Wed, 27 Jun 2018 11:28:15 GMT  
		Size: 2.2 KB (2237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4382f60f95c4e244310cab3323e4f8e2685e21707d49dc1ad2b4c1a20d8403f6`  
		Last Modified: Wed, 27 Jun 2018 11:28:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v7

```console
$ docker pull postgres@sha256:0d892112789c2efcbe9962b21cee4fc458d0a62381af2f62c55e6fc7c09466cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81470681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15f3e12e38ba3384870ebe05ed15e1f47a4ecda756640c3556994c1b7ec35cf6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 13:26:41 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Jun 2018 13:26:45 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:27:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Jun 2018 13:27:11 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Jun 2018 13:27:13 GMT
ENV LANG=en_US.utf8
# Wed, 27 Jun 2018 13:27:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:27:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Jun 2018 13:27:29 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Jun 2018 13:45:23 GMT
ENV PG_MAJOR=10
# Wed, 27 Jun 2018 13:45:23 GMT
ENV PG_VERSION=10.4-2.pgdg90+1
# Wed, 27 Jun 2018 14:03:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Jun 2018 14:03:35 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Jun 2018 14:03:36 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Jun 2018 14:03:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Wed, 27 Jun 2018 14:03:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Jun 2018 14:03:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Jun 2018 14:03:40 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Jun 2018 14:03:41 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:03:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 14:03:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:03:44 GMT
EXPOSE 5432/tcp
# Wed, 27 Jun 2018 14:03:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c0f052daea18a500e519e3d0cefde53ca6fd033b6e2e399fc9f8bb49037727`  
		Last Modified: Wed, 27 Jun 2018 15:10:43 GMT  
		Size: 3.9 MB (3868659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9878817e53d414a4f09401e2e938fd7316f4fb00c061c577343c1d8a5ed7532d`  
		Last Modified: Wed, 27 Jun 2018 15:10:40 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef977d60243300dde2ab89d84ad1fc898d9657cac446607ebacf82206f517245`  
		Last Modified: Wed, 27 Jun 2018 15:10:40 GMT  
		Size: 926.2 KB (926202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524e02ebe16fb12b958922ba2ccfa310490b762966bd2c58ea15202258bba4e0`  
		Last Modified: Wed, 27 Jun 2018 15:10:42 GMT  
		Size: 6.2 MB (6185078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eff8a3336644f5ab093a7013cb83310d673d752dae33b6b00a2111a04172b61`  
		Last Modified: Wed, 27 Jun 2018 15:10:39 GMT  
		Size: 291.7 KB (291671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b41e9f748e421cf781e83d70dc8fc76de3047cca03bb8724d4812b8faf1925`  
		Last Modified: Wed, 27 Jun 2018 15:10:38 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d602127ce01d639d9037178efefc8b3d2e54e655a205c9cb63a6408b6eaef7f8`  
		Last Modified: Wed, 27 Jun 2018 15:10:37 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb242d81e6b92f5f84ac8169c72e2dc43e4d959c14a2fef5d651e2b27b10f0e8`  
		Last Modified: Wed, 27 Jun 2018 15:11:47 GMT  
		Size: 50.9 MB (50896438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:538679bfbd5410cc12cf67b2f4d8cc6f61b2997ce60b15f8ee6d2d4027643f44`  
		Last Modified: Wed, 27 Jun 2018 15:11:23 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6e1c1f0c0c0e4d4d2030bfe213347cf9fa76b5d05aff856ecb7996e39452a9`  
		Last Modified: Wed, 27 Jun 2018 15:11:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bafac0a3678a863b90edd297cc235544a6a03f231638f7c650c2622076a504b`  
		Last Modified: Wed, 27 Jun 2018 15:11:22 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c112be05307f044289617d6819fb80d9b77ce6d77491c243bb231149c93c366`  
		Last Modified: Wed, 27 Jun 2018 15:11:21 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f311204f9fcff25f852063f6aae293293691c7d6de2853c0e857ee24e4964a3`  
		Last Modified: Wed, 27 Jun 2018 15:11:21 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:5261cfe07e023f9b500430874a1b20bf90664ddb8b026172bab6d4a7f82702f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83502524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:105086360628be62956797fd97d1dbd8f5c43ece056c7cc4227cefc6590c0735`
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
# Tue, 29 May 2018 19:40:51 GMT
ENV PG_MAJOR=10
# Tue, 29 May 2018 19:40:52 GMT
ENV PG_VERSION=10.4-2.pgdg90+1
# Tue, 29 May 2018 20:11:00 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Tue, 29 May 2018 20:11:02 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 29 May 2018 20:11:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 29 May 2018 20:11:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Tue, 29 May 2018 20:11:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 29 May 2018 20:11:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 29 May 2018 20:11:08 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 09 Jun 2018 09:12:21 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Sat, 09 Jun 2018 09:12:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 09 Jun 2018 09:12:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 09 Jun 2018 09:12:25 GMT
EXPOSE 5432/tcp
# Sat, 09 Jun 2018 09:12:25 GMT
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
	-	`sha256:8a48682352920b3ca42ec09e12d55261af9a8fe90a4f8f024bf562c8406e8be0`  
		Last Modified: Tue, 29 May 2018 22:13:15 GMT  
		Size: 51.7 MB (51671160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33abc36d2d7c442dabd521029437ec793f064bdfe1f615f8add874041b697bb1`  
		Last Modified: Tue, 29 May 2018 22:12:54 GMT  
		Size: 7.3 KB (7303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf26b60213fd8a965b840f7775afdffef6d78e4bd86388cfd3d7c03c68be5b4`  
		Last Modified: Tue, 29 May 2018 22:12:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60cbd9c273f31d81cd27a072d76c23f67207e2f85e9e576864a68717eb37b6e3`  
		Last Modified: Tue, 29 May 2018 22:12:54 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd99b9d0364390d8f6801b2175d06ae8952ca96366b14244d92e131cc0fb3ae9`  
		Last Modified: Sat, 09 Jun 2018 09:15:21 GMT  
		Size: 2.2 KB (2237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37832536795fb1da9308492b6270acdbb65982475190cc9cc76fc890d36f31e5`  
		Last Modified: Sat, 09 Jun 2018 09:15:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; 386

```console
$ docker pull postgres@sha256:7c7b8189bcd477fc71803c45d9abe4edfb3ec9657a07bbe61ce3a961b7ad8a3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88150769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0eb1ab23fb6e9374d5cc7287fa5c8ddd9beff322d19f814897cf29dffb415e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 15:38:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 15:38:23 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Jun 2018 15:38:23 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 15:38:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Jun 2018 15:38:57 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Jun 2018 15:38:57 GMT
ENV LANG=en_US.utf8
# Wed, 27 Jun 2018 15:39:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:39:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Jun 2018 15:39:10 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Jun 2018 15:40:41 GMT
ENV PG_MAJOR=10
# Wed, 27 Jun 2018 15:40:41 GMT
ENV PG_VERSION=10.4-2.pgdg90+1
# Wed, 27 Jun 2018 15:41:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Jun 2018 15:41:25 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Jun 2018 15:41:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Jun 2018 15:41:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Wed, 27 Jun 2018 15:41:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Jun 2018 15:41:28 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Jun 2018 15:41:28 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Jun 2018 15:41:28 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Wed, 27 Jun 2018 15:41:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 15:41:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 15:41:29 GMT
EXPOSE 5432/tcp
# Wed, 27 Jun 2018 15:41:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e5c11ad0c1d9032caf8bbac9288af3e57d73170b4acbada8d9c17064cd4b3c`  
		Last Modified: Wed, 27 Jun 2018 15:46:02 GMT  
		Size: 4.8 MB (4803927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb565de0415a70056fb36488372697a0ca809cc22b40cf686345d7f371916ab`  
		Last Modified: Wed, 27 Jun 2018 15:45:59 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a96f1ad820358b94ad59fd7015a0863d5c81693f0adff616b7bc732f4cb836`  
		Last Modified: Wed, 27 Jun 2018 15:45:59 GMT  
		Size: 931.6 KB (931561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b52e71308e1693113f402d9a130c9e3d6ec9725ee2f558cad84ddc96379e675`  
		Last Modified: Wed, 27 Jun 2018 15:45:59 GMT  
		Size: 6.2 MB (6182525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f653ec59cac739315b67d49bd7b6275b827070e330429ec5b811a5b9d710090`  
		Last Modified: Wed, 27 Jun 2018 15:45:56 GMT  
		Size: 296.5 KB (296545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d90971f0a3e49eec479ce9d71c48cab31e9f474ad44f128708486d2bc062a1`  
		Last Modified: Wed, 27 Jun 2018 15:45:56 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da25848f545040516258fe37e52794a5c5628f64e2005ed85bd6d9d072dc1da6`  
		Last Modified: Wed, 27 Jun 2018 15:45:56 GMT  
		Size: 4.5 KB (4481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4aeb43c1a8c1c465cb950a2fd5feade45c447a7e0af5242563c5fb8c3185889`  
		Last Modified: Wed, 27 Jun 2018 15:47:31 GMT  
		Size: 52.8 MB (52779819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7fbc6bae931456033792c50e66d52fa82363f4c977a10ca1a4db7d1b48809d`  
		Last Modified: Wed, 27 Jun 2018 15:47:05 GMT  
		Size: 7.3 KB (7299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc4c4d9055b4af2e96388075abb9f1d3cd137dfacb2a35d95d3bca643181343`  
		Last Modified: Wed, 27 Jun 2018 15:47:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216fcfcf7d5b41369bcd437f24dfea4b253b78dba23cd0b03a1581fd81005b6b`  
		Last Modified: Wed, 27 Jun 2018 15:47:05 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db63e749f9ce51bb5ecabb55c9f07709a19648d99050f86791bb8a652815038`  
		Last Modified: Wed, 27 Jun 2018 15:47:05 GMT  
		Size: 2.2 KB (2237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613797dde4677d6121c34cb4f71423dc3805c21f9700d74e8790df6e50890e92`  
		Last Modified: Wed, 27 Jun 2018 15:47:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; ppc64le

```console
$ docker pull postgres@sha256:cc9e83f39353011393f9a85dc847712303914dd1fd369cf70bfa53405eb347ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.1 MB (86082419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68ef700dd624491873f0b8d12b1458c226d00c603cf99ac44f17c966c171b70f`
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
# Wed, 27 Jun 2018 12:02:14 GMT
ENV PG_MAJOR=10
# Wed, 27 Jun 2018 12:02:15 GMT
ENV PG_VERSION=10.4-2.pgdg90+1
# Wed, 27 Jun 2018 12:04:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Jun 2018 12:04:07 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Jun 2018 12:04:17 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Jun 2018 12:04:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Wed, 27 Jun 2018 12:04:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Jun 2018 12:04:27 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Jun 2018 12:04:28 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Jun 2018 12:04:32 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:04:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 12:04:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:04:39 GMT
EXPOSE 5432/tcp
# Wed, 27 Jun 2018 12:04:40 GMT
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
	-	`sha256:361f3fcfa3780dd10f624f34717a1bc542ee4a8f951f5105cce31a9c677a6626`  
		Last Modified: Wed, 27 Jun 2018 12:25:41 GMT  
		Size: 51.6 MB (51553020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569feeb8f37694dd98876dd4669ad7bcb961ca6b74552d503d7d4fea830262ba`  
		Last Modified: Wed, 27 Jun 2018 12:25:21 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca15b837f08f7ed6e4a22708ff78f317bb50f5d02e1cbae7c85ee1c4cad93d2`  
		Last Modified: Wed, 27 Jun 2018 12:25:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8407f8deb4a8b4ec2fd69647284f962444e01a96efaf9597decc07b54f68e8d5`  
		Last Modified: Wed, 27 Jun 2018 12:25:21 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ef60b0900e3373f5ea6a1bd8e88505f3f5e156c67865c6d82bd162e15dcac3`  
		Last Modified: Wed, 27 Jun 2018 12:25:21 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05ee4762c4d694a9b2d0dfd9ddf572ae403e0c2e03a4dcaa43b8320baae601a`  
		Last Modified: Wed, 27 Jun 2018 12:25:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; s390x

```console
$ docker pull postgres@sha256:40f209b9d5094d9f5a5708e8c1b8512a0ea379c6280376f6b8217c8bdeeb76b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.4 MB (88363747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfadcb8c15deefc9848c4dc1f2d0477c23209575e03efc40f8bbb99869b28994`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:29:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:29:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Jun 2018 12:29:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 12:30:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Jun 2018 12:30:09 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Jun 2018 12:30:10 GMT
ENV LANG=en_US.utf8
# Wed, 27 Jun 2018 12:30:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:30:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Jun 2018 12:30:17 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Jun 2018 12:39:50 GMT
ENV PG_MAJOR=10
# Wed, 27 Jun 2018 12:39:50 GMT
ENV PG_VERSION=10.4-2.pgdg90+1
# Wed, 27 Jun 2018 12:48:54 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Jun 2018 12:48:58 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Jun 2018 12:48:58 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Jun 2018 12:48:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Wed, 27 Jun 2018 12:48:59 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Jun 2018 12:48:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Jun 2018 12:48:59 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Jun 2018 12:49:00 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:49:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 12:49:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:49:01 GMT
EXPOSE 5432/tcp
# Wed, 27 Jun 2018 12:49:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05a2d6a1f1f31c2233764c29f08fe54b7e219032a6ddb46abe5a74ee219e7e0`  
		Last Modified: Wed, 27 Jun 2018 13:23:35 GMT  
		Size: 4.5 MB (4529969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a087a5fcade98efe47d3909464f635a59ae379739060fc711ee75502ddb44dab`  
		Last Modified: Wed, 27 Jun 2018 13:23:34 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a33c434386996ca7bf4ec4447c261d2ee952462e957ce39690b5f579cbc8ed`  
		Last Modified: Wed, 27 Jun 2018 13:23:34 GMT  
		Size: 938.0 KB (938042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3204afa5871f6daab7cea1963cc04dd8b663591a729eed6af82a1aeee3cea4`  
		Last Modified: Wed, 27 Jun 2018 13:23:35 GMT  
		Size: 6.2 MB (6207295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e3ab1ba21e71123e5915c781f107d55cea1e7bf33393d6d4e78749bd119a31`  
		Last Modified: Wed, 27 Jun 2018 13:23:33 GMT  
		Size: 294.3 KB (294340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db7d5fdbdeb9f86a9ee1f6559bc585ba3c88a94c72066720ccc3088d667c2226`  
		Last Modified: Wed, 27 Jun 2018 13:23:32 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866684ab4ec6b25866cb0df254741a348ddb104c524c3af7170a0122abf7b3b4`  
		Last Modified: Wed, 27 Jun 2018 13:23:32 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9ec7840404e5483dfb52cab768e6b87e6156a535ef5f00176433123c4a6f46`  
		Last Modified: Wed, 27 Jun 2018 13:24:09 GMT  
		Size: 54.0 MB (54027924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f12be15547329920019f12c18dcba3e162dcf58165ef394e95da5580371fcb`  
		Last Modified: Wed, 27 Jun 2018 13:23:56 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de57a963004a255e97e6bd5c7d4b8cb77a829df46995158a5590e24d7d25ac1`  
		Last Modified: Wed, 27 Jun 2018 13:23:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e11c69f57bc066f061e3cfef93fcb356ef86477c6b919ff03b62f403b0f96f`  
		Last Modified: Wed, 27 Jun 2018 13:23:55 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289c9789e93deda26e7dd602790d6dc66ded8ec8441332ad940fefa914c1f0c3`  
		Last Modified: Wed, 27 Jun 2018 13:23:55 GMT  
		Size: 2.2 KB (2237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39bf5413e62a9903427ff4488138ee5288a0e98d16fce8e1db83d787c59b2e2`  
		Last Modified: Wed, 27 Jun 2018 13:23:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
