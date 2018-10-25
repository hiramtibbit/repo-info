<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.36`](#orientdb2236)
-	[`orientdb:2.2.36-spatial`](#orientdb2236-spatial)
-	[`orientdb:3.0.9`](#orientdb309)
-	[`orientdb:3.0.9-tp3`](#orientdb309-tp3)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:1d4c723b28537c5a215be970a9cb42e75dd4e25041b3ae581a355e5e65a0fca7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

```console
$ docker pull orientdb@sha256:a0eb1effaed9ff4fd72f75f4b44fa873d94c89039d1d159d7c5bd760b21afd3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.2 MB (292169595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ec8e6b7c4ad847e06e87933c3b6f3129d133180a3a973a41b7696d7fe95d146`
-	Default Command: `["server.sh"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 05:25:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 05:26:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 05:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 17:38:46 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 16 Oct 2018 17:38:46 GMT
ENV ORIENTDB_VERSION=2.0.18
# Tue, 16 Oct 2018 17:38:47 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Tue, 16 Oct 2018 17:38:47 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Tue, 16 Oct 2018 17:38:52 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 16 Oct 2018 17:38:53 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 17:38:53 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 16 Oct 2018 17:38:54 GMT
WORKDIR /orientdb
# Tue, 16 Oct 2018 17:38:54 GMT
EXPOSE 2424/tcp
# Tue, 16 Oct 2018 17:38:55 GMT
EXPOSE 2480/tcp
# Tue, 16 Oct 2018 17:38:55 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28351dec2f89f7318a7aa1b3941608f822580ffc822d6cd3205f26a39620dcb5`  
		Last Modified: Tue, 16 Oct 2018 05:54:51 GMT  
		Size: 134.0 MB (133992059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa52db486a37c500d18ca2f13053418efb23340bb21f4f9b5c9d7cf33d97f65`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 246.7 KB (246702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7594c120ed4a53b2dccddc4cdf5b180492269512372691a22bee88888be80ef5`  
		Last Modified: Tue, 16 Oct 2018 17:39:43 GMT  
		Size: 46.6 MB (46586558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.25`

```console
$ docker pull orientdb@sha256:19171989cf3e2c32578a73dcfd2b9d5ca3f7fa70430d5c83044ad409eeab8db9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

```console
$ docker pull orientdb@sha256:38a761a50a62ee3f62fd46cfdfeb8377a06bff0da5b74b4dd26a1de03e717404
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104185348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7bb336c5d6a6be50f3e4a65540890e92eabe0785544696cf024b2c3b7fc8412`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 00:06:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:31:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 00:07:24 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 25 Oct 2018 00:07:24 GMT
ENV ORIENTDB_VERSION=2.1.25
# Thu, 25 Oct 2018 00:07:25 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Thu, 25 Oct 2018 00:07:25 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Thu, 25 Oct 2018 00:07:26 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Thu, 25 Oct 2018 00:07:30 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 25 Oct 2018 00:07:30 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 25 Oct 2018 00:07:30 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 25 Oct 2018 00:07:31 GMT
WORKDIR /orientdb
# Thu, 25 Oct 2018 00:07:31 GMT
EXPOSE 2424/tcp
# Thu, 25 Oct 2018 00:07:31 GMT
EXPOSE 2480/tcp
# Thu, 25 Oct 2018 00:07:32 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87ded15917facc562d84e802d02ded848ae802cc04194400ba4cb8798dd4f7`  
		Last Modified: Wed, 24 Oct 2018 22:43:46 GMT  
		Size: 70.6 MB (70610525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4f4f216652b6822eec2c4611be09399a90bb2006feac0dd7f4a363c209cfb32`  
		Last Modified: Thu, 25 Oct 2018 00:09:19 GMT  
		Size: 279.7 KB (279681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d4a2a1360d54fa64e2d5574a15babf56cbfce39d2230d607e996f761a932aa`  
		Last Modified: Thu, 25 Oct 2018 00:09:22 GMT  
		Size: 31.1 MB (31087973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.36`

```console
$ docker pull orientdb@sha256:ab41925c925e632edfb537bcf63715b271cb735887600eedf7d0e12c012da06b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.36` - linux; amd64

```console
$ docker pull orientdb@sha256:bf66f9b2090e9a7d291665606e2c0c20cb0438e3ee83cdc3186947f726ab9ee5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.1 MB (120058331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54b1b7594cd188129261c908628558987ebbdcefd40d31fb2f006a59375051e8`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 00:06:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:31:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 00:07:24 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 25 Oct 2018 00:07:44 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 25 Oct 2018 00:07:44 GMT
ENV ORIENTDB_VERSION=2.2.36
# Thu, 25 Oct 2018 00:07:44 GMT
ENV ORIENTDB_DOWNLOAD_MD5=0db280d733a000b75adb1e52c819497b
# Thu, 25 Oct 2018 00:07:44 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=ce5527f027d40cb32af5537130316d5ea81588db
# Thu, 25 Oct 2018 00:07:45 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.36/orientdb-community-2.2.36.tar.gz
# Thu, 25 Oct 2018 00:07:46 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 25 Oct 2018 00:07:49 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 25 Oct 2018 00:07:58 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 25 Oct 2018 00:07:58 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 25 Oct 2018 00:07:59 GMT
WORKDIR /orientdb
# Thu, 25 Oct 2018 00:07:59 GMT
EXPOSE 2424/tcp
# Thu, 25 Oct 2018 00:08:00 GMT
EXPOSE 2480/tcp
# Thu, 25 Oct 2018 00:08:00 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87ded15917facc562d84e802d02ded848ae802cc04194400ba4cb8798dd4f7`  
		Last Modified: Wed, 24 Oct 2018 22:43:46 GMT  
		Size: 70.6 MB (70610525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b582413c77789d991d890f1fe5e5d325a37069ba5cf44987a7cb03912809c1a`  
		Last Modified: Thu, 25 Oct 2018 00:09:35 GMT  
		Size: 767.3 KB (767265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc5ff5a2614894e8afad3a9126e0bd481a1de936aaf28f02a4988147af38c62`  
		Last Modified: Thu, 25 Oct 2018 00:09:39 GMT  
		Size: 46.5 MB (46473372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.36-spatial`

```console
$ docker pull orientdb@sha256:8332432a8436f700063a3988629c28b7ce4917c2743e8249f3ca97a11eb81c3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.36-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:21f449a0d2b1c01fc85ed381dc4ba0017db7baca89987fec4a538e13a513a56d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121260926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66e95124c5e9c98eb8d0161fab6f0f12674bd10e8e8bcbce1edc98c813353b32`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 00:06:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:31:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 00:07:24 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 25 Oct 2018 00:07:44 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 25 Oct 2018 00:07:44 GMT
ENV ORIENTDB_VERSION=2.2.36
# Thu, 25 Oct 2018 00:07:44 GMT
ENV ORIENTDB_DOWNLOAD_MD5=0db280d733a000b75adb1e52c819497b
# Thu, 25 Oct 2018 00:07:44 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=ce5527f027d40cb32af5537130316d5ea81588db
# Thu, 25 Oct 2018 00:07:45 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.36/orientdb-community-2.2.36.tar.gz
# Thu, 25 Oct 2018 00:07:46 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 25 Oct 2018 00:07:49 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 25 Oct 2018 00:07:58 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 25 Oct 2018 00:07:58 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 25 Oct 2018 00:07:59 GMT
WORKDIR /orientdb
# Thu, 25 Oct 2018 00:07:59 GMT
EXPOSE 2424/tcp
# Thu, 25 Oct 2018 00:08:00 GMT
EXPOSE 2480/tcp
# Thu, 25 Oct 2018 00:08:00 GMT
CMD ["server.sh"]
# Thu, 25 Oct 2018 00:08:11 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=0b027f68e3dac4f03357d5f3064ec0f3
# Thu, 25 Oct 2018 00:08:12 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=8f3adeddbad4d7f5436f4e2cdd418294135cd824
# Thu, 25 Oct 2018 00:08:12 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.36/orientdb-spatial-2.2.36-dist.jar
# Thu, 25 Oct 2018 00:08:13 GMT
RUN wget $ORIENTDB_DOWNLOAD_SPATIAL_URL     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_MD5 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | md5sum -c -     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_SHA1 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | sha1sum -c -     && mv orientdb-spatial-*-dist.jar /orientdb/lib/
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87ded15917facc562d84e802d02ded848ae802cc04194400ba4cb8798dd4f7`  
		Last Modified: Wed, 24 Oct 2018 22:43:46 GMT  
		Size: 70.6 MB (70610525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b582413c77789d991d890f1fe5e5d325a37069ba5cf44987a7cb03912809c1a`  
		Last Modified: Thu, 25 Oct 2018 00:09:35 GMT  
		Size: 767.3 KB (767265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc5ff5a2614894e8afad3a9126e0bd481a1de936aaf28f02a4988147af38c62`  
		Last Modified: Thu, 25 Oct 2018 00:09:39 GMT  
		Size: 46.5 MB (46473372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7089619d7971a9d95e6e7e59921e9b3d0e82040b395ec33e9b5428549a0d736`  
		Last Modified: Thu, 25 Oct 2018 00:09:57 GMT  
		Size: 1.2 MB (1202595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.9`

```console
$ docker pull orientdb@sha256:3244306a3aef15e73af00b9e48265c7a8d90ca468f52011e53503ba0edbd8a77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.9` - linux; amd64

```console
$ docker pull orientdb@sha256:7bde3da767fffd0924ce3b094acf095c74d6aecdf8b9d441a67e925b2870b150
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.5 MB (110456112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13e0d36f0c08e3218033ca13bd8e37a713d22ff68a1dd95c376d5debc69a638`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 00:06:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:31:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 00:07:24 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 25 Oct 2018 00:07:44 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 25 Oct 2018 00:08:25 GMT
ENV ORIENTDB_VERSION=3.0.9
# Thu, 25 Oct 2018 00:08:25 GMT
ENV ORIENTDB_DOWNLOAD_MD5=ec4fc051c8d7f01e2490cfa10c0a9d5a
# Thu, 25 Oct 2018 00:08:26 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=129d0f2eb9db3d611c7347361a0db7f6307ea20d
# Thu, 25 Oct 2018 00:08:26 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.9/orientdb-community-3.0.9.tar.gz
# Thu, 25 Oct 2018 00:08:27 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 25 Oct 2018 00:08:32 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 25 Oct 2018 00:08:32 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 25 Oct 2018 00:08:32 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 25 Oct 2018 00:08:33 GMT
WORKDIR /orientdb
# Thu, 25 Oct 2018 00:08:33 GMT
EXPOSE 2424/tcp
# Thu, 25 Oct 2018 00:08:34 GMT
EXPOSE 2480/tcp
# Thu, 25 Oct 2018 00:08:34 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87ded15917facc562d84e802d02ded848ae802cc04194400ba4cb8798dd4f7`  
		Last Modified: Wed, 24 Oct 2018 22:43:46 GMT  
		Size: 70.6 MB (70610525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ce8c953b2645e20ed3e752608b9967a36aa289c40ba277ac1d64a4ff9de2cc`  
		Last Modified: Thu, 25 Oct 2018 00:10:09 GMT  
		Size: 767.3 KB (767276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62bb06817b636f1747467ea99ba1c3072774d11fde83ca95b4db51e6e28f2cd8`  
		Last Modified: Thu, 25 Oct 2018 00:10:13 GMT  
		Size: 36.9 MB (36871142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.9-tp3`

```console
$ docker pull orientdb@sha256:644ca1887164b26427af698f6c7946e7d08a3579452fd2bd7317ca9083c40715
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.9-tp3` - linux; amd64

```console
$ docker pull orientdb@sha256:6cbf52bea4d25ea212d4f06e0522ebad8aba913936a7d450ec6915c6b7589540
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.7 MB (137739827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdfde082b1178d728b1418766b107fc5ec92b438d74c8347e3032bfac1de7ab9`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 00:06:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:31:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 00:07:24 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 25 Oct 2018 00:07:44 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 25 Oct 2018 00:08:25 GMT
ENV ORIENTDB_VERSION=3.0.9
# Thu, 25 Oct 2018 00:08:55 GMT
ENV ORIENTDB_DOWNLOAD_MD5=43a2a44bf543eb61a1c9c880758ba279
# Thu, 25 Oct 2018 00:08:55 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=0ec2248ac309bcf4e9f9c5b553161e0f51762f93
# Thu, 25 Oct 2018 00:08:55 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-tp3/3.0.9/orientdb-tp3-3.0.9.tar.gz
# Thu, 25 Oct 2018 00:08:56 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 25 Oct 2018 00:09:00 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-tp3-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-tp3-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 25 Oct 2018 00:09:01 GMT
ADD file:99b7a1625594810d4a6ad850d8e45ce20c6e5e95127b6a7316cae65e7aa03c13 in /orientdb/config 
# Thu, 25 Oct 2018 00:09:01 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 25 Oct 2018 00:09:01 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 25 Oct 2018 00:09:02 GMT
WORKDIR /orientdb
# Thu, 25 Oct 2018 00:09:02 GMT
EXPOSE 2424/tcp
# Thu, 25 Oct 2018 00:09:02 GMT
EXPOSE 2480/tcp
# Thu, 25 Oct 2018 00:09:03 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef87ded15917facc562d84e802d02ded848ae802cc04194400ba4cb8798dd4f7`  
		Last Modified: Wed, 24 Oct 2018 22:43:46 GMT  
		Size: 70.6 MB (70610525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ea87f5a44f26b5a37248e7d755742175fd1ba26e26ff2e1a13e8af1d324190`  
		Last Modified: Thu, 25 Oct 2018 00:10:45 GMT  
		Size: 767.3 KB (767285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416b5502645099d604aa925fc4846caacf80a726b9980ab3b33788a1c2e0fc5e`  
		Last Modified: Thu, 25 Oct 2018 00:10:49 GMT  
		Size: 64.2 MB (64153474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dcc888733151d43951dfcb8ef515866197546a1800f8668467d8200cc6e17d`  
		Last Modified: Thu, 25 Oct 2018 00:10:45 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:a99bb39b1e71c01ad5e689a6f2d81afdbf8eadc07f1e7f8f59f26cf2cea837e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:62f72e4136272fdbdab0c749dca5179af2d6a044a7a6e1fa9d58370803487dd2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110426914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:625da5bc28b52415211d4ac202b313d90a7a87a10710336fc62bfea4d80bbeee`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 00:06:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 00:06:56 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 00:06:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 04:43:20 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 12 Sep 2018 04:43:37 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 16 Oct 2018 21:43:46 GMT
ENV ORIENTDB_VERSION=3.0.9
# Tue, 16 Oct 2018 21:43:46 GMT
ENV ORIENTDB_DOWNLOAD_MD5=ec4fc051c8d7f01e2490cfa10c0a9d5a
# Tue, 16 Oct 2018 21:43:47 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=129d0f2eb9db3d611c7347361a0db7f6307ea20d
# Tue, 16 Oct 2018 21:43:47 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.9/orientdb-community-3.0.9.tar.gz
# Tue, 16 Oct 2018 21:43:49 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 16 Oct 2018 21:43:54 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 16 Oct 2018 21:43:54 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 16 Oct 2018 21:43:55 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 16 Oct 2018 21:43:56 GMT
WORKDIR /orientdb
# Tue, 16 Oct 2018 21:43:56 GMT
EXPOSE 2424/tcp
# Tue, 16 Oct 2018 21:43:57 GMT
EXPOSE 2480/tcp
# Tue, 16 Oct 2018 21:43:57 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe815adf554b18a057fade5a6b9498765d20c055f80d8d2facfb3a9cb00b66d0`  
		Last Modified: Wed, 12 Sep 2018 00:09:10 GMT  
		Size: 70.6 MB (70581326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd8c5c4599f60e3d7e6656fae05be156557be56da3f57849a71bc32f52f8669`  
		Last Modified: Tue, 16 Oct 2018 21:44:49 GMT  
		Size: 767.3 KB (767265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e416e3b0f61cacc5fd10bfca31665eec92e85fb34d317966880ea8b69d7adb`  
		Last Modified: Tue, 16 Oct 2018 21:44:52 GMT  
		Size: 36.9 MB (36871154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
