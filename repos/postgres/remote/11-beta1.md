## `postgres:11-beta1`

```console
$ docker pull postgres@sha256:c74c470f437a5541fa11cec6238cb1ab434ed7097a35ed4582559ef7f5e98034
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
$ docker pull postgres@sha256:b2ee90d3c6fc2be7a690c02d78bca768010308ffd246483ddc1b56937bb46af7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113703754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d4443b599bfe0db5290bd6d2365038d898c996a32a1a7d298793d4a60f7ef18`
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
# Wed, 27 Jun 2018 00:01:57 GMT
ENV PG_MAJOR=11
# Wed, 27 Jun 2018 00:01:57 GMT
ENV PG_VERSION=11~beta1-2.pgdg90+1
# Wed, 27 Jun 2018 00:02:29 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Jun 2018 00:02:30 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Jun 2018 00:02:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Jun 2018 00:02:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 27 Jun 2018 00:02:31 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Jun 2018 00:02:32 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Jun 2018 00:02:33 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Jun 2018 00:02:33 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Wed, 27 Jun 2018 00:02:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 00:02:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 00:02:34 GMT
EXPOSE 5432/tcp
# Wed, 27 Jun 2018 00:02:34 GMT
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
	-	`sha256:e525c0f3028b2178ef63384724916ba74b8a164fa93ba42f5721e301e1aa898c`  
		Last Modified: Wed, 27 Jun 2018 00:09:56 GMT  
		Size: 79.3 MB (79261709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5d641bd07a703595e32e06644eaa8ef7400a095562acab2b4859eabe251de3`  
		Last Modified: Wed, 27 Jun 2018 00:09:38 GMT  
		Size: 7.5 KB (7484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb3b8036fc09016a0cc8fbd8971bf6c811f25ab03a1281117e74b872bee88a7`  
		Last Modified: Wed, 27 Jun 2018 00:09:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a566345e611a69354878b17689e3fd02388ea6562e5182a9666205f69e1ad6b`  
		Last Modified: Wed, 27 Jun 2018 00:09:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73cca3b45f661e7b5cb1fcb7cacfad1c9130c43e60a4615e3d698dca542476d`  
		Last Modified: Wed, 27 Jun 2018 00:09:38 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fd89b89fab0ae00b974530f6ccdf15e09c2f368f63296a209e36e27e3895d14`  
		Last Modified: Wed, 27 Jun 2018 00:09:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta1` - linux; arm variant v5

```console
$ docker pull postgres@sha256:7b03b548b606e8939157c0a3002f0aa8b95c3a40870944371076523f5686d4f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.8 MB (85750340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6b3efdb3e4c2734ea4fead8077681e483bea66cbf07409a8f3f1c13d9eaf4fd`
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
# Wed, 27 Jun 2018 09:37:00 GMT
ENV PG_MAJOR=11
# Wed, 27 Jun 2018 09:37:00 GMT
ENV PG_VERSION=11~beta1-2.pgdg90+1
# Wed, 27 Jun 2018 09:56:11 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Jun 2018 09:56:12 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Jun 2018 09:56:13 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Jun 2018 09:56:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 27 Jun 2018 09:56:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Jun 2018 09:56:15 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Jun 2018 09:56:15 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Jun 2018 09:56:16 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Wed, 27 Jun 2018 09:56:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 09:56:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 09:56:17 GMT
EXPOSE 5432/tcp
# Wed, 27 Jun 2018 09:56:18 GMT
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
	-	`sha256:a2f25d033170c1ddd917465275a4361a1e9542dc5288a760f444f741f03da3f3`  
		Last Modified: Wed, 27 Jun 2018 11:28:01 GMT  
		Size: 52.9 MB (52904100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83337475c8d55abddee7eca665fdb8036aeff449debfadafe52a45310647166`  
		Last Modified: Wed, 27 Jun 2018 11:27:43 GMT  
		Size: 7.5 KB (7481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8837f70165ed734bb26fbf9ccfaa3dc72f507c7a42cbd184b829f4cd5231773`  
		Last Modified: Wed, 27 Jun 2018 11:27:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe1446e2094b4ac97c7f58e365fc2e7919462ddcc6a099999039d8bc3f36278`  
		Last Modified: Wed, 27 Jun 2018 11:27:43 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad1d04d2c03dfa1edb2ad9d839e0d9734937d38256a09f2dffabaebdb2b0c42`  
		Last Modified: Wed, 27 Jun 2018 11:27:43 GMT  
		Size: 2.2 KB (2237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffdbfd19bc55849423123b274923a48179cb3ce1eef1dd087382cdf5afffb02f`  
		Last Modified: Wed, 27 Jun 2018 11:27:45 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta1` - linux; arm variant v7

```console
$ docker pull postgres@sha256:159067a218257e27d83ae2245d02d82d29c9033b025cd901bb00e88fad1fa2e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81728073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:023209906631b6d696446ef23497c155a556db1664020eee1694f38f677fc415`
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
# Wed, 27 Jun 2018 13:27:29 GMT
ENV PG_MAJOR=11
# Wed, 27 Jun 2018 13:27:30 GMT
ENV PG_VERSION=11~beta1-2.pgdg90+1
# Wed, 27 Jun 2018 13:45:00 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Jun 2018 13:45:02 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Jun 2018 13:45:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Jun 2018 13:45:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 27 Jun 2018 13:45:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Jun 2018 13:45:05 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Jun 2018 13:45:06 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Jun 2018 13:45:06 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:45:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 13:45:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:45:13 GMT
EXPOSE 5432/tcp
# Wed, 27 Jun 2018 13:45:13 GMT
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
	-	`sha256:c927239a4f6d0abf51210ec3c8623db6d221acda1f11926264bd4743c035d5a4`  
		Last Modified: Wed, 27 Jun 2018 15:11:02 GMT  
		Size: 51.2 MB (51153640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab75202f71fd7bbf975c505e97a29f2da1959504be585c7e8ae4386894a75dd`  
		Last Modified: Wed, 27 Jun 2018 15:10:36 GMT  
		Size: 7.5 KB (7485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94bf67401d72f769e51b6ac6f1990c0b4c2e372117ea2c649b97aa48d21ee7c`  
		Last Modified: Wed, 27 Jun 2018 15:10:35 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b557ebda8860a2c4af2d8cb9193c182fb49be6017967c33517af47c3b55641`  
		Last Modified: Wed, 27 Jun 2018 15:10:36 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8563b9338175e4192839b2e870f7336df207c239e9135118171bfc9f5f791b7`  
		Last Modified: Wed, 27 Jun 2018 15:10:35 GMT  
		Size: 2.2 KB (2237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f10969340e8e50cdc60de17be187ae5df95c191782242422673d05375a294ef`  
		Last Modified: Wed, 27 Jun 2018 15:10:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta1` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:d71badbd4680ed4451241baaef863579be32620ca2f471ece507dcd05fc3bd7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.8 MB (83775170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f19e304124822eec71ee091deecb2205e6331aa2026cac3e16049a98e27633c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:37:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 13:37:50 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 27 Jun 2018 13:37:51 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:38:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 27 Jun 2018 13:39:01 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 27 Jun 2018 13:39:02 GMT
ENV LANG=en_US.utf8
# Wed, 27 Jun 2018 13:39:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:39:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 27 Jun 2018 13:39:27 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 27 Jun 2018 13:39:28 GMT
ENV PG_MAJOR=11
# Wed, 27 Jun 2018 13:39:29 GMT
ENV PG_VERSION=11~beta1-2.pgdg90+1
# Wed, 27 Jun 2018 14:16:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Jun 2018 14:17:05 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Jun 2018 14:17:09 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Jun 2018 14:17:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 27 Jun 2018 14:17:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Jun 2018 14:17:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Jun 2018 14:17:18 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Jun 2018 14:17:20 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:17:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 14:17:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:17:27 GMT
EXPOSE 5432/tcp
# Wed, 27 Jun 2018 14:17:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626ba8250f480770d6c5e1025e7c0d28609681ff0cc8fa3357bea4de8cea65f8`  
		Last Modified: Wed, 27 Jun 2018 17:23:48 GMT  
		Size: 4.1 MB (4073248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e678aaf8b617fa5c1f19bfe436ef208d4b8a860d969e84e5c9115b9ad83e3371`  
		Last Modified: Wed, 27 Jun 2018 17:23:44 GMT  
		Size: 1.7 KB (1748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67bb07f08a85cabae44d18f3bc6e56ac209f84c3a83e7e23d1a2607b8c1c294`  
		Last Modified: Wed, 27 Jun 2018 17:23:45 GMT  
		Size: 919.4 KB (919445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa17cfb23b1457380ce4fa3fb6aefcccff65dd4a6af5459b79809b0987c742c6`  
		Last Modified: Wed, 27 Jun 2018 17:23:53 GMT  
		Size: 6.2 MB (6182449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b53c79c2e548a2e4da2d8bce3d5f0bb2c2738175c6190640944329f7ed6e2d70`  
		Last Modified: Wed, 27 Jun 2018 17:23:41 GMT  
		Size: 291.9 KB (291922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21f4b890e99773fca62307286aa121f571c6e53d3b91c5b5e3f2441270ca417`  
		Last Modified: Wed, 27 Jun 2018 17:23:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39482a3d57a52b8053a64a779520e741d09673be127817ed35f397b57f9565a2`  
		Last Modified: Wed, 27 Jun 2018 17:23:41 GMT  
		Size: 4.5 KB (4480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67682ea67d0dfd4766c0fd4e0b098518819891df5d5a22debda773a019976a10`  
		Last Modified: Wed, 27 Jun 2018 17:24:01 GMT  
		Size: 51.9 MB (51943539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a3069de5f9870dfef9fb44549130ff59b24061c47ea92e8a1966bf2763ec38`  
		Last Modified: Wed, 27 Jun 2018 17:23:39 GMT  
		Size: 7.5 KB (7488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af4c1780a1f434631ae65a59d9744487957159c0bb46f25a6496b37bbec6c1f`  
		Last Modified: Wed, 27 Jun 2018 17:23:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261c91726513be04b422eb440f530add9e7f777e99df38ea046ffa602d5e71ac`  
		Last Modified: Wed, 27 Jun 2018 17:23:39 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9ffbbfd6c3ed237e3bae015512e748e29446c7cce8b372d803eace873737c8`  
		Last Modified: Wed, 27 Jun 2018 17:23:38 GMT  
		Size: 2.2 KB (2237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ad6cd2fd46e63e4bbee2e64e42e130815bea85ceff9f4343f2c86f289c9024`  
		Last Modified: Wed, 27 Jun 2018 17:23:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta1` - linux; 386

```console
$ docker pull postgres@sha256:aeb6243a830663483de638f985dde2d9383b88e4324486c9f602596322a66798
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117494888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78bfb186c725d0b46de0d80fc25e30a71927034351db32895aef3be9400799a6`
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
# Wed, 27 Jun 2018 15:39:17 GMT
ENV PG_MAJOR=11
# Wed, 27 Jun 2018 15:39:17 GMT
ENV PG_VERSION=11~beta1-2.pgdg90+1
# Wed, 27 Jun 2018 15:40:17 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Jun 2018 15:40:18 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Jun 2018 15:40:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Jun 2018 15:40:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 27 Jun 2018 15:40:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Jun 2018 15:40:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Jun 2018 15:40:21 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Jun 2018 15:40:21 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Wed, 27 Jun 2018 15:40:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 15:40:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 15:40:23 GMT
EXPOSE 5432/tcp
# Wed, 27 Jun 2018 15:40:23 GMT
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
	-	`sha256:abf6ff36d810dbee81ea6eceb2e7e56711d999c24df474403af10847eeeeb344`  
		Last Modified: Wed, 27 Jun 2018 15:46:29 GMT  
		Size: 82.1 MB (82123756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd97f2d4093b98d8ee2a7f75d95277240fc92a8e90e30f8fc207afe5c9c9752`  
		Last Modified: Wed, 27 Jun 2018 15:45:54 GMT  
		Size: 7.5 KB (7483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb686a16c59979ee0c4de700dd2d9804154c4a5212a4e87fa0be8d6495cd39`  
		Last Modified: Wed, 27 Jun 2018 15:45:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b22c6851d8a0a8a42ddc5ef27cc185070049c76ee541665692335c44ba45105f`  
		Last Modified: Wed, 27 Jun 2018 15:45:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ce8af07759e55c45fc197fcce0740f9a2a148a54b053db48f230f27f17ad44`  
		Last Modified: Wed, 27 Jun 2018 15:45:53 GMT  
		Size: 2.2 KB (2237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ea5a10ab8ff12a1a0efe24f719129b09814dcf3c3f311a08dab5f87b3ff6b1`  
		Last Modified: Wed, 27 Jun 2018 15:45:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta1` - linux; ppc64le

```console
$ docker pull postgres@sha256:abc9e8849ebb8c44c33b87cafdd10e2fd4e49b57977866450a4decc53b46d5cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.4 MB (86354817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e339662fc70a4b0c47b17575c11ca6ddece7631a3030e39595bcf8adce3df1b8`
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
# Wed, 27 Jun 2018 11:58:07 GMT
ENV PG_MAJOR=11
# Wed, 27 Jun 2018 11:58:08 GMT
ENV PG_VERSION=11~beta1-2.pgdg90+1
# Wed, 27 Jun 2018 12:01:25 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Jun 2018 12:01:30 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Jun 2018 12:01:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Jun 2018 12:01:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 27 Jun 2018 12:01:42 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Jun 2018 12:01:46 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Jun 2018 12:01:47 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Jun 2018 12:01:49 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:01:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 12:01:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:01:58 GMT
EXPOSE 5432/tcp
# Wed, 27 Jun 2018 12:01:59 GMT
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
	-	`sha256:c94a362d13b260baee281502447ef1121c6630361a3264e57509d390f0327602`  
		Last Modified: Wed, 27 Jun 2018 12:24:54 GMT  
		Size: 51.8 MB (51825231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da015c4589c3fe55a61aaeee421a231216f914160b226c6fcefdf348fd4b775`  
		Last Modified: Wed, 27 Jun 2018 12:24:33 GMT  
		Size: 7.5 KB (7484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acd87ea95ecf838c718d61e27310fb2c5c0ccaf99207d9ecc0ed0d9f94f4e59`  
		Last Modified: Wed, 27 Jun 2018 12:24:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d18836ef8a10cefa0b429b1aeab39bcf1311b0a64066ec211a306fb8f2ce0e`  
		Last Modified: Wed, 27 Jun 2018 12:24:34 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484fc627f78beff58a4291b6f852ed0bbec1b70fe6ae8b1a007c4657154c49b8`  
		Last Modified: Wed, 27 Jun 2018 12:24:33 GMT  
		Size: 2.2 KB (2237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:471cc7a65ad6ffafddc972e5187d43d657cba398c8c784acf5ef04ac9eb4394c`  
		Last Modified: Wed, 27 Jun 2018 12:24:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:11-beta1` - linux; s390x

```console
$ docker pull postgres@sha256:1a4fd0fcfe88d4be83ed422560a5a150373ed47391e8b13f32452050ead6eede
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88651947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0052b337391936eaaa4d66bd74814ac18c96f085e7660f841f0b4ac854206888`
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
# Wed, 27 Jun 2018 12:30:17 GMT
ENV PG_MAJOR=11
# Wed, 27 Jun 2018 12:30:17 GMT
ENV PG_VERSION=11~beta1-2.pgdg90+1
# Wed, 27 Jun 2018 12:39:28 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Wed, 27 Jun 2018 12:39:29 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 27 Jun 2018 12:39:30 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 27 Jun 2018 12:39:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Wed, 27 Jun 2018 12:39:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 27 Jun 2018 12:39:31 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 27 Jun 2018 12:39:31 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 27 Jun 2018 12:39:32 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:39:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 12:39:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:39:33 GMT
EXPOSE 5432/tcp
# Wed, 27 Jun 2018 12:39:33 GMT
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
	-	`sha256:f47d2b35d7d2ba2abc571569bd8e525e551574d0411b70796486629c5c0b0f7e`  
		Last Modified: Wed, 27 Jun 2018 13:23:44 GMT  
		Size: 54.3 MB (54315938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b286953bc669b59c2292b7e64be6026b6a22e03d0989e02b97f0c557502c70a0`  
		Last Modified: Wed, 27 Jun 2018 13:23:31 GMT  
		Size: 7.5 KB (7487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37539ce78930539e6a23fb3160939636ecb30d55bbe3f7982c17711e4746fe1`  
		Last Modified: Wed, 27 Jun 2018 13:23:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c156e23f180d985040d1a8543a072bc3a3dbf1399684348083dfbb2bd1a7dba5`  
		Last Modified: Wed, 27 Jun 2018 13:23:30 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbeed11b0e70efaa611255497252a5bc90742c6c9de692ba1cafca7dfd80b51`  
		Last Modified: Wed, 27 Jun 2018 13:23:30 GMT  
		Size: 2.2 KB (2234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e189e105740f0aacf66ec148c80306e5d65c10affe04489bff2e28244092204`  
		Last Modified: Wed, 27 Jun 2018 13:23:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
