<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `postgres`

-	[`postgres:10`](#postgres10)
-	[`postgres:10.5`](#postgres105)
-	[`postgres:10.5-alpine`](#postgres105-alpine)
-	[`postgres:10-alpine`](#postgres10-alpine)
-	[`postgres:11`](#postgres11)
-	[`postgres:11-alpine`](#postgres11-alpine)
-	[`postgres:11-beta3`](#postgres11-beta3)
-	[`postgres:11-beta3-alpine`](#postgres11-beta3-alpine)
-	[`postgres:9`](#postgres9)
-	[`postgres:9.3`](#postgres93)
-	[`postgres:9.3.24`](#postgres9324)
-	[`postgres:9.3.24-alpine`](#postgres9324-alpine)
-	[`postgres:9.3-alpine`](#postgres93-alpine)
-	[`postgres:9.4`](#postgres94)
-	[`postgres:9.4.19`](#postgres9419)
-	[`postgres:9.4.19-alpine`](#postgres9419-alpine)
-	[`postgres:9.4-alpine`](#postgres94-alpine)
-	[`postgres:9.5`](#postgres95)
-	[`postgres:9.5.14`](#postgres9514)
-	[`postgres:9.5.14-alpine`](#postgres9514-alpine)
-	[`postgres:9.5-alpine`](#postgres95-alpine)
-	[`postgres:9.6`](#postgres96)
-	[`postgres:9.6.10`](#postgres9610)
-	[`postgres:9.6.10-alpine`](#postgres9610-alpine)
-	[`postgres:9.6-alpine`](#postgres96-alpine)
-	[`postgres:9-alpine`](#postgres9-alpine)
-	[`postgres:alpine`](#postgresalpine)
-	[`postgres:latest`](#postgreslatest)

## `postgres:10`

```console
$ docker pull postgres@sha256:35967a51fc53fd0239b98baa4adad03aa1cd13b11df377dd45253c816f0f84ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:10` - linux; amd64

```console
$ docker pull postgres@sha256:b44f45ccd98c8e8d681658d1937b1340dfd2750eaf4cf84e4f6d63c453de2a78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86263170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67ebc8a2f066763e25e5d2d998125e535ede78395d3e7082e55bff4be42b9c3d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:17:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 05:17:34 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jul 2018 05:17:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 01:17:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:17:33 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 27 Jul 2018 01:17:33 GMT
ENV LANG=en_US.utf8
# Fri, 27 Jul 2018 01:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:17:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:17:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 01:19:12 GMT
ENV PG_MAJOR=10
# Fri, 10 Aug 2018 22:09:39 GMT
ENV PG_VERSION=10.5-1.pgdg90+1
# Fri, 10 Aug 2018 22:10:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 10 Aug 2018 22:10:21 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:10:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:10:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 10 Aug 2018 22:10:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:10:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:10:24 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:10:24 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:10:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:10:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:10:25 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:10:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc05f43b4de1da0d2e0f9df9dc3f2b27175cbcc81a2a9cae56835fb52f272f0`  
		Last Modified: Tue, 17 Jul 2018 05:24:23 GMT  
		Size: 4.5 MB (4498535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c4cc9b5f06c00c4bd3a6dafc13535b66d9fc815a0b9ce3ed617afc1c816aa1`  
		Last Modified: Tue, 17 Jul 2018 05:24:18 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45b5ac60cd57336c01a5d3d48950fc2abcb9b3fb0dd626dbd690cc8ad065396`  
		Last Modified: Fri, 27 Jul 2018 01:27:04 GMT  
		Size: 951.9 KB (951901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f823cf5f8b435630b7ea540899a9840d8625d7f989ed9261f0a3ee9ce41c57`  
		Last Modified: Fri, 27 Jul 2018 01:27:05 GMT  
		Size: 6.2 MB (6182657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0626c6149c90dfe629bb8391412a8430a37e8f5696ec44c3356c8b7bc6c1c88e`  
		Last Modified: Fri, 27 Jul 2018 01:27:01 GMT  
		Size: 295.5 KB (295462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25dcd1f62cadaad7cc93ada2dce3757ce4c7c48fdadbb05e9a168745b0e3a49`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c9ac2352c50d545f97fc52f0bc831a3040fae7ae0014f17d92b395498d7ce8`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 4.5 KB (4481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d64824d7372ae457c1fe18607c0a9151cf7effb48db4dd498ea6b25af209b82`  
		Last Modified: Fri, 10 Aug 2018 22:34:49 GMT  
		Size: 51.8 MB (51832415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f3bd8eca277fff242c5e70237d53a39ae182cd737e14c54677f2e3281efb8f`  
		Last Modified: Fri, 10 Aug 2018 22:34:28 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5f963fdc0709829cb1ef9fa459840288cc4d6a0160d6879d5924846ddca87a`  
		Last Modified: Fri, 10 Aug 2018 22:34:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6982aabce0d4e73df86480a16f753d4ea3b7897fc2cf69c838866e96aea0683b`  
		Last Modified: Fri, 10 Aug 2018 22:34:27 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe497238fe3c70300d9fb54258cb1a7aa450dfa60cf9fa18474981722a024bc`  
		Last Modified: Fri, 10 Aug 2018 22:34:31 GMT  
		Size: 2.2 KB (2237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1a22299a0e7a754871925e5cc3a711692d8661405fe7dd595471df7a62fed7`  
		Last Modified: Fri, 10 Aug 2018 22:34:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10.5`

```console
$ docker pull postgres@sha256:35967a51fc53fd0239b98baa4adad03aa1cd13b11df377dd45253c816f0f84ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:10.5` - linux; amd64

```console
$ docker pull postgres@sha256:b44f45ccd98c8e8d681658d1937b1340dfd2750eaf4cf84e4f6d63c453de2a78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86263170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67ebc8a2f066763e25e5d2d998125e535ede78395d3e7082e55bff4be42b9c3d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:17:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 05:17:34 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jul 2018 05:17:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 01:17:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:17:33 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 27 Jul 2018 01:17:33 GMT
ENV LANG=en_US.utf8
# Fri, 27 Jul 2018 01:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:17:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:17:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 01:19:12 GMT
ENV PG_MAJOR=10
# Fri, 10 Aug 2018 22:09:39 GMT
ENV PG_VERSION=10.5-1.pgdg90+1
# Fri, 10 Aug 2018 22:10:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 10 Aug 2018 22:10:21 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:10:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:10:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 10 Aug 2018 22:10:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:10:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:10:24 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:10:24 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:10:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:10:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:10:25 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:10:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc05f43b4de1da0d2e0f9df9dc3f2b27175cbcc81a2a9cae56835fb52f272f0`  
		Last Modified: Tue, 17 Jul 2018 05:24:23 GMT  
		Size: 4.5 MB (4498535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c4cc9b5f06c00c4bd3a6dafc13535b66d9fc815a0b9ce3ed617afc1c816aa1`  
		Last Modified: Tue, 17 Jul 2018 05:24:18 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45b5ac60cd57336c01a5d3d48950fc2abcb9b3fb0dd626dbd690cc8ad065396`  
		Last Modified: Fri, 27 Jul 2018 01:27:04 GMT  
		Size: 951.9 KB (951901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f823cf5f8b435630b7ea540899a9840d8625d7f989ed9261f0a3ee9ce41c57`  
		Last Modified: Fri, 27 Jul 2018 01:27:05 GMT  
		Size: 6.2 MB (6182657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0626c6149c90dfe629bb8391412a8430a37e8f5696ec44c3356c8b7bc6c1c88e`  
		Last Modified: Fri, 27 Jul 2018 01:27:01 GMT  
		Size: 295.5 KB (295462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25dcd1f62cadaad7cc93ada2dce3757ce4c7c48fdadbb05e9a168745b0e3a49`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c9ac2352c50d545f97fc52f0bc831a3040fae7ae0014f17d92b395498d7ce8`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 4.5 KB (4481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d64824d7372ae457c1fe18607c0a9151cf7effb48db4dd498ea6b25af209b82`  
		Last Modified: Fri, 10 Aug 2018 22:34:49 GMT  
		Size: 51.8 MB (51832415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f3bd8eca277fff242c5e70237d53a39ae182cd737e14c54677f2e3281efb8f`  
		Last Modified: Fri, 10 Aug 2018 22:34:28 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5f963fdc0709829cb1ef9fa459840288cc4d6a0160d6879d5924846ddca87a`  
		Last Modified: Fri, 10 Aug 2018 22:34:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6982aabce0d4e73df86480a16f753d4ea3b7897fc2cf69c838866e96aea0683b`  
		Last Modified: Fri, 10 Aug 2018 22:34:27 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe497238fe3c70300d9fb54258cb1a7aa450dfa60cf9fa18474981722a024bc`  
		Last Modified: Fri, 10 Aug 2018 22:34:31 GMT  
		Size: 2.2 KB (2237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1a22299a0e7a754871925e5cc3a711692d8661405fe7dd595471df7a62fed7`  
		Last Modified: Fri, 10 Aug 2018 22:34:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10.5-alpine`

```console
$ docker pull postgres@sha256:1b176b4bfec7db573b4c09fc0c8da35f8072ad101edfbb4f0cda8a437b20af1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:10.5-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:d89ec9b53b2f1a55ccc4d33811778dd071c84ba8a12fae7b2165442fafb4a835
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29478195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5df4f9af771f31b44478e7092d7e2a440d6b1628a33b199183792ce80164b0c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:47:50 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 11 Jul 2018 00:47:50 GMT
ENV LANG=en_US.utf8
# Wed, 11 Jul 2018 00:47:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jul 2018 00:50:58 GMT
ENV PG_MAJOR=10
# Fri, 10 Aug 2018 22:11:17 GMT
ENV PG_VERSION=10.5
# Fri, 10 Aug 2018 22:11:17 GMT
ENV PG_SHA256=6c8e616c91a45142b85c0aeb1f29ebba4a361309e86469e0fb4617b6a73c4011
# Fri, 10 Aug 2018 22:13:39 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Aug 2018 22:13:42 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:13:43 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:13:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:13:44 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:13:44 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:13:45 GMT
COPY file:ea83254240307acb41cff4ba67980cb25f52871869af6e6c49a729ba283f82ed in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:13:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:13:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:13:46 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:13:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9adb8cff82fca4ee56d72d6f8084c02ba5ef008039979a1379e9162703cc6`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8817b9e00daac6d86d105d480aa5c8ef78b76903e15283154197774f718e7e`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53941c55569fdc3fbb42e6108e59949220ccb3cd1f131b6ec66889d4143838c8`  
		Last Modified: Fri, 10 Aug 2018 22:36:11 GMT  
		Size: 27.3 MB (27261471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66d499835407dfca77ef2ae16684682a2c182ca6a9354e0849cd0ee5f52d6a7`  
		Last Modified: Fri, 10 Aug 2018 22:36:00 GMT  
		Size: 7.3 KB (7268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94e4c4de54db6fdee183118b42d86660783559798702580fa2fceb07e0ac1a9`  
		Last Modified: Fri, 10 Aug 2018 22:35:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480f0e20fdcc6b966366f9f25de01a36eeddf028ad249c4f0b86f163bcd90a3b`  
		Last Modified: Fri, 10 Aug 2018 22:35:59 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949d41f63bfb1de8694f1a5b2fc332ec3a8bc7cffb6984203336dfa7fdbb2c61`  
		Last Modified: Fri, 10 Aug 2018 22:35:59 GMT  
		Size: 2.2 KB (2233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd1895e17aed31bc0980ee677ed5ac9b714fcc3c464ce731a778c221c091816`  
		Last Modified: Fri, 10 Aug 2018 22:36:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10-alpine`

```console
$ docker pull postgres@sha256:1b176b4bfec7db573b4c09fc0c8da35f8072ad101edfbb4f0cda8a437b20af1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:10-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:d89ec9b53b2f1a55ccc4d33811778dd071c84ba8a12fae7b2165442fafb4a835
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29478195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5df4f9af771f31b44478e7092d7e2a440d6b1628a33b199183792ce80164b0c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:47:50 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 11 Jul 2018 00:47:50 GMT
ENV LANG=en_US.utf8
# Wed, 11 Jul 2018 00:47:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jul 2018 00:50:58 GMT
ENV PG_MAJOR=10
# Fri, 10 Aug 2018 22:11:17 GMT
ENV PG_VERSION=10.5
# Fri, 10 Aug 2018 22:11:17 GMT
ENV PG_SHA256=6c8e616c91a45142b85c0aeb1f29ebba4a361309e86469e0fb4617b6a73c4011
# Fri, 10 Aug 2018 22:13:39 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Aug 2018 22:13:42 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:13:43 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:13:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:13:44 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:13:44 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:13:45 GMT
COPY file:ea83254240307acb41cff4ba67980cb25f52871869af6e6c49a729ba283f82ed in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:13:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:13:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:13:46 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:13:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9adb8cff82fca4ee56d72d6f8084c02ba5ef008039979a1379e9162703cc6`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8817b9e00daac6d86d105d480aa5c8ef78b76903e15283154197774f718e7e`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53941c55569fdc3fbb42e6108e59949220ccb3cd1f131b6ec66889d4143838c8`  
		Last Modified: Fri, 10 Aug 2018 22:36:11 GMT  
		Size: 27.3 MB (27261471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66d499835407dfca77ef2ae16684682a2c182ca6a9354e0849cd0ee5f52d6a7`  
		Last Modified: Fri, 10 Aug 2018 22:36:00 GMT  
		Size: 7.3 KB (7268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94e4c4de54db6fdee183118b42d86660783559798702580fa2fceb07e0ac1a9`  
		Last Modified: Fri, 10 Aug 2018 22:35:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480f0e20fdcc6b966366f9f25de01a36eeddf028ad249c4f0b86f163bcd90a3b`  
		Last Modified: Fri, 10 Aug 2018 22:35:59 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949d41f63bfb1de8694f1a5b2fc332ec3a8bc7cffb6984203336dfa7fdbb2c61`  
		Last Modified: Fri, 10 Aug 2018 22:35:59 GMT  
		Size: 2.2 KB (2233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd1895e17aed31bc0980ee677ed5ac9b714fcc3c464ce731a778c221c091816`  
		Last Modified: Fri, 10 Aug 2018 22:36:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:11`

```console
$ docker pull postgres@sha256:498e1baec9ed88a090368ad77470846264480fc07301f921d08a236ebb76012a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:11` - linux; amd64

```console
$ docker pull postgres@sha256:4290311509270582ec9e6fc942d422433cba13b67bd499fe2141f76e06a09548
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115721587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab6bba5a84b35fbe321bc94dea91ab4c5b91973406c187aa44952d264bb3ea9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:17:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 05:17:34 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jul 2018 05:17:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 01:17:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:17:33 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 27 Jul 2018 01:17:33 GMT
ENV LANG=en_US.utf8
# Fri, 27 Jul 2018 01:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:17:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:17:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 01:17:44 GMT
ENV PG_MAJOR=11
# Fri, 10 Aug 2018 22:04:00 GMT
ENV PG_VERSION=11~beta3-1.pgdg90+1
# Fri, 10 Aug 2018 22:04:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 10 Aug 2018 22:05:03 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:05:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:05:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 10 Aug 2018 22:05:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:05:05 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:05:05 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:05:06 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:05:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:05:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:05:25 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:05:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc05f43b4de1da0d2e0f9df9dc3f2b27175cbcc81a2a9cae56835fb52f272f0`  
		Last Modified: Tue, 17 Jul 2018 05:24:23 GMT  
		Size: 4.5 MB (4498535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c4cc9b5f06c00c4bd3a6dafc13535b66d9fc815a0b9ce3ed617afc1c816aa1`  
		Last Modified: Tue, 17 Jul 2018 05:24:18 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45b5ac60cd57336c01a5d3d48950fc2abcb9b3fb0dd626dbd690cc8ad065396`  
		Last Modified: Fri, 27 Jul 2018 01:27:04 GMT  
		Size: 951.9 KB (951901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f823cf5f8b435630b7ea540899a9840d8625d7f989ed9261f0a3ee9ce41c57`  
		Last Modified: Fri, 27 Jul 2018 01:27:05 GMT  
		Size: 6.2 MB (6182657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0626c6149c90dfe629bb8391412a8430a37e8f5696ec44c3356c8b7bc6c1c88e`  
		Last Modified: Fri, 27 Jul 2018 01:27:01 GMT  
		Size: 295.5 KB (295462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25dcd1f62cadaad7cc93ada2dce3757ce4c7c48fdadbb05e9a168745b0e3a49`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c9ac2352c50d545f97fc52f0bc831a3040fae7ae0014f17d92b395498d7ce8`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 4.5 KB (4481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d0216774dab0b7fe72a57e6740eef65829b8b7eaf4496c6517a2e5c0746ab6f`  
		Last Modified: Fri, 10 Aug 2018 22:32:12 GMT  
		Size: 81.3 MB (81290604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05bb70114d4568a09c1da057d9ee8cb75d4a8ed399e56ee814dc146971e9e3c7`  
		Last Modified: Fri, 10 Aug 2018 22:31:42 GMT  
		Size: 7.5 KB (7528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee28f254f5af792a10c1abd896cd658c654e94a5243696caadf9754dfeca3d34`  
		Last Modified: Fri, 10 Aug 2018 22:31:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65edc1e2c80e447bd604cfaba4a113557b1152991cb3da49bc169f2ca9759d8c`  
		Last Modified: Fri, 10 Aug 2018 22:31:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385cf507020dc18d731f1d83fe30952ffbb3a66b779bf91fca04e7ab062f6ed7`  
		Last Modified: Fri, 10 Aug 2018 22:31:42 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc92e500bd0d541f2fb281e26d457e7998923514ade71136583fdd86a9791e2`  
		Last Modified: Fri, 10 Aug 2018 22:31:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:11-alpine`

```console
$ docker pull postgres@sha256:3fd5c5dc698a8c071b3d72668b80ed6ae07a4cfa376615472af83c0a00c3fb2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:11-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:680d240b4a47678ba3abac8f2e820f97357e3e19aff234d50db9a572e5a30e65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29686783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02adb3772067e48deb568433b5ef21bd9e55e388644f88a99e206910db9b1c6d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:47:50 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 11 Jul 2018 00:47:50 GMT
ENV LANG=en_US.utf8
# Wed, 11 Jul 2018 00:47:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jul 2018 00:47:51 GMT
ENV PG_MAJOR=11
# Fri, 10 Aug 2018 22:06:17 GMT
ENV PG_VERSION=11beta3
# Fri, 10 Aug 2018 22:06:17 GMT
ENV PG_SHA256=82babba086ea7297d78f3ce2298296cd22fc1bb10ba315e8b4ff661658a8044d
# Fri, 10 Aug 2018 22:08:31 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Aug 2018 22:08:47 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:08:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:08:48 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:08:49 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:08:49 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:08:50 GMT
COPY file:ea83254240307acb41cff4ba67980cb25f52871869af6e6c49a729ba283f82ed in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:08:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:09:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:09:07 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:09:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9adb8cff82fca4ee56d72d6f8084c02ba5ef008039979a1379e9162703cc6`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8817b9e00daac6d86d105d480aa5c8ef78b76903e15283154197774f718e7e`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d02beda44022fe8f4fc500625a56915d3e4218119a1bef6beee6bd1d0df30`  
		Last Modified: Fri, 10 Aug 2018 22:33:29 GMT  
		Size: 27.5 MB (27469836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ebf7598a4b38b0a568d0a305e1624bd64f70d08eb4dbb43dad35f8554a93e4`  
		Last Modified: Fri, 10 Aug 2018 22:33:17 GMT  
		Size: 7.5 KB (7494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69e3556cf0eb5caad1f66b6923fa49d3071fbc72006190d8b5db17233f22011`  
		Last Modified: Fri, 10 Aug 2018 22:33:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9400088b944f15f766e1cf19e1b62bebe142a275d8d3df3ae5ac83d0ef3384a`  
		Last Modified: Fri, 10 Aug 2018 22:33:17 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8484d1cc20b27d19bdb3a1e098a70bc8525a8a040258e3fb9258094b2125a5c4`  
		Last Modified: Fri, 10 Aug 2018 22:33:17 GMT  
		Size: 2.2 KB (2231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284506de951830f0847c3181461b7bdccccbc8abae959694351aa65558455a62`  
		Last Modified: Fri, 10 Aug 2018 22:33:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:11-beta3`

```console
$ docker pull postgres@sha256:498e1baec9ed88a090368ad77470846264480fc07301f921d08a236ebb76012a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:11-beta3` - linux; amd64

```console
$ docker pull postgres@sha256:4290311509270582ec9e6fc942d422433cba13b67bd499fe2141f76e06a09548
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115721587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab6bba5a84b35fbe321bc94dea91ab4c5b91973406c187aa44952d264bb3ea9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:17:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 05:17:34 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jul 2018 05:17:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 01:17:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:17:33 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 27 Jul 2018 01:17:33 GMT
ENV LANG=en_US.utf8
# Fri, 27 Jul 2018 01:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:17:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:17:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 01:17:44 GMT
ENV PG_MAJOR=11
# Fri, 10 Aug 2018 22:04:00 GMT
ENV PG_VERSION=11~beta3-1.pgdg90+1
# Fri, 10 Aug 2018 22:04:56 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 10 Aug 2018 22:05:03 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:05:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:05:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/11/bin
# Fri, 10 Aug 2018 22:05:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:05:05 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:05:05 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:05:06 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:05:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:05:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:05:25 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:05:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc05f43b4de1da0d2e0f9df9dc3f2b27175cbcc81a2a9cae56835fb52f272f0`  
		Last Modified: Tue, 17 Jul 2018 05:24:23 GMT  
		Size: 4.5 MB (4498535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c4cc9b5f06c00c4bd3a6dafc13535b66d9fc815a0b9ce3ed617afc1c816aa1`  
		Last Modified: Tue, 17 Jul 2018 05:24:18 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45b5ac60cd57336c01a5d3d48950fc2abcb9b3fb0dd626dbd690cc8ad065396`  
		Last Modified: Fri, 27 Jul 2018 01:27:04 GMT  
		Size: 951.9 KB (951901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f823cf5f8b435630b7ea540899a9840d8625d7f989ed9261f0a3ee9ce41c57`  
		Last Modified: Fri, 27 Jul 2018 01:27:05 GMT  
		Size: 6.2 MB (6182657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0626c6149c90dfe629bb8391412a8430a37e8f5696ec44c3356c8b7bc6c1c88e`  
		Last Modified: Fri, 27 Jul 2018 01:27:01 GMT  
		Size: 295.5 KB (295462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25dcd1f62cadaad7cc93ada2dce3757ce4c7c48fdadbb05e9a168745b0e3a49`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c9ac2352c50d545f97fc52f0bc831a3040fae7ae0014f17d92b395498d7ce8`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 4.5 KB (4481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d0216774dab0b7fe72a57e6740eef65829b8b7eaf4496c6517a2e5c0746ab6f`  
		Last Modified: Fri, 10 Aug 2018 22:32:12 GMT  
		Size: 81.3 MB (81290604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05bb70114d4568a09c1da057d9ee8cb75d4a8ed399e56ee814dc146971e9e3c7`  
		Last Modified: Fri, 10 Aug 2018 22:31:42 GMT  
		Size: 7.5 KB (7528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee28f254f5af792a10c1abd896cd658c654e94a5243696caadf9754dfeca3d34`  
		Last Modified: Fri, 10 Aug 2018 22:31:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65edc1e2c80e447bd604cfaba4a113557b1152991cb3da49bc169f2ca9759d8c`  
		Last Modified: Fri, 10 Aug 2018 22:31:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385cf507020dc18d731f1d83fe30952ffbb3a66b779bf91fca04e7ab062f6ed7`  
		Last Modified: Fri, 10 Aug 2018 22:31:42 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc92e500bd0d541f2fb281e26d457e7998923514ade71136583fdd86a9791e2`  
		Last Modified: Fri, 10 Aug 2018 22:31:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:11-beta3-alpine`

```console
$ docker pull postgres@sha256:3fd5c5dc698a8c071b3d72668b80ed6ae07a4cfa376615472af83c0a00c3fb2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:11-beta3-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:680d240b4a47678ba3abac8f2e820f97357e3e19aff234d50db9a572e5a30e65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29686783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02adb3772067e48deb568433b5ef21bd9e55e388644f88a99e206910db9b1c6d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:47:50 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 11 Jul 2018 00:47:50 GMT
ENV LANG=en_US.utf8
# Wed, 11 Jul 2018 00:47:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jul 2018 00:47:51 GMT
ENV PG_MAJOR=11
# Fri, 10 Aug 2018 22:06:17 GMT
ENV PG_VERSION=11beta3
# Fri, 10 Aug 2018 22:06:17 GMT
ENV PG_SHA256=82babba086ea7297d78f3ce2298296cd22fc1bb10ba315e8b4ff661658a8044d
# Fri, 10 Aug 2018 22:08:31 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Aug 2018 22:08:47 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:08:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:08:48 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:08:49 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:08:49 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:08:50 GMT
COPY file:ea83254240307acb41cff4ba67980cb25f52871869af6e6c49a729ba283f82ed in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:08:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:09:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:09:07 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:09:07 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9adb8cff82fca4ee56d72d6f8084c02ba5ef008039979a1379e9162703cc6`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8817b9e00daac6d86d105d480aa5c8ef78b76903e15283154197774f718e7e`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d02beda44022fe8f4fc500625a56915d3e4218119a1bef6beee6bd1d0df30`  
		Last Modified: Fri, 10 Aug 2018 22:33:29 GMT  
		Size: 27.5 MB (27469836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ebf7598a4b38b0a568d0a305e1624bd64f70d08eb4dbb43dad35f8554a93e4`  
		Last Modified: Fri, 10 Aug 2018 22:33:17 GMT  
		Size: 7.5 KB (7494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69e3556cf0eb5caad1f66b6923fa49d3071fbc72006190d8b5db17233f22011`  
		Last Modified: Fri, 10 Aug 2018 22:33:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9400088b944f15f766e1cf19e1b62bebe142a275d8d3df3ae5ac83d0ef3384a`  
		Last Modified: Fri, 10 Aug 2018 22:33:17 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8484d1cc20b27d19bdb3a1e098a70bc8525a8a040258e3fb9258094b2125a5c4`  
		Last Modified: Fri, 10 Aug 2018 22:33:17 GMT  
		Size: 2.2 KB (2231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284506de951830f0847c3181461b7bdccccbc8abae959694351aa65558455a62`  
		Last Modified: Fri, 10 Aug 2018 22:33:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:a3f0d5bef460ce359223a4620f320a8dfaff8c8669145d686ec77f8592bea948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

```console
$ docker pull postgres@sha256:ca39b6107978303706aac0f53120879afcd0d4b040ead7f19e8581b81c19ecea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86732671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:506063568b803ab2248bdd1f25ec274caab3e46736acf4285b84ca99d9d5ff81`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:17:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 05:17:34 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jul 2018 05:17:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 01:17:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:17:33 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 27 Jul 2018 01:17:33 GMT
ENV LANG=en_US.utf8
# Fri, 27 Jul 2018 01:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:17:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:17:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 01:20:52 GMT
ENV PG_MAJOR=9.6
# Fri, 10 Aug 2018 22:14:26 GMT
ENV PG_VERSION=9.6.10-1.pgdg90+1
# Fri, 10 Aug 2018 22:15:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 10 Aug 2018 22:15:21 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:15:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:15:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 10 Aug 2018 22:15:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:15:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:15:23 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:15:24 GMT
COPY file:9494d12095c4a6dcf92eb31bbc6d6612e1af08f586becd8840ce47d0ebb5e5db in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:15:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:15:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:15:25 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:15:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc05f43b4de1da0d2e0f9df9dc3f2b27175cbcc81a2a9cae56835fb52f272f0`  
		Last Modified: Tue, 17 Jul 2018 05:24:23 GMT  
		Size: 4.5 MB (4498535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c4cc9b5f06c00c4bd3a6dafc13535b66d9fc815a0b9ce3ed617afc1c816aa1`  
		Last Modified: Tue, 17 Jul 2018 05:24:18 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45b5ac60cd57336c01a5d3d48950fc2abcb9b3fb0dd626dbd690cc8ad065396`  
		Last Modified: Fri, 27 Jul 2018 01:27:04 GMT  
		Size: 951.9 KB (951901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f823cf5f8b435630b7ea540899a9840d8625d7f989ed9261f0a3ee9ce41c57`  
		Last Modified: Fri, 27 Jul 2018 01:27:05 GMT  
		Size: 6.2 MB (6182657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0626c6149c90dfe629bb8391412a8430a37e8f5696ec44c3356c8b7bc6c1c88e`  
		Last Modified: Fri, 27 Jul 2018 01:27:01 GMT  
		Size: 295.5 KB (295462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25dcd1f62cadaad7cc93ada2dce3757ce4c7c48fdadbb05e9a168745b0e3a49`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c9ac2352c50d545f97fc52f0bc831a3040fae7ae0014f17d92b395498d7ce8`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 4.5 KB (4481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d3b62eb5253479f981ce7d80e913f155e38b6377f9217180d9b578832afda7`  
		Last Modified: Fri, 10 Aug 2018 22:37:38 GMT  
		Size: 52.3 MB (52302106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ebb8885899c148951152f642562229b465f147557a82f9fc13a643aed7168ee`  
		Last Modified: Fri, 10 Aug 2018 22:37:14 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb33b5ec4bb0bfc7deff143c5f3c3ae71aa7afe8eb10c945fd8975b974066eea`  
		Last Modified: Fri, 10 Aug 2018 22:37:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd4a8a8f8da9920c4273f17543eb9fffa814d4055fb93160e96c6b63cf72139`  
		Last Modified: Fri, 10 Aug 2018 22:37:14 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0193b2287c8b961e7c1a86b6ec8997e6d22ebf25cd41ffeafccba39305a722a1`  
		Last Modified: Fri, 10 Aug 2018 22:37:14 GMT  
		Size: 2.2 KB (2239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f272f7344001281147a92815fb4103e54571b1b2a35f75262ecaa9bd377d9b`  
		Last Modified: Fri, 10 Aug 2018 22:37:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:f37574dd7059dadb8125f9d2b4f2488b2962d112c77d1c76c931a79e7652a89d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

```console
$ docker pull postgres@sha256:cb1fe94e279e6efd4d221d6bb39b8ad849d8eb2a602e381a8a6554ca759aecef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (84993839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4740c66ff83c8ea3f9e909a2aea87190ba67a3bff40d4788a67ac348a8f0d884`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:17:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 05:17:34 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jul 2018 05:17:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 01:17:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:17:33 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 27 Jul 2018 01:17:33 GMT
ENV LANG=en_US.utf8
# Fri, 27 Jul 2018 01:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:17:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:17:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 01:25:39 GMT
ENV PG_MAJOR=9.3
# Fri, 10 Aug 2018 22:27:09 GMT
ENV PG_VERSION=9.3.24-1.pgdg90+1
# Fri, 10 Aug 2018 22:27:47 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 10 Aug 2018 22:27:48 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:28:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:28:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Fri, 10 Aug 2018 22:28:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:28:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:28:07 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:28:07 GMT
COPY file:9494d12095c4a6dcf92eb31bbc6d6612e1af08f586becd8840ce47d0ebb5e5db in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:28:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:28:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:28:08 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:28:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc05f43b4de1da0d2e0f9df9dc3f2b27175cbcc81a2a9cae56835fb52f272f0`  
		Last Modified: Tue, 17 Jul 2018 05:24:23 GMT  
		Size: 4.5 MB (4498535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c4cc9b5f06c00c4bd3a6dafc13535b66d9fc815a0b9ce3ed617afc1c816aa1`  
		Last Modified: Tue, 17 Jul 2018 05:24:18 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45b5ac60cd57336c01a5d3d48950fc2abcb9b3fb0dd626dbd690cc8ad065396`  
		Last Modified: Fri, 27 Jul 2018 01:27:04 GMT  
		Size: 951.9 KB (951901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f823cf5f8b435630b7ea540899a9840d8625d7f989ed9261f0a3ee9ce41c57`  
		Last Modified: Fri, 27 Jul 2018 01:27:05 GMT  
		Size: 6.2 MB (6182657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0626c6149c90dfe629bb8391412a8430a37e8f5696ec44c3356c8b7bc6c1c88e`  
		Last Modified: Fri, 27 Jul 2018 01:27:01 GMT  
		Size: 295.5 KB (295462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25dcd1f62cadaad7cc93ada2dce3757ce4c7c48fdadbb05e9a168745b0e3a49`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c9ac2352c50d545f97fc52f0bc831a3040fae7ae0014f17d92b395498d7ce8`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 4.5 KB (4481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aaca6242de8d9feafca982b5508bd0178bf1cc6e553c0b430538d4bc18ff571`  
		Last Modified: Fri, 10 Aug 2018 22:44:03 GMT  
		Size: 50.6 MB (50563873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9290f133b316656bf64fa3c3a950d8fde6e28c3f37e01c3226c0708c09da3288`  
		Last Modified: Fri, 10 Aug 2018 22:43:43 GMT  
		Size: 6.5 KB (6510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f302791b54e8309963603aa425dbec636fed86506e867acd340335b05d4adcc`  
		Last Modified: Fri, 10 Aug 2018 22:43:42 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95739c67829df03139de538083d7eee666e2fa63409d541d6e3e3c9c5d78804d`  
		Last Modified: Fri, 10 Aug 2018 22:43:42 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f6b12a64ceb75c486edd2a4b96978ae92860a8378c2bdcbabba4e36e8169e8`  
		Last Modified: Fri, 10 Aug 2018 22:43:42 GMT  
		Size: 2.2 KB (2238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc77a2d4f68a9891997542fe85767cb6b10d0ef4f149b4c4a77965dfca32739e`  
		Last Modified: Fri, 10 Aug 2018 22:43:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.24`

```console
$ docker pull postgres@sha256:f37574dd7059dadb8125f9d2b4f2488b2962d112c77d1c76c931a79e7652a89d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.3.24` - linux; amd64

```console
$ docker pull postgres@sha256:cb1fe94e279e6efd4d221d6bb39b8ad849d8eb2a602e381a8a6554ca759aecef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (84993839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4740c66ff83c8ea3f9e909a2aea87190ba67a3bff40d4788a67ac348a8f0d884`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:17:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 05:17:34 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jul 2018 05:17:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 01:17:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:17:33 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 27 Jul 2018 01:17:33 GMT
ENV LANG=en_US.utf8
# Fri, 27 Jul 2018 01:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:17:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:17:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 01:25:39 GMT
ENV PG_MAJOR=9.3
# Fri, 10 Aug 2018 22:27:09 GMT
ENV PG_VERSION=9.3.24-1.pgdg90+1
# Fri, 10 Aug 2018 22:27:47 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 10 Aug 2018 22:27:48 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:28:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:28:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Fri, 10 Aug 2018 22:28:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:28:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:28:07 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:28:07 GMT
COPY file:9494d12095c4a6dcf92eb31bbc6d6612e1af08f586becd8840ce47d0ebb5e5db in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:28:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:28:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:28:08 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:28:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc05f43b4de1da0d2e0f9df9dc3f2b27175cbcc81a2a9cae56835fb52f272f0`  
		Last Modified: Tue, 17 Jul 2018 05:24:23 GMT  
		Size: 4.5 MB (4498535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c4cc9b5f06c00c4bd3a6dafc13535b66d9fc815a0b9ce3ed617afc1c816aa1`  
		Last Modified: Tue, 17 Jul 2018 05:24:18 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45b5ac60cd57336c01a5d3d48950fc2abcb9b3fb0dd626dbd690cc8ad065396`  
		Last Modified: Fri, 27 Jul 2018 01:27:04 GMT  
		Size: 951.9 KB (951901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f823cf5f8b435630b7ea540899a9840d8625d7f989ed9261f0a3ee9ce41c57`  
		Last Modified: Fri, 27 Jul 2018 01:27:05 GMT  
		Size: 6.2 MB (6182657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0626c6149c90dfe629bb8391412a8430a37e8f5696ec44c3356c8b7bc6c1c88e`  
		Last Modified: Fri, 27 Jul 2018 01:27:01 GMT  
		Size: 295.5 KB (295462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25dcd1f62cadaad7cc93ada2dce3757ce4c7c48fdadbb05e9a168745b0e3a49`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c9ac2352c50d545f97fc52f0bc831a3040fae7ae0014f17d92b395498d7ce8`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 4.5 KB (4481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aaca6242de8d9feafca982b5508bd0178bf1cc6e553c0b430538d4bc18ff571`  
		Last Modified: Fri, 10 Aug 2018 22:44:03 GMT  
		Size: 50.6 MB (50563873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9290f133b316656bf64fa3c3a950d8fde6e28c3f37e01c3226c0708c09da3288`  
		Last Modified: Fri, 10 Aug 2018 22:43:43 GMT  
		Size: 6.5 KB (6510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f302791b54e8309963603aa425dbec636fed86506e867acd340335b05d4adcc`  
		Last Modified: Fri, 10 Aug 2018 22:43:42 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95739c67829df03139de538083d7eee666e2fa63409d541d6e3e3c9c5d78804d`  
		Last Modified: Fri, 10 Aug 2018 22:43:42 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f6b12a64ceb75c486edd2a4b96978ae92860a8378c2bdcbabba4e36e8169e8`  
		Last Modified: Fri, 10 Aug 2018 22:43:42 GMT  
		Size: 2.2 KB (2238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc77a2d4f68a9891997542fe85767cb6b10d0ef4f149b4c4a77965dfca32739e`  
		Last Modified: Fri, 10 Aug 2018 22:43:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.24-alpine`

```console
$ docker pull postgres@sha256:c13fe89039cc6210797f30692493b46a93348d36911237e1923af76b62186fe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.3.24-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:f8c21b94608481347cf49c0588dfd48194f4bcfed3e9e16522d1ba536dba9862
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15687873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38dbf89a42a7615b304127c7dcf340c38c51d1a96ded32b843d4055c85a3c60b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:47:50 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 11 Jul 2018 00:47:50 GMT
ENV LANG=en_US.utf8
# Wed, 11 Jul 2018 00:47:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jul 2018 01:01:57 GMT
ENV PG_MAJOR=9.3
# Fri, 10 Aug 2018 22:28:37 GMT
ENV PG_VERSION=9.3.24
# Fri, 10 Aug 2018 22:28:37 GMT
ENV PG_SHA256=8214a73a3b2135226bdc1394c9efdcb80f79e504ec700cf9b23d0b6bc2b60da9
# Fri, 10 Aug 2018 22:28:37 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Fri, 10 Aug 2018 22:28:38 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Fri, 10 Aug 2018 22:30:34 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Aug 2018 22:30:37 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:30:38 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:30:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:30:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:30:55 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:30:55 GMT
COPY file:9dd1c949a5c5f0ce96f548c5eaa0567ac18383563705231d6fd8e616fe5b3397 in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:30:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:30:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:30:57 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:30:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9adb8cff82fca4ee56d72d6f8084c02ba5ef008039979a1379e9162703cc6`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8817b9e00daac6d86d105d480aa5c8ef78b76903e15283154197774f718e7e`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3d836322783507a27cfd30233d86bb03d8ae618cc483d80dbd15b857bd189f`  
		Last Modified: Fri, 10 Aug 2018 22:44:58 GMT  
		Size: 13.5 MB (13471934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad416ef4dc08fe69d6f546a497bef7ba99a224ad374b4abbac651310a5d6fd3`  
		Last Modified: Fri, 10 Aug 2018 22:44:47 GMT  
		Size: 6.5 KB (6478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1beb15ea09f562d98f1f4f8e0dd780eb59d9c814d3c6d88fafe5a19456cd45`  
		Last Modified: Fri, 10 Aug 2018 22:44:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9968f49149e15046416ee9915745ca9289a523a477b1a2205aeeff967dec9c`  
		Last Modified: Fri, 10 Aug 2018 22:44:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812a475fcd44639a322af0af1d579e3f36d89fa130276cd1dbf13e26a6ec7b05`  
		Last Modified: Fri, 10 Aug 2018 22:44:47 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc96bd7e21f62d829bccf0e98487456f20d2d29a4d197eb173b37aa9504f46c`  
		Last Modified: Fri, 10 Aug 2018 22:44:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:c13fe89039cc6210797f30692493b46a93348d36911237e1923af76b62186fe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:f8c21b94608481347cf49c0588dfd48194f4bcfed3e9e16522d1ba536dba9862
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15687873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38dbf89a42a7615b304127c7dcf340c38c51d1a96ded32b843d4055c85a3c60b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:47:50 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 11 Jul 2018 00:47:50 GMT
ENV LANG=en_US.utf8
# Wed, 11 Jul 2018 00:47:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jul 2018 01:01:57 GMT
ENV PG_MAJOR=9.3
# Fri, 10 Aug 2018 22:28:37 GMT
ENV PG_VERSION=9.3.24
# Fri, 10 Aug 2018 22:28:37 GMT
ENV PG_SHA256=8214a73a3b2135226bdc1394c9efdcb80f79e504ec700cf9b23d0b6bc2b60da9
# Fri, 10 Aug 2018 22:28:37 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Fri, 10 Aug 2018 22:28:38 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Fri, 10 Aug 2018 22:30:34 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Aug 2018 22:30:37 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:30:38 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:30:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:30:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:30:55 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:30:55 GMT
COPY file:9dd1c949a5c5f0ce96f548c5eaa0567ac18383563705231d6fd8e616fe5b3397 in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:30:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:30:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:30:57 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:30:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9adb8cff82fca4ee56d72d6f8084c02ba5ef008039979a1379e9162703cc6`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8817b9e00daac6d86d105d480aa5c8ef78b76903e15283154197774f718e7e`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3d836322783507a27cfd30233d86bb03d8ae618cc483d80dbd15b857bd189f`  
		Last Modified: Fri, 10 Aug 2018 22:44:58 GMT  
		Size: 13.5 MB (13471934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ad416ef4dc08fe69d6f546a497bef7ba99a224ad374b4abbac651310a5d6fd3`  
		Last Modified: Fri, 10 Aug 2018 22:44:47 GMT  
		Size: 6.5 KB (6478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1beb15ea09f562d98f1f4f8e0dd780eb59d9c814d3c6d88fafe5a19456cd45`  
		Last Modified: Fri, 10 Aug 2018 22:44:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9968f49149e15046416ee9915745ca9289a523a477b1a2205aeeff967dec9c`  
		Last Modified: Fri, 10 Aug 2018 22:44:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812a475fcd44639a322af0af1d579e3f36d89fa130276cd1dbf13e26a6ec7b05`  
		Last Modified: Fri, 10 Aug 2018 22:44:47 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc96bd7e21f62d829bccf0e98487456f20d2d29a4d197eb173b37aa9504f46c`  
		Last Modified: Fri, 10 Aug 2018 22:44:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:12f0bd7a5f9019a612a7e988ec7a58028214ecd4e214191686cea0f78565431c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

```console
$ docker pull postgres@sha256:4913e2fc8f61d039ddb8a1bba82ae4deef7b2f8a789b0d8e0a3a08633356c070
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85388712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f047e24dc675379beaeb2230f3275329b257ad19eba621714ae9c36f9c511d08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:17:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 05:17:34 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jul 2018 05:17:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 01:17:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:17:33 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 27 Jul 2018 01:17:33 GMT
ENV LANG=en_US.utf8
# Fri, 27 Jul 2018 01:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:17:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:17:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 01:24:26 GMT
ENV PG_MAJOR=9.4
# Fri, 10 Aug 2018 22:23:47 GMT
ENV PG_VERSION=9.4.19-1.pgdg90+1
# Fri, 10 Aug 2018 22:24:21 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 10 Aug 2018 22:24:22 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:24:23 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:24:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 10 Aug 2018 22:24:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:24:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:24:24 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:24:25 GMT
COPY file:9494d12095c4a6dcf92eb31bbc6d6612e1af08f586becd8840ce47d0ebb5e5db in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:24:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:24:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:24:26 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:24:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc05f43b4de1da0d2e0f9df9dc3f2b27175cbcc81a2a9cae56835fb52f272f0`  
		Last Modified: Tue, 17 Jul 2018 05:24:23 GMT  
		Size: 4.5 MB (4498535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c4cc9b5f06c00c4bd3a6dafc13535b66d9fc815a0b9ce3ed617afc1c816aa1`  
		Last Modified: Tue, 17 Jul 2018 05:24:18 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45b5ac60cd57336c01a5d3d48950fc2abcb9b3fb0dd626dbd690cc8ad065396`  
		Last Modified: Fri, 27 Jul 2018 01:27:04 GMT  
		Size: 951.9 KB (951901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f823cf5f8b435630b7ea540899a9840d8625d7f989ed9261f0a3ee9ce41c57`  
		Last Modified: Fri, 27 Jul 2018 01:27:05 GMT  
		Size: 6.2 MB (6182657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0626c6149c90dfe629bb8391412a8430a37e8f5696ec44c3356c8b7bc6c1c88e`  
		Last Modified: Fri, 27 Jul 2018 01:27:01 GMT  
		Size: 295.5 KB (295462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25dcd1f62cadaad7cc93ada2dce3757ce4c7c48fdadbb05e9a168745b0e3a49`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c9ac2352c50d545f97fc52f0bc831a3040fae7ae0014f17d92b395498d7ce8`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 4.5 KB (4481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccd54eee30155d2e208899490c1920c5163fe428173e2ca3e1d23cf34263964`  
		Last Modified: Fri, 10 Aug 2018 22:42:05 GMT  
		Size: 51.0 MB (50958570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e039340ec6dad2b89ac1402c89c26eafc293bddc17e9f8b3e554808de367d9`  
		Last Modified: Fri, 10 Aug 2018 22:41:44 GMT  
		Size: 6.7 KB (6689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f56b7543658e650c4ff8d567883c4cfddc43dd15ab900b39b480760ef4752d1`  
		Last Modified: Fri, 10 Aug 2018 22:41:44 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7175680f6afbb1445c53ea8856507b18a1c96a54b3dd4a23db27546617e212cd`  
		Last Modified: Fri, 10 Aug 2018 22:41:44 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8800f670fc3126b05edb90712a77d9eabf39b5e1ee24b8f6da7263b09add981c`  
		Last Modified: Fri, 10 Aug 2018 22:41:44 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d6a4ef61d92824ca066c438fc055baa090b490e2e28e614ee6566897e609dc`  
		Last Modified: Fri, 10 Aug 2018 22:41:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.19`

```console
$ docker pull postgres@sha256:12f0bd7a5f9019a612a7e988ec7a58028214ecd4e214191686cea0f78565431c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4.19` - linux; amd64

```console
$ docker pull postgres@sha256:4913e2fc8f61d039ddb8a1bba82ae4deef7b2f8a789b0d8e0a3a08633356c070
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85388712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f047e24dc675379beaeb2230f3275329b257ad19eba621714ae9c36f9c511d08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:17:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 05:17:34 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jul 2018 05:17:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 01:17:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:17:33 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 27 Jul 2018 01:17:33 GMT
ENV LANG=en_US.utf8
# Fri, 27 Jul 2018 01:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:17:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:17:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 01:24:26 GMT
ENV PG_MAJOR=9.4
# Fri, 10 Aug 2018 22:23:47 GMT
ENV PG_VERSION=9.4.19-1.pgdg90+1
# Fri, 10 Aug 2018 22:24:21 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 10 Aug 2018 22:24:22 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:24:23 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:24:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 10 Aug 2018 22:24:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:24:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:24:24 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:24:25 GMT
COPY file:9494d12095c4a6dcf92eb31bbc6d6612e1af08f586becd8840ce47d0ebb5e5db in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:24:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:24:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:24:26 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:24:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc05f43b4de1da0d2e0f9df9dc3f2b27175cbcc81a2a9cae56835fb52f272f0`  
		Last Modified: Tue, 17 Jul 2018 05:24:23 GMT  
		Size: 4.5 MB (4498535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c4cc9b5f06c00c4bd3a6dafc13535b66d9fc815a0b9ce3ed617afc1c816aa1`  
		Last Modified: Tue, 17 Jul 2018 05:24:18 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45b5ac60cd57336c01a5d3d48950fc2abcb9b3fb0dd626dbd690cc8ad065396`  
		Last Modified: Fri, 27 Jul 2018 01:27:04 GMT  
		Size: 951.9 KB (951901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f823cf5f8b435630b7ea540899a9840d8625d7f989ed9261f0a3ee9ce41c57`  
		Last Modified: Fri, 27 Jul 2018 01:27:05 GMT  
		Size: 6.2 MB (6182657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0626c6149c90dfe629bb8391412a8430a37e8f5696ec44c3356c8b7bc6c1c88e`  
		Last Modified: Fri, 27 Jul 2018 01:27:01 GMT  
		Size: 295.5 KB (295462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25dcd1f62cadaad7cc93ada2dce3757ce4c7c48fdadbb05e9a168745b0e3a49`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c9ac2352c50d545f97fc52f0bc831a3040fae7ae0014f17d92b395498d7ce8`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 4.5 KB (4481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccd54eee30155d2e208899490c1920c5163fe428173e2ca3e1d23cf34263964`  
		Last Modified: Fri, 10 Aug 2018 22:42:05 GMT  
		Size: 51.0 MB (50958570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e039340ec6dad2b89ac1402c89c26eafc293bddc17e9f8b3e554808de367d9`  
		Last Modified: Fri, 10 Aug 2018 22:41:44 GMT  
		Size: 6.7 KB (6689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f56b7543658e650c4ff8d567883c4cfddc43dd15ab900b39b480760ef4752d1`  
		Last Modified: Fri, 10 Aug 2018 22:41:44 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7175680f6afbb1445c53ea8856507b18a1c96a54b3dd4a23db27546617e212cd`  
		Last Modified: Fri, 10 Aug 2018 22:41:44 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8800f670fc3126b05edb90712a77d9eabf39b5e1ee24b8f6da7263b09add981c`  
		Last Modified: Fri, 10 Aug 2018 22:41:44 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d6a4ef61d92824ca066c438fc055baa090b490e2e28e614ee6566897e609dc`  
		Last Modified: Fri, 10 Aug 2018 22:41:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.19-alpine`

```console
$ docker pull postgres@sha256:4e512a8a0940f0e99a51fd607d6627304a1225187da7072c863cc4e000e33979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4.19-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:df91a4260285b34bb75c7816d0111c86aa783b1f094918e237b6cd246283f843
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15992700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d6bb3f0449e8253d51499229888ee5db94fcd7ca607de4a3fe483f3631a4ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:47:50 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 11 Jul 2018 00:47:50 GMT
ENV LANG=en_US.utf8
# Wed, 11 Jul 2018 00:47:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jul 2018 00:59:46 GMT
ENV PG_MAJOR=9.4
# Fri, 10 Aug 2018 22:24:44 GMT
ENV PG_VERSION=9.4.19
# Fri, 10 Aug 2018 22:24:44 GMT
ENV PG_SHA256=03776b036b2a05371083558e10c21cc4b90bde9eb3aff60299c4ce7c084c168b
# Fri, 10 Aug 2018 22:26:37 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Aug 2018 22:26:37 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:26:38 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:26:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:26:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:26:40 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:26:40 GMT
COPY file:9dd1c949a5c5f0ce96f548c5eaa0567ac18383563705231d6fd8e616fe5b3397 in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:26:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:26:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:26:42 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:26:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9adb8cff82fca4ee56d72d6f8084c02ba5ef008039979a1379e9162703cc6`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8817b9e00daac6d86d105d480aa5c8ef78b76903e15283154197774f718e7e`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4370f6514883d0c0833528043b274412ae29fe7925c547b6f10b6b339b695ebd`  
		Last Modified: Fri, 10 Aug 2018 22:42:59 GMT  
		Size: 13.8 MB (13776577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493235c856b7f80afaf85caee659142fc54b60fb87382be5c9d19d6c3a1d5f95`  
		Last Modified: Fri, 10 Aug 2018 22:42:52 GMT  
		Size: 6.7 KB (6662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb371c1531df167d4aa7526a25afec50f4a31f8d50128603728078ade8d563aa`  
		Last Modified: Fri, 10 Aug 2018 22:42:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640aac2f1128e2c00db81224912ba89730d3e19ec461a78877ebc42a8ef2e10d`  
		Last Modified: Fri, 10 Aug 2018 22:42:52 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fbe46526fb27eefcd58a34eff31785fd3e2bd53f60bf512320151d83a81edf`  
		Last Modified: Fri, 10 Aug 2018 22:42:52 GMT  
		Size: 2.2 KB (2234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b39afc4f290e36c28aa9a6af1a0950f6c13986d5b8d308cf2ca1898324a659e`  
		Last Modified: Fri, 10 Aug 2018 22:42:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:4e512a8a0940f0e99a51fd607d6627304a1225187da7072c863cc4e000e33979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:df91a4260285b34bb75c7816d0111c86aa783b1f094918e237b6cd246283f843
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (15992700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d6bb3f0449e8253d51499229888ee5db94fcd7ca607de4a3fe483f3631a4ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:47:50 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 11 Jul 2018 00:47:50 GMT
ENV LANG=en_US.utf8
# Wed, 11 Jul 2018 00:47:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jul 2018 00:59:46 GMT
ENV PG_MAJOR=9.4
# Fri, 10 Aug 2018 22:24:44 GMT
ENV PG_VERSION=9.4.19
# Fri, 10 Aug 2018 22:24:44 GMT
ENV PG_SHA256=03776b036b2a05371083558e10c21cc4b90bde9eb3aff60299c4ce7c084c168b
# Fri, 10 Aug 2018 22:26:37 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Aug 2018 22:26:37 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:26:38 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:26:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:26:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:26:40 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:26:40 GMT
COPY file:9dd1c949a5c5f0ce96f548c5eaa0567ac18383563705231d6fd8e616fe5b3397 in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:26:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:26:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:26:42 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:26:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9adb8cff82fca4ee56d72d6f8084c02ba5ef008039979a1379e9162703cc6`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8817b9e00daac6d86d105d480aa5c8ef78b76903e15283154197774f718e7e`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4370f6514883d0c0833528043b274412ae29fe7925c547b6f10b6b339b695ebd`  
		Last Modified: Fri, 10 Aug 2018 22:42:59 GMT  
		Size: 13.8 MB (13776577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493235c856b7f80afaf85caee659142fc54b60fb87382be5c9d19d6c3a1d5f95`  
		Last Modified: Fri, 10 Aug 2018 22:42:52 GMT  
		Size: 6.7 KB (6662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb371c1531df167d4aa7526a25afec50f4a31f8d50128603728078ade8d563aa`  
		Last Modified: Fri, 10 Aug 2018 22:42:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640aac2f1128e2c00db81224912ba89730d3e19ec461a78877ebc42a8ef2e10d`  
		Last Modified: Fri, 10 Aug 2018 22:42:52 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fbe46526fb27eefcd58a34eff31785fd3e2bd53f60bf512320151d83a81edf`  
		Last Modified: Fri, 10 Aug 2018 22:42:52 GMT  
		Size: 2.2 KB (2234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b39afc4f290e36c28aa9a6af1a0950f6c13986d5b8d308cf2ca1898324a659e`  
		Last Modified: Fri, 10 Aug 2018 22:42:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:de687a0414eaaed4a7c9488a48f7f887b3f5618d5ba8c59a86a5f3d8142ed3ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

```console
$ docker pull postgres@sha256:954fa1dd3fa72de7e5d491167fb4d17a5ba9d067d7f649aef91a771887cb6999
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85743517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b5efddb3fddb3bec2288d8cb8830e52362774a76867a5d197dd8ae9005b8d9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:17:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 05:17:34 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jul 2018 05:17:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 01:17:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:17:33 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 27 Jul 2018 01:17:33 GMT
ENV LANG=en_US.utf8
# Fri, 27 Jul 2018 01:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:17:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:17:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 01:22:32 GMT
ENV PG_MAJOR=9.5
# Fri, 10 Aug 2018 22:19:10 GMT
ENV PG_VERSION=9.5.14-1.pgdg90+1
# Fri, 10 Aug 2018 22:19:47 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 10 Aug 2018 22:19:55 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:19:56 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:19:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 10 Aug 2018 22:19:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:19:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:19:58 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:19:58 GMT
COPY file:9494d12095c4a6dcf92eb31bbc6d6612e1af08f586becd8840ce47d0ebb5e5db in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:19:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:20:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:20:16 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:20:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc05f43b4de1da0d2e0f9df9dc3f2b27175cbcc81a2a9cae56835fb52f272f0`  
		Last Modified: Tue, 17 Jul 2018 05:24:23 GMT  
		Size: 4.5 MB (4498535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c4cc9b5f06c00c4bd3a6dafc13535b66d9fc815a0b9ce3ed617afc1c816aa1`  
		Last Modified: Tue, 17 Jul 2018 05:24:18 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45b5ac60cd57336c01a5d3d48950fc2abcb9b3fb0dd626dbd690cc8ad065396`  
		Last Modified: Fri, 27 Jul 2018 01:27:04 GMT  
		Size: 951.9 KB (951901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f823cf5f8b435630b7ea540899a9840d8625d7f989ed9261f0a3ee9ce41c57`  
		Last Modified: Fri, 27 Jul 2018 01:27:05 GMT  
		Size: 6.2 MB (6182657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0626c6149c90dfe629bb8391412a8430a37e8f5696ec44c3356c8b7bc6c1c88e`  
		Last Modified: Fri, 27 Jul 2018 01:27:01 GMT  
		Size: 295.5 KB (295462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25dcd1f62cadaad7cc93ada2dce3757ce4c7c48fdadbb05e9a168745b0e3a49`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c9ac2352c50d545f97fc52f0bc831a3040fae7ae0014f17d92b395498d7ce8`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 4.5 KB (4481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4560ecec753896c1a4d8ffa7f4c8a8f2c04394d81a837cb8b29de33933e90c3`  
		Last Modified: Fri, 10 Aug 2018 22:40:11 GMT  
		Size: 51.3 MB (51313224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07441c7cf5f0f4655cfb3ed40b43d92cf4ec6b6144c1b6048973a7c4e01c7266`  
		Last Modified: Fri, 10 Aug 2018 22:39:50 GMT  
		Size: 6.8 KB (6833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10eb2083d01baf743368e6ad7884889f4f9f3fd31c1100466ea19d44ff7faf5`  
		Last Modified: Fri, 10 Aug 2018 22:39:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb21f5c05106e2302f8313b493fc41e3a99804c65b5502e927c51ce41a95a57a`  
		Last Modified: Fri, 10 Aug 2018 22:39:51 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46dda964b0cca5e96ea57b2f2af39d5565e2135d9e8c7c6be0339ead819af42`  
		Last Modified: Fri, 10 Aug 2018 22:39:50 GMT  
		Size: 2.2 KB (2240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f92c6616ac21eae0c62eda69ff0cb0c8edc7a9afe7001f10b8e359b478d31d`  
		Last Modified: Fri, 10 Aug 2018 22:39:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.14`

```console
$ docker pull postgres@sha256:de687a0414eaaed4a7c9488a48f7f887b3f5618d5ba8c59a86a5f3d8142ed3ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5.14` - linux; amd64

```console
$ docker pull postgres@sha256:954fa1dd3fa72de7e5d491167fb4d17a5ba9d067d7f649aef91a771887cb6999
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85743517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b5efddb3fddb3bec2288d8cb8830e52362774a76867a5d197dd8ae9005b8d9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:17:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 05:17:34 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jul 2018 05:17:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 01:17:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:17:33 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 27 Jul 2018 01:17:33 GMT
ENV LANG=en_US.utf8
# Fri, 27 Jul 2018 01:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:17:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:17:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 01:22:32 GMT
ENV PG_MAJOR=9.5
# Fri, 10 Aug 2018 22:19:10 GMT
ENV PG_VERSION=9.5.14-1.pgdg90+1
# Fri, 10 Aug 2018 22:19:47 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 10 Aug 2018 22:19:55 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:19:56 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:19:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 10 Aug 2018 22:19:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:19:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:19:58 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:19:58 GMT
COPY file:9494d12095c4a6dcf92eb31bbc6d6612e1af08f586becd8840ce47d0ebb5e5db in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:19:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:20:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:20:16 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:20:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc05f43b4de1da0d2e0f9df9dc3f2b27175cbcc81a2a9cae56835fb52f272f0`  
		Last Modified: Tue, 17 Jul 2018 05:24:23 GMT  
		Size: 4.5 MB (4498535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c4cc9b5f06c00c4bd3a6dafc13535b66d9fc815a0b9ce3ed617afc1c816aa1`  
		Last Modified: Tue, 17 Jul 2018 05:24:18 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45b5ac60cd57336c01a5d3d48950fc2abcb9b3fb0dd626dbd690cc8ad065396`  
		Last Modified: Fri, 27 Jul 2018 01:27:04 GMT  
		Size: 951.9 KB (951901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f823cf5f8b435630b7ea540899a9840d8625d7f989ed9261f0a3ee9ce41c57`  
		Last Modified: Fri, 27 Jul 2018 01:27:05 GMT  
		Size: 6.2 MB (6182657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0626c6149c90dfe629bb8391412a8430a37e8f5696ec44c3356c8b7bc6c1c88e`  
		Last Modified: Fri, 27 Jul 2018 01:27:01 GMT  
		Size: 295.5 KB (295462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25dcd1f62cadaad7cc93ada2dce3757ce4c7c48fdadbb05e9a168745b0e3a49`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c9ac2352c50d545f97fc52f0bc831a3040fae7ae0014f17d92b395498d7ce8`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 4.5 KB (4481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4560ecec753896c1a4d8ffa7f4c8a8f2c04394d81a837cb8b29de33933e90c3`  
		Last Modified: Fri, 10 Aug 2018 22:40:11 GMT  
		Size: 51.3 MB (51313224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07441c7cf5f0f4655cfb3ed40b43d92cf4ec6b6144c1b6048973a7c4e01c7266`  
		Last Modified: Fri, 10 Aug 2018 22:39:50 GMT  
		Size: 6.8 KB (6833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10eb2083d01baf743368e6ad7884889f4f9f3fd31c1100466ea19d44ff7faf5`  
		Last Modified: Fri, 10 Aug 2018 22:39:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb21f5c05106e2302f8313b493fc41e3a99804c65b5502e927c51ce41a95a57a`  
		Last Modified: Fri, 10 Aug 2018 22:39:51 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46dda964b0cca5e96ea57b2f2af39d5565e2135d9e8c7c6be0339ead819af42`  
		Last Modified: Fri, 10 Aug 2018 22:39:50 GMT  
		Size: 2.2 KB (2240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f92c6616ac21eae0c62eda69ff0cb0c8edc7a9afe7001f10b8e359b478d31d`  
		Last Modified: Fri, 10 Aug 2018 22:39:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.14-alpine`

```console
$ docker pull postgres@sha256:f0177065099e327ce2a5176f78c32e2255f26ba92d499a7d006a411cb0828426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5.14-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:198deb63ad89577dfcb35861c4a4fd930927ecd0d289a511d78fcb7dcb280c04
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16129465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39fef0178ab1a0b94bb29e9eef8b744e40ca72ab055cd692d118234ac7e93f57`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:47:50 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 11 Jul 2018 00:47:50 GMT
ENV LANG=en_US.utf8
# Wed, 11 Jul 2018 00:47:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jul 2018 00:56:55 GMT
ENV PG_MAJOR=9.5
# Fri, 10 Aug 2018 22:21:07 GMT
ENV PG_VERSION=9.5.14
# Fri, 10 Aug 2018 22:21:07 GMT
ENV PG_SHA256=3e2cd5ea0117431f72c9917c1bbad578ea68732cb284d1691f37356ca0301a4d
# Fri, 10 Aug 2018 22:23:04 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Aug 2018 22:23:05 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:23:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:23:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:23:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:23:08 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:23:08 GMT
COPY file:9dd1c949a5c5f0ce96f548c5eaa0567ac18383563705231d6fd8e616fe5b3397 in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:23:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:23:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:23:10 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:23:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9adb8cff82fca4ee56d72d6f8084c02ba5ef008039979a1379e9162703cc6`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8817b9e00daac6d86d105d480aa5c8ef78b76903e15283154197774f718e7e`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6d55774d89180d6432561355dd10ed8fae6c96cde3b3eed7dc976c2eb15b77`  
		Last Modified: Fri, 10 Aug 2018 22:41:03 GMT  
		Size: 13.9 MB (13913206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf4c931ff0f9eaadc0e36394ba464e334a176f6d7081979bdd0e0933dab0e31`  
		Last Modified: Fri, 10 Aug 2018 22:40:56 GMT  
		Size: 6.8 KB (6802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4649571c0c28bc3278ab7317288055403c8b0d59ede97762a46536ccec967966`  
		Last Modified: Fri, 10 Aug 2018 22:40:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227e2fc3bb5beae615e6a472c484e7565c14ac8724759f7fb2d516c1bd5dfb26`  
		Last Modified: Fri, 10 Aug 2018 22:40:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf1177d9a0dc81da44348d1c960012b2e2f99ed9e6ba691d474f18a92f6ffb1`  
		Last Modified: Fri, 10 Aug 2018 22:40:56 GMT  
		Size: 2.2 KB (2233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365c12e3a89dd521477ae85b3670de3b9d309199444d7a77946e3418454141ef`  
		Last Modified: Fri, 10 Aug 2018 22:40:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:f0177065099e327ce2a5176f78c32e2255f26ba92d499a7d006a411cb0828426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:198deb63ad89577dfcb35861c4a4fd930927ecd0d289a511d78fcb7dcb280c04
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16129465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39fef0178ab1a0b94bb29e9eef8b744e40ca72ab055cd692d118234ac7e93f57`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:47:50 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 11 Jul 2018 00:47:50 GMT
ENV LANG=en_US.utf8
# Wed, 11 Jul 2018 00:47:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jul 2018 00:56:55 GMT
ENV PG_MAJOR=9.5
# Fri, 10 Aug 2018 22:21:07 GMT
ENV PG_VERSION=9.5.14
# Fri, 10 Aug 2018 22:21:07 GMT
ENV PG_SHA256=3e2cd5ea0117431f72c9917c1bbad578ea68732cb284d1691f37356ca0301a4d
# Fri, 10 Aug 2018 22:23:04 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Aug 2018 22:23:05 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:23:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:23:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:23:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:23:08 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:23:08 GMT
COPY file:9dd1c949a5c5f0ce96f548c5eaa0567ac18383563705231d6fd8e616fe5b3397 in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:23:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:23:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:23:10 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:23:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9adb8cff82fca4ee56d72d6f8084c02ba5ef008039979a1379e9162703cc6`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8817b9e00daac6d86d105d480aa5c8ef78b76903e15283154197774f718e7e`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6d55774d89180d6432561355dd10ed8fae6c96cde3b3eed7dc976c2eb15b77`  
		Last Modified: Fri, 10 Aug 2018 22:41:03 GMT  
		Size: 13.9 MB (13913206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf4c931ff0f9eaadc0e36394ba464e334a176f6d7081979bdd0e0933dab0e31`  
		Last Modified: Fri, 10 Aug 2018 22:40:56 GMT  
		Size: 6.8 KB (6802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4649571c0c28bc3278ab7317288055403c8b0d59ede97762a46536ccec967966`  
		Last Modified: Fri, 10 Aug 2018 22:40:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227e2fc3bb5beae615e6a472c484e7565c14ac8724759f7fb2d516c1bd5dfb26`  
		Last Modified: Fri, 10 Aug 2018 22:40:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf1177d9a0dc81da44348d1c960012b2e2f99ed9e6ba691d474f18a92f6ffb1`  
		Last Modified: Fri, 10 Aug 2018 22:40:56 GMT  
		Size: 2.2 KB (2233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365c12e3a89dd521477ae85b3670de3b9d309199444d7a77946e3418454141ef`  
		Last Modified: Fri, 10 Aug 2018 22:40:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:a3f0d5bef460ce359223a4620f320a8dfaff8c8669145d686ec77f8592bea948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

```console
$ docker pull postgres@sha256:ca39b6107978303706aac0f53120879afcd0d4b040ead7f19e8581b81c19ecea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86732671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:506063568b803ab2248bdd1f25ec274caab3e46736acf4285b84ca99d9d5ff81`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:17:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 05:17:34 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jul 2018 05:17:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 01:17:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:17:33 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 27 Jul 2018 01:17:33 GMT
ENV LANG=en_US.utf8
# Fri, 27 Jul 2018 01:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:17:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:17:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 01:20:52 GMT
ENV PG_MAJOR=9.6
# Fri, 10 Aug 2018 22:14:26 GMT
ENV PG_VERSION=9.6.10-1.pgdg90+1
# Fri, 10 Aug 2018 22:15:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 10 Aug 2018 22:15:21 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:15:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:15:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 10 Aug 2018 22:15:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:15:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:15:23 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:15:24 GMT
COPY file:9494d12095c4a6dcf92eb31bbc6d6612e1af08f586becd8840ce47d0ebb5e5db in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:15:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:15:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:15:25 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:15:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc05f43b4de1da0d2e0f9df9dc3f2b27175cbcc81a2a9cae56835fb52f272f0`  
		Last Modified: Tue, 17 Jul 2018 05:24:23 GMT  
		Size: 4.5 MB (4498535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c4cc9b5f06c00c4bd3a6dafc13535b66d9fc815a0b9ce3ed617afc1c816aa1`  
		Last Modified: Tue, 17 Jul 2018 05:24:18 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45b5ac60cd57336c01a5d3d48950fc2abcb9b3fb0dd626dbd690cc8ad065396`  
		Last Modified: Fri, 27 Jul 2018 01:27:04 GMT  
		Size: 951.9 KB (951901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f823cf5f8b435630b7ea540899a9840d8625d7f989ed9261f0a3ee9ce41c57`  
		Last Modified: Fri, 27 Jul 2018 01:27:05 GMT  
		Size: 6.2 MB (6182657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0626c6149c90dfe629bb8391412a8430a37e8f5696ec44c3356c8b7bc6c1c88e`  
		Last Modified: Fri, 27 Jul 2018 01:27:01 GMT  
		Size: 295.5 KB (295462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25dcd1f62cadaad7cc93ada2dce3757ce4c7c48fdadbb05e9a168745b0e3a49`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c9ac2352c50d545f97fc52f0bc831a3040fae7ae0014f17d92b395498d7ce8`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 4.5 KB (4481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d3b62eb5253479f981ce7d80e913f155e38b6377f9217180d9b578832afda7`  
		Last Modified: Fri, 10 Aug 2018 22:37:38 GMT  
		Size: 52.3 MB (52302106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ebb8885899c148951152f642562229b465f147557a82f9fc13a643aed7168ee`  
		Last Modified: Fri, 10 Aug 2018 22:37:14 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb33b5ec4bb0bfc7deff143c5f3c3ae71aa7afe8eb10c945fd8975b974066eea`  
		Last Modified: Fri, 10 Aug 2018 22:37:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd4a8a8f8da9920c4273f17543eb9fffa814d4055fb93160e96c6b63cf72139`  
		Last Modified: Fri, 10 Aug 2018 22:37:14 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0193b2287c8b961e7c1a86b6ec8997e6d22ebf25cd41ffeafccba39305a722a1`  
		Last Modified: Fri, 10 Aug 2018 22:37:14 GMT  
		Size: 2.2 KB (2239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f272f7344001281147a92815fb4103e54571b1b2a35f75262ecaa9bd377d9b`  
		Last Modified: Fri, 10 Aug 2018 22:37:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.10`

```console
$ docker pull postgres@sha256:a3f0d5bef460ce359223a4620f320a8dfaff8c8669145d686ec77f8592bea948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6.10` - linux; amd64

```console
$ docker pull postgres@sha256:ca39b6107978303706aac0f53120879afcd0d4b040ead7f19e8581b81c19ecea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86732671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:506063568b803ab2248bdd1f25ec274caab3e46736acf4285b84ca99d9d5ff81`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:17:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 05:17:34 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jul 2018 05:17:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 01:17:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:17:33 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 27 Jul 2018 01:17:33 GMT
ENV LANG=en_US.utf8
# Fri, 27 Jul 2018 01:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:17:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:17:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 01:20:52 GMT
ENV PG_MAJOR=9.6
# Fri, 10 Aug 2018 22:14:26 GMT
ENV PG_VERSION=9.6.10-1.pgdg90+1
# Fri, 10 Aug 2018 22:15:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 10 Aug 2018 22:15:21 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:15:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:15:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 10 Aug 2018 22:15:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:15:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:15:23 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:15:24 GMT
COPY file:9494d12095c4a6dcf92eb31bbc6d6612e1af08f586becd8840ce47d0ebb5e5db in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:15:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:15:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:15:25 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:15:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc05f43b4de1da0d2e0f9df9dc3f2b27175cbcc81a2a9cae56835fb52f272f0`  
		Last Modified: Tue, 17 Jul 2018 05:24:23 GMT  
		Size: 4.5 MB (4498535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c4cc9b5f06c00c4bd3a6dafc13535b66d9fc815a0b9ce3ed617afc1c816aa1`  
		Last Modified: Tue, 17 Jul 2018 05:24:18 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45b5ac60cd57336c01a5d3d48950fc2abcb9b3fb0dd626dbd690cc8ad065396`  
		Last Modified: Fri, 27 Jul 2018 01:27:04 GMT  
		Size: 951.9 KB (951901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f823cf5f8b435630b7ea540899a9840d8625d7f989ed9261f0a3ee9ce41c57`  
		Last Modified: Fri, 27 Jul 2018 01:27:05 GMT  
		Size: 6.2 MB (6182657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0626c6149c90dfe629bb8391412a8430a37e8f5696ec44c3356c8b7bc6c1c88e`  
		Last Modified: Fri, 27 Jul 2018 01:27:01 GMT  
		Size: 295.5 KB (295462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25dcd1f62cadaad7cc93ada2dce3757ce4c7c48fdadbb05e9a168745b0e3a49`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c9ac2352c50d545f97fc52f0bc831a3040fae7ae0014f17d92b395498d7ce8`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 4.5 KB (4481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d3b62eb5253479f981ce7d80e913f155e38b6377f9217180d9b578832afda7`  
		Last Modified: Fri, 10 Aug 2018 22:37:38 GMT  
		Size: 52.3 MB (52302106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ebb8885899c148951152f642562229b465f147557a82f9fc13a643aed7168ee`  
		Last Modified: Fri, 10 Aug 2018 22:37:14 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb33b5ec4bb0bfc7deff143c5f3c3ae71aa7afe8eb10c945fd8975b974066eea`  
		Last Modified: Fri, 10 Aug 2018 22:37:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd4a8a8f8da9920c4273f17543eb9fffa814d4055fb93160e96c6b63cf72139`  
		Last Modified: Fri, 10 Aug 2018 22:37:14 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0193b2287c8b961e7c1a86b6ec8997e6d22ebf25cd41ffeafccba39305a722a1`  
		Last Modified: Fri, 10 Aug 2018 22:37:14 GMT  
		Size: 2.2 KB (2239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f272f7344001281147a92815fb4103e54571b1b2a35f75262ecaa9bd377d9b`  
		Last Modified: Fri, 10 Aug 2018 22:37:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.10-alpine`

```console
$ docker pull postgres@sha256:5cffcda6673dde620c7e10253b89d965882835f9efac4984413e76c5a73559f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6.10-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:6def94388b44bbab08a6444bc000f8353d519251d5d698fc65d89e52c6fafabe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16402132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23fa77bae42f9449ac341b95d40bceef617c9f145b4090568e269d333e625970`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:47:50 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 11 Jul 2018 00:47:50 GMT
ENV LANG=en_US.utf8
# Wed, 11 Jul 2018 00:47:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jul 2018 00:54:22 GMT
ENV PG_MAJOR=9.6
# Fri, 10 Aug 2018 22:15:53 GMT
ENV PG_VERSION=9.6.10
# Fri, 10 Aug 2018 22:15:53 GMT
ENV PG_SHA256=8615acc56646401f0ede97a767dfd27ce07a8ae9c952afdb57163b7234fe8426
# Fri, 10 Aug 2018 22:17:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Aug 2018 22:17:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:17:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:17:59 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:18:00 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:18:18 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:18:19 GMT
COPY file:9dd1c949a5c5f0ce96f548c5eaa0567ac18383563705231d6fd8e616fe5b3397 in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:18:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:18:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:18:20 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:18:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9adb8cff82fca4ee56d72d6f8084c02ba5ef008039979a1379e9162703cc6`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8817b9e00daac6d86d105d480aa5c8ef78b76903e15283154197774f718e7e`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0671a31f7dc96d0bfd91108c370da3b8329641f939e9596a70e7f44db586e71d`  
		Last Modified: Fri, 10 Aug 2018 22:38:47 GMT  
		Size: 14.2 MB (14185600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7df4cf49932635061b8f46a959e5c672fb324a2bca72bdf2d4c47dd3517712d`  
		Last Modified: Fri, 10 Aug 2018 22:38:40 GMT  
		Size: 7.1 KB (7073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498866b39ba0be401dcf352c129c14b2ef274c7aa510c192cedfc78237c30434`  
		Last Modified: Fri, 10 Aug 2018 22:38:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc4a1b53491d0b4c43121b628491bc3b60c1adb99fb53c41bc333a843832e39`  
		Last Modified: Fri, 10 Aug 2018 22:38:40 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b39cc5bfb99ea0cef15dc794ddded8e0d9b5c72dff5ad0a9900d53499efea175`  
		Last Modified: Fri, 10 Aug 2018 22:38:41 GMT  
		Size: 2.2 KB (2234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:748af18ad1e61320f1685d92de5df4b3131f425be8370c017d48ec7a1b9337ea`  
		Last Modified: Fri, 10 Aug 2018 22:38:40 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:5cffcda6673dde620c7e10253b89d965882835f9efac4984413e76c5a73559f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:6def94388b44bbab08a6444bc000f8353d519251d5d698fc65d89e52c6fafabe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16402132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23fa77bae42f9449ac341b95d40bceef617c9f145b4090568e269d333e625970`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:47:50 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 11 Jul 2018 00:47:50 GMT
ENV LANG=en_US.utf8
# Wed, 11 Jul 2018 00:47:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jul 2018 00:54:22 GMT
ENV PG_MAJOR=9.6
# Fri, 10 Aug 2018 22:15:53 GMT
ENV PG_VERSION=9.6.10
# Fri, 10 Aug 2018 22:15:53 GMT
ENV PG_SHA256=8615acc56646401f0ede97a767dfd27ce07a8ae9c952afdb57163b7234fe8426
# Fri, 10 Aug 2018 22:17:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Aug 2018 22:17:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:17:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:17:59 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:18:00 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:18:18 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:18:19 GMT
COPY file:9dd1c949a5c5f0ce96f548c5eaa0567ac18383563705231d6fd8e616fe5b3397 in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:18:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:18:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:18:20 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:18:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9adb8cff82fca4ee56d72d6f8084c02ba5ef008039979a1379e9162703cc6`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8817b9e00daac6d86d105d480aa5c8ef78b76903e15283154197774f718e7e`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0671a31f7dc96d0bfd91108c370da3b8329641f939e9596a70e7f44db586e71d`  
		Last Modified: Fri, 10 Aug 2018 22:38:47 GMT  
		Size: 14.2 MB (14185600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7df4cf49932635061b8f46a959e5c672fb324a2bca72bdf2d4c47dd3517712d`  
		Last Modified: Fri, 10 Aug 2018 22:38:40 GMT  
		Size: 7.1 KB (7073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498866b39ba0be401dcf352c129c14b2ef274c7aa510c192cedfc78237c30434`  
		Last Modified: Fri, 10 Aug 2018 22:38:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc4a1b53491d0b4c43121b628491bc3b60c1adb99fb53c41bc333a843832e39`  
		Last Modified: Fri, 10 Aug 2018 22:38:40 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b39cc5bfb99ea0cef15dc794ddded8e0d9b5c72dff5ad0a9900d53499efea175`  
		Last Modified: Fri, 10 Aug 2018 22:38:41 GMT  
		Size: 2.2 KB (2234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:748af18ad1e61320f1685d92de5df4b3131f425be8370c017d48ec7a1b9337ea`  
		Last Modified: Fri, 10 Aug 2018 22:38:40 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:5cffcda6673dde620c7e10253b89d965882835f9efac4984413e76c5a73559f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:6def94388b44bbab08a6444bc000f8353d519251d5d698fc65d89e52c6fafabe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16402132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23fa77bae42f9449ac341b95d40bceef617c9f145b4090568e269d333e625970`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:47:50 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 11 Jul 2018 00:47:50 GMT
ENV LANG=en_US.utf8
# Wed, 11 Jul 2018 00:47:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jul 2018 00:54:22 GMT
ENV PG_MAJOR=9.6
# Fri, 10 Aug 2018 22:15:53 GMT
ENV PG_VERSION=9.6.10
# Fri, 10 Aug 2018 22:15:53 GMT
ENV PG_SHA256=8615acc56646401f0ede97a767dfd27ce07a8ae9c952afdb57163b7234fe8426
# Fri, 10 Aug 2018 22:17:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Aug 2018 22:17:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:17:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:17:59 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:18:00 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:18:18 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:18:19 GMT
COPY file:9dd1c949a5c5f0ce96f548c5eaa0567ac18383563705231d6fd8e616fe5b3397 in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:18:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:18:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:18:20 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:18:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9adb8cff82fca4ee56d72d6f8084c02ba5ef008039979a1379e9162703cc6`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8817b9e00daac6d86d105d480aa5c8ef78b76903e15283154197774f718e7e`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0671a31f7dc96d0bfd91108c370da3b8329641f939e9596a70e7f44db586e71d`  
		Last Modified: Fri, 10 Aug 2018 22:38:47 GMT  
		Size: 14.2 MB (14185600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7df4cf49932635061b8f46a959e5c672fb324a2bca72bdf2d4c47dd3517712d`  
		Last Modified: Fri, 10 Aug 2018 22:38:40 GMT  
		Size: 7.1 KB (7073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498866b39ba0be401dcf352c129c14b2ef274c7aa510c192cedfc78237c30434`  
		Last Modified: Fri, 10 Aug 2018 22:38:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc4a1b53491d0b4c43121b628491bc3b60c1adb99fb53c41bc333a843832e39`  
		Last Modified: Fri, 10 Aug 2018 22:38:40 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b39cc5bfb99ea0cef15dc794ddded8e0d9b5c72dff5ad0a9900d53499efea175`  
		Last Modified: Fri, 10 Aug 2018 22:38:41 GMT  
		Size: 2.2 KB (2234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:748af18ad1e61320f1685d92de5df4b3131f425be8370c017d48ec7a1b9337ea`  
		Last Modified: Fri, 10 Aug 2018 22:38:40 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:1b176b4bfec7db573b4c09fc0c8da35f8072ad101edfbb4f0cda8a437b20af1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

```console
$ docker pull postgres@sha256:d89ec9b53b2f1a55ccc4d33811778dd071c84ba8a12fae7b2165442fafb4a835
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29478195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5df4f9af771f31b44478e7092d7e2a440d6b1628a33b199183792ce80164b0c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:47:50 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 11 Jul 2018 00:47:50 GMT
ENV LANG=en_US.utf8
# Wed, 11 Jul 2018 00:47:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 11 Jul 2018 00:50:58 GMT
ENV PG_MAJOR=10
# Fri, 10 Aug 2018 22:11:17 GMT
ENV PG_VERSION=10.5
# Fri, 10 Aug 2018 22:11:17 GMT
ENV PG_SHA256=6c8e616c91a45142b85c0aeb1f29ebba4a361309e86469e0fb4617b6a73c4011
# Fri, 10 Aug 2018 22:13:39 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		icu-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Aug 2018 22:13:42 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:13:43 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:13:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:13:44 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:13:44 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:13:45 GMT
COPY file:ea83254240307acb41cff4ba67980cb25f52871869af6e6c49a729ba283f82ed in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:13:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:13:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:13:46 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:13:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb9adb8cff82fca4ee56d72d6f8084c02ba5ef008039979a1379e9162703cc6`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8817b9e00daac6d86d105d480aa5c8ef78b76903e15283154197774f718e7e`  
		Last Modified: Wed, 11 Jul 2018 01:05:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53941c55569fdc3fbb42e6108e59949220ccb3cd1f131b6ec66889d4143838c8`  
		Last Modified: Fri, 10 Aug 2018 22:36:11 GMT  
		Size: 27.3 MB (27261471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66d499835407dfca77ef2ae16684682a2c182ca6a9354e0849cd0ee5f52d6a7`  
		Last Modified: Fri, 10 Aug 2018 22:36:00 GMT  
		Size: 7.3 KB (7268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94e4c4de54db6fdee183118b42d86660783559798702580fa2fceb07e0ac1a9`  
		Last Modified: Fri, 10 Aug 2018 22:35:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480f0e20fdcc6b966366f9f25de01a36eeddf028ad249c4f0b86f163bcd90a3b`  
		Last Modified: Fri, 10 Aug 2018 22:35:59 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949d41f63bfb1de8694f1a5b2fc332ec3a8bc7cffb6984203336dfa7fdbb2c61`  
		Last Modified: Fri, 10 Aug 2018 22:35:59 GMT  
		Size: 2.2 KB (2233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd1895e17aed31bc0980ee677ed5ac9b714fcc3c464ce731a778c221c091816`  
		Last Modified: Fri, 10 Aug 2018 22:36:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:35967a51fc53fd0239b98baa4adad03aa1cd13b11df377dd45253c816f0f84ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

```console
$ docker pull postgres@sha256:b44f45ccd98c8e8d681658d1937b1340dfd2750eaf4cf84e4f6d63c453de2a78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86263170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67ebc8a2f066763e25e5d2d998125e535ede78395d3e7082e55bff4be42b9c3d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:17:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 05:17:34 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jul 2018 05:17:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 27 Jul 2018 01:17:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:17:33 GMT
RUN set -eux; 	if [ -f /etc/dpkg/dpkg.cfg.d/docker ]; then 		grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 		sed -ri '/\/usr\/share\/locale/d' /etc/dpkg/dpkg.cfg.d/docker; 		! grep -q '/usr/share/locale' /etc/dpkg/dpkg.cfg.d/docker; 	fi; 	apt-get update; apt-get install -y locales; rm -rf /var/lib/apt/lists/*; 	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 27 Jul 2018 01:17:33 GMT
ENV LANG=en_US.utf8
# Fri, 27 Jul 2018 01:17:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends libnss-wrapper; 	rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:17:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:17:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 27 Jul 2018 01:19:12 GMT
ENV PG_MAJOR=10
# Fri, 10 Aug 2018 22:09:39 GMT
ENV PG_VERSION=10.5-1.pgdg90+1
# Fri, 10 Aug 2018 22:10:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 10 Aug 2018 22:10:21 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 10 Aug 2018 22:10:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 10 Aug 2018 22:10:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 10 Aug 2018 22:10:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Aug 2018 22:10:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Aug 2018 22:10:24 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Aug 2018 22:10:24 GMT
COPY file:98ca6e65a2d4cca43a3092060e0e3fd01411004bfe737872db0a993e72513587 in /usr/local/bin/ 
# Fri, 10 Aug 2018 22:10:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Aug 2018 22:10:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Aug 2018 22:10:25 GMT
EXPOSE 5432/tcp
# Fri, 10 Aug 2018 22:10:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc05f43b4de1da0d2e0f9df9dc3f2b27175cbcc81a2a9cae56835fb52f272f0`  
		Last Modified: Tue, 17 Jul 2018 05:24:23 GMT  
		Size: 4.5 MB (4498535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c4cc9b5f06c00c4bd3a6dafc13535b66d9fc815a0b9ce3ed617afc1c816aa1`  
		Last Modified: Tue, 17 Jul 2018 05:24:18 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45b5ac60cd57336c01a5d3d48950fc2abcb9b3fb0dd626dbd690cc8ad065396`  
		Last Modified: Fri, 27 Jul 2018 01:27:04 GMT  
		Size: 951.9 KB (951901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f823cf5f8b435630b7ea540899a9840d8625d7f989ed9261f0a3ee9ce41c57`  
		Last Modified: Fri, 27 Jul 2018 01:27:05 GMT  
		Size: 6.2 MB (6182657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0626c6149c90dfe629bb8391412a8430a37e8f5696ec44c3356c8b7bc6c1c88e`  
		Last Modified: Fri, 27 Jul 2018 01:27:01 GMT  
		Size: 295.5 KB (295462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25dcd1f62cadaad7cc93ada2dce3757ce4c7c48fdadbb05e9a168745b0e3a49`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c9ac2352c50d545f97fc52f0bc831a3040fae7ae0014f17d92b395498d7ce8`  
		Last Modified: Fri, 27 Jul 2018 01:27:00 GMT  
		Size: 4.5 KB (4481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d64824d7372ae457c1fe18607c0a9151cf7effb48db4dd498ea6b25af209b82`  
		Last Modified: Fri, 10 Aug 2018 22:34:49 GMT  
		Size: 51.8 MB (51832415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f3bd8eca277fff242c5e70237d53a39ae182cd737e14c54677f2e3281efb8f`  
		Last Modified: Fri, 10 Aug 2018 22:34:28 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5f963fdc0709829cb1ef9fa459840288cc4d6a0160d6879d5924846ddca87a`  
		Last Modified: Fri, 10 Aug 2018 22:34:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6982aabce0d4e73df86480a16f753d4ea3b7897fc2cf69c838866e96aea0683b`  
		Last Modified: Fri, 10 Aug 2018 22:34:27 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe497238fe3c70300d9fb54258cb1a7aa450dfa60cf9fa18474981722a024bc`  
		Last Modified: Fri, 10 Aug 2018 22:34:31 GMT  
		Size: 2.2 KB (2237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1a22299a0e7a754871925e5cc3a711692d8661405fe7dd595471df7a62fed7`  
		Last Modified: Fri, 10 Aug 2018 22:34:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
