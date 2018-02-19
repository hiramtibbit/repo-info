<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `postgres`

-	[`postgres:10`](#postgres10)
-	[`postgres:10.2`](#postgres102)
-	[`postgres:10.2-alpine`](#postgres102-alpine)
-	[`postgres:10-alpine`](#postgres10-alpine)
-	[`postgres:9`](#postgres9)
-	[`postgres:9.3`](#postgres93)
-	[`postgres:9.3.21`](#postgres9321)
-	[`postgres:9.3.21-alpine`](#postgres9321-alpine)
-	[`postgres:9.3-alpine`](#postgres93-alpine)
-	[`postgres:9.4`](#postgres94)
-	[`postgres:9.4.16`](#postgres9416)
-	[`postgres:9.4.16-alpine`](#postgres9416-alpine)
-	[`postgres:9.4-alpine`](#postgres94-alpine)
-	[`postgres:9.5`](#postgres95)
-	[`postgres:9.5.11`](#postgres9511)
-	[`postgres:9.5.11-alpine`](#postgres9511-alpine)
-	[`postgres:9.5-alpine`](#postgres95-alpine)
-	[`postgres:9.6`](#postgres96)
-	[`postgres:9.6.7`](#postgres967)
-	[`postgres:9.6.7-alpine`](#postgres967-alpine)
-	[`postgres:9.6-alpine`](#postgres96-alpine)
-	[`postgres:9-alpine`](#postgres9-alpine)
-	[`postgres:alpine`](#postgresalpine)
-	[`postgres:latest`](#postgreslatest)

## `postgres:10`

```console
$ docker pull postgres@sha256:7361bae1fbf5642099663d1f02dc949cabde1f86727bf8ff00d0a8806640a617
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
$ docker pull postgres@sha256:d6018a7a3c9069c2605543692f10a9cd6d272c3d30efbac9b4d61eeb2215601d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117067459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12289de6f8875c39365fec0050c3a4da9bde1f22ae9a0d24563f65e37021289`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 10:24:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 10:24:43 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 10:24:44 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 10:33:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 10:33:26 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 10:33:27 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 10:33:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Feb 2018 22:26:34 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Feb 2018 22:26:34 GMT
ENV PG_MAJOR=10
# Fri, 16 Feb 2018 22:26:35 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Fri, 16 Feb 2018 22:26:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Feb 2018 22:26:59 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 16 Feb 2018 22:26:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 16 Feb 2018 22:26:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 16 Feb 2018 22:27:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 16 Feb 2018 22:27:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 16 Feb 2018 22:27:01 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 16 Feb 2018 22:27:01 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Fri, 16 Feb 2018 22:27:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 22:27:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 22:27:02 GMT
EXPOSE 5432/tcp
# Fri, 16 Feb 2018 22:27:03 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c47120e994bb4fd9a596de1a79ef30292f2d3730df237e90be6d38e97f15975`  
		Last Modified: Fri, 16 Feb 2018 22:44:40 GMT  
		Size: 6.9 MB (6921125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f766d668e8ae6a61e26c66f7b7ab2577630c0b512b423838097bedfde433a4a`  
		Last Modified: Fri, 16 Feb 2018 22:44:35 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25131cac3889825c43578c3f0b39b61afe29b87bd6565826dab5cf1505da3fe7`  
		Last Modified: Fri, 16 Feb 2018 22:44:34 GMT  
		Size: 956.6 KB (956622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d99bc5f521bdda34aa9c8a0a7c3942a118729e01c368784c402acbc7ef2410`  
		Last Modified: Fri, 16 Feb 2018 22:44:36 GMT  
		Size: 6.6 MB (6577462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f77b20404c200f0e27c3c7580565b36da729992f59d24d82a7617c1f33bb9e`  
		Last Modified: Fri, 16 Feb 2018 22:44:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f170bb6b5bb2896d1ef7f398e20926e6ded2629110aeae378a42bffafbb4ed6a`  
		Last Modified: Fri, 16 Feb 2018 22:44:33 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d81ba24d2ff3eaf39499938fba74b5dd58723ddf3f3bedb9264ffea821ea9a`  
		Last Modified: Fri, 16 Feb 2018 22:44:50 GMT  
		Size: 57.5 MB (57463753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a967418f27eaacd21af8dba2247749571a5e929bf82eca68d8b35b1afb05585`  
		Last Modified: Fri, 16 Feb 2018 22:44:31 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2be162d20ac0a98d0be6cff08490c13edf3015d07d27ca7181fda8307a619ea`  
		Last Modified: Fri, 16 Feb 2018 22:44:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809054a7d3a4f0de82c5b863652f12ff3ba7e876df1f0365af59a404b57cb5b`  
		Last Modified: Fri, 16 Feb 2018 22:44:31 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330d4f0775cdeb8d5410f97ba876e1618390bc55cff8ecdbc5be8982c4001b10`  
		Last Modified: Fri, 16 Feb 2018 22:44:31 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff84a9ce0acbe723089641f6856e93ac1329c02fded3e764b8e986473a3b6b7f`  
		Last Modified: Fri, 16 Feb 2018 22:44:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; arm variant v5

```console
$ docker pull postgres@sha256:4fc217e32a595b7c4f0166b3d384c838b6bed2ea824f12e2c768f2cdf997a2d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116360831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbe0d9555c4e5ed34ef814d562c5c685a1e7054079f02582a5a29f0fe1671311`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:04 GMT
ADD file:9b55f7842213fac6c45e64fd742a0d28f0b11a4d7e9a9e76d85eac96922d84dd in / 
# Thu, 15 Feb 2018 21:00:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:12:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 23:12:54 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 23:12:54 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 23:13:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 23:13:47 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 23:13:47 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 23:13:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 07:38:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 07:38:45 GMT
ENV PG_MAJOR=10
# Sat, 17 Feb 2018 07:38:45 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Sat, 17 Feb 2018 07:58:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Feb 2018 07:58:17 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 17 Feb 2018 07:58:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 17 Feb 2018 07:58:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Sat, 17 Feb 2018 07:58:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 17 Feb 2018 07:58:19 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 17 Feb 2018 07:58:19 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 17 Feb 2018 07:58:20 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Sat, 17 Feb 2018 07:58:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 07:58:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 07:58:21 GMT
EXPOSE 5432/tcp
# Sat, 17 Feb 2018 07:58:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0fe3809766afc6e60be7b2e9b8874666da1dac184bea1d9ee6d9de13ac28e501`  
		Last Modified: Thu, 15 Feb 2018 21:10:11 GMT  
		Size: 43.8 MB (43814325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f9e17cc1ed6cf83464860daa2e25322c578dc1addc667bd4088039851901ee`  
		Last Modified: Sat, 17 Feb 2018 07:58:56 GMT  
		Size: 6.7 MB (6654912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44f7cef28382b7925f93ec80035232e4c6bb5ef88e1247361ff94475faff53e`  
		Last Modified: Sat, 17 Feb 2018 07:58:54 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4988ec130299b32d9eebcd5700b9b4ae693f3eb2330fcce099f7e108205de6`  
		Last Modified: Sat, 17 Feb 2018 07:58:53 GMT  
		Size: 946.8 KB (946759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a9ee15b2f58c81d9478c47cc39e492dc4f3311fd80d318cea9b7053daae356`  
		Last Modified: Sat, 17 Feb 2018 07:58:55 GMT  
		Size: 6.6 MB (6577549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0eb6246399ce102c9b596d94b572943a968af470e99e2409e00d09c3bb0b59e`  
		Last Modified: Sat, 17 Feb 2018 07:58:52 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf39e79c54f85f3fb2939c7ad81355edb761074210a94466f81f7ef7d085cd58`  
		Last Modified: Sat, 17 Feb 2018 07:58:52 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6197ee7a4f39dfd39e58de4486cc16ff8ba085740d676394374ebb0bf92beab`  
		Last Modified: Sat, 17 Feb 2018 07:59:10 GMT  
		Size: 58.4 MB (58351354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcc81bd0e0aa22fc6793ccd7fdffa7ad6b88f9118678055e2b5579910828d97`  
		Last Modified: Sat, 17 Feb 2018 07:58:51 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5110655c7758be4b36cbfe027ef3a8dcc09c0f43f42f6c288613c8ca928a3051`  
		Last Modified: Sat, 17 Feb 2018 07:58:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c4486d6ac4bdd5ae2311e42bfb6f5736d1b8f0aca56f2dac07d02053a436b5`  
		Last Modified: Sat, 17 Feb 2018 07:58:51 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3823f84966440463c50f49c2661b15649a33ffedc981525edda6b5ef4c86c3b4`  
		Last Modified: Sat, 17 Feb 2018 07:58:51 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34188abd9c2b04dc1cb7f422257306197d5b019276519febbf2a192ffffcaa8`  
		Last Modified: Sat, 17 Feb 2018 07:58:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; arm variant v7

```console
$ docker pull postgres@sha256:6457861283f8ad64296da3ed122fc968cf59c6a879a621fc4a61002cbff11dea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112323834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a15f5ce297794e2559a786c0f90a7776ea561ac6a884aed921bd2f9fa32cb017`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 13:30:55 GMT
ADD file:58c4e4829c3db6bdb6063ee3ca04776b696772f592f70cb29d5196788c3608da in / 
# Thu, 15 Feb 2018 13:30:56 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 15:45:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 15:45:19 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 15:45:19 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 15:45:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 15:45:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 15:45:43 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 15:45:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 15:45:48 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 15:45:48 GMT
ENV PG_MAJOR=10
# Thu, 15 Feb 2018 15:45:48 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Thu, 15 Feb 2018 16:02:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 16:03:04 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 16:03:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 16:03:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Thu, 15 Feb 2018 16:03:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 16:03:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 16:03:12 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 16:03:12 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 15 Feb 2018 16:03:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 16:03:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 16:03:32 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 16:03:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c0518139464abb63e1069cd4c638aad760a6cb319660ae2229921b17c703441b`  
		Last Modified: Thu, 15 Feb 2018 13:40:56 GMT  
		Size: 41.9 MB (41859666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d616d2c78693ee53aff4194714a94eb76c155b6dafa0358e12a877771e89d8`  
		Last Modified: Thu, 15 Feb 2018 17:15:30 GMT  
		Size: 6.3 MB (6292327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce106eb6165148abb11f205da674a34c30b3c7e158fca4cc29b91217a239f67`  
		Last Modified: Thu, 15 Feb 2018 17:15:29 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1fc8f02160af5c23c76693bfd886572bcde35a2fa52f3fe687b4c5d5d12758`  
		Last Modified: Thu, 15 Feb 2018 17:15:27 GMT  
		Size: 931.3 KB (931267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea804fd1a48e554c4c49f7a47692d8746a860ec2fc295e5472c192a69dcb56f`  
		Last Modified: Thu, 15 Feb 2018 17:15:28 GMT  
		Size: 6.6 MB (6577473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643755d2cb7c278212a1d6a27a7b8b9a14501a7157ca135c877e27e096c8b361`  
		Last Modified: Thu, 15 Feb 2018 17:15:26 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9b663a45706370fbfae52ffa109e203d2881f6fae80ae9640247f263f89cce`  
		Last Modified: Thu, 15 Feb 2018 17:15:26 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37bca4aca0ed6e5b2d76857a99d1ca705e5346136d0a7ad9697c60fc3478d61`  
		Last Modified: Thu, 15 Feb 2018 17:15:42 GMT  
		Size: 56.6 MB (56647179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b269a448278c3b3ca37b100054ac315eaa90ffcde6ff57df4035f7242e9dc95`  
		Last Modified: Thu, 15 Feb 2018 17:15:23 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed303d87b4832e844d5603e957f7ba3ba156afb14056894835cacebfb4bf46d`  
		Last Modified: Thu, 15 Feb 2018 17:15:24 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbefc61bc6d0a3221452f6145e2b26ebe036501ba98950859a68cab6e7fc6d7`  
		Last Modified: Thu, 15 Feb 2018 17:15:23 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c413efc9d8e9736d612468539f292c6515338bd4d4a5e773e14586dea388f28`  
		Last Modified: Thu, 15 Feb 2018 17:15:23 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd553069ce07dee646d74740997ad77b7ac8520425ab0fb831d9a909aa4b98f1`  
		Last Modified: Thu, 15 Feb 2018 17:15:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:f4d46ed863e7953718f592f143de93a8750c337085d38d417a7a6fe69691bb10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114345617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a07136cde4d294957f8a5edaf8d179a63da578df6f1e46f50d9ebc263424955f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 20:46:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 20:46:43 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 20:46:45 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 20:48:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 20:48:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 20:48:34 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 20:48:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 20:48:43 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 20:48:45 GMT
ENV PG_MAJOR=10
# Thu, 15 Feb 2018 20:48:46 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Thu, 15 Feb 2018 21:25:31 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 21:25:36 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 21:25:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 21:25:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Thu, 15 Feb 2018 21:25:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 21:25:40 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 21:25:41 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 21:25:42 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 15 Feb 2018 21:25:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 21:25:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 21:25:45 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 21:25:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70010a5599931ba80bb015f616aaae236fa4adde9761ad24be4d3644eb8240b8`  
		Last Modified: Thu, 15 Feb 2018 23:38:56 GMT  
		Size: 6.5 MB (6496221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74c9e7561d43f544a2c9caff4b9d217148acb631128ac1ec6601f7b06c1305b`  
		Last Modified: Thu, 15 Feb 2018 23:38:50 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d687cf1b5a4bb2281170b2c22e9cc7f0265f3947aab01485fcdcf1b2d6e7a25c`  
		Last Modified: Thu, 15 Feb 2018 23:38:49 GMT  
		Size: 924.3 KB (924263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:238eab10f43d5259cd4c8a6a401212fd334fb9a26163a291dae71f79be1bbee1`  
		Last Modified: Thu, 15 Feb 2018 23:38:54 GMT  
		Size: 6.6 MB (6577363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae952b7802418beb8a61181e858715448e91a1c2b254add75318a43e96d709d`  
		Last Modified: Thu, 15 Feb 2018 23:38:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f9245153a1061d241f49d2e6d42621db30492b33b17cce1125af96a7cce410`  
		Last Modified: Thu, 15 Feb 2018 23:38:48 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7129fc25117c5dc7a55f7c76e7f0b54a4924c8d7600a31532c8b778d486bf99d`  
		Last Modified: Thu, 15 Feb 2018 23:39:29 GMT  
		Size: 57.4 MB (57409980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4d226913662d5468c759e3308477b6514b76c411624ecb209f583e5b1953dd`  
		Last Modified: Thu, 15 Feb 2018 23:38:46 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53d949ac7c23190823c1656e7e736b5d84b389f3e5329d80f572e7dfa5c9151`  
		Last Modified: Thu, 15 Feb 2018 23:38:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca07201f01ceed97fca079867ea6e0dd499be2cf31196d99f55bd24d0ad0e35d`  
		Last Modified: Thu, 15 Feb 2018 23:38:46 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ff556e33ade7eddf892ca64ff11dee3a47c6308ba1d54f3ea5ba8f6012919c`  
		Last Modified: Thu, 15 Feb 2018 23:38:46 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc52541debc7f1f76bce2957fbde9c1c0af94c8fa88982eaa1350c3e2704d27`  
		Last Modified: Thu, 15 Feb 2018 23:38:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; 386

```console
$ docker pull postgres@sha256:94d035cda420ffc5dbcddc4a640ebe75d4ad2e22424921c8ba63c84d48cf4b80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119141955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5f254aca371bebfb69e7c88c1d203c33c8fbe8799adf7c0cabc7f9cec4b83de`
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
# Fri, 16 Feb 2018 14:34:38 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Fri, 16 Feb 2018 14:44:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Feb 2018 14:44:03 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 16 Feb 2018 14:44:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 16 Feb 2018 14:44:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 16 Feb 2018 14:44:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 16 Feb 2018 14:44:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 16 Feb 2018 14:44:06 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 16 Feb 2018 14:44:06 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Fri, 16 Feb 2018 14:44:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 14:44:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 14:44:08 GMT
EXPOSE 5432/tcp
# Fri, 16 Feb 2018 14:44:08 GMT
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
	-	`sha256:198901e0b9cc74affa3e3a91bc4551ddeb7dfb30b1d815c4f6b434aaf6da4df0`  
		Last Modified: Fri, 16 Feb 2018 15:00:34 GMT  
		Size: 58.5 MB (58548443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5425dd2d29782fa3e7deb9ec4ef300f0069cfaf23f72fd144fc0b0e12144959a`  
		Last Modified: Fri, 16 Feb 2018 15:00:11 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e802730f1ba3477b5c202c227a9abc1e517cbcb3677a28a8c0b65af61f93c4c`  
		Last Modified: Fri, 16 Feb 2018 15:00:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72e2e6c392d105bc40a596cbb2ede9f3da913745d79744f4b9573e8f3b325c3`  
		Last Modified: Fri, 16 Feb 2018 15:00:10 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1e7ceff63787f46c0c3793c3bcbe7b02cb12a3093c463d5d8bc99d13770d32`  
		Last Modified: Fri, 16 Feb 2018 15:00:10 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2648c6b3913528d4883f37028221a34270d2727877a94b47ebc73c97a47d8174`  
		Last Modified: Fri, 16 Feb 2018 15:00:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10` - linux; ppc64le

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

### `postgres:10` - linux; s390x

```console
$ docker pull postgres@sha256:63d18f379f64bff6335dd99ca3938b12ea2e2fc3aa77b23e87ffe643798d9c23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.3 MB (119262412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b6b7bd361a3b7b69531b2c16766a38b0f3a89e9243f5a49ff16180dd2d42273`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:07 GMT
ADD file:01afc5861263642b3ae4beb3dedd40e7edb1e65d86c4368a502a15247a39a3c1 in / 
# Thu, 15 Feb 2018 06:24:07 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:21:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:21:18 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 07:21:19 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 06:39:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Feb 2018 06:39:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 17 Feb 2018 06:39:13 GMT
ENV LANG=en_US.utf8
# Sat, 17 Feb 2018 06:39:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 06:39:18 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 06:39:18 GMT
ENV PG_MAJOR=10
# Sat, 17 Feb 2018 06:39:18 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Sat, 17 Feb 2018 06:48:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Feb 2018 06:48:25 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 17 Feb 2018 06:48:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 17 Feb 2018 06:48:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Sat, 17 Feb 2018 06:48:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 17 Feb 2018 06:48:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 17 Feb 2018 06:48:26 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 17 Feb 2018 06:48:27 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Sat, 17 Feb 2018 06:48:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 06:48:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 06:48:27 GMT
EXPOSE 5432/tcp
# Sat, 17 Feb 2018 06:48:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:964d84d1f29ab606f833ed91af2d80183a542335d5c85f61d55a80b6c2dbdd32`  
		Last Modified: Thu, 15 Feb 2018 01:20:26 GMT  
		Size: 45.0 MB (44971889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b133e15566ea9810f8761c1bfc4f7ccbe214381fc98567295f179bc823743df`  
		Last Modified: Sat, 17 Feb 2018 06:49:06 GMT  
		Size: 7.0 MB (6952920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4951cbf7e6c6928c60b7439506f99a185190547eae9b862e3091078b8d98afca`  
		Last Modified: Sat, 17 Feb 2018 06:49:03 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3018259af35a4824588f794ac060c258236d29d774a0e11cbf33221482aadfdd`  
		Last Modified: Sat, 17 Feb 2018 06:49:02 GMT  
		Size: 942.3 KB (942291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac38d028306bb710b3ce908b7dbeea5f5bdc2677874ca24f6927205513c208f2`  
		Last Modified: Sat, 17 Feb 2018 06:49:04 GMT  
		Size: 6.6 MB (6598742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a942b3ec545ae390756db48c51b4aaf8c26e879276832edecda55fbf6ab7ea29`  
		Last Modified: Sat, 17 Feb 2018 06:49:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0ace3cf1f5552c3a29561025284c69d15bdeb7ef7049119b96054e86a00d01`  
		Last Modified: Sat, 17 Feb 2018 06:49:02 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94dd36f49142b8057f834b4778107f77fe10a099fffbdffe1dfef513223a9bdf`  
		Last Modified: Sat, 17 Feb 2018 06:49:13 GMT  
		Size: 59.8 MB (59780695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74876c2fbe49770caf84b7356602c8f5fb9120c0e9138404faa92037bb0543db`  
		Last Modified: Sat, 17 Feb 2018 06:49:01 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc31ea4af17a13f32ca10d5eb96e6e224c7c74dbc7bd7b3c5eec7ca150d6e37`  
		Last Modified: Sat, 17 Feb 2018 06:49:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a513616189132d1feacf29eed43c59416d51620eda7053fa1de3b70b8b1951a4`  
		Last Modified: Sat, 17 Feb 2018 06:49:01 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726c6113ce61e8897fd9f3911795b2246535d289945d89aa89adec219f7604e9`  
		Last Modified: Sat, 17 Feb 2018 06:49:01 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee31d0a97084e9915b2a49409d9c6908bd25fca14816986af783fdf519eae6dd`  
		Last Modified: Sat, 17 Feb 2018 06:49:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10.2`

```console
$ docker pull postgres@sha256:7361bae1fbf5642099663d1f02dc949cabde1f86727bf8ff00d0a8806640a617
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

### `postgres:10.2` - linux; amd64

```console
$ docker pull postgres@sha256:d6018a7a3c9069c2605543692f10a9cd6d272c3d30efbac9b4d61eeb2215601d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117067459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12289de6f8875c39365fec0050c3a4da9bde1f22ae9a0d24563f65e37021289`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 10:24:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 10:24:43 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 10:24:44 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 10:33:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 10:33:26 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 10:33:27 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 10:33:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Feb 2018 22:26:34 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Feb 2018 22:26:34 GMT
ENV PG_MAJOR=10
# Fri, 16 Feb 2018 22:26:35 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Fri, 16 Feb 2018 22:26:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Feb 2018 22:26:59 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 16 Feb 2018 22:26:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 16 Feb 2018 22:26:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 16 Feb 2018 22:27:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 16 Feb 2018 22:27:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 16 Feb 2018 22:27:01 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 16 Feb 2018 22:27:01 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Fri, 16 Feb 2018 22:27:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 22:27:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 22:27:02 GMT
EXPOSE 5432/tcp
# Fri, 16 Feb 2018 22:27:03 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c47120e994bb4fd9a596de1a79ef30292f2d3730df237e90be6d38e97f15975`  
		Last Modified: Fri, 16 Feb 2018 22:44:40 GMT  
		Size: 6.9 MB (6921125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f766d668e8ae6a61e26c66f7b7ab2577630c0b512b423838097bedfde433a4a`  
		Last Modified: Fri, 16 Feb 2018 22:44:35 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25131cac3889825c43578c3f0b39b61afe29b87bd6565826dab5cf1505da3fe7`  
		Last Modified: Fri, 16 Feb 2018 22:44:34 GMT  
		Size: 956.6 KB (956622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d99bc5f521bdda34aa9c8a0a7c3942a118729e01c368784c402acbc7ef2410`  
		Last Modified: Fri, 16 Feb 2018 22:44:36 GMT  
		Size: 6.6 MB (6577462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f77b20404c200f0e27c3c7580565b36da729992f59d24d82a7617c1f33bb9e`  
		Last Modified: Fri, 16 Feb 2018 22:44:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f170bb6b5bb2896d1ef7f398e20926e6ded2629110aeae378a42bffafbb4ed6a`  
		Last Modified: Fri, 16 Feb 2018 22:44:33 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d81ba24d2ff3eaf39499938fba74b5dd58723ddf3f3bedb9264ffea821ea9a`  
		Last Modified: Fri, 16 Feb 2018 22:44:50 GMT  
		Size: 57.5 MB (57463753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a967418f27eaacd21af8dba2247749571a5e929bf82eca68d8b35b1afb05585`  
		Last Modified: Fri, 16 Feb 2018 22:44:31 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2be162d20ac0a98d0be6cff08490c13edf3015d07d27ca7181fda8307a619ea`  
		Last Modified: Fri, 16 Feb 2018 22:44:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809054a7d3a4f0de82c5b863652f12ff3ba7e876df1f0365af59a404b57cb5b`  
		Last Modified: Fri, 16 Feb 2018 22:44:31 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330d4f0775cdeb8d5410f97ba876e1618390bc55cff8ecdbc5be8982c4001b10`  
		Last Modified: Fri, 16 Feb 2018 22:44:31 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff84a9ce0acbe723089641f6856e93ac1329c02fded3e764b8e986473a3b6b7f`  
		Last Modified: Fri, 16 Feb 2018 22:44:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.2` - linux; arm variant v5

```console
$ docker pull postgres@sha256:4fc217e32a595b7c4f0166b3d384c838b6bed2ea824f12e2c768f2cdf997a2d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116360831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbe0d9555c4e5ed34ef814d562c5c685a1e7054079f02582a5a29f0fe1671311`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:04 GMT
ADD file:9b55f7842213fac6c45e64fd742a0d28f0b11a4d7e9a9e76d85eac96922d84dd in / 
# Thu, 15 Feb 2018 21:00:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:12:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 23:12:54 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 23:12:54 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 23:13:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 23:13:47 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 23:13:47 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 23:13:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 07:38:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 07:38:45 GMT
ENV PG_MAJOR=10
# Sat, 17 Feb 2018 07:38:45 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Sat, 17 Feb 2018 07:58:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Feb 2018 07:58:17 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 17 Feb 2018 07:58:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 17 Feb 2018 07:58:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Sat, 17 Feb 2018 07:58:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 17 Feb 2018 07:58:19 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 17 Feb 2018 07:58:19 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 17 Feb 2018 07:58:20 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Sat, 17 Feb 2018 07:58:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 07:58:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 07:58:21 GMT
EXPOSE 5432/tcp
# Sat, 17 Feb 2018 07:58:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0fe3809766afc6e60be7b2e9b8874666da1dac184bea1d9ee6d9de13ac28e501`  
		Last Modified: Thu, 15 Feb 2018 21:10:11 GMT  
		Size: 43.8 MB (43814325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f9e17cc1ed6cf83464860daa2e25322c578dc1addc667bd4088039851901ee`  
		Last Modified: Sat, 17 Feb 2018 07:58:56 GMT  
		Size: 6.7 MB (6654912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44f7cef28382b7925f93ec80035232e4c6bb5ef88e1247361ff94475faff53e`  
		Last Modified: Sat, 17 Feb 2018 07:58:54 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4988ec130299b32d9eebcd5700b9b4ae693f3eb2330fcce099f7e108205de6`  
		Last Modified: Sat, 17 Feb 2018 07:58:53 GMT  
		Size: 946.8 KB (946759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a9ee15b2f58c81d9478c47cc39e492dc4f3311fd80d318cea9b7053daae356`  
		Last Modified: Sat, 17 Feb 2018 07:58:55 GMT  
		Size: 6.6 MB (6577549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0eb6246399ce102c9b596d94b572943a968af470e99e2409e00d09c3bb0b59e`  
		Last Modified: Sat, 17 Feb 2018 07:58:52 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf39e79c54f85f3fb2939c7ad81355edb761074210a94466f81f7ef7d085cd58`  
		Last Modified: Sat, 17 Feb 2018 07:58:52 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6197ee7a4f39dfd39e58de4486cc16ff8ba085740d676394374ebb0bf92beab`  
		Last Modified: Sat, 17 Feb 2018 07:59:10 GMT  
		Size: 58.4 MB (58351354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcc81bd0e0aa22fc6793ccd7fdffa7ad6b88f9118678055e2b5579910828d97`  
		Last Modified: Sat, 17 Feb 2018 07:58:51 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5110655c7758be4b36cbfe027ef3a8dcc09c0f43f42f6c288613c8ca928a3051`  
		Last Modified: Sat, 17 Feb 2018 07:58:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c4486d6ac4bdd5ae2311e42bfb6f5736d1b8f0aca56f2dac07d02053a436b5`  
		Last Modified: Sat, 17 Feb 2018 07:58:51 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3823f84966440463c50f49c2661b15649a33ffedc981525edda6b5ef4c86c3b4`  
		Last Modified: Sat, 17 Feb 2018 07:58:51 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34188abd9c2b04dc1cb7f422257306197d5b019276519febbf2a192ffffcaa8`  
		Last Modified: Sat, 17 Feb 2018 07:58:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.2` - linux; arm variant v7

```console
$ docker pull postgres@sha256:6457861283f8ad64296da3ed122fc968cf59c6a879a621fc4a61002cbff11dea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112323834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a15f5ce297794e2559a786c0f90a7776ea561ac6a884aed921bd2f9fa32cb017`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 13:30:55 GMT
ADD file:58c4e4829c3db6bdb6063ee3ca04776b696772f592f70cb29d5196788c3608da in / 
# Thu, 15 Feb 2018 13:30:56 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 15:45:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 15:45:19 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 15:45:19 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 15:45:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 15:45:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 15:45:43 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 15:45:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 15:45:48 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 15:45:48 GMT
ENV PG_MAJOR=10
# Thu, 15 Feb 2018 15:45:48 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Thu, 15 Feb 2018 16:02:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 16:03:04 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 16:03:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 16:03:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Thu, 15 Feb 2018 16:03:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 16:03:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 16:03:12 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 16:03:12 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 15 Feb 2018 16:03:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 16:03:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 16:03:32 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 16:03:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c0518139464abb63e1069cd4c638aad760a6cb319660ae2229921b17c703441b`  
		Last Modified: Thu, 15 Feb 2018 13:40:56 GMT  
		Size: 41.9 MB (41859666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d616d2c78693ee53aff4194714a94eb76c155b6dafa0358e12a877771e89d8`  
		Last Modified: Thu, 15 Feb 2018 17:15:30 GMT  
		Size: 6.3 MB (6292327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce106eb6165148abb11f205da674a34c30b3c7e158fca4cc29b91217a239f67`  
		Last Modified: Thu, 15 Feb 2018 17:15:29 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1fc8f02160af5c23c76693bfd886572bcde35a2fa52f3fe687b4c5d5d12758`  
		Last Modified: Thu, 15 Feb 2018 17:15:27 GMT  
		Size: 931.3 KB (931267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea804fd1a48e554c4c49f7a47692d8746a860ec2fc295e5472c192a69dcb56f`  
		Last Modified: Thu, 15 Feb 2018 17:15:28 GMT  
		Size: 6.6 MB (6577473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643755d2cb7c278212a1d6a27a7b8b9a14501a7157ca135c877e27e096c8b361`  
		Last Modified: Thu, 15 Feb 2018 17:15:26 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9b663a45706370fbfae52ffa109e203d2881f6fae80ae9640247f263f89cce`  
		Last Modified: Thu, 15 Feb 2018 17:15:26 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37bca4aca0ed6e5b2d76857a99d1ca705e5346136d0a7ad9697c60fc3478d61`  
		Last Modified: Thu, 15 Feb 2018 17:15:42 GMT  
		Size: 56.6 MB (56647179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b269a448278c3b3ca37b100054ac315eaa90ffcde6ff57df4035f7242e9dc95`  
		Last Modified: Thu, 15 Feb 2018 17:15:23 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed303d87b4832e844d5603e957f7ba3ba156afb14056894835cacebfb4bf46d`  
		Last Modified: Thu, 15 Feb 2018 17:15:24 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbefc61bc6d0a3221452f6145e2b26ebe036501ba98950859a68cab6e7fc6d7`  
		Last Modified: Thu, 15 Feb 2018 17:15:23 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c413efc9d8e9736d612468539f292c6515338bd4d4a5e773e14586dea388f28`  
		Last Modified: Thu, 15 Feb 2018 17:15:23 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd553069ce07dee646d74740997ad77b7ac8520425ab0fb831d9a909aa4b98f1`  
		Last Modified: Thu, 15 Feb 2018 17:15:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.2` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:f4d46ed863e7953718f592f143de93a8750c337085d38d417a7a6fe69691bb10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114345617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a07136cde4d294957f8a5edaf8d179a63da578df6f1e46f50d9ebc263424955f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 20:46:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 20:46:43 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 20:46:45 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 20:48:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 20:48:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 20:48:34 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 20:48:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 20:48:43 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 20:48:45 GMT
ENV PG_MAJOR=10
# Thu, 15 Feb 2018 20:48:46 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Thu, 15 Feb 2018 21:25:31 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 21:25:36 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 21:25:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 21:25:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Thu, 15 Feb 2018 21:25:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 21:25:40 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 21:25:41 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 21:25:42 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 15 Feb 2018 21:25:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 21:25:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 21:25:45 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 21:25:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70010a5599931ba80bb015f616aaae236fa4adde9761ad24be4d3644eb8240b8`  
		Last Modified: Thu, 15 Feb 2018 23:38:56 GMT  
		Size: 6.5 MB (6496221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74c9e7561d43f544a2c9caff4b9d217148acb631128ac1ec6601f7b06c1305b`  
		Last Modified: Thu, 15 Feb 2018 23:38:50 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d687cf1b5a4bb2281170b2c22e9cc7f0265f3947aab01485fcdcf1b2d6e7a25c`  
		Last Modified: Thu, 15 Feb 2018 23:38:49 GMT  
		Size: 924.3 KB (924263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:238eab10f43d5259cd4c8a6a401212fd334fb9a26163a291dae71f79be1bbee1`  
		Last Modified: Thu, 15 Feb 2018 23:38:54 GMT  
		Size: 6.6 MB (6577363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae952b7802418beb8a61181e858715448e91a1c2b254add75318a43e96d709d`  
		Last Modified: Thu, 15 Feb 2018 23:38:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f9245153a1061d241f49d2e6d42621db30492b33b17cce1125af96a7cce410`  
		Last Modified: Thu, 15 Feb 2018 23:38:48 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7129fc25117c5dc7a55f7c76e7f0b54a4924c8d7600a31532c8b778d486bf99d`  
		Last Modified: Thu, 15 Feb 2018 23:39:29 GMT  
		Size: 57.4 MB (57409980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4d226913662d5468c759e3308477b6514b76c411624ecb209f583e5b1953dd`  
		Last Modified: Thu, 15 Feb 2018 23:38:46 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53d949ac7c23190823c1656e7e736b5d84b389f3e5329d80f572e7dfa5c9151`  
		Last Modified: Thu, 15 Feb 2018 23:38:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca07201f01ceed97fca079867ea6e0dd499be2cf31196d99f55bd24d0ad0e35d`  
		Last Modified: Thu, 15 Feb 2018 23:38:46 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ff556e33ade7eddf892ca64ff11dee3a47c6308ba1d54f3ea5ba8f6012919c`  
		Last Modified: Thu, 15 Feb 2018 23:38:46 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc52541debc7f1f76bce2957fbde9c1c0af94c8fa88982eaa1350c3e2704d27`  
		Last Modified: Thu, 15 Feb 2018 23:38:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.2` - linux; 386

```console
$ docker pull postgres@sha256:94d035cda420ffc5dbcddc4a640ebe75d4ad2e22424921c8ba63c84d48cf4b80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119141955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5f254aca371bebfb69e7c88c1d203c33c8fbe8799adf7c0cabc7f9cec4b83de`
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
# Fri, 16 Feb 2018 14:34:38 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Fri, 16 Feb 2018 14:44:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Feb 2018 14:44:03 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 16 Feb 2018 14:44:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 16 Feb 2018 14:44:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 16 Feb 2018 14:44:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 16 Feb 2018 14:44:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 16 Feb 2018 14:44:06 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 16 Feb 2018 14:44:06 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Fri, 16 Feb 2018 14:44:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 14:44:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 14:44:08 GMT
EXPOSE 5432/tcp
# Fri, 16 Feb 2018 14:44:08 GMT
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
	-	`sha256:198901e0b9cc74affa3e3a91bc4551ddeb7dfb30b1d815c4f6b434aaf6da4df0`  
		Last Modified: Fri, 16 Feb 2018 15:00:34 GMT  
		Size: 58.5 MB (58548443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5425dd2d29782fa3e7deb9ec4ef300f0069cfaf23f72fd144fc0b0e12144959a`  
		Last Modified: Fri, 16 Feb 2018 15:00:11 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e802730f1ba3477b5c202c227a9abc1e517cbcb3677a28a8c0b65af61f93c4c`  
		Last Modified: Fri, 16 Feb 2018 15:00:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72e2e6c392d105bc40a596cbb2ede9f3da913745d79744f4b9573e8f3b325c3`  
		Last Modified: Fri, 16 Feb 2018 15:00:10 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1e7ceff63787f46c0c3793c3bcbe7b02cb12a3093c463d5d8bc99d13770d32`  
		Last Modified: Fri, 16 Feb 2018 15:00:10 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2648c6b3913528d4883f37028221a34270d2727877a94b47ebc73c97a47d8174`  
		Last Modified: Fri, 16 Feb 2018 15:00:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.2` - linux; ppc64le

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

### `postgres:10.2` - linux; s390x

```console
$ docker pull postgres@sha256:63d18f379f64bff6335dd99ca3938b12ea2e2fc3aa77b23e87ffe643798d9c23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.3 MB (119262412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b6b7bd361a3b7b69531b2c16766a38b0f3a89e9243f5a49ff16180dd2d42273`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:07 GMT
ADD file:01afc5861263642b3ae4beb3dedd40e7edb1e65d86c4368a502a15247a39a3c1 in / 
# Thu, 15 Feb 2018 06:24:07 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:21:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:21:18 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 07:21:19 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 06:39:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Feb 2018 06:39:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 17 Feb 2018 06:39:13 GMT
ENV LANG=en_US.utf8
# Sat, 17 Feb 2018 06:39:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 06:39:18 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 06:39:18 GMT
ENV PG_MAJOR=10
# Sat, 17 Feb 2018 06:39:18 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Sat, 17 Feb 2018 06:48:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Feb 2018 06:48:25 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 17 Feb 2018 06:48:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 17 Feb 2018 06:48:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Sat, 17 Feb 2018 06:48:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 17 Feb 2018 06:48:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 17 Feb 2018 06:48:26 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 17 Feb 2018 06:48:27 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Sat, 17 Feb 2018 06:48:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 06:48:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 06:48:27 GMT
EXPOSE 5432/tcp
# Sat, 17 Feb 2018 06:48:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:964d84d1f29ab606f833ed91af2d80183a542335d5c85f61d55a80b6c2dbdd32`  
		Last Modified: Thu, 15 Feb 2018 01:20:26 GMT  
		Size: 45.0 MB (44971889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b133e15566ea9810f8761c1bfc4f7ccbe214381fc98567295f179bc823743df`  
		Last Modified: Sat, 17 Feb 2018 06:49:06 GMT  
		Size: 7.0 MB (6952920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4951cbf7e6c6928c60b7439506f99a185190547eae9b862e3091078b8d98afca`  
		Last Modified: Sat, 17 Feb 2018 06:49:03 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3018259af35a4824588f794ac060c258236d29d774a0e11cbf33221482aadfdd`  
		Last Modified: Sat, 17 Feb 2018 06:49:02 GMT  
		Size: 942.3 KB (942291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac38d028306bb710b3ce908b7dbeea5f5bdc2677874ca24f6927205513c208f2`  
		Last Modified: Sat, 17 Feb 2018 06:49:04 GMT  
		Size: 6.6 MB (6598742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a942b3ec545ae390756db48c51b4aaf8c26e879276832edecda55fbf6ab7ea29`  
		Last Modified: Sat, 17 Feb 2018 06:49:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0ace3cf1f5552c3a29561025284c69d15bdeb7ef7049119b96054e86a00d01`  
		Last Modified: Sat, 17 Feb 2018 06:49:02 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94dd36f49142b8057f834b4778107f77fe10a099fffbdffe1dfef513223a9bdf`  
		Last Modified: Sat, 17 Feb 2018 06:49:13 GMT  
		Size: 59.8 MB (59780695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74876c2fbe49770caf84b7356602c8f5fb9120c0e9138404faa92037bb0543db`  
		Last Modified: Sat, 17 Feb 2018 06:49:01 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc31ea4af17a13f32ca10d5eb96e6e224c7c74dbc7bd7b3c5eec7ca150d6e37`  
		Last Modified: Sat, 17 Feb 2018 06:49:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a513616189132d1feacf29eed43c59416d51620eda7053fa1de3b70b8b1951a4`  
		Last Modified: Sat, 17 Feb 2018 06:49:01 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726c6113ce61e8897fd9f3911795b2246535d289945d89aa89adec219f7604e9`  
		Last Modified: Sat, 17 Feb 2018 06:49:01 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee31d0a97084e9915b2a49409d9c6908bd25fca14816986af783fdf519eae6dd`  
		Last Modified: Sat, 17 Feb 2018 06:49:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10.2-alpine`

```console
$ docker pull postgres@sha256:2cdf8430d7c1f59b3d3808f672944491aabf0fdf15da5b5e158e9fa4162453bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:10.2-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:f398f22411195ff70e7bbbd1001d22270ab5d556f653ef55a47c149a58b5edd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14944943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400ef39e0dbfc3444bc4145791a247696504b1c81ea6a223052180f3d921efd2`
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
# Sun, 18 Feb 2018 02:31:32 GMT
ENV PG_VERSION=10.2
# Sun, 18 Feb 2018 02:31:32 GMT
ENV PG_SHA256=fe32009b62ddb97f7f014307ce9d0edb6972f5a698e63cb531088e147d145bad
# Sun, 18 Feb 2018 02:34:20 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sun, 18 Feb 2018 02:34:27 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sun, 18 Feb 2018 02:34:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sun, 18 Feb 2018 02:34:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sun, 18 Feb 2018 02:34:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sun, 18 Feb 2018 02:34:29 GMT
VOLUME [/var/lib/postgresql/data]
# Sun, 18 Feb 2018 02:34:30 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sun, 18 Feb 2018 02:34:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sun, 18 Feb 2018 02:34:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 02:34:31 GMT
EXPOSE 5432/tcp
# Sun, 18 Feb 2018 02:34:31 GMT
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
	-	`sha256:8df57d533e713644605296e9c7def657bb2c60b21b9dfbc7c07d19d346fd1057`  
		Last Modified: Sun, 18 Feb 2018 02:35:13 GMT  
		Size: 12.9 MB (12869657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7858f71c02fb07429d05aba2b2acd0beb7a1d193e4cf8702aefaa7721ccb6806`  
		Last Modified: Sun, 18 Feb 2018 02:35:08 GMT  
		Size: 7.3 KB (7265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a8ef17ba590373cac326f921e907032a42fef66d1c089ba4b3345700f4ccac`  
		Last Modified: Sun, 18 Feb 2018 02:35:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb44f23d3230288aa1adbf9e6672123b71c73010570dfe2afbe3b40d9f4986c`  
		Last Modified: Sun, 18 Feb 2018 02:35:08 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65cad41156b38bf3be12ed04eb52f787fd68c7f92f7a71b32a313bf06bba0178`  
		Last Modified: Sun, 18 Feb 2018 02:35:08 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5492a5bead708f24738bbff12373f374c8a50ef0a9b7c176f15b033f20ecd5b5`  
		Last Modified: Sun, 18 Feb 2018 02:35:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.2-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:a9ee94a08ba3b8d7ea01771f3bdfb93160d98305a3698ebd19893d0d0ad1ad97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13765946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e100be15798c16bf810c7b00f7e53632f6b3c8b2bafdb81dc3db11eb9a5466c1`
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
# Sun, 18 Feb 2018 15:21:18 GMT
ENV PG_VERSION=10.2
# Sun, 18 Feb 2018 15:21:19 GMT
ENV PG_SHA256=fe32009b62ddb97f7f014307ce9d0edb6972f5a698e63cb531088e147d145bad
# Sun, 18 Feb 2018 15:25:30 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sun, 18 Feb 2018 15:25:32 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sun, 18 Feb 2018 15:25:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sun, 18 Feb 2018 15:25:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sun, 18 Feb 2018 15:25:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sun, 18 Feb 2018 15:25:36 GMT
VOLUME [/var/lib/postgresql/data]
# Sun, 18 Feb 2018 15:25:36 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sun, 18 Feb 2018 15:25:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sun, 18 Feb 2018 15:25:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 15:25:39 GMT
EXPOSE 5432/tcp
# Sun, 18 Feb 2018 15:25:40 GMT
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
	-	`sha256:08af2de580acbc5d587e6a824a927b0fe60fcf8f7f6c1569326939b625532099`  
		Last Modified: Sun, 18 Feb 2018 15:26:23 GMT  
		Size: 11.8 MB (11767164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9996e061e4be176b70afe80ea37b1f8d33a69769a30d8f91652138f44255f87`  
		Last Modified: Sun, 18 Feb 2018 15:26:20 GMT  
		Size: 7.3 KB (7268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03b674831a0f9fa948624188c66f9533db1acfa621f5ba198779cc65023dca5`  
		Last Modified: Sun, 18 Feb 2018 15:26:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1297a4ee831cf3d257ddf1495c4921f639d5b83f92e8d1313b38ddc1851b54d6`  
		Last Modified: Sun, 18 Feb 2018 15:26:33 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994cfba0fef513b114ca1a7d1e9c61861decfe4afa08fe155c7a598170c2b128`  
		Last Modified: Sun, 18 Feb 2018 15:26:17 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6f68f4ad222272f189352a764f1a551ef2e32411b77fd34b50c4086ad1af5b`  
		Last Modified: Sun, 18 Feb 2018 15:26:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.2-alpine` - linux; 386

```console
$ docker pull postgres@sha256:d3555802297c38d1afccd4106c0090ad6b4e50782e8e4ca84d3ffa208732e9b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15475622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1699e1153d54432667339c14fb6343226dad448743eba337411c169bb12abcb`
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
# Mon, 19 Feb 2018 18:00:43 GMT
ENV PG_VERSION=10.2
# Mon, 19 Feb 2018 18:00:44 GMT
ENV PG_SHA256=fe32009b62ddb97f7f014307ce9d0edb6972f5a698e63cb531088e147d145bad
# Mon, 19 Feb 2018 18:04:03 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 19 Feb 2018 18:10:09 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 19 Feb 2018 18:10:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 19 Feb 2018 18:14:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 19 Feb 2018 18:14:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 19 Feb 2018 18:14:17 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 19 Feb 2018 18:14:18 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Mon, 19 Feb 2018 18:14:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Feb 2018 18:14:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Feb 2018 18:14:31 GMT
EXPOSE 5432/tcp
# Mon, 19 Feb 2018 18:14:32 GMT
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
	-	`sha256:2eaba36c9608986f0081ce97483d4c30f9ee7f41a4f56db7e66196d3958960a7`  
		Last Modified: Mon, 19 Feb 2018 19:17:18 GMT  
		Size: 13.3 MB (13339473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb056fb4b78b9b5a9ae239b1c86e5e7e10ef26b8f0ffb5703205aad4d358b99`  
		Last Modified: Mon, 19 Feb 2018 19:17:11 GMT  
		Size: 7.3 KB (7271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c074b2a5a2afe390e262a888a9846fd0755050cc0a7280cabda8f47278b3c5fd`  
		Last Modified: Mon, 19 Feb 2018 19:17:12 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afd1738250282ad75098455f5362e55f2dee39b1fd6b25cd44a05ade5639635`  
		Last Modified: Mon, 19 Feb 2018 19:17:11 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ffbd5ae38888413f585ddeedd405ab2df03e7c1fb8e6ea366d026ad6ef842c`  
		Last Modified: Mon, 19 Feb 2018 19:17:11 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b137a6a6018736280768ceb576c69cc81609a1fd5362c284ad3249bb622a1da0`  
		Last Modified: Mon, 19 Feb 2018 19:17:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.2-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:5a746cb0429faad3e0a066c8991dde580be06fee97cae2d8333d2a8980766442
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14615123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e62ff457217a33da49fe08a84a67fb16276783a23c3deeff743170c595070e75`
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
# Sat, 17 Feb 2018 23:01:50 GMT
ENV PG_VERSION=10.2
# Sat, 17 Feb 2018 23:01:51 GMT
ENV PG_SHA256=fe32009b62ddb97f7f014307ce9d0edb6972f5a698e63cb531088e147d145bad
# Sat, 17 Feb 2018 23:04:45 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sat, 17 Feb 2018 23:04:49 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sat, 17 Feb 2018 23:04:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 17 Feb 2018 23:04:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 17 Feb 2018 23:04:58 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 17 Feb 2018 23:04:59 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 17 Feb 2018 23:05:01 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sat, 17 Feb 2018 23:05:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 23:05:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 23:05:12 GMT
EXPOSE 5432/tcp
# Sat, 17 Feb 2018 23:05:14 GMT
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
	-	`sha256:9dc376f423a61fba740fb108149f5d7c51c557e791f4b4b9c13690903edf0fee`  
		Last Modified: Sat, 17 Feb 2018 23:05:44 GMT  
		Size: 12.5 MB (12523611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd33ffccd2e488aabefffd05b8a87c36fdeee99cdbc17b62122fb76ee14eb3`  
		Last Modified: Sat, 17 Feb 2018 23:05:38 GMT  
		Size: 7.3 KB (7265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201808e2b7378852011d655dc2f9336e5a408d81d1d0a8f2aa943cfb920f0120`  
		Last Modified: Sat, 17 Feb 2018 23:05:38 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8179f44712a614e6b3668cefa68968a7c49fb289a0450ed71e0d40ad343c13`  
		Last Modified: Sat, 17 Feb 2018 23:05:38 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff99b03e20f4a2ef3b26917cf62e792e206519ec05ea1222c8f5ad2c6a79e463`  
		Last Modified: Sat, 17 Feb 2018 23:05:38 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8ea3594befccee0f8df96b61f8b564ae943ca1bcafadce15684f34dc327811`  
		Last Modified: Sat, 17 Feb 2018 23:05:38 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10.2-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:8e58175dde623d14957ebaa06e4875947b08e0087500c8a8f6baf873fab0d8ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14560594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:889c0e17b6196b480363185e229caee4cd00dc350a2bed9f64bf75586258235f`
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
# Sun, 18 Feb 2018 10:25:36 GMT
ENV PG_VERSION=10.2
# Sun, 18 Feb 2018 10:25:36 GMT
ENV PG_SHA256=fe32009b62ddb97f7f014307ce9d0edb6972f5a698e63cb531088e147d145bad
# Sun, 18 Feb 2018 10:27:53 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sun, 18 Feb 2018 10:27:53 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sun, 18 Feb 2018 10:27:54 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sun, 18 Feb 2018 10:27:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sun, 18 Feb 2018 10:27:54 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sun, 18 Feb 2018 10:27:55 GMT
VOLUME [/var/lib/postgresql/data]
# Sun, 18 Feb 2018 10:27:55 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sun, 18 Feb 2018 10:27:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sun, 18 Feb 2018 10:27:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 10:27:56 GMT
EXPOSE 5432/tcp
# Sun, 18 Feb 2018 10:27:56 GMT
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
	-	`sha256:fde2daa3cd3f7041b0e70b2e5f9f5565fbc3dab681581d64582dee4e501e55a3`  
		Last Modified: Sun, 18 Feb 2018 10:28:28 GMT  
		Size: 12.4 MB (12365437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a360256a57a9e554b56f745c67126db21d3b06083b8333db0afcbf43cb593f`  
		Last Modified: Sun, 18 Feb 2018 10:28:25 GMT  
		Size: 7.3 KB (7268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f67ff4026ffd1fdf0bc77c31b8aabd81293a7562074b1d62b4562a851abcf13`  
		Last Modified: Sun, 18 Feb 2018 10:28:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88963822628011d556b55b317d505942f667f63768a068356e4445eec4898692`  
		Last Modified: Sun, 18 Feb 2018 10:28:25 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eeb69990cb5f48e47909172c25b8b7dc1515123f3355b275136219521151f78`  
		Last Modified: Sun, 18 Feb 2018 10:28:25 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260d98c3fdb6bb15085e1a9572dc14c5a81ffbd4ffa982b698423738312efd0c`  
		Last Modified: Sun, 18 Feb 2018 10:28:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10-alpine`

```console
$ docker pull postgres@sha256:2cdf8430d7c1f59b3d3808f672944491aabf0fdf15da5b5e158e9fa4162453bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:10-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:f398f22411195ff70e7bbbd1001d22270ab5d556f653ef55a47c149a58b5edd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14944943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400ef39e0dbfc3444bc4145791a247696504b1c81ea6a223052180f3d921efd2`
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
# Sun, 18 Feb 2018 02:31:32 GMT
ENV PG_VERSION=10.2
# Sun, 18 Feb 2018 02:31:32 GMT
ENV PG_SHA256=fe32009b62ddb97f7f014307ce9d0edb6972f5a698e63cb531088e147d145bad
# Sun, 18 Feb 2018 02:34:20 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sun, 18 Feb 2018 02:34:27 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sun, 18 Feb 2018 02:34:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sun, 18 Feb 2018 02:34:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sun, 18 Feb 2018 02:34:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sun, 18 Feb 2018 02:34:29 GMT
VOLUME [/var/lib/postgresql/data]
# Sun, 18 Feb 2018 02:34:30 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sun, 18 Feb 2018 02:34:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sun, 18 Feb 2018 02:34:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 02:34:31 GMT
EXPOSE 5432/tcp
# Sun, 18 Feb 2018 02:34:31 GMT
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
	-	`sha256:8df57d533e713644605296e9c7def657bb2c60b21b9dfbc7c07d19d346fd1057`  
		Last Modified: Sun, 18 Feb 2018 02:35:13 GMT  
		Size: 12.9 MB (12869657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7858f71c02fb07429d05aba2b2acd0beb7a1d193e4cf8702aefaa7721ccb6806`  
		Last Modified: Sun, 18 Feb 2018 02:35:08 GMT  
		Size: 7.3 KB (7265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a8ef17ba590373cac326f921e907032a42fef66d1c089ba4b3345700f4ccac`  
		Last Modified: Sun, 18 Feb 2018 02:35:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb44f23d3230288aa1adbf9e6672123b71c73010570dfe2afbe3b40d9f4986c`  
		Last Modified: Sun, 18 Feb 2018 02:35:08 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65cad41156b38bf3be12ed04eb52f787fd68c7f92f7a71b32a313bf06bba0178`  
		Last Modified: Sun, 18 Feb 2018 02:35:08 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5492a5bead708f24738bbff12373f374c8a50ef0a9b7c176f15b033f20ecd5b5`  
		Last Modified: Sun, 18 Feb 2018 02:35:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:a9ee94a08ba3b8d7ea01771f3bdfb93160d98305a3698ebd19893d0d0ad1ad97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13765946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e100be15798c16bf810c7b00f7e53632f6b3c8b2bafdb81dc3db11eb9a5466c1`
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
# Sun, 18 Feb 2018 15:21:18 GMT
ENV PG_VERSION=10.2
# Sun, 18 Feb 2018 15:21:19 GMT
ENV PG_SHA256=fe32009b62ddb97f7f014307ce9d0edb6972f5a698e63cb531088e147d145bad
# Sun, 18 Feb 2018 15:25:30 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sun, 18 Feb 2018 15:25:32 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sun, 18 Feb 2018 15:25:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sun, 18 Feb 2018 15:25:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sun, 18 Feb 2018 15:25:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sun, 18 Feb 2018 15:25:36 GMT
VOLUME [/var/lib/postgresql/data]
# Sun, 18 Feb 2018 15:25:36 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sun, 18 Feb 2018 15:25:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sun, 18 Feb 2018 15:25:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 15:25:39 GMT
EXPOSE 5432/tcp
# Sun, 18 Feb 2018 15:25:40 GMT
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
	-	`sha256:08af2de580acbc5d587e6a824a927b0fe60fcf8f7f6c1569326939b625532099`  
		Last Modified: Sun, 18 Feb 2018 15:26:23 GMT  
		Size: 11.8 MB (11767164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9996e061e4be176b70afe80ea37b1f8d33a69769a30d8f91652138f44255f87`  
		Last Modified: Sun, 18 Feb 2018 15:26:20 GMT  
		Size: 7.3 KB (7268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03b674831a0f9fa948624188c66f9533db1acfa621f5ba198779cc65023dca5`  
		Last Modified: Sun, 18 Feb 2018 15:26:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1297a4ee831cf3d257ddf1495c4921f639d5b83f92e8d1313b38ddc1851b54d6`  
		Last Modified: Sun, 18 Feb 2018 15:26:33 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994cfba0fef513b114ca1a7d1e9c61861decfe4afa08fe155c7a598170c2b128`  
		Last Modified: Sun, 18 Feb 2018 15:26:17 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6f68f4ad222272f189352a764f1a551ef2e32411b77fd34b50c4086ad1af5b`  
		Last Modified: Sun, 18 Feb 2018 15:26:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; 386

```console
$ docker pull postgres@sha256:d3555802297c38d1afccd4106c0090ad6b4e50782e8e4ca84d3ffa208732e9b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15475622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1699e1153d54432667339c14fb6343226dad448743eba337411c169bb12abcb`
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
# Mon, 19 Feb 2018 18:00:43 GMT
ENV PG_VERSION=10.2
# Mon, 19 Feb 2018 18:00:44 GMT
ENV PG_SHA256=fe32009b62ddb97f7f014307ce9d0edb6972f5a698e63cb531088e147d145bad
# Mon, 19 Feb 2018 18:04:03 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 19 Feb 2018 18:10:09 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 19 Feb 2018 18:10:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 19 Feb 2018 18:14:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 19 Feb 2018 18:14:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 19 Feb 2018 18:14:17 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 19 Feb 2018 18:14:18 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Mon, 19 Feb 2018 18:14:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Feb 2018 18:14:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Feb 2018 18:14:31 GMT
EXPOSE 5432/tcp
# Mon, 19 Feb 2018 18:14:32 GMT
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
	-	`sha256:2eaba36c9608986f0081ce97483d4c30f9ee7f41a4f56db7e66196d3958960a7`  
		Last Modified: Mon, 19 Feb 2018 19:17:18 GMT  
		Size: 13.3 MB (13339473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb056fb4b78b9b5a9ae239b1c86e5e7e10ef26b8f0ffb5703205aad4d358b99`  
		Last Modified: Mon, 19 Feb 2018 19:17:11 GMT  
		Size: 7.3 KB (7271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c074b2a5a2afe390e262a888a9846fd0755050cc0a7280cabda8f47278b3c5fd`  
		Last Modified: Mon, 19 Feb 2018 19:17:12 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afd1738250282ad75098455f5362e55f2dee39b1fd6b25cd44a05ade5639635`  
		Last Modified: Mon, 19 Feb 2018 19:17:11 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ffbd5ae38888413f585ddeedd405ab2df03e7c1fb8e6ea366d026ad6ef842c`  
		Last Modified: Mon, 19 Feb 2018 19:17:11 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b137a6a6018736280768ceb576c69cc81609a1fd5362c284ad3249bb622a1da0`  
		Last Modified: Mon, 19 Feb 2018 19:17:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:5a746cb0429faad3e0a066c8991dde580be06fee97cae2d8333d2a8980766442
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14615123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e62ff457217a33da49fe08a84a67fb16276783a23c3deeff743170c595070e75`
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
# Sat, 17 Feb 2018 23:01:50 GMT
ENV PG_VERSION=10.2
# Sat, 17 Feb 2018 23:01:51 GMT
ENV PG_SHA256=fe32009b62ddb97f7f014307ce9d0edb6972f5a698e63cb531088e147d145bad
# Sat, 17 Feb 2018 23:04:45 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sat, 17 Feb 2018 23:04:49 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sat, 17 Feb 2018 23:04:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 17 Feb 2018 23:04:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 17 Feb 2018 23:04:58 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 17 Feb 2018 23:04:59 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 17 Feb 2018 23:05:01 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sat, 17 Feb 2018 23:05:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 23:05:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 23:05:12 GMT
EXPOSE 5432/tcp
# Sat, 17 Feb 2018 23:05:14 GMT
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
	-	`sha256:9dc376f423a61fba740fb108149f5d7c51c557e791f4b4b9c13690903edf0fee`  
		Last Modified: Sat, 17 Feb 2018 23:05:44 GMT  
		Size: 12.5 MB (12523611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd33ffccd2e488aabefffd05b8a87c36fdeee99cdbc17b62122fb76ee14eb3`  
		Last Modified: Sat, 17 Feb 2018 23:05:38 GMT  
		Size: 7.3 KB (7265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201808e2b7378852011d655dc2f9336e5a408d81d1d0a8f2aa943cfb920f0120`  
		Last Modified: Sat, 17 Feb 2018 23:05:38 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8179f44712a614e6b3668cefa68968a7c49fb289a0450ed71e0d40ad343c13`  
		Last Modified: Sat, 17 Feb 2018 23:05:38 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff99b03e20f4a2ef3b26917cf62e792e206519ec05ea1222c8f5ad2c6a79e463`  
		Last Modified: Sat, 17 Feb 2018 23:05:38 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8ea3594befccee0f8df96b61f8b564ae943ca1bcafadce15684f34dc327811`  
		Last Modified: Sat, 17 Feb 2018 23:05:38 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:10-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:8e58175dde623d14957ebaa06e4875947b08e0087500c8a8f6baf873fab0d8ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14560594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:889c0e17b6196b480363185e229caee4cd00dc350a2bed9f64bf75586258235f`
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
# Sun, 18 Feb 2018 10:25:36 GMT
ENV PG_VERSION=10.2
# Sun, 18 Feb 2018 10:25:36 GMT
ENV PG_SHA256=fe32009b62ddb97f7f014307ce9d0edb6972f5a698e63cb531088e147d145bad
# Sun, 18 Feb 2018 10:27:53 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sun, 18 Feb 2018 10:27:53 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sun, 18 Feb 2018 10:27:54 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sun, 18 Feb 2018 10:27:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sun, 18 Feb 2018 10:27:54 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sun, 18 Feb 2018 10:27:55 GMT
VOLUME [/var/lib/postgresql/data]
# Sun, 18 Feb 2018 10:27:55 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sun, 18 Feb 2018 10:27:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sun, 18 Feb 2018 10:27:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 10:27:56 GMT
EXPOSE 5432/tcp
# Sun, 18 Feb 2018 10:27:56 GMT
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
	-	`sha256:fde2daa3cd3f7041b0e70b2e5f9f5565fbc3dab681581d64582dee4e501e55a3`  
		Last Modified: Sun, 18 Feb 2018 10:28:28 GMT  
		Size: 12.4 MB (12365437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a360256a57a9e554b56f745c67126db21d3b06083b8333db0afcbf43cb593f`  
		Last Modified: Sun, 18 Feb 2018 10:28:25 GMT  
		Size: 7.3 KB (7268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f67ff4026ffd1fdf0bc77c31b8aabd81293a7562074b1d62b4562a851abcf13`  
		Last Modified: Sun, 18 Feb 2018 10:28:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88963822628011d556b55b317d505942f667f63768a068356e4445eec4898692`  
		Last Modified: Sun, 18 Feb 2018 10:28:25 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eeb69990cb5f48e47909172c25b8b7dc1515123f3355b275136219521151f78`  
		Last Modified: Sun, 18 Feb 2018 10:28:25 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260d98c3fdb6bb15085e1a9572dc14c5a81ffbd4ffa982b698423738312efd0c`  
		Last Modified: Sun, 18 Feb 2018 10:28:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:8b59f342fbd813e05dc22c11b3a30404fe13a5921ff812a836617530a0ba7fbd
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
$ docker pull postgres@sha256:c81a540dc26b20bce585e346d371b151a390753a3a6a85f238f6512384411c51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104156238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7cca23b47607bd83fe0db60a8fbc8aa1fa49e162fd4f365cd1f7a032e97db71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 22:27:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 22:27:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 16 Feb 2018 22:27:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 22:27:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Feb 2018 22:27:53 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 16 Feb 2018 22:27:57 GMT
ENV LANG=en_US.utf8
# Fri, 16 Feb 2018 22:27:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Feb 2018 22:28:00 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Feb 2018 22:28:01 GMT
ENV PG_MAJOR=9.6
# Fri, 16 Feb 2018 22:28:01 GMT
ENV PG_VERSION=9.6.7-1.pgdg80+1
# Fri, 16 Feb 2018 22:28:47 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Feb 2018 22:28:48 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 16 Feb 2018 22:28:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 16 Feb 2018 22:28:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 16 Feb 2018 22:28:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 16 Feb 2018 22:28:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 16 Feb 2018 22:28:51 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 16 Feb 2018 22:28:51 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 16 Feb 2018 22:28:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 22:28:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 22:28:52 GMT
EXPOSE 5432/tcp
# Fri, 16 Feb 2018 22:28:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3acc6da98ed72d943218d117d90be7898ee568f399eabca76690cbd3e31797c`  
		Last Modified: Fri, 16 Feb 2018 22:45:58 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef28401016a4b3225fd60dba2bad65abe3fce4005f63bb7b70ac6fa603637b34`  
		Last Modified: Fri, 16 Feb 2018 22:45:56 GMT  
		Size: 985.2 KB (985219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53d3f24be686c19ccfae1620279b1e9dd4a192ec624ea87966a362a3cacfff8`  
		Last Modified: Fri, 16 Feb 2018 22:46:00 GMT  
		Size: 7.1 MB (7113019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa03ed01c16fd3a7b8bfe9b17c93514e8ea8c8ab12a89bfc98ba7b3a81c336d`  
		Last Modified: Fri, 16 Feb 2018 22:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2f4dc2cd2d3d9bae8409a9ef807322bd14f84dc8ca3fa7ba45c4573057743`  
		Last Modified: Fri, 16 Feb 2018 22:45:56 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a59602b6f59cf634ef487dae91923e34eff21cab2724b9f03ffb7f94d75a3d`  
		Last Modified: Fri, 16 Feb 2018 22:46:13 GMT  
		Size: 43.4 MB (43433674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ff1dcde1605ab76aeaaff82f190ae92a62826b5a9d66b4e6e9905abe434f65`  
		Last Modified: Fri, 16 Feb 2018 22:45:53 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1397bd7a1695ebb476e5298a4896d34eb3fb898fd77705364e8f4eb9e04c74b3`  
		Last Modified: Fri, 16 Feb 2018 22:45:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6377cb1f1e7ad587cc0b1cc481dbe9dec22db34d99481412d97bdcb0a6eda94`  
		Last Modified: Fri, 16 Feb 2018 22:45:53 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7552463cf420629f8d16f597a63167859570c3a86b32975223063ce0864d189`  
		Last Modified: Fri, 16 Feb 2018 22:45:53 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a14e19d435c60f037879a470f7db8d369e05b736fc4bc835a724aca938be9b`  
		Last Modified: Fri, 16 Feb 2018 22:45:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; arm variant v5

```console
$ docker pull postgres@sha256:c4ce23d8414c20cd9b048ae7383c0832d1f5c4462b64b2a54db637a3df4c4dc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96606625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e121a1b5141401d9ddf163a91079d062f464f9b51f33ff618c6dffe61dd2caae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:14:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 23:14:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 23:14:11 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 23:14:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 23:15:26 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 23:15:27 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 23:15:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 23:15:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 23:15:37 GMT
ENV PG_MAJOR=9.6
# Thu, 15 Feb 2018 23:15:37 GMT
ENV PG_VERSION=9.6.7-1.pgdg80+1
# Thu, 15 Feb 2018 23:35:06 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 23:35:07 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 23:35:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 23:35:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 15 Feb 2018 23:35:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 23:35:09 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 23:35:10 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 23:35:10 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 23:35:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 23:35:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 23:35:13 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 23:35:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07616038d7c54354cad573f7607fbe7fb805df1853cd597bc3f49baa3fd0f0a0`  
		Last Modified: Fri, 16 Feb 2018 00:30:30 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312a1bc3c3f2a914f5f574bc2771a4f8c7aea586f555574485bd433a5a73f57f`  
		Last Modified: Fri, 16 Feb 2018 00:30:28 GMT  
		Size: 974.6 KB (974616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a67d033c12ca0dd875c9b9f7728974f34e61203299aa368442f1622920257f`  
		Last Modified: Fri, 16 Feb 2018 00:30:30 GMT  
		Size: 7.1 MB (7112913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcc79a38615c857be9c7b43ea9fdf119de52ee24a0882e6bc2a622cbba1ed28`  
		Last Modified: Fri, 16 Feb 2018 00:30:27 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5fb0af7e9fe55a91632075f057e1dd1ef9f6b6d5cb8d0bf37c2971fdf2ae6d`  
		Last Modified: Fri, 16 Feb 2018 00:30:28 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f47bccf4c34e85b8ab09aace5255d2b5962abe82638a2d2b2d2372e0b67b5e`  
		Last Modified: Fri, 16 Feb 2018 00:30:40 GMT  
		Size: 37.6 MB (37613383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fd9d995b9121d8fead4534d0ee2c854674b37a60e7cafdb3c964755f5aa637`  
		Last Modified: Fri, 16 Feb 2018 00:30:25 GMT  
		Size: 7.1 KB (7108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d759107e1d6a8679594350339dda11f49d7c9666966d851b4b520fe82012062`  
		Last Modified: Fri, 16 Feb 2018 00:30:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1da50b211a04a5f7c01042db7aec2977cdaff2c34e8032b8043929f3aa8d995`  
		Last Modified: Fri, 16 Feb 2018 00:30:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85abafc4a27aeca5e76c1c6411241a9b1f6e568897b86bb18f7f6001380f3c45`  
		Last Modified: Fri, 16 Feb 2018 00:30:25 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53490c38ea9c8662095c4864f257fab3c4c6d77bf31f074c520b96a6007c5e9f`  
		Last Modified: Fri, 16 Feb 2018 00:30:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; arm variant v7

```console
$ docker pull postgres@sha256:d54cf51a609e3fc4cd111e08807780d46739b48594731e00684b4e231e547c1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.2 MB (93215221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:511f463bfd149a0ee5b2e2ccb61bdb9e80fdc34391599e93eef47993357436be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:04:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 16:04:16 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 16:04:21 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:05:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 16:05:39 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 16:05:46 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 16:05:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 16:05:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 16:06:01 GMT
ENV PG_MAJOR=9.6
# Thu, 15 Feb 2018 16:06:08 GMT
ENV PG_VERSION=9.6.7-1.pgdg80+1
# Thu, 15 Feb 2018 16:23:32 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 16:23:33 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 16:23:34 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 16:23:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 15 Feb 2018 16:23:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 16:23:42 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 16:23:48 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 16:23:49 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 16:23:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 16:23:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 16:23:50 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 16:23:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfef565a8a4efb359fc4f99bed68debfca1ba6f64793605eb6342fef30c1d567`  
		Last Modified: Thu, 15 Feb 2018 17:16:28 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b32f4370d24d37d4556a5453e261ac16a46b66083541699fd42b3256155d37`  
		Last Modified: Thu, 15 Feb 2018 17:16:26 GMT  
		Size: 959.5 KB (959482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0f2538951ec3250507812e182e1ae2e5eb752e85ee7db09a84919af6f0ef6f`  
		Last Modified: Thu, 15 Feb 2018 17:16:29 GMT  
		Size: 7.1 MB (7112889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8792b0f86860e5a754bf1c7882b06379f42a07740cfad133dc02db04960628`  
		Last Modified: Thu, 15 Feb 2018 17:16:25 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0186d833bb986c938681f1aa65705d09a8174b3de87a502b5d3f9eefe8557e9`  
		Last Modified: Thu, 15 Feb 2018 17:16:25 GMT  
		Size: 4.5 KB (4496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df114523fbfc5a8ea3fcd7f764ae2c5186572214f14531ae85e4aa19d1fb010f`  
		Last Modified: Thu, 15 Feb 2018 17:16:38 GMT  
		Size: 36.4 MB (36425355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2f9301c8662a21a1f267726c02b94d51dfa42fc4c4fafc48ace97194fc2113`  
		Last Modified: Thu, 15 Feb 2018 17:16:22 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25fc53e80b53fcdbae9cb39f97073e57524f39681ab8d9cbd1f7eb6e7e4e2019`  
		Last Modified: Thu, 15 Feb 2018 17:16:22 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d1d7fb6c169bba997c1845e16fc704c397134639970ab52df696fbab0a3d9d3`  
		Last Modified: Thu, 15 Feb 2018 17:16:22 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83be7f8b61e37693cba67aa94cf37cfbffff225829fb1a028349440cadb886e3`  
		Last Modified: Thu, 15 Feb 2018 17:16:22 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37d9016529150b61ed0f8b701657500001d1f7c07e391cbb1b7c32f67b25178`  
		Last Modified: Thu, 15 Feb 2018 17:16:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:f2645b376bdf082410673476d70870fa27af61ce9b0451bb2e95c4918601e497
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95171371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58281a6fcda3a9ea7989c4e5fa4a7c854a7f7fad1edd4a884e0aa616baf01a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:26:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:26:22 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 21:26:29 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 21:27:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 21:27:48 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 21:27:57 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 21:27:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 21:28:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 21:28:13 GMT
ENV PG_MAJOR=9.6
# Thu, 15 Feb 2018 21:28:14 GMT
ENV PG_VERSION=9.6.7-1.pgdg80+1
# Thu, 15 Feb 2018 22:01:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 22:01:14 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 22:01:17 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 22:01:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 15 Feb 2018 22:01:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 22:01:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 22:01:27 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 22:01:28 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 22:01:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 22:01:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:01:35 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 22:01:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f54d66e9a9b420613f95a29338712a65a0b57f5cac8fd901dac70b8a1d9c65a`  
		Last Modified: Thu, 15 Feb 2018 23:40:29 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18e950b473f153a9d4987088b80bcd8ee6c09e14ed30a0798d6e8ea88e2597e`  
		Last Modified: Thu, 15 Feb 2018 23:40:26 GMT  
		Size: 952.0 KB (951994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd71e77f07f8383b232b839b66ac104c6fb159e9bf771257f69c6c1222abca86`  
		Last Modified: Thu, 15 Feb 2018 23:40:28 GMT  
		Size: 7.1 MB (7112983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a049cebaa932ffc7b065d515b98898c902b3cfc2c588c75784f26a000f092d`  
		Last Modified: Thu, 15 Feb 2018 23:40:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86456dce79030cc72704bbefb74646c300fbe3f37484230355beb5ae9db8eca8`  
		Last Modified: Thu, 15 Feb 2018 23:40:22 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc326eec39c6845ed7bcf39fb10f903e7b7e75a6a5b10ca18303fcc144bc6e0`  
		Last Modified: Thu, 15 Feb 2018 23:40:37 GMT  
		Size: 37.2 MB (37156504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc258d14fc1258efd8a119209c986b608a1e96ae79523eed8dc484510145f1da`  
		Last Modified: Thu, 15 Feb 2018 23:40:20 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc08159b108c1ac19126aeec452406c3dfe712ef6dbd6d6d18f9cf5a73ffae56`  
		Last Modified: Thu, 15 Feb 2018 23:40:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62929a4b908011502f14ae66d9f837db7434937a3db430cdd86b14e7b7bfbdb`  
		Last Modified: Thu, 15 Feb 2018 23:40:20 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f0bae9729a896b29fb6cd0a4d82a9ff28103732dca714cd65a9b19a2cb31a7`  
		Last Modified: Thu, 15 Feb 2018 23:40:38 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95803059fdf59cf2bf3c184bc4af23e6dbe2245180f4b68c3b5f5a86df9eb7d`  
		Last Modified: Thu, 15 Feb 2018 23:40:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; 386

```console
$ docker pull postgres@sha256:531be5484b497fcbd268251a349a1adb15d33a241046fa45f9863b6b9d782227
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106118833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:468277e8912e6ffe8eebffddfab68bc4d9c1ee529940e3907806ad139c678979`
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
# Mon, 19 Feb 2018 18:31:53 GMT
ENV PG_VERSION=9.6.7-1.pgdg80+1
# Mon, 19 Feb 2018 18:33:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 19 Feb 2018 18:33:22 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 19 Feb 2018 18:33:23 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 19 Feb 2018 18:33:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Mon, 19 Feb 2018 18:33:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 19 Feb 2018 18:33:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 19 Feb 2018 18:33:24 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 19 Feb 2018 18:33:25 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 19 Feb 2018 18:33:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Feb 2018 18:33:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Feb 2018 18:33:26 GMT
EXPOSE 5432/tcp
# Mon, 19 Feb 2018 18:33:26 GMT
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
	-	`sha256:6ae1369822e34fd4f6604c5d8b72ef78508a3ca059116b951bd905b7b9930661`  
		Last Modified: Mon, 19 Feb 2018 19:26:23 GMT  
		Size: 45.2 MB (45238165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa188ffc96304435e6ea037146de3c6c31fed7f59f905ea22c901dd23b20dc5`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c438f801337e19aa6161dd58911ebc0e03120d521ed1371868c6e2569a49c928`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efe72ce7d7b9b4d70fba98293873c463a4451b3a416e9ff504d386e089b8de6`  
		Last Modified: Mon, 19 Feb 2018 19:26:05 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60147984778c6e1fba1b634977dc4d79c069f8a654c2fa73a7316bb5d61db75a`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35d3da35402e3a0425e5b39de1b213807e8b86cba819a50b5a2f56a3d84dc26`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; ppc64le

```console
$ docker pull postgres@sha256:326a631295545d5993428007a86bbba42247f8d7864b5570c995c89622595a43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102363357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1087abf542af7ceebf35f1bb2bfffa90f9d25bc4d5caec3a7f0faebf901ff622`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:28:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:28:40 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 07:28:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:31:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 07:32:15 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 07:32:17 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 07:32:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 07:32:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 07:32:35 GMT
ENV PG_MAJOR=9.6
# Thu, 15 Feb 2018 07:32:37 GMT
ENV PG_VERSION=9.6.7-1.pgdg80+1
# Thu, 15 Feb 2018 07:40:37 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 07:40:52 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 07:41:01 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 07:41:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 15 Feb 2018 07:41:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 07:41:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 07:41:24 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 07:41:29 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:41:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 07:41:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:41:46 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 07:41:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da267b8324589d9dc4e670c3c6062a20192c95992f537d5d683fdef57aa712a6`  
		Last Modified: Thu, 15 Feb 2018 08:09:51 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7587129ae2be4d0fa4f30eacad69a9fddce43c621b95417d2c20e346e35bef4`  
		Last Modified: Thu, 15 Feb 2018 08:09:52 GMT  
		Size: 954.3 KB (954287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5051bce96e69b1d77c6f9a54497a975105e13a6824e8eb3f9b8875a0c751d5`  
		Last Modified: Thu, 15 Feb 2018 08:09:52 GMT  
		Size: 7.1 MB (7113193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af2ace6824e7474d6b893aa3cac0f00e28519ae433b07f541dae65d8c174f65`  
		Last Modified: Thu, 15 Feb 2018 08:09:49 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b34189638b620bb4f4aa8ce17a7fc5f513ba02d9f35b8409a0fd52d2b68a4f`  
		Last Modified: Thu, 15 Feb 2018 08:09:49 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220de9a270d4d86c9847635daaff4f84771591a9a22d596af7516b122ca266d5`  
		Last Modified: Thu, 15 Feb 2018 08:09:59 GMT  
		Size: 42.5 MB (42462694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bddf8e1f30c7f841079ba2edc89c882105ecec726dad6cb69f771dea9cbb87`  
		Last Modified: Thu, 15 Feb 2018 08:09:47 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40904ddd39bc8609f240ac9c427bab591aa5572329fc132f865986fec6c2b0ce`  
		Last Modified: Thu, 15 Feb 2018 08:09:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e51cd44d7d9cc9d282ec9ffacae4eb12356cf72635d85e00cf16b67cdcb8de2`  
		Last Modified: Thu, 15 Feb 2018 08:09:48 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bebed7232c309d2d0cb510a1a91ae7d556efe5b090df5075e7d1727664f6a1`  
		Last Modified: Thu, 15 Feb 2018 08:09:46 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18311603424f825ca57a7b6527d471cfec47ee86e062f624f5be490226913e5f`  
		Last Modified: Thu, 15 Feb 2018 08:09:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9` - linux; s390x

```console
$ docker pull postgres@sha256:54f0c0cc18fa0b8513a680ebd8ce27e6bd257f27c345c859372056782e12811d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100584602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e55ed9d4299482db629c5088ff83556752227d744c239022befcfd669ca9ed62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:21:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:21:55 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 07:21:56 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:22:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 07:22:28 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 07:22:28 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 07:22:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 07:22:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 07:22:31 GMT
ENV PG_MAJOR=9.6
# Thu, 15 Feb 2018 07:22:32 GMT
ENV PG_VERSION=9.6.7-1.pgdg80+1
# Thu, 15 Feb 2018 07:31:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 07:31:10 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 07:31:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 07:31:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 15 Feb 2018 07:31:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 07:31:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 07:31:12 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 07:31:12 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:31:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 07:31:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:31:13 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 07:31:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7edd487f82557589b2f080179dcbd1f673858c75433d9e891e95d70a4d48f9`  
		Last Modified: Thu, 15 Feb 2018 07:56:03 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52080ebd673a207dd59acb70defed683edd30768000383bcb091476f6edeb42b`  
		Last Modified: Thu, 15 Feb 2018 07:56:02 GMT  
		Size: 970.3 KB (970259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffaa04760cdbd271208aa1c188633875c8e23ae75d11d48014cf204fa05a9ff`  
		Last Modified: Thu, 15 Feb 2018 07:56:07 GMT  
		Size: 7.1 MB (7131239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8af31c324618b42751431df21b43983c8d95cc49c235bcc434c69aca30e6349`  
		Last Modified: Thu, 15 Feb 2018 07:56:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89096fd23a0029c5441ca3d3adfbbe4230943317bc4f8d9c22b68be95c1908af`  
		Last Modified: Thu, 15 Feb 2018 07:56:01 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719186e97695da123f3016ee642a85db7a11f39cf70c76ab666477115cb3bdb4`  
		Last Modified: Thu, 15 Feb 2018 07:56:09 GMT  
		Size: 39.7 MB (39672230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0592d8626cfdf6bf6cf0abaf0f3ac4c51e16f55c0e1897c984ea7995c86d102c`  
		Last Modified: Thu, 15 Feb 2018 07:56:00 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad9ad2ffed68579ecfbac84643222ddae6951691f23c021901ee5afdeb54937`  
		Last Modified: Thu, 15 Feb 2018 07:56:00 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30dc3197494fafe7ddbe5d5f7e2d34a5bbce545f5f6c2ce541f245795696d405`  
		Last Modified: Thu, 15 Feb 2018 07:56:01 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6063ca720463406289da209fe81a40842742328b0077a9f09fcad9ed099e09b8`  
		Last Modified: Thu, 15 Feb 2018 07:56:00 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb87176d7cab195044b2f5a7b71c24ae6b9b8ac70e28ca45433bd7d1520af12`  
		Last Modified: Thu, 15 Feb 2018 07:56:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:d11577df67e3c51cdda8ead00811bd6954939753d16312f1b2cae9a811d97a0b
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
$ docker pull postgres@sha256:6259ee4d52c08daea7c844c5cdf8e6b58ed9b79c98ef082f7d00b8e018ae0a81
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102902418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efecb8c4111a0e3df86385987b7f82c867dc939a8799167a1adff9fbe48e2a55`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 22:27:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 22:27:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 16 Feb 2018 22:27:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 22:27:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Feb 2018 22:27:53 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 16 Feb 2018 22:27:57 GMT
ENV LANG=en_US.utf8
# Fri, 16 Feb 2018 22:27:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Feb 2018 22:28:00 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Feb 2018 22:39:51 GMT
ENV PG_MAJOR=9.3
# Fri, 16 Feb 2018 22:39:51 GMT
ENV PG_VERSION=9.3.21-1.pgdg80+1
# Fri, 16 Feb 2018 22:40:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Feb 2018 22:40:35 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 16 Feb 2018 22:40:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 16 Feb 2018 22:40:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Fri, 16 Feb 2018 22:40:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 16 Feb 2018 22:40:37 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 16 Feb 2018 22:40:37 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 16 Feb 2018 22:40:38 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 16 Feb 2018 22:40:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 22:40:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 22:40:39 GMT
EXPOSE 5432/tcp
# Fri, 16 Feb 2018 22:40:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3acc6da98ed72d943218d117d90be7898ee568f399eabca76690cbd3e31797c`  
		Last Modified: Fri, 16 Feb 2018 22:45:58 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef28401016a4b3225fd60dba2bad65abe3fce4005f63bb7b70ac6fa603637b34`  
		Last Modified: Fri, 16 Feb 2018 22:45:56 GMT  
		Size: 985.2 KB (985219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53d3f24be686c19ccfae1620279b1e9dd4a192ec624ea87966a362a3cacfff8`  
		Last Modified: Fri, 16 Feb 2018 22:46:00 GMT  
		Size: 7.1 MB (7113019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa03ed01c16fd3a7b8bfe9b17c93514e8ea8c8ab12a89bfc98ba7b3a81c336d`  
		Last Modified: Fri, 16 Feb 2018 22:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2f4dc2cd2d3d9bae8409a9ef807322bd14f84dc8ca3fa7ba45c4573057743`  
		Last Modified: Fri, 16 Feb 2018 22:45:56 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08700e5d50ab8f0a1f0159066944e26ae361e3a4729e47b836ad3533c52c07d`  
		Last Modified: Fri, 16 Feb 2018 22:50:01 GMT  
		Size: 42.2 MB (42180453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d904be4ecddde2131eff9b5b126000b1222435fd1e5eaf604a9041ad226bf0f`  
		Last Modified: Fri, 16 Feb 2018 22:49:44 GMT  
		Size: 6.5 KB (6506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955e8f9f02a63268979b71c7cb62ba8791c8944bee2f77f845f0c6c5047bc3e3`  
		Last Modified: Fri, 16 Feb 2018 22:49:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3987491305565bdd15fc3d3f4cc289ef558db3bd64f546bc84001d9b8091a606`  
		Last Modified: Fri, 16 Feb 2018 22:49:44 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5a3e01c4371ca3030414c87adb5f82973d8e5b3148232ff3ee3a641a63b7d7`  
		Last Modified: Fri, 16 Feb 2018 22:49:44 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754989c8ba9d85697f21f6c5768990a53f37d4765ea0275ee946d01bcb3c83d5`  
		Last Modified: Fri, 16 Feb 2018 22:49:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; arm variant v5

```console
$ docker pull postgres@sha256:4983cb51a9a3c169082cd1654398856b764e790354865ac96a73e6f9d4f2b367
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.4 MB (95423869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a09d2cfd72c34057a4da2e1a70e9490f5bc3146da10caef41faf245a7834e4c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:14:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 23:14:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 23:14:11 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 23:14:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 23:15:26 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 23:15:27 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 23:15:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 23:15:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Feb 2018 00:12:18 GMT
ENV PG_MAJOR=9.3
# Fri, 16 Feb 2018 00:12:18 GMT
ENV PG_VERSION=9.3.21-1.pgdg80+1
# Fri, 16 Feb 2018 00:29:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Feb 2018 00:29:35 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 16 Feb 2018 00:29:36 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 16 Feb 2018 00:29:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Fri, 16 Feb 2018 00:29:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 16 Feb 2018 00:29:37 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 16 Feb 2018 00:29:38 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 16 Feb 2018 00:29:38 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 16 Feb 2018 00:29:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 00:29:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 00:29:40 GMT
EXPOSE 5432/tcp
# Fri, 16 Feb 2018 00:29:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07616038d7c54354cad573f7607fbe7fb805df1853cd597bc3f49baa3fd0f0a0`  
		Last Modified: Fri, 16 Feb 2018 00:30:30 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312a1bc3c3f2a914f5f574bc2771a4f8c7aea586f555574485bd433a5a73f57f`  
		Last Modified: Fri, 16 Feb 2018 00:30:28 GMT  
		Size: 974.6 KB (974616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a67d033c12ca0dd875c9b9f7728974f34e61203299aa368442f1622920257f`  
		Last Modified: Fri, 16 Feb 2018 00:30:30 GMT  
		Size: 7.1 MB (7112913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcc79a38615c857be9c7b43ea9fdf119de52ee24a0882e6bc2a622cbba1ed28`  
		Last Modified: Fri, 16 Feb 2018 00:30:27 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5fb0af7e9fe55a91632075f057e1dd1ef9f6b6d5cb8d0bf37c2971fdf2ae6d`  
		Last Modified: Fri, 16 Feb 2018 00:30:28 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffcde411742e2f5505d3a009a32fe9c4c3501c49ce4ff1914a06fec444d44ece`  
		Last Modified: Fri, 16 Feb 2018 00:32:58 GMT  
		Size: 36.4 MB (36431228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ee8ae3f6fc324647e63c455b6363c4bb29a7f2cf6d13d5dd6359ea0924a847`  
		Last Modified: Fri, 16 Feb 2018 00:32:46 GMT  
		Size: 6.5 KB (6506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e62840d9e326ee6e26c0eadd689022e84478f97f6dcadc67f38e5bba094173`  
		Last Modified: Fri, 16 Feb 2018 00:32:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0300b372a72b7bcc23bcda9efcce518162d04ed17a42fcf5572e54d5e3a920d`  
		Last Modified: Fri, 16 Feb 2018 00:32:44 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba42351c88c3a0e48a20492d9e55341df23bb3d8415f289242b407bf64f02275`  
		Last Modified: Fri, 16 Feb 2018 00:32:44 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90171313ba070232a2642721bb2b6b9ac4b3c3183fe7058f3fe6186b449b36ac`  
		Last Modified: Fri, 16 Feb 2018 00:32:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; arm variant v7

```console
$ docker pull postgres@sha256:c004bc794d5941e64910b430510eca38e0e8dcade908fa9896d30867a0180841
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.1 MB (92074180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecd4cdd641e5e70dbfcbd23639de0927f9e1c9d23b5c4f0789c08dd04dc32e85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:04:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 16:04:16 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 16:04:21 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:05:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 16:05:39 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 16:05:46 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 16:05:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 16:05:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 16:58:51 GMT
ENV PG_MAJOR=9.3
# Thu, 15 Feb 2018 16:58:51 GMT
ENV PG_VERSION=9.3.21-1.pgdg80+1
# Thu, 15 Feb 2018 17:14:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 17:14:59 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 17:15:00 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 17:15:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Thu, 15 Feb 2018 17:15:01 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 17:15:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 17:15:02 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 17:15:02 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 17:15:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 17:15:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 17:15:05 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 17:15:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfef565a8a4efb359fc4f99bed68debfca1ba6f64793605eb6342fef30c1d567`  
		Last Modified: Thu, 15 Feb 2018 17:16:28 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b32f4370d24d37d4556a5453e261ac16a46b66083541699fd42b3256155d37`  
		Last Modified: Thu, 15 Feb 2018 17:16:26 GMT  
		Size: 959.5 KB (959482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0f2538951ec3250507812e182e1ae2e5eb752e85ee7db09a84919af6f0ef6f`  
		Last Modified: Thu, 15 Feb 2018 17:16:29 GMT  
		Size: 7.1 MB (7112889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8792b0f86860e5a754bf1c7882b06379f42a07740cfad133dc02db04960628`  
		Last Modified: Thu, 15 Feb 2018 17:16:25 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0186d833bb986c938681f1aa65705d09a8174b3de87a502b5d3f9eefe8557e9`  
		Last Modified: Thu, 15 Feb 2018 17:16:25 GMT  
		Size: 4.5 KB (4496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c269f184942f4521eeb5cb54b24caf9d4c52679f48bec2c3d7860438f27c4bf8`  
		Last Modified: Thu, 15 Feb 2018 17:19:06 GMT  
		Size: 35.3 MB (35284911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d40e9c8ea69be85c5df01ee472fd2c361779028ea8c7ff4fac01be5d47799dd`  
		Last Modified: Thu, 15 Feb 2018 17:18:52 GMT  
		Size: 6.5 KB (6509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e3daec050bcd198812d66b0c1ac012cd750573a84664b059bb2dd12526a289`  
		Last Modified: Thu, 15 Feb 2018 17:18:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93b9b9227714cdb9b0b03584bb9efe2d344e56a666ae43c9a6f959bcb0770ee`  
		Last Modified: Thu, 15 Feb 2018 17:18:51 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aacd80036e2a265089242aaac1ab4f1ff119dc74721b9fafa7fb4abea20cc3f9`  
		Last Modified: Thu, 15 Feb 2018 17:18:51 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35613da6c7fe3fe0c14af1ee6225e5deccadb0a8c3dc9660c384d1288f63eadc`  
		Last Modified: Thu, 15 Feb 2018 17:18:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:e9c3b9d67d2bb8d0574fb9ab9adde4865849e9aa2034c335b6642cedf894f218
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (93991918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d02a5ce33dbf260dc8e2fd1626bde838d53d0b49e1075f04bad1a4e757a90ba8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:26:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:26:22 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 21:26:29 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 21:27:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 21:27:48 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 21:27:57 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 21:27:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 21:28:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 23:09:55 GMT
ENV PG_MAJOR=9.3
# Thu, 15 Feb 2018 23:09:55 GMT
ENV PG_VERSION=9.3.21-1.pgdg80+1
# Thu, 15 Feb 2018 23:37:41 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 23:37:46 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 23:37:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 23:37:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Thu, 15 Feb 2018 23:37:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 23:37:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 23:37:56 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 23:37:58 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 23:38:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 23:38:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 23:38:04 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 23:38:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f54d66e9a9b420613f95a29338712a65a0b57f5cac8fd901dac70b8a1d9c65a`  
		Last Modified: Thu, 15 Feb 2018 23:40:29 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18e950b473f153a9d4987088b80bcd8ee6c09e14ed30a0798d6e8ea88e2597e`  
		Last Modified: Thu, 15 Feb 2018 23:40:26 GMT  
		Size: 952.0 KB (951994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd71e77f07f8383b232b839b66ac104c6fb159e9bf771257f69c6c1222abca86`  
		Last Modified: Thu, 15 Feb 2018 23:40:28 GMT  
		Size: 7.1 MB (7112983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a049cebaa932ffc7b065d515b98898c902b3cfc2c588c75784f26a000f092d`  
		Last Modified: Thu, 15 Feb 2018 23:40:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86456dce79030cc72704bbefb74646c300fbe3f37484230355beb5ae9db8eca8`  
		Last Modified: Thu, 15 Feb 2018 23:40:22 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b6fb9124d57771eec223e8311cb6d5b999b494af65822c9f74da09ae08ca4e`  
		Last Modified: Thu, 15 Feb 2018 23:43:15 GMT  
		Size: 36.0 MB (35977646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c507481215fbdb1296a84a8162c5042efe3baf7a4ec49a0231facea6004a79d8`  
		Last Modified: Thu, 15 Feb 2018 23:42:59 GMT  
		Size: 6.5 KB (6510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4fa5ab8f86d8dd479ab4aa6adca53b8e3c1f0978afcb290dedaf2f9f902ff3`  
		Last Modified: Thu, 15 Feb 2018 23:42:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3dd6cbd5877f01cc42d03f933317f8f78f22b6b1c58e0a6e2e3eb194f587e9c`  
		Last Modified: Thu, 15 Feb 2018 23:43:00 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f006684b684228e5f503c4307f677f50aafaa0e690720a85c7c414f455a9628`  
		Last Modified: Thu, 15 Feb 2018 23:42:59 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2447f84aa1cdb1caac0e9a1c6d7f74b3309b735be5d45132b2d01054ee0ce3`  
		Last Modified: Thu, 15 Feb 2018 23:42:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; 386

```console
$ docker pull postgres@sha256:1f94f18f8d0ad5ce1298ddf693961599d002b6402d1667a56f2e51c85b77f990
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104849150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b3e2b8c6b22d31463343de925c35073d853292c21800f033c72b70c50b60a7`
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
# Mon, 19 Feb 2018 19:04:39 GMT
ENV PG_VERSION=9.3.21-1.pgdg80+1
# Mon, 19 Feb 2018 19:05:47 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 19 Feb 2018 19:05:48 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 19 Feb 2018 19:05:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 19 Feb 2018 19:05:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Mon, 19 Feb 2018 19:05:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 19 Feb 2018 19:05:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 19 Feb 2018 19:05:50 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 19 Feb 2018 19:05:51 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 19 Feb 2018 19:05:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Feb 2018 19:05:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Feb 2018 19:05:52 GMT
EXPOSE 5432/tcp
# Mon, 19 Feb 2018 19:05:52 GMT
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
	-	`sha256:0f9794d60c4d4098f612154164f3583fd33dfce4df0822da9e83e1f4449bcd49`  
		Last Modified: Mon, 19 Feb 2018 20:16:43 GMT  
		Size: 44.0 MB (43969077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a5403c148fd951998ddb2a4588fa25dfdf96d14779e23a233c149e10c8792d`  
		Last Modified: Mon, 19 Feb 2018 20:16:24 GMT  
		Size: 6.5 KB (6510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb292e8c17c503fa700ed84a72fb31fa4b03c06c4f949cbe4683735d6834af0`  
		Last Modified: Mon, 19 Feb 2018 20:16:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befbc1afc9adba818f8fc406fd9f9f7fa19e284f854093ebc7649ee362e62c8b`  
		Last Modified: Mon, 19 Feb 2018 20:16:25 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b434cafc6373611dda73d58314ea7d918c63e1d2b36b03f2c218142bd8e46294`  
		Last Modified: Mon, 19 Feb 2018 20:16:24 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def54259a28a97944a962d3e4b46fb4ff74586cf0767c470602a06ff90a074b2`  
		Last Modified: Mon, 19 Feb 2018 20:16:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; ppc64le

```console
$ docker pull postgres@sha256:eb4bf605d74046fff4c9d171ee05345c0d08b6f75eb0d4732e5b82330b6c04a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101141259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdc291eabeedebfa4b028591067e1a05b02bcb72020e11c0cb6c02c312093c85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:28:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:28:40 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 07:28:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:31:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 07:32:15 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 07:32:17 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 07:32:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 07:32:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 08:00:51 GMT
ENV PG_MAJOR=9.3
# Thu, 15 Feb 2018 08:00:53 GMT
ENV PG_VERSION=9.3.21-1.pgdg80+1
# Thu, 15 Feb 2018 08:07:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 08:07:45 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 08:07:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 08:07:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Thu, 15 Feb 2018 08:07:59 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 08:08:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 08:08:16 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 08:08:19 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 08:08:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 08:08:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 08:08:36 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 08:08:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da267b8324589d9dc4e670c3c6062a20192c95992f537d5d683fdef57aa712a6`  
		Last Modified: Thu, 15 Feb 2018 08:09:51 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7587129ae2be4d0fa4f30eacad69a9fddce43c621b95417d2c20e346e35bef4`  
		Last Modified: Thu, 15 Feb 2018 08:09:52 GMT  
		Size: 954.3 KB (954287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5051bce96e69b1d77c6f9a54497a975105e13a6824e8eb3f9b8875a0c751d5`  
		Last Modified: Thu, 15 Feb 2018 08:09:52 GMT  
		Size: 7.1 MB (7113193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af2ace6824e7474d6b893aa3cac0f00e28519ae433b07f541dae65d8c174f65`  
		Last Modified: Thu, 15 Feb 2018 08:09:49 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b34189638b620bb4f4aa8ce17a7fc5f513ba02d9f35b8409a0fd52d2b68a4f`  
		Last Modified: Thu, 15 Feb 2018 08:09:49 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d358b412effd8942217c4827508bbcb717d19e08abf2ad9b256c12af704a4f80`  
		Last Modified: Thu, 15 Feb 2018 08:12:25 GMT  
		Size: 41.2 MB (41241195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dd28ec64d06cdd8cdd1f266a9a1a9824e4b31542e967b50a799e1899c186b9`  
		Last Modified: Thu, 15 Feb 2018 08:12:12 GMT  
		Size: 6.5 KB (6506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94b17445ace8ee8159221895cc5eaf581062538f65a3e687ac26c513d6b674b`  
		Last Modified: Thu, 15 Feb 2018 08:12:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c550c4e99331cdb688bc8abdf123e980373679ad1e1f8599a5c6a108f98314`  
		Last Modified: Thu, 15 Feb 2018 08:12:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d28d96af84337c421739e7b997d0782349bdb0e1512b40e5e4da7694a499ba3`  
		Last Modified: Thu, 15 Feb 2018 08:12:11 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca1d5263c993be39e5ba50459acdf49a2d3dbc240526d81327b5d0836ce1526`  
		Last Modified: Thu, 15 Feb 2018 08:12:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3` - linux; s390x

```console
$ docker pull postgres@sha256:2a24a1270c6fe05a6ef5b4d2731a8107f7f6a583ec2feb8c8fd86e6785c783f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99296176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd572537deb62582525fa933849cc612a5b1c717a95597fdc70d31684f87cb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:21:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:21:55 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 07:21:56 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:22:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 07:22:28 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 07:22:28 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 07:22:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 07:22:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 07:48:16 GMT
ENV PG_MAJOR=9.3
# Thu, 15 Feb 2018 07:48:16 GMT
ENV PG_VERSION=9.3.21-1.pgdg80+1
# Thu, 15 Feb 2018 07:55:41 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 07:55:42 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 07:55:43 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 07:55:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Thu, 15 Feb 2018 07:55:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 07:55:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 07:55:43 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 07:55:44 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:55:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 07:55:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:55:45 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 07:55:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7edd487f82557589b2f080179dcbd1f673858c75433d9e891e95d70a4d48f9`  
		Last Modified: Thu, 15 Feb 2018 07:56:03 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52080ebd673a207dd59acb70defed683edd30768000383bcb091476f6edeb42b`  
		Last Modified: Thu, 15 Feb 2018 07:56:02 GMT  
		Size: 970.3 KB (970259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffaa04760cdbd271208aa1c188633875c8e23ae75d11d48014cf204fa05a9ff`  
		Last Modified: Thu, 15 Feb 2018 07:56:07 GMT  
		Size: 7.1 MB (7131239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8af31c324618b42751431df21b43983c8d95cc49c235bcc434c69aca30e6349`  
		Last Modified: Thu, 15 Feb 2018 07:56:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89096fd23a0029c5441ca3d3adfbbe4230943317bc4f8d9c22b68be95c1908af`  
		Last Modified: Thu, 15 Feb 2018 07:56:01 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b1638317a6eec845797770ac44f49f043fa73b9307bb88e446ae79ff007df27`  
		Last Modified: Thu, 15 Feb 2018 07:57:06 GMT  
		Size: 38.4 MB (38384408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2844ebc25a894bc6a7533473138c0631fd14801588804a545f92369ee0a85ed5`  
		Last Modified: Thu, 15 Feb 2018 07:56:57 GMT  
		Size: 6.5 KB (6509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012a5e895188b79d268e7b4a723f11ba582cc05b3be4b079cb7ff658149a0a4d`  
		Last Modified: Thu, 15 Feb 2018 07:56:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3d3169dca03e12bd4fea0e77be2163bd05c83524498a0794923e53cf72f375c`  
		Last Modified: Thu, 15 Feb 2018 07:56:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6522162ec4726425863446bcdd6f23b8fce2ac8a0b4335fb43f0fb039eac1b`  
		Last Modified: Thu, 15 Feb 2018 07:56:57 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ef3e9b67c267c11c218a1a70de1de4cc5aff1e9ab28f0cf27ac448a93952ca`  
		Last Modified: Thu, 15 Feb 2018 07:56:57 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.21`

```console
$ docker pull postgres@sha256:d11577df67e3c51cdda8ead00811bd6954939753d16312f1b2cae9a811d97a0b
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

### `postgres:9.3.21` - linux; amd64

```console
$ docker pull postgres@sha256:6259ee4d52c08daea7c844c5cdf8e6b58ed9b79c98ef082f7d00b8e018ae0a81
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102902418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efecb8c4111a0e3df86385987b7f82c867dc939a8799167a1adff9fbe48e2a55`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 22:27:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 22:27:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 16 Feb 2018 22:27:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 22:27:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Feb 2018 22:27:53 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 16 Feb 2018 22:27:57 GMT
ENV LANG=en_US.utf8
# Fri, 16 Feb 2018 22:27:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Feb 2018 22:28:00 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Feb 2018 22:39:51 GMT
ENV PG_MAJOR=9.3
# Fri, 16 Feb 2018 22:39:51 GMT
ENV PG_VERSION=9.3.21-1.pgdg80+1
# Fri, 16 Feb 2018 22:40:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Feb 2018 22:40:35 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 16 Feb 2018 22:40:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 16 Feb 2018 22:40:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Fri, 16 Feb 2018 22:40:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 16 Feb 2018 22:40:37 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 16 Feb 2018 22:40:37 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 16 Feb 2018 22:40:38 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 16 Feb 2018 22:40:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 22:40:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 22:40:39 GMT
EXPOSE 5432/tcp
# Fri, 16 Feb 2018 22:40:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3acc6da98ed72d943218d117d90be7898ee568f399eabca76690cbd3e31797c`  
		Last Modified: Fri, 16 Feb 2018 22:45:58 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef28401016a4b3225fd60dba2bad65abe3fce4005f63bb7b70ac6fa603637b34`  
		Last Modified: Fri, 16 Feb 2018 22:45:56 GMT  
		Size: 985.2 KB (985219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53d3f24be686c19ccfae1620279b1e9dd4a192ec624ea87966a362a3cacfff8`  
		Last Modified: Fri, 16 Feb 2018 22:46:00 GMT  
		Size: 7.1 MB (7113019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa03ed01c16fd3a7b8bfe9b17c93514e8ea8c8ab12a89bfc98ba7b3a81c336d`  
		Last Modified: Fri, 16 Feb 2018 22:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2f4dc2cd2d3d9bae8409a9ef807322bd14f84dc8ca3fa7ba45c4573057743`  
		Last Modified: Fri, 16 Feb 2018 22:45:56 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08700e5d50ab8f0a1f0159066944e26ae361e3a4729e47b836ad3533c52c07d`  
		Last Modified: Fri, 16 Feb 2018 22:50:01 GMT  
		Size: 42.2 MB (42180453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d904be4ecddde2131eff9b5b126000b1222435fd1e5eaf604a9041ad226bf0f`  
		Last Modified: Fri, 16 Feb 2018 22:49:44 GMT  
		Size: 6.5 KB (6506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955e8f9f02a63268979b71c7cb62ba8791c8944bee2f77f845f0c6c5047bc3e3`  
		Last Modified: Fri, 16 Feb 2018 22:49:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3987491305565bdd15fc3d3f4cc289ef558db3bd64f546bc84001d9b8091a606`  
		Last Modified: Fri, 16 Feb 2018 22:49:44 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5a3e01c4371ca3030414c87adb5f82973d8e5b3148232ff3ee3a641a63b7d7`  
		Last Modified: Fri, 16 Feb 2018 22:49:44 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754989c8ba9d85697f21f6c5768990a53f37d4765ea0275ee946d01bcb3c83d5`  
		Last Modified: Fri, 16 Feb 2018 22:49:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.21` - linux; arm variant v5

```console
$ docker pull postgres@sha256:4983cb51a9a3c169082cd1654398856b764e790354865ac96a73e6f9d4f2b367
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.4 MB (95423869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a09d2cfd72c34057a4da2e1a70e9490f5bc3146da10caef41faf245a7834e4c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:14:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 23:14:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 23:14:11 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 23:14:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 23:15:26 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 23:15:27 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 23:15:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 23:15:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Feb 2018 00:12:18 GMT
ENV PG_MAJOR=9.3
# Fri, 16 Feb 2018 00:12:18 GMT
ENV PG_VERSION=9.3.21-1.pgdg80+1
# Fri, 16 Feb 2018 00:29:33 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Feb 2018 00:29:35 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 16 Feb 2018 00:29:36 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 16 Feb 2018 00:29:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Fri, 16 Feb 2018 00:29:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 16 Feb 2018 00:29:37 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 16 Feb 2018 00:29:38 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 16 Feb 2018 00:29:38 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 16 Feb 2018 00:29:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 00:29:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 00:29:40 GMT
EXPOSE 5432/tcp
# Fri, 16 Feb 2018 00:29:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07616038d7c54354cad573f7607fbe7fb805df1853cd597bc3f49baa3fd0f0a0`  
		Last Modified: Fri, 16 Feb 2018 00:30:30 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312a1bc3c3f2a914f5f574bc2771a4f8c7aea586f555574485bd433a5a73f57f`  
		Last Modified: Fri, 16 Feb 2018 00:30:28 GMT  
		Size: 974.6 KB (974616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a67d033c12ca0dd875c9b9f7728974f34e61203299aa368442f1622920257f`  
		Last Modified: Fri, 16 Feb 2018 00:30:30 GMT  
		Size: 7.1 MB (7112913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcc79a38615c857be9c7b43ea9fdf119de52ee24a0882e6bc2a622cbba1ed28`  
		Last Modified: Fri, 16 Feb 2018 00:30:27 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5fb0af7e9fe55a91632075f057e1dd1ef9f6b6d5cb8d0bf37c2971fdf2ae6d`  
		Last Modified: Fri, 16 Feb 2018 00:30:28 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffcde411742e2f5505d3a009a32fe9c4c3501c49ce4ff1914a06fec444d44ece`  
		Last Modified: Fri, 16 Feb 2018 00:32:58 GMT  
		Size: 36.4 MB (36431228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ee8ae3f6fc324647e63c455b6363c4bb29a7f2cf6d13d5dd6359ea0924a847`  
		Last Modified: Fri, 16 Feb 2018 00:32:46 GMT  
		Size: 6.5 KB (6506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e62840d9e326ee6e26c0eadd689022e84478f97f6dcadc67f38e5bba094173`  
		Last Modified: Fri, 16 Feb 2018 00:32:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0300b372a72b7bcc23bcda9efcce518162d04ed17a42fcf5572e54d5e3a920d`  
		Last Modified: Fri, 16 Feb 2018 00:32:44 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba42351c88c3a0e48a20492d9e55341df23bb3d8415f289242b407bf64f02275`  
		Last Modified: Fri, 16 Feb 2018 00:32:44 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90171313ba070232a2642721bb2b6b9ac4b3c3183fe7058f3fe6186b449b36ac`  
		Last Modified: Fri, 16 Feb 2018 00:32:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.21` - linux; arm variant v7

```console
$ docker pull postgres@sha256:c004bc794d5941e64910b430510eca38e0e8dcade908fa9896d30867a0180841
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.1 MB (92074180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecd4cdd641e5e70dbfcbd23639de0927f9e1c9d23b5c4f0789c08dd04dc32e85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:04:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 16:04:16 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 16:04:21 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:05:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 16:05:39 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 16:05:46 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 16:05:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 16:05:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 16:58:51 GMT
ENV PG_MAJOR=9.3
# Thu, 15 Feb 2018 16:58:51 GMT
ENV PG_VERSION=9.3.21-1.pgdg80+1
# Thu, 15 Feb 2018 17:14:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 17:14:59 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 17:15:00 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 17:15:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Thu, 15 Feb 2018 17:15:01 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 17:15:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 17:15:02 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 17:15:02 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 17:15:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 17:15:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 17:15:05 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 17:15:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfef565a8a4efb359fc4f99bed68debfca1ba6f64793605eb6342fef30c1d567`  
		Last Modified: Thu, 15 Feb 2018 17:16:28 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b32f4370d24d37d4556a5453e261ac16a46b66083541699fd42b3256155d37`  
		Last Modified: Thu, 15 Feb 2018 17:16:26 GMT  
		Size: 959.5 KB (959482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0f2538951ec3250507812e182e1ae2e5eb752e85ee7db09a84919af6f0ef6f`  
		Last Modified: Thu, 15 Feb 2018 17:16:29 GMT  
		Size: 7.1 MB (7112889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8792b0f86860e5a754bf1c7882b06379f42a07740cfad133dc02db04960628`  
		Last Modified: Thu, 15 Feb 2018 17:16:25 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0186d833bb986c938681f1aa65705d09a8174b3de87a502b5d3f9eefe8557e9`  
		Last Modified: Thu, 15 Feb 2018 17:16:25 GMT  
		Size: 4.5 KB (4496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c269f184942f4521eeb5cb54b24caf9d4c52679f48bec2c3d7860438f27c4bf8`  
		Last Modified: Thu, 15 Feb 2018 17:19:06 GMT  
		Size: 35.3 MB (35284911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d40e9c8ea69be85c5df01ee472fd2c361779028ea8c7ff4fac01be5d47799dd`  
		Last Modified: Thu, 15 Feb 2018 17:18:52 GMT  
		Size: 6.5 KB (6509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e3daec050bcd198812d66b0c1ac012cd750573a84664b059bb2dd12526a289`  
		Last Modified: Thu, 15 Feb 2018 17:18:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93b9b9227714cdb9b0b03584bb9efe2d344e56a666ae43c9a6f959bcb0770ee`  
		Last Modified: Thu, 15 Feb 2018 17:18:51 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aacd80036e2a265089242aaac1ab4f1ff119dc74721b9fafa7fb4abea20cc3f9`  
		Last Modified: Thu, 15 Feb 2018 17:18:51 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35613da6c7fe3fe0c14af1ee6225e5deccadb0a8c3dc9660c384d1288f63eadc`  
		Last Modified: Thu, 15 Feb 2018 17:18:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.21` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:e9c3b9d67d2bb8d0574fb9ab9adde4865849e9aa2034c335b6642cedf894f218
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (93991918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d02a5ce33dbf260dc8e2fd1626bde838d53d0b49e1075f04bad1a4e757a90ba8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:26:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:26:22 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 21:26:29 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 21:27:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 21:27:48 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 21:27:57 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 21:27:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 21:28:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 23:09:55 GMT
ENV PG_MAJOR=9.3
# Thu, 15 Feb 2018 23:09:55 GMT
ENV PG_VERSION=9.3.21-1.pgdg80+1
# Thu, 15 Feb 2018 23:37:41 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 23:37:46 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 23:37:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 23:37:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Thu, 15 Feb 2018 23:37:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 23:37:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 23:37:56 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 23:37:58 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 23:38:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 23:38:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 23:38:04 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 23:38:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f54d66e9a9b420613f95a29338712a65a0b57f5cac8fd901dac70b8a1d9c65a`  
		Last Modified: Thu, 15 Feb 2018 23:40:29 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18e950b473f153a9d4987088b80bcd8ee6c09e14ed30a0798d6e8ea88e2597e`  
		Last Modified: Thu, 15 Feb 2018 23:40:26 GMT  
		Size: 952.0 KB (951994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd71e77f07f8383b232b839b66ac104c6fb159e9bf771257f69c6c1222abca86`  
		Last Modified: Thu, 15 Feb 2018 23:40:28 GMT  
		Size: 7.1 MB (7112983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a049cebaa932ffc7b065d515b98898c902b3cfc2c588c75784f26a000f092d`  
		Last Modified: Thu, 15 Feb 2018 23:40:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86456dce79030cc72704bbefb74646c300fbe3f37484230355beb5ae9db8eca8`  
		Last Modified: Thu, 15 Feb 2018 23:40:22 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b6fb9124d57771eec223e8311cb6d5b999b494af65822c9f74da09ae08ca4e`  
		Last Modified: Thu, 15 Feb 2018 23:43:15 GMT  
		Size: 36.0 MB (35977646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c507481215fbdb1296a84a8162c5042efe3baf7a4ec49a0231facea6004a79d8`  
		Last Modified: Thu, 15 Feb 2018 23:42:59 GMT  
		Size: 6.5 KB (6510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4fa5ab8f86d8dd479ab4aa6adca53b8e3c1f0978afcb290dedaf2f9f902ff3`  
		Last Modified: Thu, 15 Feb 2018 23:42:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3dd6cbd5877f01cc42d03f933317f8f78f22b6b1c58e0a6e2e3eb194f587e9c`  
		Last Modified: Thu, 15 Feb 2018 23:43:00 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f006684b684228e5f503c4307f677f50aafaa0e690720a85c7c414f455a9628`  
		Last Modified: Thu, 15 Feb 2018 23:42:59 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2447f84aa1cdb1caac0e9a1c6d7f74b3309b735be5d45132b2d01054ee0ce3`  
		Last Modified: Thu, 15 Feb 2018 23:42:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.21` - linux; 386

```console
$ docker pull postgres@sha256:1f94f18f8d0ad5ce1298ddf693961599d002b6402d1667a56f2e51c85b77f990
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104849150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b3e2b8c6b22d31463343de925c35073d853292c21800f033c72b70c50b60a7`
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
# Mon, 19 Feb 2018 19:04:39 GMT
ENV PG_VERSION=9.3.21-1.pgdg80+1
# Mon, 19 Feb 2018 19:05:47 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 19 Feb 2018 19:05:48 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 19 Feb 2018 19:05:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 19 Feb 2018 19:05:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Mon, 19 Feb 2018 19:05:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 19 Feb 2018 19:05:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 19 Feb 2018 19:05:50 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 19 Feb 2018 19:05:51 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 19 Feb 2018 19:05:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Feb 2018 19:05:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Feb 2018 19:05:52 GMT
EXPOSE 5432/tcp
# Mon, 19 Feb 2018 19:05:52 GMT
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
	-	`sha256:0f9794d60c4d4098f612154164f3583fd33dfce4df0822da9e83e1f4449bcd49`  
		Last Modified: Mon, 19 Feb 2018 20:16:43 GMT  
		Size: 44.0 MB (43969077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33a5403c148fd951998ddb2a4588fa25dfdf96d14779e23a233c149e10c8792d`  
		Last Modified: Mon, 19 Feb 2018 20:16:24 GMT  
		Size: 6.5 KB (6510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb292e8c17c503fa700ed84a72fb31fa4b03c06c4f949cbe4683735d6834af0`  
		Last Modified: Mon, 19 Feb 2018 20:16:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befbc1afc9adba818f8fc406fd9f9f7fa19e284f854093ebc7649ee362e62c8b`  
		Last Modified: Mon, 19 Feb 2018 20:16:25 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b434cafc6373611dda73d58314ea7d918c63e1d2b36b03f2c218142bd8e46294`  
		Last Modified: Mon, 19 Feb 2018 20:16:24 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def54259a28a97944a962d3e4b46fb4ff74586cf0767c470602a06ff90a074b2`  
		Last Modified: Mon, 19 Feb 2018 20:16:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.21` - linux; ppc64le

```console
$ docker pull postgres@sha256:eb4bf605d74046fff4c9d171ee05345c0d08b6f75eb0d4732e5b82330b6c04a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101141259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdc291eabeedebfa4b028591067e1a05b02bcb72020e11c0cb6c02c312093c85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:28:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:28:40 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 07:28:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:31:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 07:32:15 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 07:32:17 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 07:32:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 07:32:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 08:00:51 GMT
ENV PG_MAJOR=9.3
# Thu, 15 Feb 2018 08:00:53 GMT
ENV PG_VERSION=9.3.21-1.pgdg80+1
# Thu, 15 Feb 2018 08:07:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 08:07:45 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 08:07:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 08:07:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Thu, 15 Feb 2018 08:07:59 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 08:08:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 08:08:16 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 08:08:19 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 08:08:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 08:08:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 08:08:36 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 08:08:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da267b8324589d9dc4e670c3c6062a20192c95992f537d5d683fdef57aa712a6`  
		Last Modified: Thu, 15 Feb 2018 08:09:51 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7587129ae2be4d0fa4f30eacad69a9fddce43c621b95417d2c20e346e35bef4`  
		Last Modified: Thu, 15 Feb 2018 08:09:52 GMT  
		Size: 954.3 KB (954287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5051bce96e69b1d77c6f9a54497a975105e13a6824e8eb3f9b8875a0c751d5`  
		Last Modified: Thu, 15 Feb 2018 08:09:52 GMT  
		Size: 7.1 MB (7113193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af2ace6824e7474d6b893aa3cac0f00e28519ae433b07f541dae65d8c174f65`  
		Last Modified: Thu, 15 Feb 2018 08:09:49 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b34189638b620bb4f4aa8ce17a7fc5f513ba02d9f35b8409a0fd52d2b68a4f`  
		Last Modified: Thu, 15 Feb 2018 08:09:49 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d358b412effd8942217c4827508bbcb717d19e08abf2ad9b256c12af704a4f80`  
		Last Modified: Thu, 15 Feb 2018 08:12:25 GMT  
		Size: 41.2 MB (41241195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dd28ec64d06cdd8cdd1f266a9a1a9824e4b31542e967b50a799e1899c186b9`  
		Last Modified: Thu, 15 Feb 2018 08:12:12 GMT  
		Size: 6.5 KB (6506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94b17445ace8ee8159221895cc5eaf581062538f65a3e687ac26c513d6b674b`  
		Last Modified: Thu, 15 Feb 2018 08:12:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c550c4e99331cdb688bc8abdf123e980373679ad1e1f8599a5c6a108f98314`  
		Last Modified: Thu, 15 Feb 2018 08:12:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d28d96af84337c421739e7b997d0782349bdb0e1512b40e5e4da7694a499ba3`  
		Last Modified: Thu, 15 Feb 2018 08:12:11 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca1d5263c993be39e5ba50459acdf49a2d3dbc240526d81327b5d0836ce1526`  
		Last Modified: Thu, 15 Feb 2018 08:12:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.3.21` - linux; s390x

```console
$ docker pull postgres@sha256:2a24a1270c6fe05a6ef5b4d2731a8107f7f6a583ec2feb8c8fd86e6785c783f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99296176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd572537deb62582525fa933849cc612a5b1c717a95597fdc70d31684f87cb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:21:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:21:55 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 07:21:56 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:22:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 07:22:28 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 07:22:28 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 07:22:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 07:22:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 07:48:16 GMT
ENV PG_MAJOR=9.3
# Thu, 15 Feb 2018 07:48:16 GMT
ENV PG_VERSION=9.3.21-1.pgdg80+1
# Thu, 15 Feb 2018 07:55:41 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 07:55:42 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 07:55:43 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 07:55:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.3/bin
# Thu, 15 Feb 2018 07:55:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 07:55:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 07:55:43 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 07:55:44 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:55:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 07:55:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:55:45 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 07:55:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7edd487f82557589b2f080179dcbd1f673858c75433d9e891e95d70a4d48f9`  
		Last Modified: Thu, 15 Feb 2018 07:56:03 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52080ebd673a207dd59acb70defed683edd30768000383bcb091476f6edeb42b`  
		Last Modified: Thu, 15 Feb 2018 07:56:02 GMT  
		Size: 970.3 KB (970259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffaa04760cdbd271208aa1c188633875c8e23ae75d11d48014cf204fa05a9ff`  
		Last Modified: Thu, 15 Feb 2018 07:56:07 GMT  
		Size: 7.1 MB (7131239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8af31c324618b42751431df21b43983c8d95cc49c235bcc434c69aca30e6349`  
		Last Modified: Thu, 15 Feb 2018 07:56:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89096fd23a0029c5441ca3d3adfbbe4230943317bc4f8d9c22b68be95c1908af`  
		Last Modified: Thu, 15 Feb 2018 07:56:01 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b1638317a6eec845797770ac44f49f043fa73b9307bb88e446ae79ff007df27`  
		Last Modified: Thu, 15 Feb 2018 07:57:06 GMT  
		Size: 38.4 MB (38384408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2844ebc25a894bc6a7533473138c0631fd14801588804a545f92369ee0a85ed5`  
		Last Modified: Thu, 15 Feb 2018 07:56:57 GMT  
		Size: 6.5 KB (6509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012a5e895188b79d268e7b4a723f11ba582cc05b3be4b079cb7ff658149a0a4d`  
		Last Modified: Thu, 15 Feb 2018 07:56:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3d3169dca03e12bd4fea0e77be2163bd05c83524498a0794923e53cf72f375c`  
		Last Modified: Thu, 15 Feb 2018 07:56:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6522162ec4726425863446bcdd6f23b8fce2ac8a0b4335fb43f0fb039eac1b`  
		Last Modified: Thu, 15 Feb 2018 07:56:57 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ef3e9b67c267c11c218a1a70de1de4cc5aff1e9ab28f0cf27ac448a93952ca`  
		Last Modified: Thu, 15 Feb 2018 07:56:57 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.21-alpine`

```console
$ docker pull postgres@sha256:6e516dbe227a7d9a89fd11482363bfe0c5a90f22d023e9c7cfc57794cf7a209e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.3.21-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:14ea0e1f3d7d88a1ba58a0498f92305e67686f5a84de4efce2e7a726fec58d7d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13983222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4167306b557a0571bd0a466040d75c987504eff643780dd37b9b67f265139e78`
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
# Fri, 09 Feb 2018 00:11:11 GMT
ENV PG_VERSION=9.3.21
# Fri, 09 Feb 2018 00:11:11 GMT
ENV PG_SHA256=b9babc5148188a410e023d7178a5678e989ec2e276498de6cd0028bc331a40e0
# Fri, 09 Feb 2018 00:11:11 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Fri, 09 Feb 2018 00:11:11 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Fri, 09 Feb 2018 00:13:12 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 09 Feb 2018 00:16:37 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 09 Feb 2018 00:16:38 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Feb 2018 00:16:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Feb 2018 00:16:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Feb 2018 00:16:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Feb 2018 00:16:40 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Fri, 09 Feb 2018 00:16:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Feb 2018 00:16:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Feb 2018 00:16:52 GMT
EXPOSE 5432/tcp
# Fri, 09 Feb 2018 00:16:52 GMT
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
	-	`sha256:dda9c82cb92b3e6d6badb6613ff542c5a8c39660954c5e690deb7acd452ef162`  
		Last Modified: Fri, 09 Feb 2018 00:27:09 GMT  
		Size: 12.0 MB (12004085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981f2b3390d9fecdc6645718be803140c18fbfb353aa7dea7485bb47a5db9079`  
		Last Modified: Fri, 09 Feb 2018 00:26:58 GMT  
		Size: 6.5 KB (6484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d0a1ba92e1781f3f2562f4157b2ef92a832f27ed7ccbf2f8cefdaf38e0258d`  
		Last Modified: Fri, 09 Feb 2018 00:26:58 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecccca6ce41f4af92108972e0ced66167f84ed268a113620da8bb0980a6db09f`  
		Last Modified: Fri, 09 Feb 2018 00:26:58 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b123b2449f9777c939511222580fb3bdc341a8867d66b96dc4ae76926c798d7`  
		Last Modified: Fri, 09 Feb 2018 00:26:58 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82094f5782a7dbe5777d07847ced883bd7af633a457be9f141a5983bb96a9e65`  
		Last Modified: Fri, 09 Feb 2018 00:26:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:6e516dbe227a7d9a89fd11482363bfe0c5a90f22d023e9c7cfc57794cf7a209e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:14ea0e1f3d7d88a1ba58a0498f92305e67686f5a84de4efce2e7a726fec58d7d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13983222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4167306b557a0571bd0a466040d75c987504eff643780dd37b9b67f265139e78`
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
# Fri, 09 Feb 2018 00:11:11 GMT
ENV PG_VERSION=9.3.21
# Fri, 09 Feb 2018 00:11:11 GMT
ENV PG_SHA256=b9babc5148188a410e023d7178a5678e989ec2e276498de6cd0028bc331a40e0
# Fri, 09 Feb 2018 00:11:11 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Fri, 09 Feb 2018 00:11:11 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Fri, 09 Feb 2018 00:13:12 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 09 Feb 2018 00:16:37 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 09 Feb 2018 00:16:38 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Feb 2018 00:16:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Feb 2018 00:16:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Feb 2018 00:16:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Feb 2018 00:16:40 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Fri, 09 Feb 2018 00:16:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Feb 2018 00:16:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Feb 2018 00:16:52 GMT
EXPOSE 5432/tcp
# Fri, 09 Feb 2018 00:16:52 GMT
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
	-	`sha256:dda9c82cb92b3e6d6badb6613ff542c5a8c39660954c5e690deb7acd452ef162`  
		Last Modified: Fri, 09 Feb 2018 00:27:09 GMT  
		Size: 12.0 MB (12004085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981f2b3390d9fecdc6645718be803140c18fbfb353aa7dea7485bb47a5db9079`  
		Last Modified: Fri, 09 Feb 2018 00:26:58 GMT  
		Size: 6.5 KB (6484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d0a1ba92e1781f3f2562f4157b2ef92a832f27ed7ccbf2f8cefdaf38e0258d`  
		Last Modified: Fri, 09 Feb 2018 00:26:58 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecccca6ce41f4af92108972e0ced66167f84ed268a113620da8bb0980a6db09f`  
		Last Modified: Fri, 09 Feb 2018 00:26:58 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b123b2449f9777c939511222580fb3bdc341a8867d66b96dc4ae76926c798d7`  
		Last Modified: Fri, 09 Feb 2018 00:26:58 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82094f5782a7dbe5777d07847ced883bd7af633a457be9f141a5983bb96a9e65`  
		Last Modified: Fri, 09 Feb 2018 00:26:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:6c4d8fd87439a6e7db3c0b3c1edc7beb3ce8df8e30c0589b383a7b1911f21db0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `postgres:9.4` - linux; amd64

```console
$ docker pull postgres@sha256:ac486fb63213a70bc2c91766888f5e33e5a4da8625f15a230b1e4ef1fcf5e0c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.3 MB (103262307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0c7250b6ea357603dfd11eb38cbb0eab1b7b5bbbdc72e085665c077584056a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 22:27:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 22:27:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 16 Feb 2018 22:27:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 22:27:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Feb 2018 22:27:53 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 16 Feb 2018 22:27:57 GMT
ENV LANG=en_US.utf8
# Fri, 16 Feb 2018 22:27:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Feb 2018 22:28:00 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Feb 2018 22:38:43 GMT
ENV PG_MAJOR=9.4
# Fri, 16 Feb 2018 22:38:43 GMT
ENV PG_VERSION=9.4.16-1.pgdg80+1
# Fri, 16 Feb 2018 22:39:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Feb 2018 22:39:31 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 16 Feb 2018 22:39:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 16 Feb 2018 22:39:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 16 Feb 2018 22:39:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 16 Feb 2018 22:39:33 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 16 Feb 2018 22:39:33 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 16 Feb 2018 22:39:33 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 16 Feb 2018 22:39:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 22:39:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 22:39:35 GMT
EXPOSE 5432/tcp
# Fri, 16 Feb 2018 22:39:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3acc6da98ed72d943218d117d90be7898ee568f399eabca76690cbd3e31797c`  
		Last Modified: Fri, 16 Feb 2018 22:45:58 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef28401016a4b3225fd60dba2bad65abe3fce4005f63bb7b70ac6fa603637b34`  
		Last Modified: Fri, 16 Feb 2018 22:45:56 GMT  
		Size: 985.2 KB (985219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53d3f24be686c19ccfae1620279b1e9dd4a192ec624ea87966a362a3cacfff8`  
		Last Modified: Fri, 16 Feb 2018 22:46:00 GMT  
		Size: 7.1 MB (7113019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa03ed01c16fd3a7b8bfe9b17c93514e8ea8c8ab12a89bfc98ba7b3a81c336d`  
		Last Modified: Fri, 16 Feb 2018 22:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2f4dc2cd2d3d9bae8409a9ef807322bd14f84dc8ca3fa7ba45c4573057743`  
		Last Modified: Fri, 16 Feb 2018 22:45:56 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fbef78dc916d6283b06e0f2d8f54d1caa2ee7810b3b981666b2b194535a428`  
		Last Modified: Fri, 16 Feb 2018 22:48:57 GMT  
		Size: 42.5 MB (42540160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e59e2fc7b6d384ca9dda2874fa53712ad86c5357d1438adf424ba5d5318602`  
		Last Modified: Fri, 16 Feb 2018 22:48:41 GMT  
		Size: 6.7 KB (6693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f7a65ca8e6bbb42c34bf09ffe09120d0334a18652641df9c5c57c2388ad782`  
		Last Modified: Fri, 16 Feb 2018 22:48:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bf61bfc5b032a012955fbe4f6f61144282e6e051a2e7392bf6101b9e12b772`  
		Last Modified: Fri, 16 Feb 2018 22:48:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dce4269ba10e36e91cb7f75ceae09b77191b14d75938bbebb28f38189d991d1`  
		Last Modified: Fri, 16 Feb 2018 22:48:41 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99df6b6744e0f6f12abc643c0cb55946b6ed5d93dba92b1d1efc1fe57bc9295`  
		Last Modified: Fri, 16 Feb 2018 22:48:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; arm variant v5

```console
$ docker pull postgres@sha256:acf830708504716ec1cd3a2ccf2db9f10fc1563e8097c1eaa2decb626d3e4318
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95769705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e13a1b8e95177e1e830a48a65ae69a66cad29895695b05edf66cda45a6cad2fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:14:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 23:14:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 23:14:11 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 23:14:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 23:15:26 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 23:15:27 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 23:15:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 23:15:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 23:53:53 GMT
ENV PG_MAJOR=9.4
# Thu, 15 Feb 2018 23:53:53 GMT
ENV PG_VERSION=9.4.16-1.pgdg80+1
# Fri, 16 Feb 2018 00:11:44 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Feb 2018 00:11:45 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 16 Feb 2018 00:11:46 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 16 Feb 2018 00:11:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 16 Feb 2018 00:11:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 16 Feb 2018 00:11:47 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 16 Feb 2018 00:11:47 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 16 Feb 2018 00:11:48 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 16 Feb 2018 00:11:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 00:11:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 00:11:49 GMT
EXPOSE 5432/tcp
# Fri, 16 Feb 2018 00:11:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07616038d7c54354cad573f7607fbe7fb805df1853cd597bc3f49baa3fd0f0a0`  
		Last Modified: Fri, 16 Feb 2018 00:30:30 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312a1bc3c3f2a914f5f574bc2771a4f8c7aea586f555574485bd433a5a73f57f`  
		Last Modified: Fri, 16 Feb 2018 00:30:28 GMT  
		Size: 974.6 KB (974616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a67d033c12ca0dd875c9b9f7728974f34e61203299aa368442f1622920257f`  
		Last Modified: Fri, 16 Feb 2018 00:30:30 GMT  
		Size: 7.1 MB (7112913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcc79a38615c857be9c7b43ea9fdf119de52ee24a0882e6bc2a622cbba1ed28`  
		Last Modified: Fri, 16 Feb 2018 00:30:27 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5fb0af7e9fe55a91632075f057e1dd1ef9f6b6d5cb8d0bf37c2971fdf2ae6d`  
		Last Modified: Fri, 16 Feb 2018 00:30:28 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d756deac650bc3ebc68ca2ee5fe6e124ed85172cb11e5b55f7298c97da571e`  
		Last Modified: Fri, 16 Feb 2018 00:32:19 GMT  
		Size: 36.8 MB (36776872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3ce9ee1d2d7f597509dc2d5e6f0596cf5d0312d717d925e88274c4375dd09a`  
		Last Modified: Fri, 16 Feb 2018 00:32:05 GMT  
		Size: 6.7 KB (6696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253e725c0c6995641e73660891037698665370c44db86122760840b7f8790013`  
		Last Modified: Fri, 16 Feb 2018 00:32:06 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c805849a024b5b4b735549e2296bfdfda4317203018f052249f8510d62d259`  
		Last Modified: Fri, 16 Feb 2018 00:32:05 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5508cea42752d0ad0701f8a0e011c2a3ba53f8dc72a3f4cc9f08cda4ec8cf12`  
		Last Modified: Fri, 16 Feb 2018 00:32:05 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0124d2900c54017f3127ad024fd504292d8272bb8830710be5a1c6f706e6d7`  
		Last Modified: Fri, 16 Feb 2018 00:32:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; arm variant v7

```console
$ docker pull postgres@sha256:33433e980e6abe101468f0103db8a6fe3c440eae6ca40138321f37d0a36b216d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92413019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2074314099a3091b9f963ad7fad859aed40a6282512b09b270954fd968311c86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:04:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 16:04:16 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 16:04:21 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:05:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 16:05:39 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 16:05:46 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 16:05:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 16:05:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 16:41:38 GMT
ENV PG_MAJOR=9.4
# Thu, 15 Feb 2018 16:41:39 GMT
ENV PG_VERSION=9.4.16-1.pgdg80+1
# Thu, 15 Feb 2018 16:58:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 16:58:22 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 16:58:24 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 16:58:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Thu, 15 Feb 2018 16:58:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 16:58:27 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 16:58:28 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 16:58:28 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 16:58:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 16:58:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 16:58:31 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 16:58:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfef565a8a4efb359fc4f99bed68debfca1ba6f64793605eb6342fef30c1d567`  
		Last Modified: Thu, 15 Feb 2018 17:16:28 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b32f4370d24d37d4556a5453e261ac16a46b66083541699fd42b3256155d37`  
		Last Modified: Thu, 15 Feb 2018 17:16:26 GMT  
		Size: 959.5 KB (959482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0f2538951ec3250507812e182e1ae2e5eb752e85ee7db09a84919af6f0ef6f`  
		Last Modified: Thu, 15 Feb 2018 17:16:29 GMT  
		Size: 7.1 MB (7112889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8792b0f86860e5a754bf1c7882b06379f42a07740cfad133dc02db04960628`  
		Last Modified: Thu, 15 Feb 2018 17:16:25 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0186d833bb986c938681f1aa65705d09a8174b3de87a502b5d3f9eefe8557e9`  
		Last Modified: Thu, 15 Feb 2018 17:16:25 GMT  
		Size: 4.5 KB (4496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0edbf2eeed91c00c2295d2fea503ca63c7cfc34afbbf110fbe41c5f0792ea60`  
		Last Modified: Thu, 15 Feb 2018 17:18:24 GMT  
		Size: 35.6 MB (35623570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:172510434d96984c3fca0c9bb384166a6ad8823487dc8e012324bd7d7966fcf1`  
		Last Modified: Thu, 15 Feb 2018 17:18:10 GMT  
		Size: 6.7 KB (6691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84da993ac6b980317b0fe64d4f66610b887775f73360c77066a77962337a4d7`  
		Last Modified: Thu, 15 Feb 2018 17:18:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015cfb72dd2fb78a5269d7d10e55b44d6b16776e564a6d5802829ab844eb8090`  
		Last Modified: Thu, 15 Feb 2018 17:18:10 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c04f7a852fb59e651570a7e1aaae250404d1922355c30a86cd4c93a6845bde2`  
		Last Modified: Thu, 15 Feb 2018 17:18:13 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18156bc6dc072c641e6cb14c0b2a41230f6df9f0ee45461e7aa35470e6308334`  
		Last Modified: Thu, 15 Feb 2018 17:18:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:ca041f80b0bee973e9ff59c810fe89b6555b58619caf7ef78d8bcfc94f162e8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.3 MB (94332005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5822fa13ce9454ebaeb697862805e205cb7fd64e58a5e5be8c8b2c3f0f0453`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:26:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:26:22 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 21:26:29 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 21:27:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 21:27:48 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 21:27:57 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 21:27:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 21:28:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 22:38:49 GMT
ENV PG_MAJOR=9.4
# Thu, 15 Feb 2018 22:38:50 GMT
ENV PG_VERSION=9.4.16-1.pgdg80+1
# Thu, 15 Feb 2018 23:09:00 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 23:09:03 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 23:09:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 23:09:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Thu, 15 Feb 2018 23:09:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 23:09:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 23:09:30 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 23:09:31 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 23:09:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 23:09:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 23:09:34 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 23:09:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f54d66e9a9b420613f95a29338712a65a0b57f5cac8fd901dac70b8a1d9c65a`  
		Last Modified: Thu, 15 Feb 2018 23:40:29 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18e950b473f153a9d4987088b80bcd8ee6c09e14ed30a0798d6e8ea88e2597e`  
		Last Modified: Thu, 15 Feb 2018 23:40:26 GMT  
		Size: 952.0 KB (951994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd71e77f07f8383b232b839b66ac104c6fb159e9bf771257f69c6c1222abca86`  
		Last Modified: Thu, 15 Feb 2018 23:40:28 GMT  
		Size: 7.1 MB (7112983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a049cebaa932ffc7b065d515b98898c902b3cfc2c588c75784f26a000f092d`  
		Last Modified: Thu, 15 Feb 2018 23:40:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86456dce79030cc72704bbefb74646c300fbe3f37484230355beb5ae9db8eca8`  
		Last Modified: Thu, 15 Feb 2018 23:40:22 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6209be8bd4d36f0b809df4b70d5eb73c3146f3c54c347f4f4355604d66dab6a1`  
		Last Modified: Thu, 15 Feb 2018 23:42:22 GMT  
		Size: 36.3 MB (36317549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9b9735630495a642fbc50aa868ae1fa87cd9fb523c141e2f6acc551c15a9d8`  
		Last Modified: Thu, 15 Feb 2018 23:42:05 GMT  
		Size: 6.7 KB (6695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8b5e09057b3c55b9efc9593eb6da639baabac558b235b19bb3ae37eee0464a`  
		Last Modified: Thu, 15 Feb 2018 23:42:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f22e74ca3bf7e8a605b5a854f15125660243a17fcc78d3ca54da83d11cf27ca`  
		Last Modified: Thu, 15 Feb 2018 23:42:05 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dee74a757b0b5d8f130f99d873fac53f102740b58aecec1dfdad8c13e5ef59`  
		Last Modified: Thu, 15 Feb 2018 23:42:05 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3f01112a4ba34c1ccff5c265c091da0050efa7f72a0f8c4b37e66cd82440dc`  
		Last Modified: Thu, 15 Feb 2018 23:42:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; 386

```console
$ docker pull postgres@sha256:1e1a526c990a1c7cb9b88cefba43ab793f7c56c6e9ade4bcde371b960931395a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105226686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2720d0209e024c0f435313ab065b8cfc4ea4b1f3fe4a4da23de57528b6fd9bb6`
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
# Mon, 19 Feb 2018 18:53:57 GMT
ENV PG_VERSION=9.4.16-1.pgdg80+1
# Mon, 19 Feb 2018 18:55:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 19 Feb 2018 18:58:51 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 19 Feb 2018 18:58:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 19 Feb 2018 18:58:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Mon, 19 Feb 2018 18:58:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 19 Feb 2018 18:58:53 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 19 Feb 2018 18:58:54 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 19 Feb 2018 18:58:54 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 19 Feb 2018 18:58:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Feb 2018 18:58:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Feb 2018 18:58:56 GMT
EXPOSE 5432/tcp
# Mon, 19 Feb 2018 18:58:56 GMT
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
	-	`sha256:3b6be5672ba3f82cd33d1bba0a8f0b219d33c8194e19f6528b0f522695b1d362`  
		Last Modified: Mon, 19 Feb 2018 20:05:47 GMT  
		Size: 44.3 MB (44346431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b942be112e6e50f2cb09b0a9f4ac37da62f1b626a65e1b41950b2f2f8c431471`  
		Last Modified: Mon, 19 Feb 2018 20:05:29 GMT  
		Size: 6.7 KB (6694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c704874b106d32c77ec496912562af417338be991075a4a8b903c159dbd9f5f2`  
		Last Modified: Mon, 19 Feb 2018 20:05:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa73a5dad053784ec5fd415bd410d8bfdb0f683be0d68b05bfb47d408d022f0e`  
		Last Modified: Mon, 19 Feb 2018 20:05:29 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806d818b253827da2bff757a49be4a1bf156a0579f36d45d1d40a4f4d8b766e3`  
		Last Modified: Mon, 19 Feb 2018 20:05:29 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb408911ce73d028590605d0baedc3126de48a4511425332fcf64ed8457a13d1`  
		Last Modified: Mon, 19 Feb 2018 20:05:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4` - linux; ppc64le

```console
$ docker pull postgres@sha256:8d5cf91c01488a5d93f5050b2d36c9a26c4307df4b3f843c50d83e3160ec6d8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101493016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0f9d12e2fc4e0eb260ec2a19072c10c49af3121f8ac888b669f8760da023e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:28:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:28:40 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 07:28:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:31:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 07:32:15 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 07:32:17 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 07:32:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 07:32:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 07:52:21 GMT
ENV PG_MAJOR=9.4
# Thu, 15 Feb 2018 07:52:23 GMT
ENV PG_VERSION=9.4.16-1.pgdg80+1
# Thu, 15 Feb 2018 07:59:57 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 08:00:03 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 08:00:09 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 08:00:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Thu, 15 Feb 2018 08:00:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 08:00:16 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 08:00:18 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 08:00:21 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 08:00:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 08:00:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 08:00:34 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 08:00:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da267b8324589d9dc4e670c3c6062a20192c95992f537d5d683fdef57aa712a6`  
		Last Modified: Thu, 15 Feb 2018 08:09:51 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7587129ae2be4d0fa4f30eacad69a9fddce43c621b95417d2c20e346e35bef4`  
		Last Modified: Thu, 15 Feb 2018 08:09:52 GMT  
		Size: 954.3 KB (954287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5051bce96e69b1d77c6f9a54497a975105e13a6824e8eb3f9b8875a0c751d5`  
		Last Modified: Thu, 15 Feb 2018 08:09:52 GMT  
		Size: 7.1 MB (7113193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af2ace6824e7474d6b893aa3cac0f00e28519ae433b07f541dae65d8c174f65`  
		Last Modified: Thu, 15 Feb 2018 08:09:49 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b34189638b620bb4f4aa8ce17a7fc5f513ba02d9f35b8409a0fd52d2b68a4f`  
		Last Modified: Thu, 15 Feb 2018 08:09:49 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e79ca56ee37fae88de94ed6db3559693c6f72672be968b7e059d286f134bcb0`  
		Last Modified: Thu, 15 Feb 2018 08:11:52 GMT  
		Size: 41.6 MB (41592768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e130c9a43e764b232abbb14a68abd224eaa7019c7ad21ef0c12407c455e86051`  
		Last Modified: Thu, 15 Feb 2018 08:11:09 GMT  
		Size: 6.7 KB (6692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41a4d46522e418d332be49243eeec8cca0149f43430c01fa4784d8eca88ea70`  
		Last Modified: Thu, 15 Feb 2018 08:11:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde4a423770eec934cb241c5e3d00975bc539aef217ad90290552d9690048bf8`  
		Last Modified: Thu, 15 Feb 2018 08:11:10 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f65dc497922a75f35a6f8603be2911893be69c4abebc95a47224017de57d56`  
		Last Modified: Thu, 15 Feb 2018 08:11:10 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa741a5a0e959eaa20fe4bf6215e8560c24495bf99cc9ff94bf3a2334eaf4163`  
		Last Modified: Thu, 15 Feb 2018 08:11:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.16`

```console
$ docker pull postgres@sha256:6c4d8fd87439a6e7db3c0b3c1edc7beb3ce8df8e30c0589b383a7b1911f21db0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `postgres:9.4.16` - linux; amd64

```console
$ docker pull postgres@sha256:ac486fb63213a70bc2c91766888f5e33e5a4da8625f15a230b1e4ef1fcf5e0c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.3 MB (103262307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0c7250b6ea357603dfd11eb38cbb0eab1b7b5bbbdc72e085665c077584056a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 22:27:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 22:27:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 16 Feb 2018 22:27:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 22:27:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Feb 2018 22:27:53 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 16 Feb 2018 22:27:57 GMT
ENV LANG=en_US.utf8
# Fri, 16 Feb 2018 22:27:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Feb 2018 22:28:00 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Feb 2018 22:38:43 GMT
ENV PG_MAJOR=9.4
# Fri, 16 Feb 2018 22:38:43 GMT
ENV PG_VERSION=9.4.16-1.pgdg80+1
# Fri, 16 Feb 2018 22:39:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Feb 2018 22:39:31 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 16 Feb 2018 22:39:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 16 Feb 2018 22:39:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 16 Feb 2018 22:39:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 16 Feb 2018 22:39:33 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 16 Feb 2018 22:39:33 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 16 Feb 2018 22:39:33 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 16 Feb 2018 22:39:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 22:39:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 22:39:35 GMT
EXPOSE 5432/tcp
# Fri, 16 Feb 2018 22:39:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3acc6da98ed72d943218d117d90be7898ee568f399eabca76690cbd3e31797c`  
		Last Modified: Fri, 16 Feb 2018 22:45:58 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef28401016a4b3225fd60dba2bad65abe3fce4005f63bb7b70ac6fa603637b34`  
		Last Modified: Fri, 16 Feb 2018 22:45:56 GMT  
		Size: 985.2 KB (985219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53d3f24be686c19ccfae1620279b1e9dd4a192ec624ea87966a362a3cacfff8`  
		Last Modified: Fri, 16 Feb 2018 22:46:00 GMT  
		Size: 7.1 MB (7113019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa03ed01c16fd3a7b8bfe9b17c93514e8ea8c8ab12a89bfc98ba7b3a81c336d`  
		Last Modified: Fri, 16 Feb 2018 22:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2f4dc2cd2d3d9bae8409a9ef807322bd14f84dc8ca3fa7ba45c4573057743`  
		Last Modified: Fri, 16 Feb 2018 22:45:56 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fbef78dc916d6283b06e0f2d8f54d1caa2ee7810b3b981666b2b194535a428`  
		Last Modified: Fri, 16 Feb 2018 22:48:57 GMT  
		Size: 42.5 MB (42540160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e59e2fc7b6d384ca9dda2874fa53712ad86c5357d1438adf424ba5d5318602`  
		Last Modified: Fri, 16 Feb 2018 22:48:41 GMT  
		Size: 6.7 KB (6693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f7a65ca8e6bbb42c34bf09ffe09120d0334a18652641df9c5c57c2388ad782`  
		Last Modified: Fri, 16 Feb 2018 22:48:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bf61bfc5b032a012955fbe4f6f61144282e6e051a2e7392bf6101b9e12b772`  
		Last Modified: Fri, 16 Feb 2018 22:48:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dce4269ba10e36e91cb7f75ceae09b77191b14d75938bbebb28f38189d991d1`  
		Last Modified: Fri, 16 Feb 2018 22:48:41 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99df6b6744e0f6f12abc643c0cb55946b6ed5d93dba92b1d1efc1fe57bc9295`  
		Last Modified: Fri, 16 Feb 2018 22:48:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.16` - linux; arm variant v5

```console
$ docker pull postgres@sha256:acf830708504716ec1cd3a2ccf2db9f10fc1563e8097c1eaa2decb626d3e4318
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95769705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e13a1b8e95177e1e830a48a65ae69a66cad29895695b05edf66cda45a6cad2fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:14:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 23:14:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 23:14:11 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 23:14:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 23:15:26 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 23:15:27 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 23:15:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 23:15:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 23:53:53 GMT
ENV PG_MAJOR=9.4
# Thu, 15 Feb 2018 23:53:53 GMT
ENV PG_VERSION=9.4.16-1.pgdg80+1
# Fri, 16 Feb 2018 00:11:44 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Feb 2018 00:11:45 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 16 Feb 2018 00:11:46 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 16 Feb 2018 00:11:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Fri, 16 Feb 2018 00:11:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 16 Feb 2018 00:11:47 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 16 Feb 2018 00:11:47 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 16 Feb 2018 00:11:48 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 16 Feb 2018 00:11:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 00:11:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 00:11:49 GMT
EXPOSE 5432/tcp
# Fri, 16 Feb 2018 00:11:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07616038d7c54354cad573f7607fbe7fb805df1853cd597bc3f49baa3fd0f0a0`  
		Last Modified: Fri, 16 Feb 2018 00:30:30 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312a1bc3c3f2a914f5f574bc2771a4f8c7aea586f555574485bd433a5a73f57f`  
		Last Modified: Fri, 16 Feb 2018 00:30:28 GMT  
		Size: 974.6 KB (974616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a67d033c12ca0dd875c9b9f7728974f34e61203299aa368442f1622920257f`  
		Last Modified: Fri, 16 Feb 2018 00:30:30 GMT  
		Size: 7.1 MB (7112913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcc79a38615c857be9c7b43ea9fdf119de52ee24a0882e6bc2a622cbba1ed28`  
		Last Modified: Fri, 16 Feb 2018 00:30:27 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5fb0af7e9fe55a91632075f057e1dd1ef9f6b6d5cb8d0bf37c2971fdf2ae6d`  
		Last Modified: Fri, 16 Feb 2018 00:30:28 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d756deac650bc3ebc68ca2ee5fe6e124ed85172cb11e5b55f7298c97da571e`  
		Last Modified: Fri, 16 Feb 2018 00:32:19 GMT  
		Size: 36.8 MB (36776872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3ce9ee1d2d7f597509dc2d5e6f0596cf5d0312d717d925e88274c4375dd09a`  
		Last Modified: Fri, 16 Feb 2018 00:32:05 GMT  
		Size: 6.7 KB (6696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253e725c0c6995641e73660891037698665370c44db86122760840b7f8790013`  
		Last Modified: Fri, 16 Feb 2018 00:32:06 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c805849a024b5b4b735549e2296bfdfda4317203018f052249f8510d62d259`  
		Last Modified: Fri, 16 Feb 2018 00:32:05 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5508cea42752d0ad0701f8a0e011c2a3ba53f8dc72a3f4cc9f08cda4ec8cf12`  
		Last Modified: Fri, 16 Feb 2018 00:32:05 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0124d2900c54017f3127ad024fd504292d8272bb8830710be5a1c6f706e6d7`  
		Last Modified: Fri, 16 Feb 2018 00:32:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.16` - linux; arm variant v7

```console
$ docker pull postgres@sha256:33433e980e6abe101468f0103db8a6fe3c440eae6ca40138321f37d0a36b216d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92413019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2074314099a3091b9f963ad7fad859aed40a6282512b09b270954fd968311c86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:04:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 16:04:16 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 16:04:21 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:05:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 16:05:39 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 16:05:46 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 16:05:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 16:05:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 16:41:38 GMT
ENV PG_MAJOR=9.4
# Thu, 15 Feb 2018 16:41:39 GMT
ENV PG_VERSION=9.4.16-1.pgdg80+1
# Thu, 15 Feb 2018 16:58:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 16:58:22 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 16:58:24 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 16:58:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Thu, 15 Feb 2018 16:58:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 16:58:27 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 16:58:28 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 16:58:28 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 16:58:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 16:58:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 16:58:31 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 16:58:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfef565a8a4efb359fc4f99bed68debfca1ba6f64793605eb6342fef30c1d567`  
		Last Modified: Thu, 15 Feb 2018 17:16:28 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b32f4370d24d37d4556a5453e261ac16a46b66083541699fd42b3256155d37`  
		Last Modified: Thu, 15 Feb 2018 17:16:26 GMT  
		Size: 959.5 KB (959482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0f2538951ec3250507812e182e1ae2e5eb752e85ee7db09a84919af6f0ef6f`  
		Last Modified: Thu, 15 Feb 2018 17:16:29 GMT  
		Size: 7.1 MB (7112889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8792b0f86860e5a754bf1c7882b06379f42a07740cfad133dc02db04960628`  
		Last Modified: Thu, 15 Feb 2018 17:16:25 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0186d833bb986c938681f1aa65705d09a8174b3de87a502b5d3f9eefe8557e9`  
		Last Modified: Thu, 15 Feb 2018 17:16:25 GMT  
		Size: 4.5 KB (4496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0edbf2eeed91c00c2295d2fea503ca63c7cfc34afbbf110fbe41c5f0792ea60`  
		Last Modified: Thu, 15 Feb 2018 17:18:24 GMT  
		Size: 35.6 MB (35623570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:172510434d96984c3fca0c9bb384166a6ad8823487dc8e012324bd7d7966fcf1`  
		Last Modified: Thu, 15 Feb 2018 17:18:10 GMT  
		Size: 6.7 KB (6691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84da993ac6b980317b0fe64d4f66610b887775f73360c77066a77962337a4d7`  
		Last Modified: Thu, 15 Feb 2018 17:18:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015cfb72dd2fb78a5269d7d10e55b44d6b16776e564a6d5802829ab844eb8090`  
		Last Modified: Thu, 15 Feb 2018 17:18:10 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c04f7a852fb59e651570a7e1aaae250404d1922355c30a86cd4c93a6845bde2`  
		Last Modified: Thu, 15 Feb 2018 17:18:13 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18156bc6dc072c641e6cb14c0b2a41230f6df9f0ee45461e7aa35470e6308334`  
		Last Modified: Thu, 15 Feb 2018 17:18:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.16` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:ca041f80b0bee973e9ff59c810fe89b6555b58619caf7ef78d8bcfc94f162e8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.3 MB (94332005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5822fa13ce9454ebaeb697862805e205cb7fd64e58a5e5be8c8b2c3f0f0453`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:26:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:26:22 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 21:26:29 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 21:27:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 21:27:48 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 21:27:57 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 21:27:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 21:28:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 22:38:49 GMT
ENV PG_MAJOR=9.4
# Thu, 15 Feb 2018 22:38:50 GMT
ENV PG_VERSION=9.4.16-1.pgdg80+1
# Thu, 15 Feb 2018 23:09:00 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 23:09:03 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 23:09:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 23:09:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Thu, 15 Feb 2018 23:09:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 23:09:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 23:09:30 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 23:09:31 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 23:09:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 23:09:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 23:09:34 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 23:09:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f54d66e9a9b420613f95a29338712a65a0b57f5cac8fd901dac70b8a1d9c65a`  
		Last Modified: Thu, 15 Feb 2018 23:40:29 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18e950b473f153a9d4987088b80bcd8ee6c09e14ed30a0798d6e8ea88e2597e`  
		Last Modified: Thu, 15 Feb 2018 23:40:26 GMT  
		Size: 952.0 KB (951994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd71e77f07f8383b232b839b66ac104c6fb159e9bf771257f69c6c1222abca86`  
		Last Modified: Thu, 15 Feb 2018 23:40:28 GMT  
		Size: 7.1 MB (7112983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a049cebaa932ffc7b065d515b98898c902b3cfc2c588c75784f26a000f092d`  
		Last Modified: Thu, 15 Feb 2018 23:40:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86456dce79030cc72704bbefb74646c300fbe3f37484230355beb5ae9db8eca8`  
		Last Modified: Thu, 15 Feb 2018 23:40:22 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6209be8bd4d36f0b809df4b70d5eb73c3146f3c54c347f4f4355604d66dab6a1`  
		Last Modified: Thu, 15 Feb 2018 23:42:22 GMT  
		Size: 36.3 MB (36317549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9b9735630495a642fbc50aa868ae1fa87cd9fb523c141e2f6acc551c15a9d8`  
		Last Modified: Thu, 15 Feb 2018 23:42:05 GMT  
		Size: 6.7 KB (6695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8b5e09057b3c55b9efc9593eb6da639baabac558b235b19bb3ae37eee0464a`  
		Last Modified: Thu, 15 Feb 2018 23:42:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f22e74ca3bf7e8a605b5a854f15125660243a17fcc78d3ca54da83d11cf27ca`  
		Last Modified: Thu, 15 Feb 2018 23:42:05 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dee74a757b0b5d8f130f99d873fac53f102740b58aecec1dfdad8c13e5ef59`  
		Last Modified: Thu, 15 Feb 2018 23:42:05 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3f01112a4ba34c1ccff5c265c091da0050efa7f72a0f8c4b37e66cd82440dc`  
		Last Modified: Thu, 15 Feb 2018 23:42:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.16` - linux; 386

```console
$ docker pull postgres@sha256:1e1a526c990a1c7cb9b88cefba43ab793f7c56c6e9ade4bcde371b960931395a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.2 MB (105226686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2720d0209e024c0f435313ab065b8cfc4ea4b1f3fe4a4da23de57528b6fd9bb6`
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
# Mon, 19 Feb 2018 18:53:57 GMT
ENV PG_VERSION=9.4.16-1.pgdg80+1
# Mon, 19 Feb 2018 18:55:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 19 Feb 2018 18:58:51 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 19 Feb 2018 18:58:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 19 Feb 2018 18:58:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Mon, 19 Feb 2018 18:58:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 19 Feb 2018 18:58:53 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 19 Feb 2018 18:58:54 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 19 Feb 2018 18:58:54 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 19 Feb 2018 18:58:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Feb 2018 18:58:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Feb 2018 18:58:56 GMT
EXPOSE 5432/tcp
# Mon, 19 Feb 2018 18:58:56 GMT
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
	-	`sha256:3b6be5672ba3f82cd33d1bba0a8f0b219d33c8194e19f6528b0f522695b1d362`  
		Last Modified: Mon, 19 Feb 2018 20:05:47 GMT  
		Size: 44.3 MB (44346431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b942be112e6e50f2cb09b0a9f4ac37da62f1b626a65e1b41950b2f2f8c431471`  
		Last Modified: Mon, 19 Feb 2018 20:05:29 GMT  
		Size: 6.7 KB (6694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c704874b106d32c77ec496912562af417338be991075a4a8b903c159dbd9f5f2`  
		Last Modified: Mon, 19 Feb 2018 20:05:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa73a5dad053784ec5fd415bd410d8bfdb0f683be0d68b05bfb47d408d022f0e`  
		Last Modified: Mon, 19 Feb 2018 20:05:29 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806d818b253827da2bff757a49be4a1bf156a0579f36d45d1d40a4f4d8b766e3`  
		Last Modified: Mon, 19 Feb 2018 20:05:29 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb408911ce73d028590605d0baedc3126de48a4511425332fcf64ed8457a13d1`  
		Last Modified: Mon, 19 Feb 2018 20:05:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.4.16` - linux; ppc64le

```console
$ docker pull postgres@sha256:8d5cf91c01488a5d93f5050b2d36c9a26c4307df4b3f843c50d83e3160ec6d8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101493016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0f9d12e2fc4e0eb260ec2a19072c10c49af3121f8ac888b669f8760da023e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:28:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:28:40 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 07:28:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:31:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 07:32:15 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 07:32:17 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 07:32:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 07:32:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 07:52:21 GMT
ENV PG_MAJOR=9.4
# Thu, 15 Feb 2018 07:52:23 GMT
ENV PG_VERSION=9.4.16-1.pgdg80+1
# Thu, 15 Feb 2018 07:59:57 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 08:00:03 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 08:00:09 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 08:00:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.4/bin
# Thu, 15 Feb 2018 08:00:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 08:00:16 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 08:00:18 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 08:00:21 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 08:00:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 08:00:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 08:00:34 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 08:00:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da267b8324589d9dc4e670c3c6062a20192c95992f537d5d683fdef57aa712a6`  
		Last Modified: Thu, 15 Feb 2018 08:09:51 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7587129ae2be4d0fa4f30eacad69a9fddce43c621b95417d2c20e346e35bef4`  
		Last Modified: Thu, 15 Feb 2018 08:09:52 GMT  
		Size: 954.3 KB (954287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5051bce96e69b1d77c6f9a54497a975105e13a6824e8eb3f9b8875a0c751d5`  
		Last Modified: Thu, 15 Feb 2018 08:09:52 GMT  
		Size: 7.1 MB (7113193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af2ace6824e7474d6b893aa3cac0f00e28519ae433b07f541dae65d8c174f65`  
		Last Modified: Thu, 15 Feb 2018 08:09:49 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b34189638b620bb4f4aa8ce17a7fc5f513ba02d9f35b8409a0fd52d2b68a4f`  
		Last Modified: Thu, 15 Feb 2018 08:09:49 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e79ca56ee37fae88de94ed6db3559693c6f72672be968b7e059d286f134bcb0`  
		Last Modified: Thu, 15 Feb 2018 08:11:52 GMT  
		Size: 41.6 MB (41592768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e130c9a43e764b232abbb14a68abd224eaa7019c7ad21ef0c12407c455e86051`  
		Last Modified: Thu, 15 Feb 2018 08:11:09 GMT  
		Size: 6.7 KB (6692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41a4d46522e418d332be49243eeec8cca0149f43430c01fa4784d8eca88ea70`  
		Last Modified: Thu, 15 Feb 2018 08:11:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde4a423770eec934cb241c5e3d00975bc539aef217ad90290552d9690048bf8`  
		Last Modified: Thu, 15 Feb 2018 08:11:10 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f65dc497922a75f35a6f8603be2911893be69c4abebc95a47224017de57d56`  
		Last Modified: Thu, 15 Feb 2018 08:11:10 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa741a5a0e959eaa20fe4bf6215e8560c24495bf99cc9ff94bf3a2334eaf4163`  
		Last Modified: Thu, 15 Feb 2018 08:11:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.16-alpine`

```console
$ docker pull postgres@sha256:29ac9a4257cee820f5b89e2cbc4f4f5e57a40dedd5adc9bbb2f9f4f540791512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4.16-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:75ca501798db6eaa01ce5960f11149c8c51fe92d195460d22fef4e7ccea273e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14272570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c8ef60b5d25effea8d4a44dfa064bafbfb62dba9e14016be3fcfde000e278b9`
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
# Fri, 09 Feb 2018 00:06:37 GMT
ENV PG_VERSION=9.4.16
# Fri, 09 Feb 2018 00:06:37 GMT
ENV PG_SHA256=dcbc62b621e4d8a445c2f33750f7d96257c38103cccebeb934e6913a3c135e81
# Fri, 09 Feb 2018 00:09:09 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 09 Feb 2018 00:09:20 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 09 Feb 2018 00:09:21 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Feb 2018 00:09:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Feb 2018 00:09:22 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Feb 2018 00:09:22 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Feb 2018 00:09:23 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Fri, 09 Feb 2018 00:09:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Feb 2018 00:09:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Feb 2018 00:09:24 GMT
EXPOSE 5432/tcp
# Fri, 09 Feb 2018 00:09:25 GMT
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
	-	`sha256:62db794bc4bdede373fcfe3f9582ea1fac28240427450efec89718050704f877`  
		Last Modified: Fri, 09 Feb 2018 00:25:06 GMT  
		Size: 12.3 MB (12293258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff45283b5ae8c493942913996e2bf7ae783bf340698bf0faa67958fd06faa625`  
		Last Modified: Fri, 09 Feb 2018 00:24:57 GMT  
		Size: 6.7 KB (6661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22eee986fe1ae02c3a30245c8eceeb16c352fc2773a60f9efa115d19cf99f98c`  
		Last Modified: Fri, 09 Feb 2018 00:24:57 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70e5a5900c18de6e9aa60c20c0a7e4db089cfacc80a0c502804a64aa0f69763`  
		Last Modified: Fri, 09 Feb 2018 00:24:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6d95350ed7c54706e1601f197e6507337c89a03585f046aa9b28de1aff585e`  
		Last Modified: Fri, 09 Feb 2018 00:24:57 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7041a5e2c022c8779a55b63d3363c3f64522d559fb0e31524ddd5e144d88b595`  
		Last Modified: Fri, 09 Feb 2018 00:24:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:29ac9a4257cee820f5b89e2cbc4f4f5e57a40dedd5adc9bbb2f9f4f540791512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:75ca501798db6eaa01ce5960f11149c8c51fe92d195460d22fef4e7ccea273e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14272570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c8ef60b5d25effea8d4a44dfa064bafbfb62dba9e14016be3fcfde000e278b9`
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
# Fri, 09 Feb 2018 00:06:37 GMT
ENV PG_VERSION=9.4.16
# Fri, 09 Feb 2018 00:06:37 GMT
ENV PG_SHA256=dcbc62b621e4d8a445c2f33750f7d96257c38103cccebeb934e6913a3c135e81
# Fri, 09 Feb 2018 00:09:09 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 09 Feb 2018 00:09:20 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 09 Feb 2018 00:09:21 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Feb 2018 00:09:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Feb 2018 00:09:22 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Feb 2018 00:09:22 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Feb 2018 00:09:23 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Fri, 09 Feb 2018 00:09:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Feb 2018 00:09:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Feb 2018 00:09:24 GMT
EXPOSE 5432/tcp
# Fri, 09 Feb 2018 00:09:25 GMT
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
	-	`sha256:62db794bc4bdede373fcfe3f9582ea1fac28240427450efec89718050704f877`  
		Last Modified: Fri, 09 Feb 2018 00:25:06 GMT  
		Size: 12.3 MB (12293258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff45283b5ae8c493942913996e2bf7ae783bf340698bf0faa67958fd06faa625`  
		Last Modified: Fri, 09 Feb 2018 00:24:57 GMT  
		Size: 6.7 KB (6661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22eee986fe1ae02c3a30245c8eceeb16c352fc2773a60f9efa115d19cf99f98c`  
		Last Modified: Fri, 09 Feb 2018 00:24:57 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70e5a5900c18de6e9aa60c20c0a7e4db089cfacc80a0c502804a64aa0f69763`  
		Last Modified: Fri, 09 Feb 2018 00:24:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6d95350ed7c54706e1601f197e6507337c89a03585f046aa9b28de1aff585e`  
		Last Modified: Fri, 09 Feb 2018 00:24:57 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7041a5e2c022c8779a55b63d3363c3f64522d559fb0e31524ddd5e144d88b595`  
		Last Modified: Fri, 09 Feb 2018 00:24:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:a1704c1c922a965e9e209d8da9bd763b1ce224d1200e96839ff44b6384a239ab
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
$ docker pull postgres@sha256:8b6f65b70be5ddbe163a5fc230fd8b3dcf3304f1a294c3ffc9971365b990e640
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.6 MB (103605821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec0c2f44424403f1db9689d6a2931def7568ae73633c596c564fa9c0ea401448`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 22:27:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 22:27:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 16 Feb 2018 22:27:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 22:27:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Feb 2018 22:27:53 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 16 Feb 2018 22:27:57 GMT
ENV LANG=en_US.utf8
# Fri, 16 Feb 2018 22:27:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Feb 2018 22:28:00 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Feb 2018 22:36:55 GMT
ENV PG_MAJOR=9.5
# Fri, 16 Feb 2018 22:36:55 GMT
ENV PG_VERSION=9.5.11-1.pgdg80+1
# Fri, 16 Feb 2018 22:37:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Feb 2018 22:37:39 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 16 Feb 2018 22:37:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 16 Feb 2018 22:37:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 16 Feb 2018 22:37:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 16 Feb 2018 22:37:41 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 16 Feb 2018 22:37:41 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 16 Feb 2018 22:37:42 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 16 Feb 2018 22:37:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 22:37:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 22:37:44 GMT
EXPOSE 5432/tcp
# Fri, 16 Feb 2018 22:37:44 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3acc6da98ed72d943218d117d90be7898ee568f399eabca76690cbd3e31797c`  
		Last Modified: Fri, 16 Feb 2018 22:45:58 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef28401016a4b3225fd60dba2bad65abe3fce4005f63bb7b70ac6fa603637b34`  
		Last Modified: Fri, 16 Feb 2018 22:45:56 GMT  
		Size: 985.2 KB (985219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53d3f24be686c19ccfae1620279b1e9dd4a192ec624ea87966a362a3cacfff8`  
		Last Modified: Fri, 16 Feb 2018 22:46:00 GMT  
		Size: 7.1 MB (7113019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa03ed01c16fd3a7b8bfe9b17c93514e8ea8c8ab12a89bfc98ba7b3a81c336d`  
		Last Modified: Fri, 16 Feb 2018 22:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2f4dc2cd2d3d9bae8409a9ef807322bd14f84dc8ca3fa7ba45c4573057743`  
		Last Modified: Fri, 16 Feb 2018 22:45:56 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0881caf8ad0f95a02564e5b06ff80772a6cb5bd6a64fe02a57ff91cf31ce1bad`  
		Last Modified: Fri, 16 Feb 2018 22:47:51 GMT  
		Size: 42.9 MB (42883529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884399790c8efb87fd343f8f2fb50a808eecd4b77ca968cf95d769955fc2c6a8`  
		Last Modified: Fri, 16 Feb 2018 22:47:25 GMT  
		Size: 6.8 KB (6836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821fb89c92b4c9a1d0ceb9bf7ecc7720852865ac6bb0885d4c38b0de004f031d`  
		Last Modified: Fri, 16 Feb 2018 22:47:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4a9b13b2084987287e1e892c5c7654284f2bfd3af8aa21525e0e7d10c176ed`  
		Last Modified: Fri, 16 Feb 2018 22:47:25 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb69f7472417ed61c0c0abf28be5b604e48e6f5cbe3f9a3e6395e558d2b2bec6`  
		Last Modified: Fri, 16 Feb 2018 22:47:25 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc38c77a90da01340e653c22b8487b2719331affbb680537406c56b566389707`  
		Last Modified: Fri, 16 Feb 2018 22:47:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; arm variant v5

```console
$ docker pull postgres@sha256:0a60d60ee66a05a6df60d07dcd85042ed4c3c1fb9fe2eba38c6a790ad0600250
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96089371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93ca7b399e8358a413f0cf5b76c5498bdd8f3f6b11e0f5c3a17376dda568a26d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:14:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 23:14:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 23:14:11 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 23:14:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 23:15:26 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 23:15:27 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 23:15:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 23:15:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 23:35:24 GMT
ENV PG_MAJOR=9.5
# Thu, 15 Feb 2018 23:35:24 GMT
ENV PG_VERSION=9.5.11-1.pgdg80+1
# Thu, 15 Feb 2018 23:53:15 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 23:53:18 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 23:53:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 23:53:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Thu, 15 Feb 2018 23:53:19 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 23:53:20 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 23:53:20 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 23:53:20 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 23:53:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 23:53:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 23:53:22 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 23:53:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07616038d7c54354cad573f7607fbe7fb805df1853cd597bc3f49baa3fd0f0a0`  
		Last Modified: Fri, 16 Feb 2018 00:30:30 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312a1bc3c3f2a914f5f574bc2771a4f8c7aea586f555574485bd433a5a73f57f`  
		Last Modified: Fri, 16 Feb 2018 00:30:28 GMT  
		Size: 974.6 KB (974616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a67d033c12ca0dd875c9b9f7728974f34e61203299aa368442f1622920257f`  
		Last Modified: Fri, 16 Feb 2018 00:30:30 GMT  
		Size: 7.1 MB (7112913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcc79a38615c857be9c7b43ea9fdf119de52ee24a0882e6bc2a622cbba1ed28`  
		Last Modified: Fri, 16 Feb 2018 00:30:27 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5fb0af7e9fe55a91632075f057e1dd1ef9f6b6d5cb8d0bf37c2971fdf2ae6d`  
		Last Modified: Fri, 16 Feb 2018 00:30:28 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299996c1a6ab2b50e965c56dc1f29364f22d27d471e3ef4f2c62ddc407aa69c7`  
		Last Modified: Fri, 16 Feb 2018 00:31:37 GMT  
		Size: 37.1 MB (37096403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5636f98c2dbfb07fdd61e41e08aee2eeb00ae11d0604ce90294c4c798842da59`  
		Last Modified: Fri, 16 Feb 2018 00:31:22 GMT  
		Size: 6.8 KB (6834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5027e7a7b0fb46c2db5402e434611c0880e02c95e6aecb5b2a4e0b9174eaa9c7`  
		Last Modified: Fri, 16 Feb 2018 00:31:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f496b19bb06ed7d4477ecaae4e7f189e2cbe41bd7975c2ddb5c5b61b9da3800`  
		Last Modified: Fri, 16 Feb 2018 00:31:22 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf306c59e02975705e4e935085b4338d1ebea6212ffec6cbd289975b51c850c`  
		Last Modified: Fri, 16 Feb 2018 00:31:22 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b21a22c005996eaa26db581cb9f5a788ed8853a7a5b2f65c5f1192e1e93562`  
		Last Modified: Thu, 15 Feb 2018 23:53:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; arm variant v7

```console
$ docker pull postgres@sha256:3f467435860da3905d2715e0635d6df88dbe6aa4cca93e559692be30921abbe9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92712701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c00ebb89c918e50b7408859302c25286800397cb3fd02d5097026facc0e52bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:04:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 16:04:16 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 16:04:21 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:05:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 16:05:39 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 16:05:46 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 16:05:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 16:05:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 16:24:19 GMT
ENV PG_MAJOR=9.5
# Thu, 15 Feb 2018 16:24:20 GMT
ENV PG_VERSION=9.5.11-1.pgdg80+1
# Thu, 15 Feb 2018 16:41:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 16:41:14 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 16:41:15 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 16:41:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Thu, 15 Feb 2018 16:41:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 16:41:16 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 16:41:16 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 16:41:17 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 16:41:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 16:41:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 16:41:18 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 16:41:18 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfef565a8a4efb359fc4f99bed68debfca1ba6f64793605eb6342fef30c1d567`  
		Last Modified: Thu, 15 Feb 2018 17:16:28 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b32f4370d24d37d4556a5453e261ac16a46b66083541699fd42b3256155d37`  
		Last Modified: Thu, 15 Feb 2018 17:16:26 GMT  
		Size: 959.5 KB (959482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0f2538951ec3250507812e182e1ae2e5eb752e85ee7db09a84919af6f0ef6f`  
		Last Modified: Thu, 15 Feb 2018 17:16:29 GMT  
		Size: 7.1 MB (7112889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8792b0f86860e5a754bf1c7882b06379f42a07740cfad133dc02db04960628`  
		Last Modified: Thu, 15 Feb 2018 17:16:25 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0186d833bb986c938681f1aa65705d09a8174b3de87a502b5d3f9eefe8557e9`  
		Last Modified: Thu, 15 Feb 2018 17:16:25 GMT  
		Size: 4.5 KB (4496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22343ee4e82e259ff7d9c8cecfa3a6984fca1b8803b481429a94facbfc331a0d`  
		Last Modified: Thu, 15 Feb 2018 17:17:42 GMT  
		Size: 35.9 MB (35923112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6866f5ec15274ab3ffe46cd57f4a81e1f1a8b21d0919f4837f01b58994edcad`  
		Last Modified: Thu, 15 Feb 2018 17:17:25 GMT  
		Size: 6.8 KB (6835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b51651705448cf4a3c99a796142c5080385da27e7ab9499b78e3aa6188ae9e8`  
		Last Modified: Thu, 15 Feb 2018 17:17:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93aa1f21c7bc866419a1a224d9f38de4f59a618a19e55b11ab5eba60593bd55c`  
		Last Modified: Thu, 15 Feb 2018 17:17:23 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35500b05969a804a92b8e2848226a3d585f4b5401c13d39c7748370925e183df`  
		Last Modified: Thu, 15 Feb 2018 17:17:23 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd71a28338136f6034ad961bae190ed1862005b8fea7f8f298583d972ec3561`  
		Last Modified: Thu, 15 Feb 2018 17:17:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:52c393f6802670abfc7a44b46999b41dd580034884f07604a0417691d1b63823
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94649374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd923ecb2c31c0641e6e397534fe1f721b7fd726e9a87519f27148ecab91d1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:26:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:26:22 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 21:26:29 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 21:27:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 21:27:48 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 21:27:57 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 21:27:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 21:28:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 22:01:56 GMT
ENV PG_MAJOR=9.5
# Thu, 15 Feb 2018 22:01:57 GMT
ENV PG_VERSION=9.5.11-1.pgdg80+1
# Thu, 15 Feb 2018 22:38:00 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 22:38:04 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 22:38:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 22:38:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Thu, 15 Feb 2018 22:38:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 22:38:15 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 22:38:16 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 22:38:18 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 22:38:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 22:38:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:38:26 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 22:38:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f54d66e9a9b420613f95a29338712a65a0b57f5cac8fd901dac70b8a1d9c65a`  
		Last Modified: Thu, 15 Feb 2018 23:40:29 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18e950b473f153a9d4987088b80bcd8ee6c09e14ed30a0798d6e8ea88e2597e`  
		Last Modified: Thu, 15 Feb 2018 23:40:26 GMT  
		Size: 952.0 KB (951994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd71e77f07f8383b232b839b66ac104c6fb159e9bf771257f69c6c1222abca86`  
		Last Modified: Thu, 15 Feb 2018 23:40:28 GMT  
		Size: 7.1 MB (7112983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a049cebaa932ffc7b065d515b98898c902b3cfc2c588c75784f26a000f092d`  
		Last Modified: Thu, 15 Feb 2018 23:40:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86456dce79030cc72704bbefb74646c300fbe3f37484230355beb5ae9db8eca8`  
		Last Modified: Thu, 15 Feb 2018 23:40:22 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64161800e114d8565297218e20efb5489f63c756d8e9e508aa4f7520bac1fb6c`  
		Last Modified: Thu, 15 Feb 2018 23:41:36 GMT  
		Size: 36.6 MB (36634775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac7f83ae19a77336fdba322fc8171394f6fe13ef7669de822913f2aeada35a8`  
		Last Modified: Thu, 15 Feb 2018 23:41:20 GMT  
		Size: 6.8 KB (6838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f18ece3db53aaae01a9601ea56b5df4d0b995ed7f23253b9a1e8e65bed92521`  
		Last Modified: Thu, 15 Feb 2018 23:41:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688865b1a282f015c7571a25ab1f3f943b2eaec62fa0935c097e11c7bc8217b9`  
		Last Modified: Thu, 15 Feb 2018 23:41:20 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3637c1a500c2c33c28567aaf8252fcc7d1388a0652e407d29e52c9ab73d3a7fd`  
		Last Modified: Thu, 15 Feb 2018 23:41:20 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0928e6b063a3587a04fe010890187332330fa15bea1d10437901c9ccf18690ca`  
		Last Modified: Thu, 15 Feb 2018 23:41:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; 386

```console
$ docker pull postgres@sha256:2f93ebdb07efe45f4b0c717807cd13a953e0f5ec4d14b46e35211349915f8d71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.6 MB (105581889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93680c2305dcaea764bd70d626c371bb0549d2ef04c5ef3ec65cd08a8e615fa5`
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
# Mon, 19 Feb 2018 18:43:12 GMT
ENV PG_VERSION=9.5.11-1.pgdg80+1
# Mon, 19 Feb 2018 18:44:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 19 Feb 2018 18:46:25 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 19 Feb 2018 18:46:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 19 Feb 2018 18:46:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Mon, 19 Feb 2018 18:46:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 19 Feb 2018 18:46:27 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 19 Feb 2018 18:46:27 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 19 Feb 2018 18:46:27 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 19 Feb 2018 18:46:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Feb 2018 18:46:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Feb 2018 18:46:29 GMT
EXPOSE 5432/tcp
# Mon, 19 Feb 2018 18:46:29 GMT
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
	-	`sha256:e78e5e655ba175207321477d556589e05e62d9def61a2998ee285ae1d13db5a8`  
		Last Modified: Mon, 19 Feb 2018 19:51:32 GMT  
		Size: 44.7 MB (44701495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0599c24b6b382cfef1733c4425cc9f9a4f4c0fcce97fff170ab3c16a6ee4e173`  
		Last Modified: Mon, 19 Feb 2018 19:50:55 GMT  
		Size: 6.8 KB (6835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca0b4cc0acaf8897acbd68ae093387f105392dcd1154316456dfeeab10f0fa1`  
		Last Modified: Mon, 19 Feb 2018 19:50:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cd9b6be181b9b0c62605965892e4c90ef77443e4ea8db60d43c79fe37f4ace`  
		Last Modified: Mon, 19 Feb 2018 19:50:55 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de0d25c31840c400f0a064bc5517954af2911f6fc8460e1ba5b3977ed9ae011e`  
		Last Modified: Mon, 19 Feb 2018 19:50:55 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3f9596770ff7e6138b468f885fb23a1f3ce70a16a99b8577572bae04306c76`  
		Last Modified: Mon, 19 Feb 2018 19:50:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; ppc64le

```console
$ docker pull postgres@sha256:92022d897ea5a5be152900b7812f7517c72fce38077fdc6ccc7be465bca0cae0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101828110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:661a594b545b596f786244a155e39b306c445c776732b83831c1237e20f6f9fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:28:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:28:40 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 07:28:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:31:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 07:32:15 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 07:32:17 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 07:32:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 07:32:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 07:42:08 GMT
ENV PG_MAJOR=9.5
# Thu, 15 Feb 2018 07:42:16 GMT
ENV PG_VERSION=9.5.11-1.pgdg80+1
# Thu, 15 Feb 2018 07:51:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 07:51:35 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 07:51:41 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 07:51:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Thu, 15 Feb 2018 07:51:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 07:51:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 07:51:58 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 07:52:01 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:52:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 07:52:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:52:12 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 07:52:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da267b8324589d9dc4e670c3c6062a20192c95992f537d5d683fdef57aa712a6`  
		Last Modified: Thu, 15 Feb 2018 08:09:51 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7587129ae2be4d0fa4f30eacad69a9fddce43c621b95417d2c20e346e35bef4`  
		Last Modified: Thu, 15 Feb 2018 08:09:52 GMT  
		Size: 954.3 KB (954287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5051bce96e69b1d77c6f9a54497a975105e13a6824e8eb3f9b8875a0c751d5`  
		Last Modified: Thu, 15 Feb 2018 08:09:52 GMT  
		Size: 7.1 MB (7113193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af2ace6824e7474d6b893aa3cac0f00e28519ae433b07f541dae65d8c174f65`  
		Last Modified: Thu, 15 Feb 2018 08:09:49 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b34189638b620bb4f4aa8ce17a7fc5f513ba02d9f35b8409a0fd52d2b68a4f`  
		Last Modified: Thu, 15 Feb 2018 08:09:49 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8479edf30dcab6de4a3b00527da81d1da73086877b241315de2e6c2e2188f08`  
		Last Modified: Thu, 15 Feb 2018 08:10:49 GMT  
		Size: 41.9 MB (41927718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1d7169a439f52cf108fab8ecd1126428df4da5685542e16edc41dd5062eb73`  
		Last Modified: Thu, 15 Feb 2018 08:10:34 GMT  
		Size: 6.8 KB (6835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42c40aad5eaadfce8ba3d7c8bada8bca319e87a2488acc10be8240dc1c6637f`  
		Last Modified: Thu, 15 Feb 2018 08:10:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1b513dca377d97ee16a678138915f2d0037239af2b8cadb4cadd9c2510fcae`  
		Last Modified: Thu, 15 Feb 2018 08:10:33 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3badd2867b03839e9e06b2e327344fb96cf5e9252c560648359a046033712f9`  
		Last Modified: Thu, 15 Feb 2018 08:10:34 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03cfd167ebb8108e64e2e41d89c1c3b39c1c9f5555c2f77d18ff511079774ed0`  
		Last Modified: Thu, 15 Feb 2018 08:10:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5` - linux; s390x

```console
$ docker pull postgres@sha256:1692b1d8996baec3a3e4edeeb1e8292245452f32800b982c192709d6edc054c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.0 MB (100033502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67429f199208fe33800934892e8b83d161b9f8f41c1de50ff30565b877dfaa3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:21:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:21:55 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 07:21:56 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:22:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 07:22:28 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 07:22:28 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 07:22:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 07:22:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 07:31:22 GMT
ENV PG_MAJOR=9.5
# Thu, 15 Feb 2018 07:31:22 GMT
ENV PG_VERSION=9.5.11-1.pgdg80+1
# Thu, 15 Feb 2018 07:40:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 07:40:03 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 07:40:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 07:40:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Thu, 15 Feb 2018 07:40:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 07:40:05 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 07:40:05 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 07:40:05 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:40:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 07:40:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:40:06 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 07:40:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7edd487f82557589b2f080179dcbd1f673858c75433d9e891e95d70a4d48f9`  
		Last Modified: Thu, 15 Feb 2018 07:56:03 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52080ebd673a207dd59acb70defed683edd30768000383bcb091476f6edeb42b`  
		Last Modified: Thu, 15 Feb 2018 07:56:02 GMT  
		Size: 970.3 KB (970259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffaa04760cdbd271208aa1c188633875c8e23ae75d11d48014cf204fa05a9ff`  
		Last Modified: Thu, 15 Feb 2018 07:56:07 GMT  
		Size: 7.1 MB (7131239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8af31c324618b42751431df21b43983c8d95cc49c235bcc434c69aca30e6349`  
		Last Modified: Thu, 15 Feb 2018 07:56:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89096fd23a0029c5441ca3d3adfbbe4230943317bc4f8d9c22b68be95c1908af`  
		Last Modified: Thu, 15 Feb 2018 07:56:01 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9413c54294727ce0dc080a922e2895f034f6bffdb250da551a246074cfe4667a`  
		Last Modified: Thu, 15 Feb 2018 07:56:31 GMT  
		Size: 39.1 MB (39121408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b11b2799487fd8724d6e3f24e6cc198e4b204fbb766664c6b5f0ed4c3653a1e`  
		Last Modified: Thu, 15 Feb 2018 07:56:22 GMT  
		Size: 6.8 KB (6833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4346505aa7def24889d72a659880801388fa76094ac11e775bb2492e50063f`  
		Last Modified: Thu, 15 Feb 2018 07:56:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dee3985a0a3a2367a995a9d2fe1a0ac4f037547f75c118c30a8948cf05e99ba`  
		Last Modified: Thu, 15 Feb 2018 07:56:21 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d662d8af1ab699f90149d4af133542e536eead49c928dd29f8021af4062b49`  
		Last Modified: Thu, 15 Feb 2018 07:56:22 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5837d60b6b495209aa705b86ba2f751238a0844606c4c5c04d88892fab92b8`  
		Last Modified: Thu, 15 Feb 2018 07:56:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.11`

```console
$ docker pull postgres@sha256:a1704c1c922a965e9e209d8da9bd763b1ce224d1200e96839ff44b6384a239ab
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

### `postgres:9.5.11` - linux; amd64

```console
$ docker pull postgres@sha256:8b6f65b70be5ddbe163a5fc230fd8b3dcf3304f1a294c3ffc9971365b990e640
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.6 MB (103605821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec0c2f44424403f1db9689d6a2931def7568ae73633c596c564fa9c0ea401448`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 22:27:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 22:27:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 16 Feb 2018 22:27:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 22:27:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Feb 2018 22:27:53 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 16 Feb 2018 22:27:57 GMT
ENV LANG=en_US.utf8
# Fri, 16 Feb 2018 22:27:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Feb 2018 22:28:00 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Feb 2018 22:36:55 GMT
ENV PG_MAJOR=9.5
# Fri, 16 Feb 2018 22:36:55 GMT
ENV PG_VERSION=9.5.11-1.pgdg80+1
# Fri, 16 Feb 2018 22:37:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Feb 2018 22:37:39 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 16 Feb 2018 22:37:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 16 Feb 2018 22:37:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Fri, 16 Feb 2018 22:37:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 16 Feb 2018 22:37:41 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 16 Feb 2018 22:37:41 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 16 Feb 2018 22:37:42 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 16 Feb 2018 22:37:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 22:37:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 22:37:44 GMT
EXPOSE 5432/tcp
# Fri, 16 Feb 2018 22:37:44 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3acc6da98ed72d943218d117d90be7898ee568f399eabca76690cbd3e31797c`  
		Last Modified: Fri, 16 Feb 2018 22:45:58 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef28401016a4b3225fd60dba2bad65abe3fce4005f63bb7b70ac6fa603637b34`  
		Last Modified: Fri, 16 Feb 2018 22:45:56 GMT  
		Size: 985.2 KB (985219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53d3f24be686c19ccfae1620279b1e9dd4a192ec624ea87966a362a3cacfff8`  
		Last Modified: Fri, 16 Feb 2018 22:46:00 GMT  
		Size: 7.1 MB (7113019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa03ed01c16fd3a7b8bfe9b17c93514e8ea8c8ab12a89bfc98ba7b3a81c336d`  
		Last Modified: Fri, 16 Feb 2018 22:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2f4dc2cd2d3d9bae8409a9ef807322bd14f84dc8ca3fa7ba45c4573057743`  
		Last Modified: Fri, 16 Feb 2018 22:45:56 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0881caf8ad0f95a02564e5b06ff80772a6cb5bd6a64fe02a57ff91cf31ce1bad`  
		Last Modified: Fri, 16 Feb 2018 22:47:51 GMT  
		Size: 42.9 MB (42883529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884399790c8efb87fd343f8f2fb50a808eecd4b77ca968cf95d769955fc2c6a8`  
		Last Modified: Fri, 16 Feb 2018 22:47:25 GMT  
		Size: 6.8 KB (6836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821fb89c92b4c9a1d0ceb9bf7ecc7720852865ac6bb0885d4c38b0de004f031d`  
		Last Modified: Fri, 16 Feb 2018 22:47:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4a9b13b2084987287e1e892c5c7654284f2bfd3af8aa21525e0e7d10c176ed`  
		Last Modified: Fri, 16 Feb 2018 22:47:25 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb69f7472417ed61c0c0abf28be5b604e48e6f5cbe3f9a3e6395e558d2b2bec6`  
		Last Modified: Fri, 16 Feb 2018 22:47:25 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc38c77a90da01340e653c22b8487b2719331affbb680537406c56b566389707`  
		Last Modified: Fri, 16 Feb 2018 22:47:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.11` - linux; arm variant v5

```console
$ docker pull postgres@sha256:0a60d60ee66a05a6df60d07dcd85042ed4c3c1fb9fe2eba38c6a790ad0600250
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96089371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93ca7b399e8358a413f0cf5b76c5498bdd8f3f6b11e0f5c3a17376dda568a26d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:14:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 23:14:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 23:14:11 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 23:14:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 23:15:26 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 23:15:27 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 23:15:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 23:15:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 23:35:24 GMT
ENV PG_MAJOR=9.5
# Thu, 15 Feb 2018 23:35:24 GMT
ENV PG_VERSION=9.5.11-1.pgdg80+1
# Thu, 15 Feb 2018 23:53:15 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 23:53:18 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 23:53:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 23:53:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Thu, 15 Feb 2018 23:53:19 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 23:53:20 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 23:53:20 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 23:53:20 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 23:53:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 23:53:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 23:53:22 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 23:53:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07616038d7c54354cad573f7607fbe7fb805df1853cd597bc3f49baa3fd0f0a0`  
		Last Modified: Fri, 16 Feb 2018 00:30:30 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312a1bc3c3f2a914f5f574bc2771a4f8c7aea586f555574485bd433a5a73f57f`  
		Last Modified: Fri, 16 Feb 2018 00:30:28 GMT  
		Size: 974.6 KB (974616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a67d033c12ca0dd875c9b9f7728974f34e61203299aa368442f1622920257f`  
		Last Modified: Fri, 16 Feb 2018 00:30:30 GMT  
		Size: 7.1 MB (7112913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcc79a38615c857be9c7b43ea9fdf119de52ee24a0882e6bc2a622cbba1ed28`  
		Last Modified: Fri, 16 Feb 2018 00:30:27 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5fb0af7e9fe55a91632075f057e1dd1ef9f6b6d5cb8d0bf37c2971fdf2ae6d`  
		Last Modified: Fri, 16 Feb 2018 00:30:28 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299996c1a6ab2b50e965c56dc1f29364f22d27d471e3ef4f2c62ddc407aa69c7`  
		Last Modified: Fri, 16 Feb 2018 00:31:37 GMT  
		Size: 37.1 MB (37096403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5636f98c2dbfb07fdd61e41e08aee2eeb00ae11d0604ce90294c4c798842da59`  
		Last Modified: Fri, 16 Feb 2018 00:31:22 GMT  
		Size: 6.8 KB (6834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5027e7a7b0fb46c2db5402e434611c0880e02c95e6aecb5b2a4e0b9174eaa9c7`  
		Last Modified: Fri, 16 Feb 2018 00:31:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f496b19bb06ed7d4477ecaae4e7f189e2cbe41bd7975c2ddb5c5b61b9da3800`  
		Last Modified: Fri, 16 Feb 2018 00:31:22 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf306c59e02975705e4e935085b4338d1ebea6212ffec6cbd289975b51c850c`  
		Last Modified: Fri, 16 Feb 2018 00:31:22 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b21a22c005996eaa26db581cb9f5a788ed8853a7a5b2f65c5f1192e1e93562`  
		Last Modified: Thu, 15 Feb 2018 23:53:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.11` - linux; arm variant v7

```console
$ docker pull postgres@sha256:3f467435860da3905d2715e0635d6df88dbe6aa4cca93e559692be30921abbe9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92712701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c00ebb89c918e50b7408859302c25286800397cb3fd02d5097026facc0e52bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:04:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 16:04:16 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 16:04:21 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:05:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 16:05:39 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 16:05:46 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 16:05:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 16:05:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 16:24:19 GMT
ENV PG_MAJOR=9.5
# Thu, 15 Feb 2018 16:24:20 GMT
ENV PG_VERSION=9.5.11-1.pgdg80+1
# Thu, 15 Feb 2018 16:41:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 16:41:14 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 16:41:15 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 16:41:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Thu, 15 Feb 2018 16:41:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 16:41:16 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 16:41:16 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 16:41:17 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 16:41:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 16:41:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 16:41:18 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 16:41:18 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfef565a8a4efb359fc4f99bed68debfca1ba6f64793605eb6342fef30c1d567`  
		Last Modified: Thu, 15 Feb 2018 17:16:28 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b32f4370d24d37d4556a5453e261ac16a46b66083541699fd42b3256155d37`  
		Last Modified: Thu, 15 Feb 2018 17:16:26 GMT  
		Size: 959.5 KB (959482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0f2538951ec3250507812e182e1ae2e5eb752e85ee7db09a84919af6f0ef6f`  
		Last Modified: Thu, 15 Feb 2018 17:16:29 GMT  
		Size: 7.1 MB (7112889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8792b0f86860e5a754bf1c7882b06379f42a07740cfad133dc02db04960628`  
		Last Modified: Thu, 15 Feb 2018 17:16:25 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0186d833bb986c938681f1aa65705d09a8174b3de87a502b5d3f9eefe8557e9`  
		Last Modified: Thu, 15 Feb 2018 17:16:25 GMT  
		Size: 4.5 KB (4496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22343ee4e82e259ff7d9c8cecfa3a6984fca1b8803b481429a94facbfc331a0d`  
		Last Modified: Thu, 15 Feb 2018 17:17:42 GMT  
		Size: 35.9 MB (35923112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6866f5ec15274ab3ffe46cd57f4a81e1f1a8b21d0919f4837f01b58994edcad`  
		Last Modified: Thu, 15 Feb 2018 17:17:25 GMT  
		Size: 6.8 KB (6835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b51651705448cf4a3c99a796142c5080385da27e7ab9499b78e3aa6188ae9e8`  
		Last Modified: Thu, 15 Feb 2018 17:17:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93aa1f21c7bc866419a1a224d9f38de4f59a618a19e55b11ab5eba60593bd55c`  
		Last Modified: Thu, 15 Feb 2018 17:17:23 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35500b05969a804a92b8e2848226a3d585f4b5401c13d39c7748370925e183df`  
		Last Modified: Thu, 15 Feb 2018 17:17:23 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd71a28338136f6034ad961bae190ed1862005b8fea7f8f298583d972ec3561`  
		Last Modified: Thu, 15 Feb 2018 17:17:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.11` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:52c393f6802670abfc7a44b46999b41dd580034884f07604a0417691d1b63823
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94649374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd923ecb2c31c0641e6e397534fe1f721b7fd726e9a87519f27148ecab91d1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:26:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:26:22 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 21:26:29 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 21:27:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 21:27:48 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 21:27:57 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 21:27:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 21:28:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 22:01:56 GMT
ENV PG_MAJOR=9.5
# Thu, 15 Feb 2018 22:01:57 GMT
ENV PG_VERSION=9.5.11-1.pgdg80+1
# Thu, 15 Feb 2018 22:38:00 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 22:38:04 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 22:38:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 22:38:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Thu, 15 Feb 2018 22:38:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 22:38:15 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 22:38:16 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 22:38:18 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 22:38:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 22:38:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:38:26 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 22:38:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f54d66e9a9b420613f95a29338712a65a0b57f5cac8fd901dac70b8a1d9c65a`  
		Last Modified: Thu, 15 Feb 2018 23:40:29 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18e950b473f153a9d4987088b80bcd8ee6c09e14ed30a0798d6e8ea88e2597e`  
		Last Modified: Thu, 15 Feb 2018 23:40:26 GMT  
		Size: 952.0 KB (951994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd71e77f07f8383b232b839b66ac104c6fb159e9bf771257f69c6c1222abca86`  
		Last Modified: Thu, 15 Feb 2018 23:40:28 GMT  
		Size: 7.1 MB (7112983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a049cebaa932ffc7b065d515b98898c902b3cfc2c588c75784f26a000f092d`  
		Last Modified: Thu, 15 Feb 2018 23:40:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86456dce79030cc72704bbefb74646c300fbe3f37484230355beb5ae9db8eca8`  
		Last Modified: Thu, 15 Feb 2018 23:40:22 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64161800e114d8565297218e20efb5489f63c756d8e9e508aa4f7520bac1fb6c`  
		Last Modified: Thu, 15 Feb 2018 23:41:36 GMT  
		Size: 36.6 MB (36634775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac7f83ae19a77336fdba322fc8171394f6fe13ef7669de822913f2aeada35a8`  
		Last Modified: Thu, 15 Feb 2018 23:41:20 GMT  
		Size: 6.8 KB (6838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f18ece3db53aaae01a9601ea56b5df4d0b995ed7f23253b9a1e8e65bed92521`  
		Last Modified: Thu, 15 Feb 2018 23:41:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688865b1a282f015c7571a25ab1f3f943b2eaec62fa0935c097e11c7bc8217b9`  
		Last Modified: Thu, 15 Feb 2018 23:41:20 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3637c1a500c2c33c28567aaf8252fcc7d1388a0652e407d29e52c9ab73d3a7fd`  
		Last Modified: Thu, 15 Feb 2018 23:41:20 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0928e6b063a3587a04fe010890187332330fa15bea1d10437901c9ccf18690ca`  
		Last Modified: Thu, 15 Feb 2018 23:41:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.11` - linux; 386

```console
$ docker pull postgres@sha256:2f93ebdb07efe45f4b0c717807cd13a953e0f5ec4d14b46e35211349915f8d71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.6 MB (105581889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93680c2305dcaea764bd70d626c371bb0549d2ef04c5ef3ec65cd08a8e615fa5`
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
# Mon, 19 Feb 2018 18:43:12 GMT
ENV PG_VERSION=9.5.11-1.pgdg80+1
# Mon, 19 Feb 2018 18:44:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 19 Feb 2018 18:46:25 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 19 Feb 2018 18:46:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 19 Feb 2018 18:46:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Mon, 19 Feb 2018 18:46:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 19 Feb 2018 18:46:27 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 19 Feb 2018 18:46:27 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 19 Feb 2018 18:46:27 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 19 Feb 2018 18:46:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Feb 2018 18:46:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Feb 2018 18:46:29 GMT
EXPOSE 5432/tcp
# Mon, 19 Feb 2018 18:46:29 GMT
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
	-	`sha256:e78e5e655ba175207321477d556589e05e62d9def61a2998ee285ae1d13db5a8`  
		Last Modified: Mon, 19 Feb 2018 19:51:32 GMT  
		Size: 44.7 MB (44701495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0599c24b6b382cfef1733c4425cc9f9a4f4c0fcce97fff170ab3c16a6ee4e173`  
		Last Modified: Mon, 19 Feb 2018 19:50:55 GMT  
		Size: 6.8 KB (6835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca0b4cc0acaf8897acbd68ae093387f105392dcd1154316456dfeeab10f0fa1`  
		Last Modified: Mon, 19 Feb 2018 19:50:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cd9b6be181b9b0c62605965892e4c90ef77443e4ea8db60d43c79fe37f4ace`  
		Last Modified: Mon, 19 Feb 2018 19:50:55 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de0d25c31840c400f0a064bc5517954af2911f6fc8460e1ba5b3977ed9ae011e`  
		Last Modified: Mon, 19 Feb 2018 19:50:55 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a3f9596770ff7e6138b468f885fb23a1f3ce70a16a99b8577572bae04306c76`  
		Last Modified: Mon, 19 Feb 2018 19:50:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.11` - linux; ppc64le

```console
$ docker pull postgres@sha256:92022d897ea5a5be152900b7812f7517c72fce38077fdc6ccc7be465bca0cae0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101828110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:661a594b545b596f786244a155e39b306c445c776732b83831c1237e20f6f9fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:28:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:28:40 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 07:28:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:31:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 07:32:15 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 07:32:17 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 07:32:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 07:32:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 07:42:08 GMT
ENV PG_MAJOR=9.5
# Thu, 15 Feb 2018 07:42:16 GMT
ENV PG_VERSION=9.5.11-1.pgdg80+1
# Thu, 15 Feb 2018 07:51:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 07:51:35 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 07:51:41 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 07:51:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Thu, 15 Feb 2018 07:51:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 07:51:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 07:51:58 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 07:52:01 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:52:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 07:52:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:52:12 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 07:52:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da267b8324589d9dc4e670c3c6062a20192c95992f537d5d683fdef57aa712a6`  
		Last Modified: Thu, 15 Feb 2018 08:09:51 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7587129ae2be4d0fa4f30eacad69a9fddce43c621b95417d2c20e346e35bef4`  
		Last Modified: Thu, 15 Feb 2018 08:09:52 GMT  
		Size: 954.3 KB (954287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5051bce96e69b1d77c6f9a54497a975105e13a6824e8eb3f9b8875a0c751d5`  
		Last Modified: Thu, 15 Feb 2018 08:09:52 GMT  
		Size: 7.1 MB (7113193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af2ace6824e7474d6b893aa3cac0f00e28519ae433b07f541dae65d8c174f65`  
		Last Modified: Thu, 15 Feb 2018 08:09:49 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b34189638b620bb4f4aa8ce17a7fc5f513ba02d9f35b8409a0fd52d2b68a4f`  
		Last Modified: Thu, 15 Feb 2018 08:09:49 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8479edf30dcab6de4a3b00527da81d1da73086877b241315de2e6c2e2188f08`  
		Last Modified: Thu, 15 Feb 2018 08:10:49 GMT  
		Size: 41.9 MB (41927718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1d7169a439f52cf108fab8ecd1126428df4da5685542e16edc41dd5062eb73`  
		Last Modified: Thu, 15 Feb 2018 08:10:34 GMT  
		Size: 6.8 KB (6835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e42c40aad5eaadfce8ba3d7c8bada8bca319e87a2488acc10be8240dc1c6637f`  
		Last Modified: Thu, 15 Feb 2018 08:10:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1b513dca377d97ee16a678138915f2d0037239af2b8cadb4cadd9c2510fcae`  
		Last Modified: Thu, 15 Feb 2018 08:10:33 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3badd2867b03839e9e06b2e327344fb96cf5e9252c560648359a046033712f9`  
		Last Modified: Thu, 15 Feb 2018 08:10:34 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03cfd167ebb8108e64e2e41d89c1c3b39c1c9f5555c2f77d18ff511079774ed0`  
		Last Modified: Thu, 15 Feb 2018 08:10:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.5.11` - linux; s390x

```console
$ docker pull postgres@sha256:1692b1d8996baec3a3e4edeeb1e8292245452f32800b982c192709d6edc054c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.0 MB (100033502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67429f199208fe33800934892e8b83d161b9f8f41c1de50ff30565b877dfaa3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:21:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:21:55 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 07:21:56 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:22:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 07:22:28 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 07:22:28 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 07:22:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 07:22:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 07:31:22 GMT
ENV PG_MAJOR=9.5
# Thu, 15 Feb 2018 07:31:22 GMT
ENV PG_VERSION=9.5.11-1.pgdg80+1
# Thu, 15 Feb 2018 07:40:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 07:40:03 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 07:40:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 07:40:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.5/bin
# Thu, 15 Feb 2018 07:40:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 07:40:05 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 07:40:05 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 07:40:05 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:40:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 07:40:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:40:06 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 07:40:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7edd487f82557589b2f080179dcbd1f673858c75433d9e891e95d70a4d48f9`  
		Last Modified: Thu, 15 Feb 2018 07:56:03 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52080ebd673a207dd59acb70defed683edd30768000383bcb091476f6edeb42b`  
		Last Modified: Thu, 15 Feb 2018 07:56:02 GMT  
		Size: 970.3 KB (970259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffaa04760cdbd271208aa1c188633875c8e23ae75d11d48014cf204fa05a9ff`  
		Last Modified: Thu, 15 Feb 2018 07:56:07 GMT  
		Size: 7.1 MB (7131239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8af31c324618b42751431df21b43983c8d95cc49c235bcc434c69aca30e6349`  
		Last Modified: Thu, 15 Feb 2018 07:56:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89096fd23a0029c5441ca3d3adfbbe4230943317bc4f8d9c22b68be95c1908af`  
		Last Modified: Thu, 15 Feb 2018 07:56:01 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9413c54294727ce0dc080a922e2895f034f6bffdb250da551a246074cfe4667a`  
		Last Modified: Thu, 15 Feb 2018 07:56:31 GMT  
		Size: 39.1 MB (39121408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b11b2799487fd8724d6e3f24e6cc198e4b204fbb766664c6b5f0ed4c3653a1e`  
		Last Modified: Thu, 15 Feb 2018 07:56:22 GMT  
		Size: 6.8 KB (6833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e4346505aa7def24889d72a659880801388fa76094ac11e775bb2492e50063f`  
		Last Modified: Thu, 15 Feb 2018 07:56:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dee3985a0a3a2367a995a9d2fe1a0ac4f037547f75c118c30a8948cf05e99ba`  
		Last Modified: Thu, 15 Feb 2018 07:56:21 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d662d8af1ab699f90149d4af133542e536eead49c928dd29f8021af4062b49`  
		Last Modified: Thu, 15 Feb 2018 07:56:22 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5837d60b6b495209aa705b86ba2f751238a0844606c4c5c04d88892fab92b8`  
		Last Modified: Thu, 15 Feb 2018 07:56:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.11-alpine`

```console
$ docker pull postgres@sha256:f24aa77048b9ccb7bb8fd34736a076bc79d5ad5fdc9dc3c0e9e8145da09835b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5.11-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:f03d850bc29f1f1d36cc62d1a29fdab84939fe5a7f23cf3761799eb87b694424
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14410518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ee09d9f0ce9e503f9a99f2f895376ec31e82832a1a740fb78046a664622a1b7`
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
# Mon, 12 Feb 2018 23:56:23 GMT
ENV PG_VERSION=9.5.11
# Mon, 12 Feb 2018 23:56:24 GMT
ENV PG_SHA256=8182cd74e27a75ae39166b2603b5014f4272855b4101b40819761b853a77c8dd
# Mon, 12 Feb 2018 23:58:56 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 12 Feb 2018 23:59:03 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 12 Feb 2018 23:59:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 12 Feb 2018 23:59:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 12 Feb 2018 23:59:16 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 12 Feb 2018 23:59:16 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 12 Feb 2018 23:59:28 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 12 Feb 2018 23:59:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 12 Feb 2018 23:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Feb 2018 23:59:40 GMT
EXPOSE 5432/tcp
# Mon, 12 Feb 2018 23:59:40 GMT
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
	-	`sha256:0ab20bc7fea409d4c196c1255caa2bc54ff30e22a3fd03cf0bc616be9ecd35d5`  
		Last Modified: Tue, 13 Feb 2018 00:01:14 GMT  
		Size: 12.4 MB (12431068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72267f01bd09381f5afbc6263947d0eca1b107916c84d75f9d97e87b8cd34c83`  
		Last Modified: Tue, 13 Feb 2018 00:01:12 GMT  
		Size: 6.8 KB (6800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f623fbdba49ba81810db351ae63f5286fc3baed0abad750013866698f0d98271`  
		Last Modified: Tue, 13 Feb 2018 00:01:08 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8a07c7d5e0d383d77bdf7a9d011eb451b266f96b1fa0d59f9c1d3848823d5a`  
		Last Modified: Tue, 13 Feb 2018 00:01:07 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f47a740ce250e7aca6620657f2da99607263c792134dc195658460e2e03080`  
		Last Modified: Tue, 13 Feb 2018 00:01:09 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb336f0ae5fa300391f992f88c2df9ce074f62b820b9d263326c8fdeb69d3f8d`  
		Last Modified: Tue, 13 Feb 2018 00:01:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:f24aa77048b9ccb7bb8fd34736a076bc79d5ad5fdc9dc3c0e9e8145da09835b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:f03d850bc29f1f1d36cc62d1a29fdab84939fe5a7f23cf3761799eb87b694424
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14410518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ee09d9f0ce9e503f9a99f2f895376ec31e82832a1a740fb78046a664622a1b7`
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
# Mon, 12 Feb 2018 23:56:23 GMT
ENV PG_VERSION=9.5.11
# Mon, 12 Feb 2018 23:56:24 GMT
ENV PG_SHA256=8182cd74e27a75ae39166b2603b5014f4272855b4101b40819761b853a77c8dd
# Mon, 12 Feb 2018 23:58:56 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 12 Feb 2018 23:59:03 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 12 Feb 2018 23:59:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 12 Feb 2018 23:59:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 12 Feb 2018 23:59:16 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 12 Feb 2018 23:59:16 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 12 Feb 2018 23:59:28 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 12 Feb 2018 23:59:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 12 Feb 2018 23:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Feb 2018 23:59:40 GMT
EXPOSE 5432/tcp
# Mon, 12 Feb 2018 23:59:40 GMT
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
	-	`sha256:0ab20bc7fea409d4c196c1255caa2bc54ff30e22a3fd03cf0bc616be9ecd35d5`  
		Last Modified: Tue, 13 Feb 2018 00:01:14 GMT  
		Size: 12.4 MB (12431068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72267f01bd09381f5afbc6263947d0eca1b107916c84d75f9d97e87b8cd34c83`  
		Last Modified: Tue, 13 Feb 2018 00:01:12 GMT  
		Size: 6.8 KB (6800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f623fbdba49ba81810db351ae63f5286fc3baed0abad750013866698f0d98271`  
		Last Modified: Tue, 13 Feb 2018 00:01:08 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8a07c7d5e0d383d77bdf7a9d011eb451b266f96b1fa0d59f9c1d3848823d5a`  
		Last Modified: Tue, 13 Feb 2018 00:01:07 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f47a740ce250e7aca6620657f2da99607263c792134dc195658460e2e03080`  
		Last Modified: Tue, 13 Feb 2018 00:01:09 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb336f0ae5fa300391f992f88c2df9ce074f62b820b9d263326c8fdeb69d3f8d`  
		Last Modified: Tue, 13 Feb 2018 00:01:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:8b59f342fbd813e05dc22c11b3a30404fe13a5921ff812a836617530a0ba7fbd
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
$ docker pull postgres@sha256:c81a540dc26b20bce585e346d371b151a390753a3a6a85f238f6512384411c51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104156238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7cca23b47607bd83fe0db60a8fbc8aa1fa49e162fd4f365cd1f7a032e97db71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 22:27:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 22:27:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 16 Feb 2018 22:27:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 22:27:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Feb 2018 22:27:53 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 16 Feb 2018 22:27:57 GMT
ENV LANG=en_US.utf8
# Fri, 16 Feb 2018 22:27:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Feb 2018 22:28:00 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Feb 2018 22:28:01 GMT
ENV PG_MAJOR=9.6
# Fri, 16 Feb 2018 22:28:01 GMT
ENV PG_VERSION=9.6.7-1.pgdg80+1
# Fri, 16 Feb 2018 22:28:47 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Feb 2018 22:28:48 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 16 Feb 2018 22:28:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 16 Feb 2018 22:28:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 16 Feb 2018 22:28:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 16 Feb 2018 22:28:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 16 Feb 2018 22:28:51 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 16 Feb 2018 22:28:51 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 16 Feb 2018 22:28:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 22:28:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 22:28:52 GMT
EXPOSE 5432/tcp
# Fri, 16 Feb 2018 22:28:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3acc6da98ed72d943218d117d90be7898ee568f399eabca76690cbd3e31797c`  
		Last Modified: Fri, 16 Feb 2018 22:45:58 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef28401016a4b3225fd60dba2bad65abe3fce4005f63bb7b70ac6fa603637b34`  
		Last Modified: Fri, 16 Feb 2018 22:45:56 GMT  
		Size: 985.2 KB (985219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53d3f24be686c19ccfae1620279b1e9dd4a192ec624ea87966a362a3cacfff8`  
		Last Modified: Fri, 16 Feb 2018 22:46:00 GMT  
		Size: 7.1 MB (7113019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa03ed01c16fd3a7b8bfe9b17c93514e8ea8c8ab12a89bfc98ba7b3a81c336d`  
		Last Modified: Fri, 16 Feb 2018 22:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2f4dc2cd2d3d9bae8409a9ef807322bd14f84dc8ca3fa7ba45c4573057743`  
		Last Modified: Fri, 16 Feb 2018 22:45:56 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a59602b6f59cf634ef487dae91923e34eff21cab2724b9f03ffb7f94d75a3d`  
		Last Modified: Fri, 16 Feb 2018 22:46:13 GMT  
		Size: 43.4 MB (43433674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ff1dcde1605ab76aeaaff82f190ae92a62826b5a9d66b4e6e9905abe434f65`  
		Last Modified: Fri, 16 Feb 2018 22:45:53 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1397bd7a1695ebb476e5298a4896d34eb3fb898fd77705364e8f4eb9e04c74b3`  
		Last Modified: Fri, 16 Feb 2018 22:45:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6377cb1f1e7ad587cc0b1cc481dbe9dec22db34d99481412d97bdcb0a6eda94`  
		Last Modified: Fri, 16 Feb 2018 22:45:53 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7552463cf420629f8d16f597a63167859570c3a86b32975223063ce0864d189`  
		Last Modified: Fri, 16 Feb 2018 22:45:53 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a14e19d435c60f037879a470f7db8d369e05b736fc4bc835a724aca938be9b`  
		Last Modified: Fri, 16 Feb 2018 22:45:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; arm variant v5

```console
$ docker pull postgres@sha256:c4ce23d8414c20cd9b048ae7383c0832d1f5c4462b64b2a54db637a3df4c4dc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96606625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e121a1b5141401d9ddf163a91079d062f464f9b51f33ff618c6dffe61dd2caae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:14:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 23:14:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 23:14:11 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 23:14:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 23:15:26 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 23:15:27 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 23:15:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 23:15:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 23:15:37 GMT
ENV PG_MAJOR=9.6
# Thu, 15 Feb 2018 23:15:37 GMT
ENV PG_VERSION=9.6.7-1.pgdg80+1
# Thu, 15 Feb 2018 23:35:06 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 23:35:07 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 23:35:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 23:35:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 15 Feb 2018 23:35:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 23:35:09 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 23:35:10 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 23:35:10 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 23:35:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 23:35:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 23:35:13 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 23:35:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07616038d7c54354cad573f7607fbe7fb805df1853cd597bc3f49baa3fd0f0a0`  
		Last Modified: Fri, 16 Feb 2018 00:30:30 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312a1bc3c3f2a914f5f574bc2771a4f8c7aea586f555574485bd433a5a73f57f`  
		Last Modified: Fri, 16 Feb 2018 00:30:28 GMT  
		Size: 974.6 KB (974616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a67d033c12ca0dd875c9b9f7728974f34e61203299aa368442f1622920257f`  
		Last Modified: Fri, 16 Feb 2018 00:30:30 GMT  
		Size: 7.1 MB (7112913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcc79a38615c857be9c7b43ea9fdf119de52ee24a0882e6bc2a622cbba1ed28`  
		Last Modified: Fri, 16 Feb 2018 00:30:27 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5fb0af7e9fe55a91632075f057e1dd1ef9f6b6d5cb8d0bf37c2971fdf2ae6d`  
		Last Modified: Fri, 16 Feb 2018 00:30:28 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f47bccf4c34e85b8ab09aace5255d2b5962abe82638a2d2b2d2372e0b67b5e`  
		Last Modified: Fri, 16 Feb 2018 00:30:40 GMT  
		Size: 37.6 MB (37613383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fd9d995b9121d8fead4534d0ee2c854674b37a60e7cafdb3c964755f5aa637`  
		Last Modified: Fri, 16 Feb 2018 00:30:25 GMT  
		Size: 7.1 KB (7108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d759107e1d6a8679594350339dda11f49d7c9666966d851b4b520fe82012062`  
		Last Modified: Fri, 16 Feb 2018 00:30:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1da50b211a04a5f7c01042db7aec2977cdaff2c34e8032b8043929f3aa8d995`  
		Last Modified: Fri, 16 Feb 2018 00:30:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85abafc4a27aeca5e76c1c6411241a9b1f6e568897b86bb18f7f6001380f3c45`  
		Last Modified: Fri, 16 Feb 2018 00:30:25 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53490c38ea9c8662095c4864f257fab3c4c6d77bf31f074c520b96a6007c5e9f`  
		Last Modified: Fri, 16 Feb 2018 00:30:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; arm variant v7

```console
$ docker pull postgres@sha256:d54cf51a609e3fc4cd111e08807780d46739b48594731e00684b4e231e547c1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.2 MB (93215221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:511f463bfd149a0ee5b2e2ccb61bdb9e80fdc34391599e93eef47993357436be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:04:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 16:04:16 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 16:04:21 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:05:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 16:05:39 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 16:05:46 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 16:05:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 16:05:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 16:06:01 GMT
ENV PG_MAJOR=9.6
# Thu, 15 Feb 2018 16:06:08 GMT
ENV PG_VERSION=9.6.7-1.pgdg80+1
# Thu, 15 Feb 2018 16:23:32 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 16:23:33 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 16:23:34 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 16:23:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 15 Feb 2018 16:23:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 16:23:42 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 16:23:48 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 16:23:49 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 16:23:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 16:23:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 16:23:50 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 16:23:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfef565a8a4efb359fc4f99bed68debfca1ba6f64793605eb6342fef30c1d567`  
		Last Modified: Thu, 15 Feb 2018 17:16:28 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b32f4370d24d37d4556a5453e261ac16a46b66083541699fd42b3256155d37`  
		Last Modified: Thu, 15 Feb 2018 17:16:26 GMT  
		Size: 959.5 KB (959482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0f2538951ec3250507812e182e1ae2e5eb752e85ee7db09a84919af6f0ef6f`  
		Last Modified: Thu, 15 Feb 2018 17:16:29 GMT  
		Size: 7.1 MB (7112889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8792b0f86860e5a754bf1c7882b06379f42a07740cfad133dc02db04960628`  
		Last Modified: Thu, 15 Feb 2018 17:16:25 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0186d833bb986c938681f1aa65705d09a8174b3de87a502b5d3f9eefe8557e9`  
		Last Modified: Thu, 15 Feb 2018 17:16:25 GMT  
		Size: 4.5 KB (4496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df114523fbfc5a8ea3fcd7f764ae2c5186572214f14531ae85e4aa19d1fb010f`  
		Last Modified: Thu, 15 Feb 2018 17:16:38 GMT  
		Size: 36.4 MB (36425355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2f9301c8662a21a1f267726c02b94d51dfa42fc4c4fafc48ace97194fc2113`  
		Last Modified: Thu, 15 Feb 2018 17:16:22 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25fc53e80b53fcdbae9cb39f97073e57524f39681ab8d9cbd1f7eb6e7e4e2019`  
		Last Modified: Thu, 15 Feb 2018 17:16:22 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d1d7fb6c169bba997c1845e16fc704c397134639970ab52df696fbab0a3d9d3`  
		Last Modified: Thu, 15 Feb 2018 17:16:22 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83be7f8b61e37693cba67aa94cf37cfbffff225829fb1a028349440cadb886e3`  
		Last Modified: Thu, 15 Feb 2018 17:16:22 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37d9016529150b61ed0f8b701657500001d1f7c07e391cbb1b7c32f67b25178`  
		Last Modified: Thu, 15 Feb 2018 17:16:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:f2645b376bdf082410673476d70870fa27af61ce9b0451bb2e95c4918601e497
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95171371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58281a6fcda3a9ea7989c4e5fa4a7c854a7f7fad1edd4a884e0aa616baf01a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:26:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:26:22 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 21:26:29 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 21:27:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 21:27:48 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 21:27:57 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 21:27:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 21:28:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 21:28:13 GMT
ENV PG_MAJOR=9.6
# Thu, 15 Feb 2018 21:28:14 GMT
ENV PG_VERSION=9.6.7-1.pgdg80+1
# Thu, 15 Feb 2018 22:01:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 22:01:14 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 22:01:17 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 22:01:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 15 Feb 2018 22:01:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 22:01:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 22:01:27 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 22:01:28 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 22:01:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 22:01:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:01:35 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 22:01:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f54d66e9a9b420613f95a29338712a65a0b57f5cac8fd901dac70b8a1d9c65a`  
		Last Modified: Thu, 15 Feb 2018 23:40:29 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18e950b473f153a9d4987088b80bcd8ee6c09e14ed30a0798d6e8ea88e2597e`  
		Last Modified: Thu, 15 Feb 2018 23:40:26 GMT  
		Size: 952.0 KB (951994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd71e77f07f8383b232b839b66ac104c6fb159e9bf771257f69c6c1222abca86`  
		Last Modified: Thu, 15 Feb 2018 23:40:28 GMT  
		Size: 7.1 MB (7112983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a049cebaa932ffc7b065d515b98898c902b3cfc2c588c75784f26a000f092d`  
		Last Modified: Thu, 15 Feb 2018 23:40:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86456dce79030cc72704bbefb74646c300fbe3f37484230355beb5ae9db8eca8`  
		Last Modified: Thu, 15 Feb 2018 23:40:22 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc326eec39c6845ed7bcf39fb10f903e7b7e75a6a5b10ca18303fcc144bc6e0`  
		Last Modified: Thu, 15 Feb 2018 23:40:37 GMT  
		Size: 37.2 MB (37156504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc258d14fc1258efd8a119209c986b608a1e96ae79523eed8dc484510145f1da`  
		Last Modified: Thu, 15 Feb 2018 23:40:20 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc08159b108c1ac19126aeec452406c3dfe712ef6dbd6d6d18f9cf5a73ffae56`  
		Last Modified: Thu, 15 Feb 2018 23:40:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62929a4b908011502f14ae66d9f837db7434937a3db430cdd86b14e7b7bfbdb`  
		Last Modified: Thu, 15 Feb 2018 23:40:20 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f0bae9729a896b29fb6cd0a4d82a9ff28103732dca714cd65a9b19a2cb31a7`  
		Last Modified: Thu, 15 Feb 2018 23:40:38 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95803059fdf59cf2bf3c184bc4af23e6dbe2245180f4b68c3b5f5a86df9eb7d`  
		Last Modified: Thu, 15 Feb 2018 23:40:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; 386

```console
$ docker pull postgres@sha256:531be5484b497fcbd268251a349a1adb15d33a241046fa45f9863b6b9d782227
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106118833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:468277e8912e6ffe8eebffddfab68bc4d9c1ee529940e3907806ad139c678979`
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
# Mon, 19 Feb 2018 18:31:53 GMT
ENV PG_VERSION=9.6.7-1.pgdg80+1
# Mon, 19 Feb 2018 18:33:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 19 Feb 2018 18:33:22 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 19 Feb 2018 18:33:23 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 19 Feb 2018 18:33:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Mon, 19 Feb 2018 18:33:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 19 Feb 2018 18:33:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 19 Feb 2018 18:33:24 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 19 Feb 2018 18:33:25 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 19 Feb 2018 18:33:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Feb 2018 18:33:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Feb 2018 18:33:26 GMT
EXPOSE 5432/tcp
# Mon, 19 Feb 2018 18:33:26 GMT
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
	-	`sha256:6ae1369822e34fd4f6604c5d8b72ef78508a3ca059116b951bd905b7b9930661`  
		Last Modified: Mon, 19 Feb 2018 19:26:23 GMT  
		Size: 45.2 MB (45238165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa188ffc96304435e6ea037146de3c6c31fed7f59f905ea22c901dd23b20dc5`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c438f801337e19aa6161dd58911ebc0e03120d521ed1371868c6e2569a49c928`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efe72ce7d7b9b4d70fba98293873c463a4451b3a416e9ff504d386e089b8de6`  
		Last Modified: Mon, 19 Feb 2018 19:26:05 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60147984778c6e1fba1b634977dc4d79c069f8a654c2fa73a7316bb5d61db75a`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35d3da35402e3a0425e5b39de1b213807e8b86cba819a50b5a2f56a3d84dc26`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; ppc64le

```console
$ docker pull postgres@sha256:326a631295545d5993428007a86bbba42247f8d7864b5570c995c89622595a43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102363357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1087abf542af7ceebf35f1bb2bfffa90f9d25bc4d5caec3a7f0faebf901ff622`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:28:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:28:40 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 07:28:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:31:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 07:32:15 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 07:32:17 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 07:32:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 07:32:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 07:32:35 GMT
ENV PG_MAJOR=9.6
# Thu, 15 Feb 2018 07:32:37 GMT
ENV PG_VERSION=9.6.7-1.pgdg80+1
# Thu, 15 Feb 2018 07:40:37 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 07:40:52 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 07:41:01 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 07:41:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 15 Feb 2018 07:41:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 07:41:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 07:41:24 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 07:41:29 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:41:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 07:41:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:41:46 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 07:41:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da267b8324589d9dc4e670c3c6062a20192c95992f537d5d683fdef57aa712a6`  
		Last Modified: Thu, 15 Feb 2018 08:09:51 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7587129ae2be4d0fa4f30eacad69a9fddce43c621b95417d2c20e346e35bef4`  
		Last Modified: Thu, 15 Feb 2018 08:09:52 GMT  
		Size: 954.3 KB (954287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5051bce96e69b1d77c6f9a54497a975105e13a6824e8eb3f9b8875a0c751d5`  
		Last Modified: Thu, 15 Feb 2018 08:09:52 GMT  
		Size: 7.1 MB (7113193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af2ace6824e7474d6b893aa3cac0f00e28519ae433b07f541dae65d8c174f65`  
		Last Modified: Thu, 15 Feb 2018 08:09:49 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b34189638b620bb4f4aa8ce17a7fc5f513ba02d9f35b8409a0fd52d2b68a4f`  
		Last Modified: Thu, 15 Feb 2018 08:09:49 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220de9a270d4d86c9847635daaff4f84771591a9a22d596af7516b122ca266d5`  
		Last Modified: Thu, 15 Feb 2018 08:09:59 GMT  
		Size: 42.5 MB (42462694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bddf8e1f30c7f841079ba2edc89c882105ecec726dad6cb69f771dea9cbb87`  
		Last Modified: Thu, 15 Feb 2018 08:09:47 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40904ddd39bc8609f240ac9c427bab591aa5572329fc132f865986fec6c2b0ce`  
		Last Modified: Thu, 15 Feb 2018 08:09:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e51cd44d7d9cc9d282ec9ffacae4eb12356cf72635d85e00cf16b67cdcb8de2`  
		Last Modified: Thu, 15 Feb 2018 08:09:48 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bebed7232c309d2d0cb510a1a91ae7d556efe5b090df5075e7d1727664f6a1`  
		Last Modified: Thu, 15 Feb 2018 08:09:46 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18311603424f825ca57a7b6527d471cfec47ee86e062f624f5be490226913e5f`  
		Last Modified: Thu, 15 Feb 2018 08:09:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6` - linux; s390x

```console
$ docker pull postgres@sha256:54f0c0cc18fa0b8513a680ebd8ce27e6bd257f27c345c859372056782e12811d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100584602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e55ed9d4299482db629c5088ff83556752227d744c239022befcfd669ca9ed62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:21:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:21:55 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 07:21:56 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:22:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 07:22:28 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 07:22:28 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 07:22:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 07:22:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 07:22:31 GMT
ENV PG_MAJOR=9.6
# Thu, 15 Feb 2018 07:22:32 GMT
ENV PG_VERSION=9.6.7-1.pgdg80+1
# Thu, 15 Feb 2018 07:31:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 07:31:10 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 07:31:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 07:31:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 15 Feb 2018 07:31:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 07:31:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 07:31:12 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 07:31:12 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:31:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 07:31:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:31:13 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 07:31:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7edd487f82557589b2f080179dcbd1f673858c75433d9e891e95d70a4d48f9`  
		Last Modified: Thu, 15 Feb 2018 07:56:03 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52080ebd673a207dd59acb70defed683edd30768000383bcb091476f6edeb42b`  
		Last Modified: Thu, 15 Feb 2018 07:56:02 GMT  
		Size: 970.3 KB (970259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffaa04760cdbd271208aa1c188633875c8e23ae75d11d48014cf204fa05a9ff`  
		Last Modified: Thu, 15 Feb 2018 07:56:07 GMT  
		Size: 7.1 MB (7131239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8af31c324618b42751431df21b43983c8d95cc49c235bcc434c69aca30e6349`  
		Last Modified: Thu, 15 Feb 2018 07:56:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89096fd23a0029c5441ca3d3adfbbe4230943317bc4f8d9c22b68be95c1908af`  
		Last Modified: Thu, 15 Feb 2018 07:56:01 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719186e97695da123f3016ee642a85db7a11f39cf70c76ab666477115cb3bdb4`  
		Last Modified: Thu, 15 Feb 2018 07:56:09 GMT  
		Size: 39.7 MB (39672230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0592d8626cfdf6bf6cf0abaf0f3ac4c51e16f55c0e1897c984ea7995c86d102c`  
		Last Modified: Thu, 15 Feb 2018 07:56:00 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad9ad2ffed68579ecfbac84643222ddae6951691f23c021901ee5afdeb54937`  
		Last Modified: Thu, 15 Feb 2018 07:56:00 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30dc3197494fafe7ddbe5d5f7e2d34a5bbce545f5f6c2ce541f245795696d405`  
		Last Modified: Thu, 15 Feb 2018 07:56:01 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6063ca720463406289da209fe81a40842742328b0077a9f09fcad9ed099e09b8`  
		Last Modified: Thu, 15 Feb 2018 07:56:00 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb87176d7cab195044b2f5a7b71c24ae6b9b8ac70e28ca45433bd7d1520af12`  
		Last Modified: Thu, 15 Feb 2018 07:56:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.7`

```console
$ docker pull postgres@sha256:8b59f342fbd813e05dc22c11b3a30404fe13a5921ff812a836617530a0ba7fbd
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

### `postgres:9.6.7` - linux; amd64

```console
$ docker pull postgres@sha256:c81a540dc26b20bce585e346d371b151a390753a3a6a85f238f6512384411c51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104156238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7cca23b47607bd83fe0db60a8fbc8aa1fa49e162fd4f365cd1f7a032e97db71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 22:27:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Feb 2018 22:27:20 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 16 Feb 2018 22:27:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 22:27:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Feb 2018 22:27:53 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 16 Feb 2018 22:27:57 GMT
ENV LANG=en_US.utf8
# Fri, 16 Feb 2018 22:27:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Feb 2018 22:28:00 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Feb 2018 22:28:01 GMT
ENV PG_MAJOR=9.6
# Fri, 16 Feb 2018 22:28:01 GMT
ENV PG_VERSION=9.6.7-1.pgdg80+1
# Fri, 16 Feb 2018 22:28:47 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Feb 2018 22:28:48 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 16 Feb 2018 22:28:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 16 Feb 2018 22:28:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Fri, 16 Feb 2018 22:28:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 16 Feb 2018 22:28:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 16 Feb 2018 22:28:51 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 16 Feb 2018 22:28:51 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Fri, 16 Feb 2018 22:28:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 22:28:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 22:28:52 GMT
EXPOSE 5432/tcp
# Fri, 16 Feb 2018 22:28:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3acc6da98ed72d943218d117d90be7898ee568f399eabca76690cbd3e31797c`  
		Last Modified: Fri, 16 Feb 2018 22:45:58 GMT  
		Size: 2.1 KB (2094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef28401016a4b3225fd60dba2bad65abe3fce4005f63bb7b70ac6fa603637b34`  
		Last Modified: Fri, 16 Feb 2018 22:45:56 GMT  
		Size: 985.2 KB (985219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53d3f24be686c19ccfae1620279b1e9dd4a192ec624ea87966a362a3cacfff8`  
		Last Modified: Fri, 16 Feb 2018 22:46:00 GMT  
		Size: 7.1 MB (7113019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa03ed01c16fd3a7b8bfe9b17c93514e8ea8c8ab12a89bfc98ba7b3a81c336d`  
		Last Modified: Fri, 16 Feb 2018 22:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2f4dc2cd2d3d9bae8409a9ef807322bd14f84dc8ca3fa7ba45c4573057743`  
		Last Modified: Fri, 16 Feb 2018 22:45:56 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a59602b6f59cf634ef487dae91923e34eff21cab2724b9f03ffb7f94d75a3d`  
		Last Modified: Fri, 16 Feb 2018 22:46:13 GMT  
		Size: 43.4 MB (43433674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ff1dcde1605ab76aeaaff82f190ae92a62826b5a9d66b4e6e9905abe434f65`  
		Last Modified: Fri, 16 Feb 2018 22:45:53 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1397bd7a1695ebb476e5298a4896d34eb3fb898fd77705364e8f4eb9e04c74b3`  
		Last Modified: Fri, 16 Feb 2018 22:45:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6377cb1f1e7ad587cc0b1cc481dbe9dec22db34d99481412d97bdcb0a6eda94`  
		Last Modified: Fri, 16 Feb 2018 22:45:53 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7552463cf420629f8d16f597a63167859570c3a86b32975223063ce0864d189`  
		Last Modified: Fri, 16 Feb 2018 22:45:53 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a14e19d435c60f037879a470f7db8d369e05b736fc4bc835a724aca938be9b`  
		Last Modified: Fri, 16 Feb 2018 22:45:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.7` - linux; arm variant v5

```console
$ docker pull postgres@sha256:c4ce23d8414c20cd9b048ae7383c0832d1f5c4462b64b2a54db637a3df4c4dc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96606625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e121a1b5141401d9ddf163a91079d062f464f9b51f33ff618c6dffe61dd2caae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:14:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 23:14:11 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 23:14:11 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 23:14:54 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 23:15:26 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 23:15:27 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 23:15:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 23:15:37 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 23:15:37 GMT
ENV PG_MAJOR=9.6
# Thu, 15 Feb 2018 23:15:37 GMT
ENV PG_VERSION=9.6.7-1.pgdg80+1
# Thu, 15 Feb 2018 23:35:06 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 23:35:07 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 23:35:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 23:35:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 15 Feb 2018 23:35:08 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 23:35:09 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 23:35:10 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 23:35:10 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 23:35:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 23:35:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 23:35:13 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 23:35:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07616038d7c54354cad573f7607fbe7fb805df1853cd597bc3f49baa3fd0f0a0`  
		Last Modified: Fri, 16 Feb 2018 00:30:30 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312a1bc3c3f2a914f5f574bc2771a4f8c7aea586f555574485bd433a5a73f57f`  
		Last Modified: Fri, 16 Feb 2018 00:30:28 GMT  
		Size: 974.6 KB (974616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a67d033c12ca0dd875c9b9f7728974f34e61203299aa368442f1622920257f`  
		Last Modified: Fri, 16 Feb 2018 00:30:30 GMT  
		Size: 7.1 MB (7112913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dcc79a38615c857be9c7b43ea9fdf119de52ee24a0882e6bc2a622cbba1ed28`  
		Last Modified: Fri, 16 Feb 2018 00:30:27 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5fb0af7e9fe55a91632075f057e1dd1ef9f6b6d5cb8d0bf37c2971fdf2ae6d`  
		Last Modified: Fri, 16 Feb 2018 00:30:28 GMT  
		Size: 4.5 KB (4492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f47bccf4c34e85b8ab09aace5255d2b5962abe82638a2d2b2d2372e0b67b5e`  
		Last Modified: Fri, 16 Feb 2018 00:30:40 GMT  
		Size: 37.6 MB (37613383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fd9d995b9121d8fead4534d0ee2c854674b37a60e7cafdb3c964755f5aa637`  
		Last Modified: Fri, 16 Feb 2018 00:30:25 GMT  
		Size: 7.1 KB (7108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d759107e1d6a8679594350339dda11f49d7c9666966d851b4b520fe82012062`  
		Last Modified: Fri, 16 Feb 2018 00:30:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1da50b211a04a5f7c01042db7aec2977cdaff2c34e8032b8043929f3aa8d995`  
		Last Modified: Fri, 16 Feb 2018 00:30:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85abafc4a27aeca5e76c1c6411241a9b1f6e568897b86bb18f7f6001380f3c45`  
		Last Modified: Fri, 16 Feb 2018 00:30:25 GMT  
		Size: 1.8 KB (1811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53490c38ea9c8662095c4864f257fab3c4c6d77bf31f074c520b96a6007c5e9f`  
		Last Modified: Fri, 16 Feb 2018 00:30:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.7` - linux; arm variant v7

```console
$ docker pull postgres@sha256:d54cf51a609e3fc4cd111e08807780d46739b48594731e00684b4e231e547c1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.2 MB (93215221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:511f463bfd149a0ee5b2e2ccb61bdb9e80fdc34391599e93eef47993357436be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 13:26:29 GMT
ADD file:eb41e6f5be28a0581f56f72301ee93af1a27010f58b8eb6a759af7d673cc37f8 in / 
# Thu, 15 Feb 2018 13:26:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:04:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 16:04:16 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 16:04:21 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:05:07 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 16:05:39 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 16:05:46 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 16:05:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 16:05:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 16:06:01 GMT
ENV PG_MAJOR=9.6
# Thu, 15 Feb 2018 16:06:08 GMT
ENV PG_VERSION=9.6.7-1.pgdg80+1
# Thu, 15 Feb 2018 16:23:32 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 16:23:33 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 16:23:34 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 16:23:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 15 Feb 2018 16:23:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 16:23:42 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 16:23:48 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 16:23:49 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 16:23:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 16:23:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 16:23:50 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 16:23:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6b0aacdd0080a4b5904034a1714e4c1553acbed305ce7a3b1689a35d0bb6e4a0`  
		Last Modified: Thu, 15 Feb 2018 13:35:36 GMT  
		Size: 48.7 MB (48701400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfef565a8a4efb359fc4f99bed68debfca1ba6f64793605eb6342fef30c1d567`  
		Last Modified: Thu, 15 Feb 2018 17:16:28 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b32f4370d24d37d4556a5453e261ac16a46b66083541699fd42b3256155d37`  
		Last Modified: Thu, 15 Feb 2018 17:16:26 GMT  
		Size: 959.5 KB (959482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0f2538951ec3250507812e182e1ae2e5eb752e85ee7db09a84919af6f0ef6f`  
		Last Modified: Thu, 15 Feb 2018 17:16:29 GMT  
		Size: 7.1 MB (7112889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8792b0f86860e5a754bf1c7882b06379f42a07740cfad133dc02db04960628`  
		Last Modified: Thu, 15 Feb 2018 17:16:25 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0186d833bb986c938681f1aa65705d09a8174b3de87a502b5d3f9eefe8557e9`  
		Last Modified: Thu, 15 Feb 2018 17:16:25 GMT  
		Size: 4.5 KB (4496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df114523fbfc5a8ea3fcd7f764ae2c5186572214f14531ae85e4aa19d1fb010f`  
		Last Modified: Thu, 15 Feb 2018 17:16:38 GMT  
		Size: 36.4 MB (36425355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2f9301c8662a21a1f267726c02b94d51dfa42fc4c4fafc48ace97194fc2113`  
		Last Modified: Thu, 15 Feb 2018 17:16:22 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25fc53e80b53fcdbae9cb39f97073e57524f39681ab8d9cbd1f7eb6e7e4e2019`  
		Last Modified: Thu, 15 Feb 2018 17:16:22 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d1d7fb6c169bba997c1845e16fc704c397134639970ab52df696fbab0a3d9d3`  
		Last Modified: Thu, 15 Feb 2018 17:16:22 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83be7f8b61e37693cba67aa94cf37cfbffff225829fb1a028349440cadb886e3`  
		Last Modified: Thu, 15 Feb 2018 17:16:22 GMT  
		Size: 1.8 KB (1812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37d9016529150b61ed0f8b701657500001d1f7c07e391cbb1b7c32f67b25178`  
		Last Modified: Thu, 15 Feb 2018 17:16:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.7` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:f2645b376bdf082410673476d70870fa27af61ce9b0451bb2e95c4918601e497
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95171371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58281a6fcda3a9ea7989c4e5fa4a7c854a7f7fad1edd4a884e0aa616baf01a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:26:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:26:22 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 21:26:29 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 21:27:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 21:27:48 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 21:27:57 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 21:27:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 21:28:04 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 21:28:13 GMT
ENV PG_MAJOR=9.6
# Thu, 15 Feb 2018 21:28:14 GMT
ENV PG_VERSION=9.6.7-1.pgdg80+1
# Thu, 15 Feb 2018 22:01:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 22:01:14 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 22:01:17 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 22:01:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 15 Feb 2018 22:01:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 22:01:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 22:01:27 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 22:01:28 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 22:01:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 22:01:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:01:35 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 22:01:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f54d66e9a9b420613f95a29338712a65a0b57f5cac8fd901dac70b8a1d9c65a`  
		Last Modified: Thu, 15 Feb 2018 23:40:29 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18e950b473f153a9d4987088b80bcd8ee6c09e14ed30a0798d6e8ea88e2597e`  
		Last Modified: Thu, 15 Feb 2018 23:40:26 GMT  
		Size: 952.0 KB (951994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd71e77f07f8383b232b839b66ac104c6fb159e9bf771257f69c6c1222abca86`  
		Last Modified: Thu, 15 Feb 2018 23:40:28 GMT  
		Size: 7.1 MB (7112983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a049cebaa932ffc7b065d515b98898c902b3cfc2c588c75784f26a000f092d`  
		Last Modified: Thu, 15 Feb 2018 23:40:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86456dce79030cc72704bbefb74646c300fbe3f37484230355beb5ae9db8eca8`  
		Last Modified: Thu, 15 Feb 2018 23:40:22 GMT  
		Size: 4.5 KB (4495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc326eec39c6845ed7bcf39fb10f903e7b7e75a6a5b10ca18303fcc144bc6e0`  
		Last Modified: Thu, 15 Feb 2018 23:40:37 GMT  
		Size: 37.2 MB (37156504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc258d14fc1258efd8a119209c986b608a1e96ae79523eed8dc484510145f1da`  
		Last Modified: Thu, 15 Feb 2018 23:40:20 GMT  
		Size: 7.1 KB (7106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc08159b108c1ac19126aeec452406c3dfe712ef6dbd6d6d18f9cf5a73ffae56`  
		Last Modified: Thu, 15 Feb 2018 23:40:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62929a4b908011502f14ae66d9f837db7434937a3db430cdd86b14e7b7bfbdb`  
		Last Modified: Thu, 15 Feb 2018 23:40:20 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f0bae9729a896b29fb6cd0a4d82a9ff28103732dca714cd65a9b19a2cb31a7`  
		Last Modified: Thu, 15 Feb 2018 23:40:38 GMT  
		Size: 1.8 KB (1810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95803059fdf59cf2bf3c184bc4af23e6dbe2245180f4b68c3b5f5a86df9eb7d`  
		Last Modified: Thu, 15 Feb 2018 23:40:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.7` - linux; 386

```console
$ docker pull postgres@sha256:531be5484b497fcbd268251a349a1adb15d33a241046fa45f9863b6b9d782227
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.1 MB (106118833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:468277e8912e6ffe8eebffddfab68bc4d9c1ee529940e3907806ad139c678979`
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
# Mon, 19 Feb 2018 18:31:53 GMT
ENV PG_VERSION=9.6.7-1.pgdg80+1
# Mon, 19 Feb 2018 18:33:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Mon, 19 Feb 2018 18:33:22 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 19 Feb 2018 18:33:23 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 19 Feb 2018 18:33:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Mon, 19 Feb 2018 18:33:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 19 Feb 2018 18:33:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 19 Feb 2018 18:33:24 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 19 Feb 2018 18:33:25 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 19 Feb 2018 18:33:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Feb 2018 18:33:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Feb 2018 18:33:26 GMT
EXPOSE 5432/tcp
# Mon, 19 Feb 2018 18:33:26 GMT
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
	-	`sha256:6ae1369822e34fd4f6604c5d8b72ef78508a3ca059116b951bd905b7b9930661`  
		Last Modified: Mon, 19 Feb 2018 19:26:23 GMT  
		Size: 45.2 MB (45238165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa188ffc96304435e6ea037146de3c6c31fed7f59f905ea22c901dd23b20dc5`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 7.1 KB (7107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c438f801337e19aa6161dd58911ebc0e03120d521ed1371868c6e2569a49c928`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efe72ce7d7b9b4d70fba98293873c463a4451b3a416e9ff504d386e089b8de6`  
		Last Modified: Mon, 19 Feb 2018 19:26:05 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60147984778c6e1fba1b634977dc4d79c069f8a654c2fa73a7316bb5d61db75a`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35d3da35402e3a0425e5b39de1b213807e8b86cba819a50b5a2f56a3d84dc26`  
		Last Modified: Mon, 19 Feb 2018 19:26:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.7` - linux; ppc64le

```console
$ docker pull postgres@sha256:326a631295545d5993428007a86bbba42247f8d7864b5570c995c89622595a43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102363357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1087abf542af7ceebf35f1bb2bfffa90f9d25bc4d5caec3a7f0faebf901ff622`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 01:33:26 GMT
ADD file:c270c96a992cc36fd902f3afd3089df6f15461ed3cc58d8b9a2f77451383db39 in / 
# Thu, 15 Feb 2018 01:33:38 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:28:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:28:40 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 07:28:43 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:31:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 07:32:15 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 07:32:17 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 07:32:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 07:32:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 07:32:35 GMT
ENV PG_MAJOR=9.6
# Thu, 15 Feb 2018 07:32:37 GMT
ENV PG_VERSION=9.6.7-1.pgdg80+1
# Thu, 15 Feb 2018 07:40:37 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 07:40:52 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 07:41:01 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 07:41:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 15 Feb 2018 07:41:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 07:41:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 07:41:24 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 07:41:29 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:41:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 07:41:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:41:46 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 07:41:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8eaeb68187e190599df608fc805a2c2d9999ccc46a6ec9a48611b0aca5de945e`  
		Last Modified: Thu, 15 Feb 2018 01:41:55 GMT  
		Size: 51.8 MB (51817072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da267b8324589d9dc4e670c3c6062a20192c95992f537d5d683fdef57aa712a6`  
		Last Modified: Thu, 15 Feb 2018 08:09:51 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7587129ae2be4d0fa4f30eacad69a9fddce43c621b95417d2c20e346e35bef4`  
		Last Modified: Thu, 15 Feb 2018 08:09:52 GMT  
		Size: 954.3 KB (954287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5051bce96e69b1d77c6f9a54497a975105e13a6824e8eb3f9b8875a0c751d5`  
		Last Modified: Thu, 15 Feb 2018 08:09:52 GMT  
		Size: 7.1 MB (7113193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af2ace6824e7474d6b893aa3cac0f00e28519ae433b07f541dae65d8c174f65`  
		Last Modified: Thu, 15 Feb 2018 08:09:49 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b34189638b620bb4f4aa8ce17a7fc5f513ba02d9f35b8409a0fd52d2b68a4f`  
		Last Modified: Thu, 15 Feb 2018 08:09:49 GMT  
		Size: 4.5 KB (4493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220de9a270d4d86c9847635daaff4f84771591a9a22d596af7516b122ca266d5`  
		Last Modified: Thu, 15 Feb 2018 08:09:59 GMT  
		Size: 42.5 MB (42462694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bddf8e1f30c7f841079ba2edc89c882105ecec726dad6cb69f771dea9cbb87`  
		Last Modified: Thu, 15 Feb 2018 08:09:47 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40904ddd39bc8609f240ac9c427bab591aa5572329fc132f865986fec6c2b0ce`  
		Last Modified: Thu, 15 Feb 2018 08:09:46 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e51cd44d7d9cc9d282ec9ffacae4eb12356cf72635d85e00cf16b67cdcb8de2`  
		Last Modified: Thu, 15 Feb 2018 08:09:48 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bebed7232c309d2d0cb510a1a91ae7d556efe5b090df5075e7d1727664f6a1`  
		Last Modified: Thu, 15 Feb 2018 08:09:46 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18311603424f825ca57a7b6527d471cfec47ee86e062f624f5be490226913e5f`  
		Last Modified: Thu, 15 Feb 2018 08:09:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:9.6.7` - linux; s390x

```console
$ docker pull postgres@sha256:54f0c0cc18fa0b8513a680ebd8ce27e6bd257f27c345c859372056782e12811d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100584602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e55ed9d4299482db629c5088ff83556752227d744c239022befcfd669ca9ed62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:21:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:21:55 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 07:21:56 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:22:18 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 07:22:28 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 07:22:28 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 07:22:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 07:22:31 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 07:22:31 GMT
ENV PG_MAJOR=9.6
# Thu, 15 Feb 2018 07:22:32 GMT
ENV PG_VERSION=9.6.7-1.pgdg80+1
# Thu, 15 Feb 2018 07:31:10 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 		"postgresql-contrib-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 07:31:10 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 07:31:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 07:31:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/9.6/bin
# Thu, 15 Feb 2018 07:31:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 07:31:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 07:31:12 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 07:31:12 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:31:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 07:31:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:31:13 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 07:31:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7edd487f82557589b2f080179dcbd1f673858c75433d9e891e95d70a4d48f9`  
		Last Modified: Thu, 15 Feb 2018 07:56:03 GMT  
		Size: 2.1 KB (2097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52080ebd673a207dd59acb70defed683edd30768000383bcb091476f6edeb42b`  
		Last Modified: Thu, 15 Feb 2018 07:56:02 GMT  
		Size: 970.3 KB (970259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffaa04760cdbd271208aa1c188633875c8e23ae75d11d48014cf204fa05a9ff`  
		Last Modified: Thu, 15 Feb 2018 07:56:07 GMT  
		Size: 7.1 MB (7131239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8af31c324618b42751431df21b43983c8d95cc49c235bcc434c69aca30e6349`  
		Last Modified: Thu, 15 Feb 2018 07:56:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89096fd23a0029c5441ca3d3adfbbe4230943317bc4f8d9c22b68be95c1908af`  
		Last Modified: Thu, 15 Feb 2018 07:56:01 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719186e97695da123f3016ee642a85db7a11f39cf70c76ab666477115cb3bdb4`  
		Last Modified: Thu, 15 Feb 2018 07:56:09 GMT  
		Size: 39.7 MB (39672230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0592d8626cfdf6bf6cf0abaf0f3ac4c51e16f55c0e1897c984ea7995c86d102c`  
		Last Modified: Thu, 15 Feb 2018 07:56:00 GMT  
		Size: 7.1 KB (7109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad9ad2ffed68579ecfbac84643222ddae6951691f23c021901ee5afdeb54937`  
		Last Modified: Thu, 15 Feb 2018 07:56:00 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30dc3197494fafe7ddbe5d5f7e2d34a5bbce545f5f6c2ce541f245795696d405`  
		Last Modified: Thu, 15 Feb 2018 07:56:01 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6063ca720463406289da209fe81a40842742328b0077a9f09fcad9ed099e09b8`  
		Last Modified: Thu, 15 Feb 2018 07:56:00 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb87176d7cab195044b2f5a7b71c24ae6b9b8ac70e28ca45433bd7d1520af12`  
		Last Modified: Thu, 15 Feb 2018 07:56:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.7-alpine`

```console
$ docker pull postgres@sha256:7e5e82e43bd49bf311927f8bd13e5982938025d8a3dda6834beb0a0e1c6527a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6.7-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:73e2db7ccdbdaee94ff42ca7afbcbf9d1e5020c0139453ffcc1b0b924acf6f4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14699942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:613fcd71a3c8242c70e8eac911e9cfab7828d086cb03fcce0de4f356db691f58`
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
# Thu, 08 Feb 2018 23:59:53 GMT
ENV PG_VERSION=9.6.7
# Thu, 08 Feb 2018 23:59:53 GMT
ENV PG_SHA256=2ebe3df3c1d1eab78023bdc3ffa55a154aa84300416b075ef996598d78a624c6
# Fri, 09 Feb 2018 00:02:07 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 09 Feb 2018 00:02:08 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 09 Feb 2018 00:02:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Feb 2018 00:02:09 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Feb 2018 00:02:09 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Feb 2018 00:02:10 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Feb 2018 00:02:10 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Fri, 09 Feb 2018 00:02:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Feb 2018 00:02:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Feb 2018 00:02:11 GMT
EXPOSE 5432/tcp
# Fri, 09 Feb 2018 00:02:11 GMT
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
	-	`sha256:669d481ea2e8a1a6dbd936dac9d7fbcfbccdba361db7be5fd2ecf9b867d696ca`  
		Last Modified: Fri, 09 Feb 2018 00:21:54 GMT  
		Size: 12.7 MB (12720214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1d076dc72df60291eb8bc39d2aed6bfb66dec0e9722e024c867ad99c93cf8d`  
		Last Modified: Fri, 09 Feb 2018 00:21:46 GMT  
		Size: 7.1 KB (7078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dddf80a18f56bb4bffdf48b95a6d56a8636649e82fa57f8d14e9e5a9db7d145`  
		Last Modified: Fri, 09 Feb 2018 00:21:48 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647586d6cf373425e2cfaade000641e0817f5ff8638a0f03b0e6ea3df785e465`  
		Last Modified: Fri, 09 Feb 2018 00:21:46 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c9d28db46a7e79e990cac34a5193528c7eda76f3c7f5a4fba0dd0ce91bea67`  
		Last Modified: Fri, 09 Feb 2018 00:21:46 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203cf771e93d3c4daf41dc762b8e71eb77ea386e2a903829291dd80280b21066`  
		Last Modified: Fri, 09 Feb 2018 00:21:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:7e5e82e43bd49bf311927f8bd13e5982938025d8a3dda6834beb0a0e1c6527a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:73e2db7ccdbdaee94ff42ca7afbcbf9d1e5020c0139453ffcc1b0b924acf6f4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14699942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:613fcd71a3c8242c70e8eac911e9cfab7828d086cb03fcce0de4f356db691f58`
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
# Thu, 08 Feb 2018 23:59:53 GMT
ENV PG_VERSION=9.6.7
# Thu, 08 Feb 2018 23:59:53 GMT
ENV PG_SHA256=2ebe3df3c1d1eab78023bdc3ffa55a154aa84300416b075ef996598d78a624c6
# Fri, 09 Feb 2018 00:02:07 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 09 Feb 2018 00:02:08 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 09 Feb 2018 00:02:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Feb 2018 00:02:09 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Feb 2018 00:02:09 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Feb 2018 00:02:10 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Feb 2018 00:02:10 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Fri, 09 Feb 2018 00:02:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Feb 2018 00:02:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Feb 2018 00:02:11 GMT
EXPOSE 5432/tcp
# Fri, 09 Feb 2018 00:02:11 GMT
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
	-	`sha256:669d481ea2e8a1a6dbd936dac9d7fbcfbccdba361db7be5fd2ecf9b867d696ca`  
		Last Modified: Fri, 09 Feb 2018 00:21:54 GMT  
		Size: 12.7 MB (12720214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1d076dc72df60291eb8bc39d2aed6bfb66dec0e9722e024c867ad99c93cf8d`  
		Last Modified: Fri, 09 Feb 2018 00:21:46 GMT  
		Size: 7.1 KB (7078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dddf80a18f56bb4bffdf48b95a6d56a8636649e82fa57f8d14e9e5a9db7d145`  
		Last Modified: Fri, 09 Feb 2018 00:21:48 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647586d6cf373425e2cfaade000641e0817f5ff8638a0f03b0e6ea3df785e465`  
		Last Modified: Fri, 09 Feb 2018 00:21:46 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c9d28db46a7e79e990cac34a5193528c7eda76f3c7f5a4fba0dd0ce91bea67`  
		Last Modified: Fri, 09 Feb 2018 00:21:46 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203cf771e93d3c4daf41dc762b8e71eb77ea386e2a903829291dd80280b21066`  
		Last Modified: Fri, 09 Feb 2018 00:21:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:7e5e82e43bd49bf311927f8bd13e5982938025d8a3dda6834beb0a0e1c6527a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:73e2db7ccdbdaee94ff42ca7afbcbf9d1e5020c0139453ffcc1b0b924acf6f4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14699942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:613fcd71a3c8242c70e8eac911e9cfab7828d086cb03fcce0de4f356db691f58`
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
# Thu, 08 Feb 2018 23:59:53 GMT
ENV PG_VERSION=9.6.7
# Thu, 08 Feb 2018 23:59:53 GMT
ENV PG_SHA256=2ebe3df3c1d1eab78023bdc3ffa55a154aa84300416b075ef996598d78a624c6
# Fri, 09 Feb 2018 00:02:07 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 09 Feb 2018 00:02:08 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 09 Feb 2018 00:02:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 09 Feb 2018 00:02:09 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 09 Feb 2018 00:02:09 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 09 Feb 2018 00:02:10 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 09 Feb 2018 00:02:10 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Fri, 09 Feb 2018 00:02:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 09 Feb 2018 00:02:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 09 Feb 2018 00:02:11 GMT
EXPOSE 5432/tcp
# Fri, 09 Feb 2018 00:02:11 GMT
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
	-	`sha256:669d481ea2e8a1a6dbd936dac9d7fbcfbccdba361db7be5fd2ecf9b867d696ca`  
		Last Modified: Fri, 09 Feb 2018 00:21:54 GMT  
		Size: 12.7 MB (12720214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1d076dc72df60291eb8bc39d2aed6bfb66dec0e9722e024c867ad99c93cf8d`  
		Last Modified: Fri, 09 Feb 2018 00:21:46 GMT  
		Size: 7.1 KB (7078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dddf80a18f56bb4bffdf48b95a6d56a8636649e82fa57f8d14e9e5a9db7d145`  
		Last Modified: Fri, 09 Feb 2018 00:21:48 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647586d6cf373425e2cfaade000641e0817f5ff8638a0f03b0e6ea3df785e465`  
		Last Modified: Fri, 09 Feb 2018 00:21:46 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c9d28db46a7e79e990cac34a5193528c7eda76f3c7f5a4fba0dd0ce91bea67`  
		Last Modified: Fri, 09 Feb 2018 00:21:46 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203cf771e93d3c4daf41dc762b8e71eb77ea386e2a903829291dd80280b21066`  
		Last Modified: Fri, 09 Feb 2018 00:21:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:2cdf8430d7c1f59b3d3808f672944491aabf0fdf15da5b5e158e9fa4162453bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:alpine` - linux; amd64

```console
$ docker pull postgres@sha256:f398f22411195ff70e7bbbd1001d22270ab5d556f653ef55a47c149a58b5edd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14944943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400ef39e0dbfc3444bc4145791a247696504b1c81ea6a223052180f3d921efd2`
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
# Sun, 18 Feb 2018 02:31:32 GMT
ENV PG_VERSION=10.2
# Sun, 18 Feb 2018 02:31:32 GMT
ENV PG_SHA256=fe32009b62ddb97f7f014307ce9d0edb6972f5a698e63cb531088e147d145bad
# Sun, 18 Feb 2018 02:34:20 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sun, 18 Feb 2018 02:34:27 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sun, 18 Feb 2018 02:34:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sun, 18 Feb 2018 02:34:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sun, 18 Feb 2018 02:34:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sun, 18 Feb 2018 02:34:29 GMT
VOLUME [/var/lib/postgresql/data]
# Sun, 18 Feb 2018 02:34:30 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sun, 18 Feb 2018 02:34:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sun, 18 Feb 2018 02:34:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 02:34:31 GMT
EXPOSE 5432/tcp
# Sun, 18 Feb 2018 02:34:31 GMT
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
	-	`sha256:8df57d533e713644605296e9c7def657bb2c60b21b9dfbc7c07d19d346fd1057`  
		Last Modified: Sun, 18 Feb 2018 02:35:13 GMT  
		Size: 12.9 MB (12869657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7858f71c02fb07429d05aba2b2acd0beb7a1d193e4cf8702aefaa7721ccb6806`  
		Last Modified: Sun, 18 Feb 2018 02:35:08 GMT  
		Size: 7.3 KB (7265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a8ef17ba590373cac326f921e907032a42fef66d1c089ba4b3345700f4ccac`  
		Last Modified: Sun, 18 Feb 2018 02:35:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb44f23d3230288aa1adbf9e6672123b71c73010570dfe2afbe3b40d9f4986c`  
		Last Modified: Sun, 18 Feb 2018 02:35:08 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65cad41156b38bf3be12ed04eb52f787fd68c7f92f7a71b32a313bf06bba0178`  
		Last Modified: Sun, 18 Feb 2018 02:35:08 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5492a5bead708f24738bbff12373f374c8a50ef0a9b7c176f15b033f20ecd5b5`  
		Last Modified: Sun, 18 Feb 2018 02:35:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:a9ee94a08ba3b8d7ea01771f3bdfb93160d98305a3698ebd19893d0d0ad1ad97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13765946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e100be15798c16bf810c7b00f7e53632f6b3c8b2bafdb81dc3db11eb9a5466c1`
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
# Sun, 18 Feb 2018 15:21:18 GMT
ENV PG_VERSION=10.2
# Sun, 18 Feb 2018 15:21:19 GMT
ENV PG_SHA256=fe32009b62ddb97f7f014307ce9d0edb6972f5a698e63cb531088e147d145bad
# Sun, 18 Feb 2018 15:25:30 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sun, 18 Feb 2018 15:25:32 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sun, 18 Feb 2018 15:25:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sun, 18 Feb 2018 15:25:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sun, 18 Feb 2018 15:25:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sun, 18 Feb 2018 15:25:36 GMT
VOLUME [/var/lib/postgresql/data]
# Sun, 18 Feb 2018 15:25:36 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sun, 18 Feb 2018 15:25:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sun, 18 Feb 2018 15:25:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 15:25:39 GMT
EXPOSE 5432/tcp
# Sun, 18 Feb 2018 15:25:40 GMT
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
	-	`sha256:08af2de580acbc5d587e6a824a927b0fe60fcf8f7f6c1569326939b625532099`  
		Last Modified: Sun, 18 Feb 2018 15:26:23 GMT  
		Size: 11.8 MB (11767164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9996e061e4be176b70afe80ea37b1f8d33a69769a30d8f91652138f44255f87`  
		Last Modified: Sun, 18 Feb 2018 15:26:20 GMT  
		Size: 7.3 KB (7268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03b674831a0f9fa948624188c66f9533db1acfa621f5ba198779cc65023dca5`  
		Last Modified: Sun, 18 Feb 2018 15:26:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1297a4ee831cf3d257ddf1495c4921f639d5b83f92e8d1313b38ddc1851b54d6`  
		Last Modified: Sun, 18 Feb 2018 15:26:33 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994cfba0fef513b114ca1a7d1e9c61861decfe4afa08fe155c7a598170c2b128`  
		Last Modified: Sun, 18 Feb 2018 15:26:17 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6f68f4ad222272f189352a764f1a551ef2e32411b77fd34b50c4086ad1af5b`  
		Last Modified: Sun, 18 Feb 2018 15:26:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; 386

```console
$ docker pull postgres@sha256:d3555802297c38d1afccd4106c0090ad6b4e50782e8e4ca84d3ffa208732e9b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15475622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1699e1153d54432667339c14fb6343226dad448743eba337411c169bb12abcb`
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
# Mon, 19 Feb 2018 18:00:43 GMT
ENV PG_VERSION=10.2
# Mon, 19 Feb 2018 18:00:44 GMT
ENV PG_SHA256=fe32009b62ddb97f7f014307ce9d0edb6972f5a698e63cb531088e147d145bad
# Mon, 19 Feb 2018 18:04:03 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 19 Feb 2018 18:10:09 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 19 Feb 2018 18:10:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 19 Feb 2018 18:14:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 19 Feb 2018 18:14:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 19 Feb 2018 18:14:17 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 19 Feb 2018 18:14:18 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Mon, 19 Feb 2018 18:14:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Feb 2018 18:14:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Feb 2018 18:14:31 GMT
EXPOSE 5432/tcp
# Mon, 19 Feb 2018 18:14:32 GMT
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
	-	`sha256:2eaba36c9608986f0081ce97483d4c30f9ee7f41a4f56db7e66196d3958960a7`  
		Last Modified: Mon, 19 Feb 2018 19:17:18 GMT  
		Size: 13.3 MB (13339473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb056fb4b78b9b5a9ae239b1c86e5e7e10ef26b8f0ffb5703205aad4d358b99`  
		Last Modified: Mon, 19 Feb 2018 19:17:11 GMT  
		Size: 7.3 KB (7271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c074b2a5a2afe390e262a888a9846fd0755050cc0a7280cabda8f47278b3c5fd`  
		Last Modified: Mon, 19 Feb 2018 19:17:12 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afd1738250282ad75098455f5362e55f2dee39b1fd6b25cd44a05ade5639635`  
		Last Modified: Mon, 19 Feb 2018 19:17:11 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ffbd5ae38888413f585ddeedd405ab2df03e7c1fb8e6ea366d026ad6ef842c`  
		Last Modified: Mon, 19 Feb 2018 19:17:11 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b137a6a6018736280768ceb576c69cc81609a1fd5362c284ad3249bb622a1da0`  
		Last Modified: Mon, 19 Feb 2018 19:17:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:5a746cb0429faad3e0a066c8991dde580be06fee97cae2d8333d2a8980766442
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14615123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e62ff457217a33da49fe08a84a67fb16276783a23c3deeff743170c595070e75`
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
# Sat, 17 Feb 2018 23:01:50 GMT
ENV PG_VERSION=10.2
# Sat, 17 Feb 2018 23:01:51 GMT
ENV PG_SHA256=fe32009b62ddb97f7f014307ce9d0edb6972f5a698e63cb531088e147d145bad
# Sat, 17 Feb 2018 23:04:45 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sat, 17 Feb 2018 23:04:49 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sat, 17 Feb 2018 23:04:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 17 Feb 2018 23:04:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 17 Feb 2018 23:04:58 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 17 Feb 2018 23:04:59 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 17 Feb 2018 23:05:01 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sat, 17 Feb 2018 23:05:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 23:05:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 23:05:12 GMT
EXPOSE 5432/tcp
# Sat, 17 Feb 2018 23:05:14 GMT
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
	-	`sha256:9dc376f423a61fba740fb108149f5d7c51c557e791f4b4b9c13690903edf0fee`  
		Last Modified: Sat, 17 Feb 2018 23:05:44 GMT  
		Size: 12.5 MB (12523611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd33ffccd2e488aabefffd05b8a87c36fdeee99cdbc17b62122fb76ee14eb3`  
		Last Modified: Sat, 17 Feb 2018 23:05:38 GMT  
		Size: 7.3 KB (7265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201808e2b7378852011d655dc2f9336e5a408d81d1d0a8f2aa943cfb920f0120`  
		Last Modified: Sat, 17 Feb 2018 23:05:38 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8179f44712a614e6b3668cefa68968a7c49fb289a0450ed71e0d40ad343c13`  
		Last Modified: Sat, 17 Feb 2018 23:05:38 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff99b03e20f4a2ef3b26917cf62e792e206519ec05ea1222c8f5ad2c6a79e463`  
		Last Modified: Sat, 17 Feb 2018 23:05:38 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8ea3594befccee0f8df96b61f8b564ae943ca1bcafadce15684f34dc327811`  
		Last Modified: Sat, 17 Feb 2018 23:05:38 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:alpine` - linux; s390x

```console
$ docker pull postgres@sha256:8e58175dde623d14957ebaa06e4875947b08e0087500c8a8f6baf873fab0d8ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14560594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:889c0e17b6196b480363185e229caee4cd00dc350a2bed9f64bf75586258235f`
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
# Sun, 18 Feb 2018 10:25:36 GMT
ENV PG_VERSION=10.2
# Sun, 18 Feb 2018 10:25:36 GMT
ENV PG_SHA256=fe32009b62ddb97f7f014307ce9d0edb6972f5a698e63cb531088e147d145bad
# Sun, 18 Feb 2018 10:27:53 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Sun, 18 Feb 2018 10:27:53 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Sun, 18 Feb 2018 10:27:54 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sun, 18 Feb 2018 10:27:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sun, 18 Feb 2018 10:27:54 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sun, 18 Feb 2018 10:27:55 GMT
VOLUME [/var/lib/postgresql/data]
# Sun, 18 Feb 2018 10:27:55 GMT
COPY file:46ab8d38fd55d223afd8acf3c85c0aa94676776fce8f7fe7ac826a3153cb618f in /usr/local/bin/ 
# Sun, 18 Feb 2018 10:27:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sun, 18 Feb 2018 10:27:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 18 Feb 2018 10:27:56 GMT
EXPOSE 5432/tcp
# Sun, 18 Feb 2018 10:27:56 GMT
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
	-	`sha256:fde2daa3cd3f7041b0e70b2e5f9f5565fbc3dab681581d64582dee4e501e55a3`  
		Last Modified: Sun, 18 Feb 2018 10:28:28 GMT  
		Size: 12.4 MB (12365437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a360256a57a9e554b56f745c67126db21d3b06083b8333db0afcbf43cb593f`  
		Last Modified: Sun, 18 Feb 2018 10:28:25 GMT  
		Size: 7.3 KB (7268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f67ff4026ffd1fdf0bc77c31b8aabd81293a7562074b1d62b4562a851abcf13`  
		Last Modified: Sun, 18 Feb 2018 10:28:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88963822628011d556b55b317d505942f667f63768a068356e4445eec4898692`  
		Last Modified: Sun, 18 Feb 2018 10:28:25 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eeb69990cb5f48e47909172c25b8b7dc1515123f3355b275136219521151f78`  
		Last Modified: Sun, 18 Feb 2018 10:28:25 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:260d98c3fdb6bb15085e1a9572dc14c5a81ffbd4ffa982b698423738312efd0c`  
		Last Modified: Sun, 18 Feb 2018 10:28:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:7361bae1fbf5642099663d1f02dc949cabde1f86727bf8ff00d0a8806640a617
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
$ docker pull postgres@sha256:d6018a7a3c9069c2605543692f10a9cd6d272c3d30efbac9b4d61eeb2215601d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117067459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12289de6f8875c39365fec0050c3a4da9bde1f22ae9a0d24563f65e37021289`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 10:24:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 10:24:43 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 10:24:44 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 10:33:19 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 10:33:26 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 10:33:27 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 10:33:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Feb 2018 22:26:34 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 16 Feb 2018 22:26:34 GMT
ENV PG_MAJOR=10
# Fri, 16 Feb 2018 22:26:35 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Fri, 16 Feb 2018 22:26:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Feb 2018 22:26:59 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 16 Feb 2018 22:26:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 16 Feb 2018 22:26:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 16 Feb 2018 22:27:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 16 Feb 2018 22:27:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 16 Feb 2018 22:27:01 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 16 Feb 2018 22:27:01 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Fri, 16 Feb 2018 22:27:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 22:27:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 22:27:02 GMT
EXPOSE 5432/tcp
# Fri, 16 Feb 2018 22:27:03 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c47120e994bb4fd9a596de1a79ef30292f2d3730df237e90be6d38e97f15975`  
		Last Modified: Fri, 16 Feb 2018 22:44:40 GMT  
		Size: 6.9 MB (6921125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f766d668e8ae6a61e26c66f7b7ab2577630c0b512b423838097bedfde433a4a`  
		Last Modified: Fri, 16 Feb 2018 22:44:35 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25131cac3889825c43578c3f0b39b61afe29b87bd6565826dab5cf1505da3fe7`  
		Last Modified: Fri, 16 Feb 2018 22:44:34 GMT  
		Size: 956.6 KB (956622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d99bc5f521bdda34aa9c8a0a7c3942a118729e01c368784c402acbc7ef2410`  
		Last Modified: Fri, 16 Feb 2018 22:44:36 GMT  
		Size: 6.6 MB (6577462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f77b20404c200f0e27c3c7580565b36da729992f59d24d82a7617c1f33bb9e`  
		Last Modified: Fri, 16 Feb 2018 22:44:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f170bb6b5bb2896d1ef7f398e20926e6ded2629110aeae378a42bffafbb4ed6a`  
		Last Modified: Fri, 16 Feb 2018 22:44:33 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d81ba24d2ff3eaf39499938fba74b5dd58723ddf3f3bedb9264ffea821ea9a`  
		Last Modified: Fri, 16 Feb 2018 22:44:50 GMT  
		Size: 57.5 MB (57463753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a967418f27eaacd21af8dba2247749571a5e929bf82eca68d8b35b1afb05585`  
		Last Modified: Fri, 16 Feb 2018 22:44:31 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2be162d20ac0a98d0be6cff08490c13edf3015d07d27ca7181fda8307a619ea`  
		Last Modified: Fri, 16 Feb 2018 22:44:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809054a7d3a4f0de82c5b863652f12ff3ba7e876df1f0365af59a404b57cb5b`  
		Last Modified: Fri, 16 Feb 2018 22:44:31 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330d4f0775cdeb8d5410f97ba876e1618390bc55cff8ecdbc5be8982c4001b10`  
		Last Modified: Fri, 16 Feb 2018 22:44:31 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff84a9ce0acbe723089641f6856e93ac1329c02fded3e764b8e986473a3b6b7f`  
		Last Modified: Fri, 16 Feb 2018 22:44:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v5

```console
$ docker pull postgres@sha256:4fc217e32a595b7c4f0166b3d384c838b6bed2ea824f12e2c768f2cdf997a2d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116360831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbe0d9555c4e5ed34ef814d562c5c685a1e7054079f02582a5a29f0fe1671311`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:04 GMT
ADD file:9b55f7842213fac6c45e64fd742a0d28f0b11a4d7e9a9e76d85eac96922d84dd in / 
# Thu, 15 Feb 2018 21:00:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:12:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 23:12:54 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 23:12:54 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 23:13:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 23:13:47 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 23:13:47 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 23:13:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 07:38:44 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 07:38:45 GMT
ENV PG_MAJOR=10
# Sat, 17 Feb 2018 07:38:45 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Sat, 17 Feb 2018 07:58:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Feb 2018 07:58:17 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 17 Feb 2018 07:58:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 17 Feb 2018 07:58:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Sat, 17 Feb 2018 07:58:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 17 Feb 2018 07:58:19 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 17 Feb 2018 07:58:19 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 17 Feb 2018 07:58:20 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Sat, 17 Feb 2018 07:58:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 07:58:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 07:58:21 GMT
EXPOSE 5432/tcp
# Sat, 17 Feb 2018 07:58:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0fe3809766afc6e60be7b2e9b8874666da1dac184bea1d9ee6d9de13ac28e501`  
		Last Modified: Thu, 15 Feb 2018 21:10:11 GMT  
		Size: 43.8 MB (43814325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f9e17cc1ed6cf83464860daa2e25322c578dc1addc667bd4088039851901ee`  
		Last Modified: Sat, 17 Feb 2018 07:58:56 GMT  
		Size: 6.7 MB (6654912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44f7cef28382b7925f93ec80035232e4c6bb5ef88e1247361ff94475faff53e`  
		Last Modified: Sat, 17 Feb 2018 07:58:54 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4988ec130299b32d9eebcd5700b9b4ae693f3eb2330fcce099f7e108205de6`  
		Last Modified: Sat, 17 Feb 2018 07:58:53 GMT  
		Size: 946.8 KB (946759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a9ee15b2f58c81d9478c47cc39e492dc4f3311fd80d318cea9b7053daae356`  
		Last Modified: Sat, 17 Feb 2018 07:58:55 GMT  
		Size: 6.6 MB (6577549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0eb6246399ce102c9b596d94b572943a968af470e99e2409e00d09c3bb0b59e`  
		Last Modified: Sat, 17 Feb 2018 07:58:52 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf39e79c54f85f3fb2939c7ad81355edb761074210a94466f81f7ef7d085cd58`  
		Last Modified: Sat, 17 Feb 2018 07:58:52 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6197ee7a4f39dfd39e58de4486cc16ff8ba085740d676394374ebb0bf92beab`  
		Last Modified: Sat, 17 Feb 2018 07:59:10 GMT  
		Size: 58.4 MB (58351354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcc81bd0e0aa22fc6793ccd7fdffa7ad6b88f9118678055e2b5579910828d97`  
		Last Modified: Sat, 17 Feb 2018 07:58:51 GMT  
		Size: 7.3 KB (7298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5110655c7758be4b36cbfe027ef3a8dcc09c0f43f42f6c288613c8ca928a3051`  
		Last Modified: Sat, 17 Feb 2018 07:58:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c4486d6ac4bdd5ae2311e42bfb6f5736d1b8f0aca56f2dac07d02053a436b5`  
		Last Modified: Sat, 17 Feb 2018 07:58:51 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3823f84966440463c50f49c2661b15649a33ffedc981525edda6b5ef4c86c3b4`  
		Last Modified: Sat, 17 Feb 2018 07:58:51 GMT  
		Size: 1.8 KB (1808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34188abd9c2b04dc1cb7f422257306197d5b019276519febbf2a192ffffcaa8`  
		Last Modified: Sat, 17 Feb 2018 07:58:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm variant v7

```console
$ docker pull postgres@sha256:6457861283f8ad64296da3ed122fc968cf59c6a879a621fc4a61002cbff11dea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.3 MB (112323834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a15f5ce297794e2559a786c0f90a7776ea561ac6a884aed921bd2f9fa32cb017`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 13:30:55 GMT
ADD file:58c4e4829c3db6bdb6063ee3ca04776b696772f592f70cb29d5196788c3608da in / 
# Thu, 15 Feb 2018 13:30:56 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 15:45:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 15:45:19 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 15:45:19 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 15:45:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 15:45:43 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 15:45:43 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 15:45:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 15:45:48 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 15:45:48 GMT
ENV PG_MAJOR=10
# Thu, 15 Feb 2018 15:45:48 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Thu, 15 Feb 2018 16:02:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 16:03:04 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 16:03:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 16:03:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Thu, 15 Feb 2018 16:03:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 16:03:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 16:03:12 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 16:03:12 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 15 Feb 2018 16:03:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 16:03:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 16:03:32 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 16:03:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c0518139464abb63e1069cd4c638aad760a6cb319660ae2229921b17c703441b`  
		Last Modified: Thu, 15 Feb 2018 13:40:56 GMT  
		Size: 41.9 MB (41859666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d616d2c78693ee53aff4194714a94eb76c155b6dafa0358e12a877771e89d8`  
		Last Modified: Thu, 15 Feb 2018 17:15:30 GMT  
		Size: 6.3 MB (6292327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce106eb6165148abb11f205da674a34c30b3c7e158fca4cc29b91217a239f67`  
		Last Modified: Thu, 15 Feb 2018 17:15:29 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1fc8f02160af5c23c76693bfd886572bcde35a2fa52f3fe687b4c5d5d12758`  
		Last Modified: Thu, 15 Feb 2018 17:15:27 GMT  
		Size: 931.3 KB (931267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea804fd1a48e554c4c49f7a47692d8746a860ec2fc295e5472c192a69dcb56f`  
		Last Modified: Thu, 15 Feb 2018 17:15:28 GMT  
		Size: 6.6 MB (6577473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643755d2cb7c278212a1d6a27a7b8b9a14501a7157ca135c877e27e096c8b361`  
		Last Modified: Thu, 15 Feb 2018 17:15:26 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9b663a45706370fbfae52ffa109e203d2881f6fae80ae9640247f263f89cce`  
		Last Modified: Thu, 15 Feb 2018 17:15:26 GMT  
		Size: 4.5 KB (4482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37bca4aca0ed6e5b2d76857a99d1ca705e5346136d0a7ad9697c60fc3478d61`  
		Last Modified: Thu, 15 Feb 2018 17:15:42 GMT  
		Size: 56.6 MB (56647179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b269a448278c3b3ca37b100054ac315eaa90ffcde6ff57df4035f7242e9dc95`  
		Last Modified: Thu, 15 Feb 2018 17:15:23 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed303d87b4832e844d5603e957f7ba3ba156afb14056894835cacebfb4bf46d`  
		Last Modified: Thu, 15 Feb 2018 17:15:24 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbefc61bc6d0a3221452f6145e2b26ebe036501ba98950859a68cab6e7fc6d7`  
		Last Modified: Thu, 15 Feb 2018 17:15:23 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c413efc9d8e9736d612468539f292c6515338bd4d4a5e773e14586dea388f28`  
		Last Modified: Thu, 15 Feb 2018 17:15:23 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd553069ce07dee646d74740997ad77b7ac8520425ab0fb831d9a909aa4b98f1`  
		Last Modified: Thu, 15 Feb 2018 17:15:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:f4d46ed863e7953718f592f143de93a8750c337085d38d417a7a6fe69691bb10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114345617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a07136cde4d294957f8a5edaf8d179a63da578df6f1e46f50d9ebc263424955f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 20:46:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 20:46:43 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 20:46:45 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 20:48:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 15 Feb 2018 20:48:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 15 Feb 2018 20:48:34 GMT
ENV LANG=en_US.utf8
# Thu, 15 Feb 2018 20:48:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 20:48:43 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 20:48:45 GMT
ENV PG_MAJOR=10
# Thu, 15 Feb 2018 20:48:46 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Thu, 15 Feb 2018 21:25:31 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Thu, 15 Feb 2018 21:25:36 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 15 Feb 2018 21:25:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 15 Feb 2018 21:25:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Thu, 15 Feb 2018 21:25:39 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 15 Feb 2018 21:25:40 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 15 Feb 2018 21:25:41 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 15 Feb 2018 21:25:42 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Thu, 15 Feb 2018 21:25:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 21:25:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 21:25:45 GMT
EXPOSE 5432/tcp
# Thu, 15 Feb 2018 21:25:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70010a5599931ba80bb015f616aaae236fa4adde9761ad24be4d3644eb8240b8`  
		Last Modified: Thu, 15 Feb 2018 23:38:56 GMT  
		Size: 6.5 MB (6496221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74c9e7561d43f544a2c9caff4b9d217148acb631128ac1ec6601f7b06c1305b`  
		Last Modified: Thu, 15 Feb 2018 23:38:50 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d687cf1b5a4bb2281170b2c22e9cc7f0265f3947aab01485fcdcf1b2d6e7a25c`  
		Last Modified: Thu, 15 Feb 2018 23:38:49 GMT  
		Size: 924.3 KB (924263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:238eab10f43d5259cd4c8a6a401212fd334fb9a26163a291dae71f79be1bbee1`  
		Last Modified: Thu, 15 Feb 2018 23:38:54 GMT  
		Size: 6.6 MB (6577363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae952b7802418beb8a61181e858715448e91a1c2b254add75318a43e96d709d`  
		Last Modified: Thu, 15 Feb 2018 23:38:48 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f9245153a1061d241f49d2e6d42621db30492b33b17cce1125af96a7cce410`  
		Last Modified: Thu, 15 Feb 2018 23:38:48 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7129fc25117c5dc7a55f7c76e7f0b54a4924c8d7600a31532c8b778d486bf99d`  
		Last Modified: Thu, 15 Feb 2018 23:39:29 GMT  
		Size: 57.4 MB (57409980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4d226913662d5468c759e3308477b6514b76c411624ecb209f583e5b1953dd`  
		Last Modified: Thu, 15 Feb 2018 23:38:46 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53d949ac7c23190823c1656e7e736b5d84b389f3e5329d80f572e7dfa5c9151`  
		Last Modified: Thu, 15 Feb 2018 23:38:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca07201f01ceed97fca079867ea6e0dd499be2cf31196d99f55bd24d0ad0e35d`  
		Last Modified: Thu, 15 Feb 2018 23:38:46 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ff556e33ade7eddf892ca64ff11dee3a47c6308ba1d54f3ea5ba8f6012919c`  
		Last Modified: Thu, 15 Feb 2018 23:38:46 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc52541debc7f1f76bce2957fbde9c1c0af94c8fa88982eaa1350c3e2704d27`  
		Last Modified: Thu, 15 Feb 2018 23:38:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:latest` - linux; 386

```console
$ docker pull postgres@sha256:94d035cda420ffc5dbcddc4a640ebe75d4ad2e22424921c8ba63c84d48cf4b80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119141955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5f254aca371bebfb69e7c88c1d203c33c8fbe8799adf7c0cabc7f9cec4b83de`
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
# Fri, 16 Feb 2018 14:34:38 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Fri, 16 Feb 2018 14:44:01 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Fri, 16 Feb 2018 14:44:03 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 16 Feb 2018 14:44:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 16 Feb 2018 14:44:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Fri, 16 Feb 2018 14:44:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 16 Feb 2018 14:44:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 16 Feb 2018 14:44:06 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 16 Feb 2018 14:44:06 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Fri, 16 Feb 2018 14:44:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 14:44:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 14:44:08 GMT
EXPOSE 5432/tcp
# Fri, 16 Feb 2018 14:44:08 GMT
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
	-	`sha256:198901e0b9cc74affa3e3a91bc4551ddeb7dfb30b1d815c4f6b434aaf6da4df0`  
		Last Modified: Fri, 16 Feb 2018 15:00:34 GMT  
		Size: 58.5 MB (58548443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5425dd2d29782fa3e7deb9ec4ef300f0069cfaf23f72fd144fc0b0e12144959a`  
		Last Modified: Fri, 16 Feb 2018 15:00:11 GMT  
		Size: 7.3 KB (7300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e802730f1ba3477b5c202c227a9abc1e517cbcb3677a28a8c0b65af61f93c4c`  
		Last Modified: Fri, 16 Feb 2018 15:00:10 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72e2e6c392d105bc40a596cbb2ede9f3da913745d79744f4b9573e8f3b325c3`  
		Last Modified: Fri, 16 Feb 2018 15:00:10 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1e7ceff63787f46c0c3793c3bcbe7b02cb12a3093c463d5d8bc99d13770d32`  
		Last Modified: Fri, 16 Feb 2018 15:00:10 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2648c6b3913528d4883f37028221a34270d2727877a94b47ebc73c97a47d8174`  
		Last Modified: Fri, 16 Feb 2018 15:00:10 GMT  
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
$ docker pull postgres@sha256:63d18f379f64bff6335dd99ca3938b12ea2e2fc3aa77b23e87ffe643798d9c23
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.3 MB (119262412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b6b7bd361a3b7b69531b2c16766a38b0f3a89e9243f5a49ff16180dd2d42273`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:07 GMT
ADD file:01afc5861263642b3ae4beb3dedd40e7edb1e65d86c4368a502a15247a39a3c1 in / 
# Thu, 15 Feb 2018 06:24:07 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:21:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 07:21:18 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 15 Feb 2018 07:21:19 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 06:39:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Feb 2018 06:39:13 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 17 Feb 2018 06:39:13 GMT
ENV LANG=en_US.utf8
# Sat, 17 Feb 2018 06:39:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 06:39:18 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 06:39:18 GMT
ENV PG_MAJOR=10
# Sat, 17 Feb 2018 06:39:18 GMT
ENV PG_VERSION=10.2-1.pgdg90+1
# Sat, 17 Feb 2018 06:48:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64|i386|ppc64el) 			echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 			apt-get update; 			;; 		*) 			echo "deb-src http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main $PG_MAJOR" > /etc/apt/sources.list.d/pgdg.list; 						tempDir="$(mktemp -d)"; 			cd "$tempDir"; 						savedAptMark="$(apt-mark showmanual)"; 						apt-get update; 			apt-get build-dep -y 				postgresql-common pgdg-keyring 				"postgresql-$PG_MAJOR=$PG_VERSION" 			; 			DEB_BUILD_OPTIONS="nocheck parallel=$(nproc)" 				apt-get source --compile 					postgresql-common pgdg-keyring 					"postgresql-$PG_MAJOR=$PG_VERSION" 			; 						apt-mark showmanual | xargs apt-mark auto > /dev/null; 			apt-mark manual $savedAptMark; 						ls -lAFh; 			dpkg-scanpackages . > Packages; 			grep '^Package: ' Packages; 			echo "deb [ trusted=yes ] file://$tempDir ./" > /etc/apt/sources.list.d/temp.list; 			apt-get -o Acquire::GzipIndexes=false update; 			;; 	esac; 		apt-get install -y postgresql-common; 	sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf; 	apt-get install -y 		"postgresql-$PG_MAJOR=$PG_VERSION" 	; 		rm -rf /var/lib/apt/lists/*; 		if [ -n "$tempDir" ]; then 		apt-get purge -y --auto-remove; 		rm -rf "$tempDir" /etc/apt/sources.list.d/temp.list; 	fi
# Sat, 17 Feb 2018 06:48:25 GMT
RUN mv -v "/usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample" /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample "/usr/share/postgresql/$PG_MAJOR/" 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 17 Feb 2018 06:48:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Sat, 17 Feb 2018 06:48:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/10/bin
# Sat, 17 Feb 2018 06:48:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 17 Feb 2018 06:48:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Sat, 17 Feb 2018 06:48:26 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 17 Feb 2018 06:48:27 GMT
COPY file:0926e9f3942bfecc57a10e7e66cef7fbad280b6a2258d4089f30791e4f409fd7 in /usr/local/bin/ 
# Sat, 17 Feb 2018 06:48:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 06:48:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 06:48:27 GMT
EXPOSE 5432/tcp
# Sat, 17 Feb 2018 06:48:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:964d84d1f29ab606f833ed91af2d80183a542335d5c85f61d55a80b6c2dbdd32`  
		Last Modified: Thu, 15 Feb 2018 01:20:26 GMT  
		Size: 45.0 MB (44971889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b133e15566ea9810f8761c1bfc4f7ccbe214381fc98567295f179bc823743df`  
		Last Modified: Sat, 17 Feb 2018 06:49:06 GMT  
		Size: 7.0 MB (6952920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4951cbf7e6c6928c60b7439506f99a185190547eae9b862e3091078b8d98afca`  
		Last Modified: Sat, 17 Feb 2018 06:49:03 GMT  
		Size: 1.8 KB (1751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3018259af35a4824588f794ac060c258236d29d774a0e11cbf33221482aadfdd`  
		Last Modified: Sat, 17 Feb 2018 06:49:02 GMT  
		Size: 942.3 KB (942291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac38d028306bb710b3ce908b7dbeea5f5bdc2677874ca24f6927205513c208f2`  
		Last Modified: Sat, 17 Feb 2018 06:49:04 GMT  
		Size: 6.6 MB (6598742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a942b3ec545ae390756db48c51b4aaf8c26e879276832edecda55fbf6ab7ea29`  
		Last Modified: Sat, 17 Feb 2018 06:49:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0ace3cf1f5552c3a29561025284c69d15bdeb7ef7049119b96054e86a00d01`  
		Last Modified: Sat, 17 Feb 2018 06:49:02 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94dd36f49142b8057f834b4778107f77fe10a099fffbdffe1dfef513223a9bdf`  
		Last Modified: Sat, 17 Feb 2018 06:49:13 GMT  
		Size: 59.8 MB (59780695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74876c2fbe49770caf84b7356602c8f5fb9120c0e9138404faa92037bb0543db`  
		Last Modified: Sat, 17 Feb 2018 06:49:01 GMT  
		Size: 7.3 KB (7297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc31ea4af17a13f32ca10d5eb96e6e224c7c74dbc7bd7b3c5eec7ca150d6e37`  
		Last Modified: Sat, 17 Feb 2018 06:49:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a513616189132d1feacf29eed43c59416d51620eda7053fa1de3b70b8b1951a4`  
		Last Modified: Sat, 17 Feb 2018 06:49:01 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726c6113ce61e8897fd9f3911795b2246535d289945d89aa89adec219f7604e9`  
		Last Modified: Sat, 17 Feb 2018 06:49:01 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee31d0a97084e9915b2a49409d9c6908bd25fca14816986af783fdf519eae6dd`  
		Last Modified: Sat, 17 Feb 2018 06:49:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
