<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.37`](#orientdb2237)
-	[`orientdb:2.2.37-spatial`](#orientdb2237-spatial)
-	[`orientdb:3.0.10`](#orientdb3010)
-	[`orientdb:3.0.10-tp3`](#orientdb3010-tp3)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:fed12798e3aeb8c81248b84bf49c15aa642b0ecb655aa7ce03e06c2dfb691ccf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

```console
$ docker pull orientdb@sha256:ae843d1b033806a3b57d472e87b0879ea8c75d2ef8e53ff675d59f8b98444e09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.2 MB (292152533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbd2e0be05bff77f08a800772a3f26e5e795d4ab200e981b14e4153e3ed18962`
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
# Mon, 29 Oct 2018 23:28:13 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Mon, 29 Oct 2018 23:28:13 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 29 Oct 2018 23:29:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Oct 2018 23:29:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 30 Oct 2018 05:00:50 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 30 Oct 2018 05:00:50 GMT
ENV ORIENTDB_VERSION=2.0.18
# Tue, 30 Oct 2018 05:00:51 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Tue, 30 Oct 2018 05:00:51 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Tue, 30 Oct 2018 05:00:57 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 30 Oct 2018 05:00:57 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Oct 2018 05:00:58 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 30 Oct 2018 05:00:58 GMT
WORKDIR /orientdb
# Tue, 30 Oct 2018 05:00:59 GMT
EXPOSE 2424/tcp
# Tue, 30 Oct 2018 05:00:59 GMT
EXPOSE 2480/tcp
# Tue, 30 Oct 2018 05:01:00 GMT
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
	-	`sha256:60c0e52d1ec297a9ade35f6b17bcf69d959bb1f16c506290f29af5513b0cdabd`  
		Last Modified: Mon, 29 Oct 2018 23:34:50 GMT  
		Size: 134.0 MB (133974982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d22bc4393511e7d49d7bb83b5b2dcc95cde66f54a69099421c65928e873e9c`  
		Last Modified: Mon, 29 Oct 2018 23:34:21 GMT  
		Size: 246.7 KB (246716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04e0edbff9cee9d0367ff9ea39dc76e8658669e7503f41cc6cdf3b7543c3eb5`  
		Last Modified: Tue, 30 Oct 2018 05:01:56 GMT  
		Size: 46.6 MB (46586559 bytes)  
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

## `orientdb:2.2.37`

```console
$ docker pull orientdb@sha256:45939b526d598a7b0519a7aca7ff23132ea05d4e75c1f0a21ccc6e871732ff69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.37` - linux; amd64

```console
$ docker pull orientdb@sha256:31896d5b357a41eaf8d887936572ceb547a7ae02695673035ff9c89ce1bf2089
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.1 MB (120058901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f433395ea431f937f35e1b9603c29a8d1ebe80614d6c148ea6afeee10462a0c`
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
# Fri, 26 Oct 2018 22:30:36 GMT
ENV ORIENTDB_VERSION=2.2.37
# Fri, 26 Oct 2018 22:30:36 GMT
ENV ORIENTDB_DOWNLOAD_MD5=cb80556ef3b0260d0ee5de88ea73fb9d
# Fri, 26 Oct 2018 22:30:36 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=469c402dde029f265fe905de2c08b43960e81f07
# Fri, 26 Oct 2018 22:30:36 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.37/orientdb-community-2.2.37.tar.gz
# Fri, 26 Oct 2018 22:30:37 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 26 Oct 2018 22:30:41 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 26 Oct 2018 22:30:49 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 26 Oct 2018 22:30:49 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 26 Oct 2018 22:30:50 GMT
WORKDIR /orientdb
# Fri, 26 Oct 2018 22:30:50 GMT
EXPOSE 2424/tcp
# Fri, 26 Oct 2018 22:30:50 GMT
EXPOSE 2480/tcp
# Fri, 26 Oct 2018 22:30:51 GMT
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
	-	`sha256:c47b3d9b4979233c10730ebeb1da02c06b86d9ff642a5d3bf7d802b3fdb50082`  
		Last Modified: Fri, 26 Oct 2018 22:32:46 GMT  
		Size: 767.3 KB (767278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254937c5d4f514c045b4764603566a2f771de1e7644255607c69a220bb3dde14`  
		Last Modified: Fri, 26 Oct 2018 22:32:49 GMT  
		Size: 46.5 MB (46473929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.37-spatial`

```console
$ docker pull orientdb@sha256:cb104ec834f41dff9cc0cb32443aa16025796b6ddc48f581cb64a64fbac19f25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.37-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:7e4dd65c73f2dbd3b7fabbfd50a765280c15e47c27563ccbc2ea9cda5305fe9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121261461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46081b155d40a19ce1695c8c7ad03a71e8a49e060dc14fce7aae4991299b68b6`
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
# Fri, 26 Oct 2018 22:30:36 GMT
ENV ORIENTDB_VERSION=2.2.37
# Fri, 26 Oct 2018 22:30:36 GMT
ENV ORIENTDB_DOWNLOAD_MD5=cb80556ef3b0260d0ee5de88ea73fb9d
# Fri, 26 Oct 2018 22:30:36 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=469c402dde029f265fe905de2c08b43960e81f07
# Fri, 26 Oct 2018 22:30:36 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.37/orientdb-community-2.2.37.tar.gz
# Fri, 26 Oct 2018 22:30:37 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 26 Oct 2018 22:30:41 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 26 Oct 2018 22:30:49 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 26 Oct 2018 22:30:49 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 26 Oct 2018 22:30:50 GMT
WORKDIR /orientdb
# Fri, 26 Oct 2018 22:30:50 GMT
EXPOSE 2424/tcp
# Fri, 26 Oct 2018 22:30:50 GMT
EXPOSE 2480/tcp
# Fri, 26 Oct 2018 22:30:51 GMT
CMD ["server.sh"]
# Fri, 26 Oct 2018 22:31:11 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=9f64ab5e959f5d9ad9ea5195d6d621d2
# Fri, 26 Oct 2018 22:31:11 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=1748c9779ea7a8cb8fc068fcabf960e1778e8a19
# Fri, 26 Oct 2018 22:31:11 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.37/orientdb-spatial-2.2.37-dist.jar
# Fri, 26 Oct 2018 22:31:12 GMT
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
	-	`sha256:c47b3d9b4979233c10730ebeb1da02c06b86d9ff642a5d3bf7d802b3fdb50082`  
		Last Modified: Fri, 26 Oct 2018 22:32:46 GMT  
		Size: 767.3 KB (767278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254937c5d4f514c045b4764603566a2f771de1e7644255607c69a220bb3dde14`  
		Last Modified: Fri, 26 Oct 2018 22:32:49 GMT  
		Size: 46.5 MB (46473929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d532a2fa1fbfef02a341693a638cb1c7dd0bbe2a7c774d6a86d9a4ce8b8f310`  
		Last Modified: Fri, 26 Oct 2018 22:33:09 GMT  
		Size: 1.2 MB (1202560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.10`

```console
$ docker pull orientdb@sha256:a30a5229066033bc9517b49383ee696b9deb93998018b70f5719c0be14f8c0c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.10` - linux; amd64

```console
$ docker pull orientdb@sha256:9d7d072a7dee2de195b1c7f49fc444298bc2ae69143802d8e5bafc7d5ea4cbee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.5 MB (110452382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48e01121d269e51b0d082a407c0477384d8b33a06a056c74c07411de33bf479b`
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
# Fri, 26 Oct 2018 22:31:34 GMT
ENV ORIENTDB_VERSION=3.0.10
# Fri, 26 Oct 2018 22:31:34 GMT
ENV ORIENTDB_DOWNLOAD_MD5=e6afdbe678b01a82e03601e58ff46bc7
# Fri, 26 Oct 2018 22:31:34 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=9be4cf0e052d5c0fd48665cda3e13ab378ed6994
# Fri, 26 Oct 2018 22:31:34 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.10/orientdb-community-3.0.10.tar.gz
# Fri, 26 Oct 2018 22:31:35 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 26 Oct 2018 22:31:38 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 26 Oct 2018 22:31:47 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 26 Oct 2018 22:31:47 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 26 Oct 2018 22:31:47 GMT
WORKDIR /orientdb
# Fri, 26 Oct 2018 22:31:48 GMT
EXPOSE 2424/tcp
# Fri, 26 Oct 2018 22:31:48 GMT
EXPOSE 2480/tcp
# Fri, 26 Oct 2018 22:31:48 GMT
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
	-	`sha256:61bf0ca70319b631304f35ccb02765d8cbc547121665a7a6945c75724aca1f78`  
		Last Modified: Fri, 26 Oct 2018 22:33:31 GMT  
		Size: 767.3 KB (767281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d516c9ef77ca8ddce0ac02b61920761dd0e4e14759e47d4e7e0c27819c2c1c92`  
		Last Modified: Fri, 26 Oct 2018 22:33:34 GMT  
		Size: 36.9 MB (36867407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.10-tp3`

```console
$ docker pull orientdb@sha256:e09c76023f47144be6d44bf01d55ce3b2823978b24bae5ebea81a08d5c37bb8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.10-tp3` - linux; amd64

```console
$ docker pull orientdb@sha256:0820249f67481d05b556fad51d3069ee658300f364ec51f8e35d51eaa7605a1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.7 MB (137736670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ba988569c6b1e5327cfa04227f9683177598ae40d18a388d35e03319e47ab40`
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
# Fri, 26 Oct 2018 22:31:34 GMT
ENV ORIENTDB_VERSION=3.0.10
# Fri, 26 Oct 2018 22:32:09 GMT
ENV ORIENTDB_DOWNLOAD_MD5=b931b72585f7c995160007455befd353
# Fri, 26 Oct 2018 22:32:09 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=9f722219129b98654aa35600c4ef248b2514ab3f
# Fri, 26 Oct 2018 22:32:09 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-tp3/3.0.10/orientdb-tp3-3.0.10.tar.gz
# Fri, 26 Oct 2018 22:32:10 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 26 Oct 2018 22:32:15 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-tp3-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-tp3-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 26 Oct 2018 22:32:22 GMT
ADD file:99b7a1625594810d4a6ad850d8e45ce20c6e5e95127b6a7316cae65e7aa03c13 in /orientdb/config 
# Fri, 26 Oct 2018 22:32:22 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 26 Oct 2018 22:32:23 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 26 Oct 2018 22:32:23 GMT
WORKDIR /orientdb
# Fri, 26 Oct 2018 22:32:23 GMT
EXPOSE 2424/tcp
# Fri, 26 Oct 2018 22:32:24 GMT
EXPOSE 2480/tcp
# Fri, 26 Oct 2018 22:32:24 GMT
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
	-	`sha256:8cf7c1ba9f7b018edb573bc332863877791d5a4ff43ecf646bcb06012ff0eed3`  
		Last Modified: Fri, 26 Oct 2018 22:34:05 GMT  
		Size: 767.3 KB (767277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4be5c4d2a29a6b4a3fde486b08ba55f023d38b6f9acc5e6f79a67d845a2789a`  
		Last Modified: Fri, 26 Oct 2018 22:34:10 GMT  
		Size: 64.2 MB (64150323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8489dee338f7d76c9ae46846f7f4ca29cde670480d56d74bc7bc96afb9f9ac15`  
		Last Modified: Fri, 26 Oct 2018 22:34:05 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:a30a5229066033bc9517b49383ee696b9deb93998018b70f5719c0be14f8c0c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:9d7d072a7dee2de195b1c7f49fc444298bc2ae69143802d8e5bafc7d5ea4cbee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.5 MB (110452382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48e01121d269e51b0d082a407c0477384d8b33a06a056c74c07411de33bf479b`
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
# Fri, 26 Oct 2018 22:31:34 GMT
ENV ORIENTDB_VERSION=3.0.10
# Fri, 26 Oct 2018 22:31:34 GMT
ENV ORIENTDB_DOWNLOAD_MD5=e6afdbe678b01a82e03601e58ff46bc7
# Fri, 26 Oct 2018 22:31:34 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=9be4cf0e052d5c0fd48665cda3e13ab378ed6994
# Fri, 26 Oct 2018 22:31:34 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.10/orientdb-community-3.0.10.tar.gz
# Fri, 26 Oct 2018 22:31:35 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 26 Oct 2018 22:31:38 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 26 Oct 2018 22:31:47 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 26 Oct 2018 22:31:47 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 26 Oct 2018 22:31:47 GMT
WORKDIR /orientdb
# Fri, 26 Oct 2018 22:31:48 GMT
EXPOSE 2424/tcp
# Fri, 26 Oct 2018 22:31:48 GMT
EXPOSE 2480/tcp
# Fri, 26 Oct 2018 22:31:48 GMT
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
	-	`sha256:61bf0ca70319b631304f35ccb02765d8cbc547121665a7a6945c75724aca1f78`  
		Last Modified: Fri, 26 Oct 2018 22:33:31 GMT  
		Size: 767.3 KB (767281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d516c9ef77ca8ddce0ac02b61920761dd0e4e14759e47d4e7e0c27819c2c1c92`  
		Last Modified: Fri, 26 Oct 2018 22:33:34 GMT  
		Size: 36.9 MB (36867407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
