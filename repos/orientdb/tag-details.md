<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.37`](#orientdb2237)
-	[`orientdb:2.2.37-spatial`](#orientdb2237-spatial)
-	[`orientdb:3.0.13`](#orientdb3013)
-	[`orientdb:3.0.13-tp3`](#orientdb3013-tp3)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:003dae350b9e6bcdff11951f8e6411c8e76960087adf7c05971cafd69b0975a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

```console
$ docker pull orientdb@sha256:fbd3cc78a76ba95e5c79991b0dd2df24d3972347d82de5b0dab912678bbed0c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291983791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e93bb88228f4719469b65da3c4a52f181640385ddbc3518407c074edc8fa00f`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:06:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:11:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:16:38 GMT
ENV LANG=C.UTF-8
# Tue, 22 Jan 2019 21:16:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 22 Jan 2019 21:16:40 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 22 Jan 2019 21:16:40 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 22 Jan 2019 21:16:41 GMT
ENV JAVA_VERSION=8u181
# Tue, 22 Jan 2019 21:16:41 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 22 Jan 2019 21:17:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 07:07:09 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 23 Jan 2019 07:07:09 GMT
ENV ORIENTDB_VERSION=2.0.18
# Wed, 23 Jan 2019 07:07:09 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Wed, 23 Jan 2019 07:07:09 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Wed, 23 Jan 2019 07:07:15 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 23 Jan 2019 07:07:16 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 07:07:16 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 23 Jan 2019 07:07:16 GMT
WORKDIR /orientdb
# Wed, 23 Jan 2019 07:07:16 GMT
EXPOSE 2424
# Wed, 23 Jan 2019 07:07:17 GMT
EXPOSE 2480
# Wed, 23 Jan 2019 07:07:17 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1dd648b5ade2bbdfe77fa94424b0314100b58fb5f6a98486538c2126e08e2f`  
		Last Modified: Tue, 22 Jan 2019 20:13:28 GMT  
		Size: 50.1 MB (50062800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f886e483d6dc67cd1f7c19ed3e45348f3b1af49fe9b5f40fdfca2043281b76`  
		Last Modified: Tue, 22 Jan 2019 21:38:45 GMT  
		Size: 892.4 KB (892370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4346341d3c496637595bfdaad3837beba171fb2194b1abf1f5d0c898a2d2d477`  
		Last Modified: Tue, 22 Jan 2019 21:41:18 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006f2208d67a691a10ab1deab2f6dfbf600f087b0f6df94f8dc6cde9fc3928fe`  
		Last Modified: Tue, 22 Jan 2019 21:41:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb85cf26717dc607155f9ea8b38b0d89ca987fbfd5786b4639afc2062176fd10`  
		Last Modified: Tue, 22 Jan 2019 21:41:51 GMT  
		Size: 134.0 MB (133975924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf04aa74db8bf4902afb168ab399f409faeca249d8c1dffd76778744d78fda1`  
		Last Modified: Wed, 23 Jan 2019 07:07:52 GMT  
		Size: 46.6 MB (46586538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.25`

```console
$ docker pull orientdb@sha256:0c80b25acfd943b7700a66577cdfbdc9ee910e1ea4ed6077263d505d642e4d30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

```console
$ docker pull orientdb@sha256:12a8c91c21829a0c297690834314631945c542718693990cdfb2b6c6aace457b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104838780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2ec01f029458fd131ee069884f84701a61324616259250336636b52d9db192`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Feb 2019 20:39:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:39:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 23:18:18 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 05 Feb 2019 23:18:18 GMT
ENV ORIENTDB_VERSION=2.1.25
# Tue, 05 Feb 2019 23:18:18 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Tue, 05 Feb 2019 23:18:18 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Tue, 05 Feb 2019 23:18:19 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Tue, 05 Feb 2019 23:18:24 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 05 Feb 2019 23:18:24 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 23:18:24 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 05 Feb 2019 23:18:25 GMT
WORKDIR /orientdb
# Tue, 05 Feb 2019 23:18:25 GMT
EXPOSE 2424
# Tue, 05 Feb 2019 23:18:25 GMT
EXPOSE 2480
# Tue, 05 Feb 2019 23:18:25 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47317d99e629d0943f97c8ec0e76e877a744ccbaf98e46603289bc856765c95a`  
		Last Modified: Tue, 05 Feb 2019 20:45:33 GMT  
		Size: 70.7 MB (70712203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef99dccce34711b0d98e820cecdbf678e2cab4a33f7d9fb7b0493c5391a2d30`  
		Last Modified: Tue, 05 Feb 2019 23:19:21 GMT  
		Size: 283.6 KB (283640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505b26d64aa2914dfd5a34b4c1048c5c21d281c9e30e92320a8af64678da7446`  
		Last Modified: Tue, 05 Feb 2019 23:19:24 GMT  
		Size: 31.1 MB (31087970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.37`

```console
$ docker pull orientdb@sha256:7187ab62ad81961c08d9c9f4f369132f6452f012c3dda6b000ffa98b9f02da78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.37` - linux; amd64

```console
$ docker pull orientdb@sha256:3767ba1e1bb2c06446a4345653365da387c4643ab05baa1d3d961935ad662e78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120722576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dbcc213d099cd0011eaf1b574231d2baf9bb0fd1fab651798286c8137467962`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Feb 2019 20:39:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:39:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 23:18:18 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 05 Feb 2019 23:18:28 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 05 Feb 2019 23:18:28 GMT
ENV ORIENTDB_VERSION=2.2.37
# Tue, 05 Feb 2019 23:18:29 GMT
ENV ORIENTDB_DOWNLOAD_MD5=cb80556ef3b0260d0ee5de88ea73fb9d
# Tue, 05 Feb 2019 23:18:29 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=469c402dde029f265fe905de2c08b43960e81f07
# Tue, 05 Feb 2019 23:18:29 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.37/orientdb-community-2.2.37.tar.gz
# Tue, 05 Feb 2019 23:18:30 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 05 Feb 2019 23:18:35 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 05 Feb 2019 23:18:35 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 23:18:35 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 05 Feb 2019 23:18:36 GMT
WORKDIR /orientdb
# Tue, 05 Feb 2019 23:18:36 GMT
EXPOSE 2424
# Tue, 05 Feb 2019 23:18:36 GMT
EXPOSE 2480
# Tue, 05 Feb 2019 23:18:36 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47317d99e629d0943f97c8ec0e76e877a744ccbaf98e46603289bc856765c95a`  
		Last Modified: Tue, 05 Feb 2019 20:45:33 GMT  
		Size: 70.7 MB (70712203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56deb59d1fdde55e5fd57396f64d231d7279fe143f8f44c768e2c64755e0ebfe`  
		Last Modified: Tue, 05 Feb 2019 23:19:27 GMT  
		Size: 781.5 KB (781472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72265c4c494f7edf7dca539763120d084173a62cc637dfd3c8c8c4c668b56f7`  
		Last Modified: Tue, 05 Feb 2019 23:19:32 GMT  
		Size: 46.5 MB (46473934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.37-spatial`

```console
$ docker pull orientdb@sha256:4280f7d71c0d3041b746fdab9db5092b648a7c4ae025a493ce8960e556e1930c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.37-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:339e1c0953c8dc6c4df83fc1bdbfdccbd5f468684a85fab466e946d9f4f20fbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.9 MB (121925136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a339d643eb840bc9ab5b42de5160934e29f8422ec350c5eb67774bec29aa81bb`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Feb 2019 20:39:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:39:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 23:18:18 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 05 Feb 2019 23:18:28 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 05 Feb 2019 23:18:28 GMT
ENV ORIENTDB_VERSION=2.2.37
# Tue, 05 Feb 2019 23:18:29 GMT
ENV ORIENTDB_DOWNLOAD_MD5=cb80556ef3b0260d0ee5de88ea73fb9d
# Tue, 05 Feb 2019 23:18:29 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=469c402dde029f265fe905de2c08b43960e81f07
# Tue, 05 Feb 2019 23:18:29 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.37/orientdb-community-2.2.37.tar.gz
# Tue, 05 Feb 2019 23:18:30 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 05 Feb 2019 23:18:35 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 05 Feb 2019 23:18:35 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 23:18:35 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 05 Feb 2019 23:18:36 GMT
WORKDIR /orientdb
# Tue, 05 Feb 2019 23:18:36 GMT
EXPOSE 2424
# Tue, 05 Feb 2019 23:18:36 GMT
EXPOSE 2480
# Tue, 05 Feb 2019 23:18:36 GMT
CMD ["server.sh"]
# Tue, 05 Feb 2019 23:18:40 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=9f64ab5e959f5d9ad9ea5195d6d621d2
# Tue, 05 Feb 2019 23:18:40 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=1748c9779ea7a8cb8fc068fcabf960e1778e8a19
# Tue, 05 Feb 2019 23:18:41 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.37/orientdb-spatial-2.2.37-dist.jar
# Tue, 05 Feb 2019 23:18:42 GMT
RUN wget $ORIENTDB_DOWNLOAD_SPATIAL_URL     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_MD5 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | md5sum -c -     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_SHA1 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | sha1sum -c -     && mv orientdb-spatial-*-dist.jar /orientdb/lib/
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47317d99e629d0943f97c8ec0e76e877a744ccbaf98e46603289bc856765c95a`  
		Last Modified: Tue, 05 Feb 2019 20:45:33 GMT  
		Size: 70.7 MB (70712203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56deb59d1fdde55e5fd57396f64d231d7279fe143f8f44c768e2c64755e0ebfe`  
		Last Modified: Tue, 05 Feb 2019 23:19:27 GMT  
		Size: 781.5 KB (781472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72265c4c494f7edf7dca539763120d084173a62cc637dfd3c8c8c4c668b56f7`  
		Last Modified: Tue, 05 Feb 2019 23:19:32 GMT  
		Size: 46.5 MB (46473934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e64786b5cfe8219e8b65feeba5e577a48038725372c8e2905bc62fe4adc94ba`  
		Last Modified: Tue, 05 Feb 2019 23:20:08 GMT  
		Size: 1.2 MB (1202560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.13`

```console
$ docker pull orientdb@sha256:18a6c004398f52372edfb3a2bae0151dac8a5fc9dfa1569f229bc81dcabc3072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.13` - linux; amd64

```console
$ docker pull orientdb@sha256:6a8090585d8a72188075f008ef03bc8ee4b5f076325f7ad7a5c0adff57545f68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111172541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:113fd8e00de6b921ec4492bba07a838c7317adea6cc5c1ea2ec5d047c8b5b09a`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Feb 2019 20:39:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:39:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 23:18:18 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 05 Feb 2019 23:18:28 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 05 Feb 2019 23:18:46 GMT
ENV ORIENTDB_VERSION=3.0.13
# Tue, 05 Feb 2019 23:18:46 GMT
ENV ORIENTDB_DOWNLOAD_MD5=12b955c069aeefd8697891d2310c7520
# Tue, 05 Feb 2019 23:18:46 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=35bc1cdfa79d6aa133cdcdffe72a3ed9f7a39cde
# Tue, 05 Feb 2019 23:18:46 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.13/orientdb-community-3.0.13.tar.gz
# Tue, 05 Feb 2019 23:18:48 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 05 Feb 2019 23:18:53 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 05 Feb 2019 23:18:53 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 23:18:53 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 05 Feb 2019 23:18:53 GMT
WORKDIR /orientdb
# Tue, 05 Feb 2019 23:18:54 GMT
EXPOSE 2424
# Tue, 05 Feb 2019 23:18:54 GMT
EXPOSE 2480
# Tue, 05 Feb 2019 23:18:54 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47317d99e629d0943f97c8ec0e76e877a744ccbaf98e46603289bc856765c95a`  
		Last Modified: Tue, 05 Feb 2019 20:45:33 GMT  
		Size: 70.7 MB (70712203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e13a15b4a4e44a6c4bc26a5484084bb760b67bfb27e26ed69e932666fc0ba82`  
		Last Modified: Tue, 05 Feb 2019 23:20:11 GMT  
		Size: 781.5 KB (781471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de2dfd477d05eb9b2d49eb86b35d756e7cc9475eb80f32ef5af26cc34cfffc1d`  
		Last Modified: Tue, 05 Feb 2019 23:20:15 GMT  
		Size: 36.9 MB (36923900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.13-tp3`

```console
$ docker pull orientdb@sha256:7faa724538398ff043bf1cf7d8af482aae2322f7751c532ff26dd71b58808381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.13-tp3` - linux; amd64

```console
$ docker pull orientdb@sha256:49d242bd93d89b4a5635e2ac9fe4d69be29eb3cf3457949102ef179c9396fa05
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.5 MB (138457772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a218d1ca485c4c262ac370e85c9aa27b033afe3d0f8eb15dbc99b3aa564613fb`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Feb 2019 20:39:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:39:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 23:18:18 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 05 Feb 2019 23:18:28 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 05 Feb 2019 23:18:46 GMT
ENV ORIENTDB_VERSION=3.0.13
# Tue, 05 Feb 2019 23:18:58 GMT
ENV ORIENTDB_DOWNLOAD_MD5=dc37c1e9e30f4cf3da4bfdedd47ef134
# Tue, 05 Feb 2019 23:18:58 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=abdcff739b1805a6d0c5fdaaa92a3b453cc75b70
# Tue, 05 Feb 2019 23:18:58 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-tp3/3.0.13/orientdb-tp3-3.0.13.tar.gz
# Tue, 05 Feb 2019 23:19:00 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 05 Feb 2019 23:19:06 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-tp3-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-tp3-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 05 Feb 2019 23:19:07 GMT
ADD file:5bcd10827429355383b443914a6e6c163692cb388c7594e6e8d3d4625653a011 in /orientdb/config 
# Tue, 05 Feb 2019 23:19:07 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 23:19:07 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 05 Feb 2019 23:19:07 GMT
WORKDIR /orientdb
# Tue, 05 Feb 2019 23:19:08 GMT
EXPOSE 2424
# Tue, 05 Feb 2019 23:19:08 GMT
EXPOSE 2480
# Tue, 05 Feb 2019 23:19:08 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47317d99e629d0943f97c8ec0e76e877a744ccbaf98e46603289bc856765c95a`  
		Last Modified: Tue, 05 Feb 2019 20:45:33 GMT  
		Size: 70.7 MB (70712203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1578b82828b2c8147fffe6f202dba53751710eced6250f61a0d8512f87147672`  
		Last Modified: Tue, 05 Feb 2019 23:20:19 GMT  
		Size: 781.5 KB (781473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8918e24cd306d589431751d16ace2281265950fa421569c47dabbe46e80ebb03`  
		Last Modified: Tue, 05 Feb 2019 23:20:25 GMT  
		Size: 64.2 MB (64207755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723c79b93ba4d7a3dfc8a3366b62e26beceed6457beeaaa18e42e402390c35d3`  
		Last Modified: Tue, 05 Feb 2019 23:20:19 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:18a6c004398f52372edfb3a2bae0151dac8a5fc9dfa1569f229bc81dcabc3072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:6a8090585d8a72188075f008ef03bc8ee4b5f076325f7ad7a5c0adff57545f68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111172541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:113fd8e00de6b921ec4492bba07a838c7317adea6cc5c1ea2ec5d047c8b5b09a`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Feb 2019 20:39:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:39:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 23:18:18 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 05 Feb 2019 23:18:28 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 05 Feb 2019 23:18:46 GMT
ENV ORIENTDB_VERSION=3.0.13
# Tue, 05 Feb 2019 23:18:46 GMT
ENV ORIENTDB_DOWNLOAD_MD5=12b955c069aeefd8697891d2310c7520
# Tue, 05 Feb 2019 23:18:46 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=35bc1cdfa79d6aa133cdcdffe72a3ed9f7a39cde
# Tue, 05 Feb 2019 23:18:46 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.13/orientdb-community-3.0.13.tar.gz
# Tue, 05 Feb 2019 23:18:48 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 05 Feb 2019 23:18:53 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 05 Feb 2019 23:18:53 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 23:18:53 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 05 Feb 2019 23:18:53 GMT
WORKDIR /orientdb
# Tue, 05 Feb 2019 23:18:54 GMT
EXPOSE 2424
# Tue, 05 Feb 2019 23:18:54 GMT
EXPOSE 2480
# Tue, 05 Feb 2019 23:18:54 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47317d99e629d0943f97c8ec0e76e877a744ccbaf98e46603289bc856765c95a`  
		Last Modified: Tue, 05 Feb 2019 20:45:33 GMT  
		Size: 70.7 MB (70712203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e13a15b4a4e44a6c4bc26a5484084bb760b67bfb27e26ed69e932666fc0ba82`  
		Last Modified: Tue, 05 Feb 2019 23:20:11 GMT  
		Size: 781.5 KB (781471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de2dfd477d05eb9b2d49eb86b35d756e7cc9475eb80f32ef5af26cc34cfffc1d`  
		Last Modified: Tue, 05 Feb 2019 23:20:15 GMT  
		Size: 36.9 MB (36923900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
