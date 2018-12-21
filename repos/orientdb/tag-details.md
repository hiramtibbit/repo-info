<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.37`](#orientdb2237)
-	[`orientdb:2.2.37-spatial`](#orientdb2237-spatial)
-	[`orientdb:3.0.12`](#orientdb3012)
-	[`orientdb:3.0.12-tp3`](#orientdb3012-tp3)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:b9a1b137b9222d917debbd9290089c3f7d8076183aec38a992bc5c414aed5546
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

```console
$ docker pull orientdb@sha256:ee2a48c59b54e771c45e52cb38e6379595709455dfc4885ba73ab44e8f4a03ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.2 MB (292162907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:526a7dad09821a7aa62f4ee7cb479784a12fe60b90e3c42529bf9565fdc10b82`
-	Default Command: `["server.sh"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 16 Nov 2018 14:57:56 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 14:59:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 14:59:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 07:45:37 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 17 Nov 2018 07:45:37 GMT
ENV ORIENTDB_VERSION=2.0.18
# Sat, 17 Nov 2018 07:45:37 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Sat, 17 Nov 2018 07:45:38 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Sat, 17 Nov 2018 07:45:41 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 17 Nov 2018 07:45:41 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 07:45:42 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 17 Nov 2018 07:45:42 GMT
WORKDIR /orientdb
# Sat, 17 Nov 2018 07:45:43 GMT
EXPOSE 2424/tcp
# Sat, 17 Nov 2018 07:45:43 GMT
EXPOSE 2480/tcp
# Sat, 17 Nov 2018 07:45:44 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f692fae02b67cf2beabf3ef9ce647697740ba979ab16eaec12425ead1c1ddfd`  
		Last Modified: Fri, 16 Nov 2018 15:56:52 GMT  
		Size: 134.0 MB (133973083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa976dc543cb2e46a89970e2d079b99ccc3ca4b2c8e6c31adf9511ce8933950`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 246.8 KB (246754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0ff96851ee0889e079be681e56d6d0f3993c3270aef2ecca30151f75aaa9ca`  
		Last Modified: Sat, 17 Nov 2018 07:46:33 GMT  
		Size: 46.6 MB (46586571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.25`

```console
$ docker pull orientdb@sha256:600d16568ec9dab890128590fcd18940027805e675ff373ff4cada2ab7095c4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

```console
$ docker pull orientdb@sha256:38621d91eb6a7c65a3d1f1bb7b8dc978f889f5968957483c6d9fabdb841389e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104185661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30903664298d082785153bebd709bf3d3bc90196ecdb900f5cf1c45b14ce42d1`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:40:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 21 Dec 2018 00:40:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 00:40:59 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 00:40:59 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 00:41:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 05:37:03 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 21 Dec 2018 05:37:04 GMT
ENV ORIENTDB_VERSION=2.1.25
# Fri, 21 Dec 2018 05:37:04 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Fri, 21 Dec 2018 05:37:04 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Fri, 21 Dec 2018 05:37:05 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Fri, 21 Dec 2018 05:37:09 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 21 Dec 2018 05:37:09 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 05:37:09 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 21 Dec 2018 05:37:09 GMT
WORKDIR /orientdb
# Fri, 21 Dec 2018 05:37:09 GMT
EXPOSE 2424
# Fri, 21 Dec 2018 05:37:10 GMT
EXPOSE 2480
# Fri, 21 Dec 2018 05:37:10 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35920a071f912ae4c16897610e8e2d514efcfd0e14ec76c4c73bf9aa7c2c55ea`  
		Last Modified: Fri, 21 Dec 2018 00:44:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a5c2c61767e93d1e332a4319f396f39b0dc6b2ee9e4cd2b9d0d5270c82556c`  
		Last Modified: Fri, 21 Dec 2018 00:44:52 GMT  
		Size: 70.6 MB (70610751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00e0cc87a96b81a2e6c40d3f80f0097781c33076f92e5142ce6a92f83be87d8`  
		Last Modified: Fri, 21 Dec 2018 05:37:53 GMT  
		Size: 279.7 KB (279662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243ef27cc50262f605ba3efa302dbc922847518166368f9320e700d1e5d40144`  
		Last Modified: Fri, 21 Dec 2018 05:37:56 GMT  
		Size: 31.1 MB (31087986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.37`

```console
$ docker pull orientdb@sha256:ba00cc18eac32ee292ea939f47cae163513693dd03ecf63f83a26678b51b1598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.37` - linux; amd64

```console
$ docker pull orientdb@sha256:85c905a0f66cd5844019fb0972ecaeaed3a7482390d134d601b2b94f2f87a413
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.1 MB (120059131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a3d3832818112ee95f089b81c2980711c96a0520e8e9e2be026ff8200166b6`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:40:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 21 Dec 2018 00:40:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 00:40:59 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 00:40:59 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 00:41:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 05:37:03 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 21 Dec 2018 05:37:12 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 21 Dec 2018 05:37:13 GMT
ENV ORIENTDB_VERSION=2.2.37
# Fri, 21 Dec 2018 05:37:13 GMT
ENV ORIENTDB_DOWNLOAD_MD5=cb80556ef3b0260d0ee5de88ea73fb9d
# Fri, 21 Dec 2018 05:37:13 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=469c402dde029f265fe905de2c08b43960e81f07
# Fri, 21 Dec 2018 05:37:13 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.37/orientdb-community-2.2.37.tar.gz
# Fri, 21 Dec 2018 05:37:14 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 21 Dec 2018 05:37:17 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 21 Dec 2018 05:37:18 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 05:37:18 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 21 Dec 2018 05:37:18 GMT
WORKDIR /orientdb
# Fri, 21 Dec 2018 05:37:18 GMT
EXPOSE 2424
# Fri, 21 Dec 2018 05:37:18 GMT
EXPOSE 2480
# Fri, 21 Dec 2018 05:37:19 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35920a071f912ae4c16897610e8e2d514efcfd0e14ec76c4c73bf9aa7c2c55ea`  
		Last Modified: Fri, 21 Dec 2018 00:44:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a5c2c61767e93d1e332a4319f396f39b0dc6b2ee9e4cd2b9d0d5270c82556c`  
		Last Modified: Fri, 21 Dec 2018 00:44:52 GMT  
		Size: 70.6 MB (70610751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61e14fe26b1bf48f755f444eb6c0ed0f86f7764978847e8be31a84819fc3f2b`  
		Last Modified: Fri, 21 Dec 2018 05:37:59 GMT  
		Size: 767.2 KB (767235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e233ac1a7f2197c2488c80fb0dd4276e8f1b23a50a37725e1fd96de81f52c3c3`  
		Last Modified: Fri, 21 Dec 2018 05:38:02 GMT  
		Size: 46.5 MB (46473883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.37-spatial`

```console
$ docker pull orientdb@sha256:6c60fb0459c61621448bd00c719fb21666f9c5d30437eabe4166646fa779080f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.37-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:b551dcb1cd3169cc65116a8465e78c47820dae649083e0202c42b90b49fd9e96
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121261695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951613475cda2c4df06d031899f24785c9205261ba2cabedf4860f650156d37c`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:40:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 21 Dec 2018 00:40:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 00:40:59 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 00:40:59 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 00:41:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 05:37:03 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 21 Dec 2018 05:37:12 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 21 Dec 2018 05:37:13 GMT
ENV ORIENTDB_VERSION=2.2.37
# Fri, 21 Dec 2018 05:37:13 GMT
ENV ORIENTDB_DOWNLOAD_MD5=cb80556ef3b0260d0ee5de88ea73fb9d
# Fri, 21 Dec 2018 05:37:13 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=469c402dde029f265fe905de2c08b43960e81f07
# Fri, 21 Dec 2018 05:37:13 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.37/orientdb-community-2.2.37.tar.gz
# Fri, 21 Dec 2018 05:37:14 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 21 Dec 2018 05:37:17 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 21 Dec 2018 05:37:18 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 05:37:18 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 21 Dec 2018 05:37:18 GMT
WORKDIR /orientdb
# Fri, 21 Dec 2018 05:37:18 GMT
EXPOSE 2424
# Fri, 21 Dec 2018 05:37:18 GMT
EXPOSE 2480
# Fri, 21 Dec 2018 05:37:19 GMT
CMD ["server.sh"]
# Fri, 21 Dec 2018 05:37:22 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=9f64ab5e959f5d9ad9ea5195d6d621d2
# Fri, 21 Dec 2018 05:37:22 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=1748c9779ea7a8cb8fc068fcabf960e1778e8a19
# Fri, 21 Dec 2018 05:37:22 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.37/orientdb-spatial-2.2.37-dist.jar
# Fri, 21 Dec 2018 05:37:23 GMT
RUN wget $ORIENTDB_DOWNLOAD_SPATIAL_URL     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_MD5 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | md5sum -c -     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_SHA1 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | sha1sum -c -     && mv orientdb-spatial-*-dist.jar /orientdb/lib/
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35920a071f912ae4c16897610e8e2d514efcfd0e14ec76c4c73bf9aa7c2c55ea`  
		Last Modified: Fri, 21 Dec 2018 00:44:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a5c2c61767e93d1e332a4319f396f39b0dc6b2ee9e4cd2b9d0d5270c82556c`  
		Last Modified: Fri, 21 Dec 2018 00:44:52 GMT  
		Size: 70.6 MB (70610751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61e14fe26b1bf48f755f444eb6c0ed0f86f7764978847e8be31a84819fc3f2b`  
		Last Modified: Fri, 21 Dec 2018 05:37:59 GMT  
		Size: 767.2 KB (767235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e233ac1a7f2197c2488c80fb0dd4276e8f1b23a50a37725e1fd96de81f52c3c3`  
		Last Modified: Fri, 21 Dec 2018 05:38:02 GMT  
		Size: 46.5 MB (46473883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d7b11a962a188510c1228fabe567a23024b3a6f0aeee87bae44be34654d030`  
		Last Modified: Fri, 21 Dec 2018 05:38:06 GMT  
		Size: 1.2 MB (1202564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.12`

```console
$ docker pull orientdb@sha256:af9d1d135017ed69e6b9563339eb02c805ff4526e5694b971ecfb398ecb395f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.12` - linux; amd64

```console
$ docker pull orientdb@sha256:33a41f497d60172447e83201a6f3183a2ca9d8ab4bb02faa9e67209fd5746651
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.5 MB (110497605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2afbb4ffa4b1c83bf4de91c3820f6b8ce5210fda071e39f51c169a14ecdb195e`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:40:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 21 Dec 2018 00:40:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 00:40:59 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 00:40:59 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 00:41:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 05:37:03 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 21 Dec 2018 05:37:12 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 21 Dec 2018 05:37:26 GMT
ENV ORIENTDB_VERSION=3.0.12
# Fri, 21 Dec 2018 05:37:26 GMT
ENV ORIENTDB_DOWNLOAD_MD5=ca2379a58d7312430595d120afb27222
# Fri, 21 Dec 2018 05:37:26 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=2241ccfe843ef5f8fad703d8f9bafcf814d8f918
# Fri, 21 Dec 2018 05:37:26 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.12/orientdb-community-3.0.12.tar.gz
# Fri, 21 Dec 2018 05:37:27 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 21 Dec 2018 05:37:32 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 21 Dec 2018 05:37:32 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 05:37:32 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 21 Dec 2018 05:37:32 GMT
WORKDIR /orientdb
# Fri, 21 Dec 2018 05:37:32 GMT
EXPOSE 2424
# Fri, 21 Dec 2018 05:37:33 GMT
EXPOSE 2480
# Fri, 21 Dec 2018 05:37:33 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35920a071f912ae4c16897610e8e2d514efcfd0e14ec76c4c73bf9aa7c2c55ea`  
		Last Modified: Fri, 21 Dec 2018 00:44:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a5c2c61767e93d1e332a4319f396f39b0dc6b2ee9e4cd2b9d0d5270c82556c`  
		Last Modified: Fri, 21 Dec 2018 00:44:52 GMT  
		Size: 70.6 MB (70610751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ffc9e0b1fc8aa3cb23ce28a4f05eb951e7a8c04ec58f751d415cd42859794b`  
		Last Modified: Fri, 21 Dec 2018 05:38:08 GMT  
		Size: 767.2 KB (767242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70e55be3a7c42fac407993c82d0947b04c845e13786f26904095bc28598949f`  
		Last Modified: Fri, 21 Dec 2018 05:38:12 GMT  
		Size: 36.9 MB (36912350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.12-tp3`

```console
$ docker pull orientdb@sha256:d2ef1f4eeee286b601771d455085e045d37c2dfce033b4783d283f20ba63a5cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.12-tp3` - linux; amd64

```console
$ docker pull orientdb@sha256:1830668c518b93346f47415af5364994479766ef2b5d6d90e62f270f4f173ea1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137782164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10c119bb7ce7e208946d026a4b0c45fa55afff52a922b8cd5af714fd1cf722f7`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:40:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 21 Dec 2018 00:40:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 00:40:59 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 00:40:59 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 00:41:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 05:37:03 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 21 Dec 2018 05:37:12 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 21 Dec 2018 05:37:26 GMT
ENV ORIENTDB_VERSION=3.0.12
# Fri, 21 Dec 2018 05:37:36 GMT
ENV ORIENTDB_DOWNLOAD_MD5=245c1fa6d529d8bb3cd4eb6315677e11
# Fri, 21 Dec 2018 05:37:36 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=a8c8d9f2b63e9fa4de39e53668c7ae83edbb3cf2
# Fri, 21 Dec 2018 05:37:36 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-tp3/3.0.12/orientdb-tp3-3.0.12.tar.gz
# Fri, 21 Dec 2018 05:37:37 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 21 Dec 2018 05:37:41 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-tp3-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-tp3-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 21 Dec 2018 05:37:42 GMT
ADD file:5bcd10827429355383b443914a6e6c163692cb388c7594e6e8d3d4625653a011 in /orientdb/config 
# Fri, 21 Dec 2018 05:37:42 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 05:37:42 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 21 Dec 2018 05:37:42 GMT
WORKDIR /orientdb
# Fri, 21 Dec 2018 05:37:42 GMT
EXPOSE 2424
# Fri, 21 Dec 2018 05:37:42 GMT
EXPOSE 2480
# Fri, 21 Dec 2018 05:37:43 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35920a071f912ae4c16897610e8e2d514efcfd0e14ec76c4c73bf9aa7c2c55ea`  
		Last Modified: Fri, 21 Dec 2018 00:44:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a5c2c61767e93d1e332a4319f396f39b0dc6b2ee9e4cd2b9d0d5270c82556c`  
		Last Modified: Fri, 21 Dec 2018 00:44:52 GMT  
		Size: 70.6 MB (70610751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a2eaccef3ca0c6128fa7e529ce0f31fafb1c81b0e8fbcff25462922c491070`  
		Last Modified: Fri, 21 Dec 2018 05:38:15 GMT  
		Size: 767.2 KB (767236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3a38f55c1c8d81c245608f2e5f92172ee130a6f803a7e3db324bc8363f0b8b`  
		Last Modified: Fri, 21 Dec 2018 05:38:20 GMT  
		Size: 64.2 MB (64195538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7627529da88acca18a567fd2f514b8e3e48a06b344fb8a8a14d22e7591eb037`  
		Last Modified: Fri, 21 Dec 2018 05:38:15 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:77d3630bbc348954b6074a9da83ea763d4886dc2a81340e8c8b15f1e57294a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:a950c9b1679b0e380959ef89dac631df9031ec20c43ed664a98680dc052d4f26
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.5 MB (110497288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bb8204058b15a620436620df53feda4f895b3bbfff6d4a6f7cb3cf9f20db09a`
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
# Tue, 11 Dec 2018 22:20:52 GMT
ENV ORIENTDB_VERSION=3.0.12
# Tue, 11 Dec 2018 22:20:53 GMT
ENV ORIENTDB_DOWNLOAD_MD5=ca2379a58d7312430595d120afb27222
# Tue, 11 Dec 2018 22:20:53 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=2241ccfe843ef5f8fad703d8f9bafcf814d8f918
# Tue, 11 Dec 2018 22:20:53 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.12/orientdb-community-3.0.12.tar.gz
# Tue, 11 Dec 2018 22:20:54 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 11 Dec 2018 22:20:58 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 11 Dec 2018 22:20:59 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 11 Dec 2018 22:20:59 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 11 Dec 2018 22:20:59 GMT
WORKDIR /orientdb
# Tue, 11 Dec 2018 22:21:00 GMT
EXPOSE 2424/tcp
# Tue, 11 Dec 2018 22:21:00 GMT
EXPOSE 2480/tcp
# Tue, 11 Dec 2018 22:21:01 GMT
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
	-	`sha256:33032a1c879e2e0d5d375f460032cf9f014996c0e680613e87181228e23ea0b2`  
		Last Modified: Tue, 11 Dec 2018 22:22:43 GMT  
		Size: 767.3 KB (767252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd1be916be0b0a4d7e3211df3c57e8c7b25ed1ac2e553981f9b41c07ae57fe0`  
		Last Modified: Tue, 11 Dec 2018 22:22:46 GMT  
		Size: 36.9 MB (36912342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
