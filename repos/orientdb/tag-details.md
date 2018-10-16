<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.36`](#orientdb2236)
-	[`orientdb:2.2.36-spatial`](#orientdb2236-spatial)
-	[`orientdb:3.0.8`](#orientdb308)
-	[`orientdb:3.0.8-tp3`](#orientdb308-tp3)
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
$ docker pull orientdb@sha256:5f68c5683f11466cc733895eebdc5b1fe784a41fdc6cd7385ec052316bdc26ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

```console
$ docker pull orientdb@sha256:e6ec3f4d89255e49f81177234816f5e83a42aa93f13ea2cb370e294aa6230119
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104156096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f60a8fc063b6f9d66cef741220914bdb4d1837adf3a72a865d29f71824b508`
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
# Wed, 12 Sep 2018 04:43:20 GMT
ENV ORIENTDB_VERSION=2.1.25
# Wed, 12 Sep 2018 04:43:20 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Wed, 12 Sep 2018 04:43:21 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Wed, 12 Sep 2018 04:43:21 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Wed, 12 Sep 2018 04:43:25 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 12 Sep 2018 04:43:25 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 04:43:25 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 12 Sep 2018 04:43:26 GMT
WORKDIR /orientdb
# Wed, 12 Sep 2018 04:43:26 GMT
EXPOSE 2424/tcp
# Wed, 12 Sep 2018 04:43:26 GMT
EXPOSE 2480/tcp
# Wed, 12 Sep 2018 04:43:26 GMT
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
	-	`sha256:43701ae347003f0db934fae395fc7bd13c3a1c02cf5d7f8ec74d37145ce9c0c7`  
		Last Modified: Wed, 12 Sep 2018 04:44:37 GMT  
		Size: 279.6 KB (279643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a8ec0c33893745ebbf243d78aa454d61f560f8e21d2adcdb5a0c6db79ea8eb`  
		Last Modified: Wed, 12 Sep 2018 04:44:40 GMT  
		Size: 31.1 MB (31087958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.36`

```console
$ docker pull orientdb@sha256:93a23a99da9dc3b553208fa84c56a891a032bcc9d7d44145a5b9f7394012607a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.36` - linux; amd64

```console
$ docker pull orientdb@sha256:46f7d2d40b16585b2e9a194765cf17e26aa223f3698de7dbbf0e140351d789c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.0 MB (120029139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f855649875c03dd58b14e9e3bd2ca374e48f27749e36f296682767dec5192059`
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
# Wed, 12 Sep 2018 04:43:37 GMT
ENV ORIENTDB_VERSION=2.2.36
# Wed, 12 Sep 2018 04:43:37 GMT
ENV ORIENTDB_DOWNLOAD_MD5=0db280d733a000b75adb1e52c819497b
# Wed, 12 Sep 2018 04:43:38 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=ce5527f027d40cb32af5537130316d5ea81588db
# Wed, 12 Sep 2018 04:43:38 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.36/orientdb-community-2.2.36.tar.gz
# Wed, 12 Sep 2018 04:43:39 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 12 Sep 2018 04:43:42 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 12 Sep 2018 04:43:42 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 04:43:42 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 12 Sep 2018 04:43:43 GMT
WORKDIR /orientdb
# Wed, 12 Sep 2018 04:43:43 GMT
EXPOSE 2424/tcp
# Wed, 12 Sep 2018 04:43:43 GMT
EXPOSE 2480/tcp
# Wed, 12 Sep 2018 04:43:43 GMT
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
	-	`sha256:3c67467c46006f3a5f92f4323ae69ee67f7f33791a8a18e40ab483e734ec58ae`  
		Last Modified: Wed, 12 Sep 2018 04:44:49 GMT  
		Size: 767.3 KB (767272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfd6f33b441f3f6cad2195df836075af8c281c529c709cbd273f4d95de143db`  
		Last Modified: Wed, 12 Sep 2018 04:44:52 GMT  
		Size: 46.5 MB (46473372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.36-spatial`

```console
$ docker pull orientdb@sha256:d6d11ecf8f6a047bf7c422c5249038f615b215c0592bb8c16d705f0ce58e84d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.36-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:cc3fa193e3d76b813ec7705c41d897a0fb0d38dc705258d5720e3c02dc1fd54d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121231729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90410eba5d252090bbb75f9c41a8ad520b8912f681829ee862c93ab46ce2c7b7`
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
# Wed, 12 Sep 2018 04:43:37 GMT
ENV ORIENTDB_VERSION=2.2.36
# Wed, 12 Sep 2018 04:43:37 GMT
ENV ORIENTDB_DOWNLOAD_MD5=0db280d733a000b75adb1e52c819497b
# Wed, 12 Sep 2018 04:43:38 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=ce5527f027d40cb32af5537130316d5ea81588db
# Wed, 12 Sep 2018 04:43:38 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.36/orientdb-community-2.2.36.tar.gz
# Wed, 12 Sep 2018 04:43:39 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 12 Sep 2018 04:43:42 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 12 Sep 2018 04:43:42 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 04:43:42 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 12 Sep 2018 04:43:43 GMT
WORKDIR /orientdb
# Wed, 12 Sep 2018 04:43:43 GMT
EXPOSE 2424/tcp
# Wed, 12 Sep 2018 04:43:43 GMT
EXPOSE 2480/tcp
# Wed, 12 Sep 2018 04:43:43 GMT
CMD ["server.sh"]
# Wed, 12 Sep 2018 04:43:51 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=0b027f68e3dac4f03357d5f3064ec0f3
# Wed, 12 Sep 2018 04:43:51 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=8f3adeddbad4d7f5436f4e2cdd418294135cd824
# Wed, 12 Sep 2018 04:43:52 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.36/orientdb-spatial-2.2.36-dist.jar
# Wed, 12 Sep 2018 04:43:53 GMT
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
	-	`sha256:fe815adf554b18a057fade5a6b9498765d20c055f80d8d2facfb3a9cb00b66d0`  
		Last Modified: Wed, 12 Sep 2018 00:09:10 GMT  
		Size: 70.6 MB (70581326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c67467c46006f3a5f92f4323ae69ee67f7f33791a8a18e40ab483e734ec58ae`  
		Last Modified: Wed, 12 Sep 2018 04:44:49 GMT  
		Size: 767.3 KB (767272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfd6f33b441f3f6cad2195df836075af8c281c529c709cbd273f4d95de143db`  
		Last Modified: Wed, 12 Sep 2018 04:44:52 GMT  
		Size: 46.5 MB (46473372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd46afbeddffa16c67d95351953bad94863ac01ce55e0f83913c14173d62c0df`  
		Last Modified: Wed, 12 Sep 2018 04:45:02 GMT  
		Size: 1.2 MB (1202590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.8`

```console
$ docker pull orientdb@sha256:ae4c7370458cc732e01ed679696a926ade6bfa167b6c9653cf8b5b2bab6c71ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.8` - linux; amd64

```console
$ docker pull orientdb@sha256:a9b96a07ff4fee244e93693f364bcceb7e8b6d52577d0a2b622bcfeb1f0bd75c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (110002484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20cd91c9f2333e1f8b61e0de4160124f1b3e55dc27f4aac1d7a0bf30c64fb5ee`
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
# Fri, 28 Sep 2018 18:22:40 GMT
ENV ORIENTDB_VERSION=3.0.8
# Fri, 28 Sep 2018 18:22:41 GMT
ENV ORIENTDB_DOWNLOAD_MD5=19b17071fdff11d3674d5809d15244a5
# Fri, 28 Sep 2018 18:22:41 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=2175eb61874c67150bc52b213aa90e20db942f6a
# Fri, 28 Sep 2018 18:22:41 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.8/orientdb-community-3.0.8.tar.gz
# Fri, 28 Sep 2018 18:22:42 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 28 Sep 2018 18:22:45 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 28 Sep 2018 18:22:45 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 28 Sep 2018 18:22:46 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 28 Sep 2018 18:22:46 GMT
WORKDIR /orientdb
# Fri, 28 Sep 2018 18:22:46 GMT
EXPOSE 2424/tcp
# Fri, 28 Sep 2018 18:22:47 GMT
EXPOSE 2480/tcp
# Fri, 28 Sep 2018 18:22:47 GMT
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
	-	`sha256:d60d975d9d485c4c486e8efb323c3ab23dd0488b4a41fdf6e4863cf4a1c8c574`  
		Last Modified: Fri, 28 Sep 2018 18:23:17 GMT  
		Size: 767.3 KB (767272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c25d25bf374586cc89a6300bb5e5b7fadffc0fdafd2b6dc3ae54494b789764a`  
		Last Modified: Fri, 28 Sep 2018 18:23:20 GMT  
		Size: 36.4 MB (36446717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.8-tp3`

```console
$ docker pull orientdb@sha256:11c8ff93d8f719bf75a0f0f151e16fd6e3edb4bcc5327f51226e2045e85d6748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.8-tp3` - linux; amd64

```console
$ docker pull orientdb@sha256:f367b5c9af17e56f1c4a10af3aea6daf27f3bdac1dfe7be737180aa2e5af0eeb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.3 MB (137286904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31307408b61852b7c1bfd3c653bc4e20f991ac31c533f42d3d3edbd0ef5c4c14`
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
# Fri, 28 Sep 2018 18:22:40 GMT
ENV ORIENTDB_VERSION=3.0.8
# Fri, 28 Sep 2018 18:22:55 GMT
ENV ORIENTDB_DOWNLOAD_MD5=a1b468e448d48e64e46427815f6e7457
# Fri, 28 Sep 2018 18:22:55 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=09f74e164f47e1ae793a39cc86076b463ee8fc51
# Fri, 28 Sep 2018 18:22:56 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-tp3/3.0.8/orientdb-tp3-3.0.8.tar.gz
# Fri, 28 Sep 2018 18:22:57 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 28 Sep 2018 18:23:01 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-tp3-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-tp3-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 28 Sep 2018 18:23:02 GMT
ADD file:99b7a1625594810d4a6ad850d8e45ce20c6e5e95127b6a7316cae65e7aa03c13 in /orientdb/config 
# Fri, 28 Sep 2018 18:23:02 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 28 Sep 2018 18:23:02 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 28 Sep 2018 18:23:02 GMT
WORKDIR /orientdb
# Fri, 28 Sep 2018 18:23:03 GMT
EXPOSE 2424/tcp
# Fri, 28 Sep 2018 18:23:03 GMT
EXPOSE 2480/tcp
# Fri, 28 Sep 2018 18:23:03 GMT
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
	-	`sha256:707003141c8a473fa31866b813edbcc01deef02372ebc5e9e03e07b59e1da927`  
		Last Modified: Fri, 28 Sep 2018 18:23:38 GMT  
		Size: 767.3 KB (767268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b519e040f7e452ddf6c67fe334a78d6aa3f2b1968d33dd595261eb4095538303`  
		Last Modified: Fri, 28 Sep 2018 18:23:43 GMT  
		Size: 63.7 MB (63729765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11946e9cc0693504a31450a52d452d57031412ddbc69c050f6d953f468ac5bc2`  
		Last Modified: Fri, 28 Sep 2018 18:23:38 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:ae4c7370458cc732e01ed679696a926ade6bfa167b6c9653cf8b5b2bab6c71ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:a9b96a07ff4fee244e93693f364bcceb7e8b6d52577d0a2b622bcfeb1f0bd75c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (110002484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20cd91c9f2333e1f8b61e0de4160124f1b3e55dc27f4aac1d7a0bf30c64fb5ee`
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
# Fri, 28 Sep 2018 18:22:40 GMT
ENV ORIENTDB_VERSION=3.0.8
# Fri, 28 Sep 2018 18:22:41 GMT
ENV ORIENTDB_DOWNLOAD_MD5=19b17071fdff11d3674d5809d15244a5
# Fri, 28 Sep 2018 18:22:41 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=2175eb61874c67150bc52b213aa90e20db942f6a
# Fri, 28 Sep 2018 18:22:41 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.8/orientdb-community-3.0.8.tar.gz
# Fri, 28 Sep 2018 18:22:42 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 28 Sep 2018 18:22:45 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 28 Sep 2018 18:22:45 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 28 Sep 2018 18:22:46 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 28 Sep 2018 18:22:46 GMT
WORKDIR /orientdb
# Fri, 28 Sep 2018 18:22:46 GMT
EXPOSE 2424/tcp
# Fri, 28 Sep 2018 18:22:47 GMT
EXPOSE 2480/tcp
# Fri, 28 Sep 2018 18:22:47 GMT
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
	-	`sha256:d60d975d9d485c4c486e8efb323c3ab23dd0488b4a41fdf6e4863cf4a1c8c574`  
		Last Modified: Fri, 28 Sep 2018 18:23:17 GMT  
		Size: 767.3 KB (767272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c25d25bf374586cc89a6300bb5e5b7fadffc0fdafd2b6dc3ae54494b789764a`  
		Last Modified: Fri, 28 Sep 2018 18:23:20 GMT  
		Size: 36.4 MB (36446717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
