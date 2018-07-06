<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.35`](#orientdb2235)
-	[`orientdb:2.2.35-spatial`](#orientdb2235-spatial)
-	[`orientdb:3.0.3`](#orientdb303)
-	[`orientdb:3.0.3-tp3`](#orientdb303-tp3)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:584d9291ad7b17bb4ac5848a1a3613f8e3977681300ec0ac842c2c244230c46e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

```console
$ docker pull orientdb@sha256:0bdc69567b8dabff9fa250b134850103758bd2a984267d50d82d5e13f43c1834
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.2 MB (292215972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2df5803088cbc59d6af2132f7953e8adf682e2abc665e4f6ce5480d25286dbe`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:27:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:27:23 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:27:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:27:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:27:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 26 Jun 2018 23:27:25 GMT
ENV JAVA_VERSION=8u171
# Tue, 26 Jun 2018 23:27:25 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 26 Jun 2018 23:27:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 26 Jun 2018 23:28:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Jun 2018 23:28:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 27 Jun 2018 06:25:04 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 27 Jun 2018 06:25:04 GMT
ENV ORIENTDB_VERSION=2.0.18
# Wed, 27 Jun 2018 06:25:05 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Wed, 27 Jun 2018 06:25:05 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Wed, 27 Jun 2018 06:25:12 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 27 Jun 2018 06:25:16 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 06:25:16 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 27 Jun 2018 06:25:17 GMT
WORKDIR /orientdb
# Wed, 27 Jun 2018 06:25:17 GMT
EXPOSE 2424/tcp
# Wed, 27 Jun 2018 06:25:17 GMT
EXPOSE 2480/tcp
# Wed, 27 Jun 2018 06:25:18 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7ad5906a7580677bdf8a8d57749814520c2c6a2054604c115ba6e8646363aa`  
		Last Modified: Tue, 26 Jun 2018 22:30:55 GMT  
		Size: 50.1 MB (50062264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a71f22008abf7300e45f82d714c898896e400c7b5083d383008f59dc9fcfdfad`  
		Last Modified: Tue, 26 Jun 2018 23:48:36 GMT  
		Size: 892.5 KB (892524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56f7360809fd2f9ec806c8b26553a9c597fe8fc8e9ce805d14ef9171b39425c`  
		Last Modified: Tue, 26 Jun 2018 23:48:36 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1832923672a83c01fe74fc3162182e5f9beee423124705d618d708376c5b579`  
		Last Modified: Tue, 26 Jun 2018 23:48:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb1c4b78c423b292bc24a99c562613ad885c4439b6ab3144adbba1b9acbcb1b`  
		Last Modified: Tue, 26 Jun 2018 23:48:59 GMT  
		Size: 134.0 MB (133972601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c723e720bda13faf9b26176e2bc7654ed72ca953d77cc3b4ed3bae991cc6c87`  
		Last Modified: Tue, 26 Jun 2018 23:48:37 GMT  
		Size: 272.1 KB (272101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4137c59373e8b46ffe177fad384b73873e7ee4f7860c5aea38da3a2379001336`  
		Last Modified: Wed, 27 Jun 2018 06:25:44 GMT  
		Size: 46.6 MB (46586558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.25`

```console
$ docker pull orientdb@sha256:6f4693114652f803ea35d19692fd269e608ae68df286b568461e78fd445c36ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

```console
$ docker pull orientdb@sha256:15bb366357102b1180a770cf7719d23713daea6a1b02eb78940a8278aad2f183
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103779149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7270ea19f95d00cc5b8f43fa80fc1dc599e0ad0444576a48ca75859bbf00a64`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:51:15 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 15:51:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 06 Jul 2018 15:51:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 06 Jul 2018 15:51:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 15:51:16 GMT
ENV JAVA_VERSION=8u171
# Fri, 06 Jul 2018 15:51:16 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Fri, 06 Jul 2018 15:51:21 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 06 Jul 2018 20:11:35 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 06 Jul 2018 20:11:35 GMT
ENV ORIENTDB_VERSION=2.1.25
# Fri, 06 Jul 2018 20:11:36 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Fri, 06 Jul 2018 20:11:36 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Fri, 06 Jul 2018 20:11:37 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Fri, 06 Jul 2018 20:11:44 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 06 Jul 2018 20:11:44 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 20:11:44 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 06 Jul 2018 20:11:44 GMT
WORKDIR /orientdb
# Fri, 06 Jul 2018 20:11:45 GMT
EXPOSE 2424/tcp
# Fri, 06 Jul 2018 20:11:45 GMT
EXPOSE 2480/tcp
# Fri, 06 Jul 2018 20:11:46 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001add52a901363833fa030b1451162d380a5423906a45f64e090a5ee9efb74`  
		Last Modified: Fri, 06 Jul 2018 15:54:00 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874028933da5d2edc0a5683332de9b0d399ef73993ce0048b1f9433d6d779026`  
		Last Modified: Fri, 06 Jul 2018 15:54:11 GMT  
		Size: 70.3 MB (70318463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62315ebb2c2db82a56cb315c800a27bb5d5365543d6c938d8ce2a8e10936584`  
		Last Modified: Fri, 06 Jul 2018 20:13:49 GMT  
		Size: 268.9 KB (268934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd42f7c74ce12ac0be82b3781ca9dcdda370232342069192b155c8b1642fdeb`  
		Last Modified: Fri, 06 Jul 2018 20:13:54 GMT  
		Size: 31.1 MB (31087963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.35`

```console
$ docker pull orientdb@sha256:d6a24345c0a79a202eb71b7c53018b4880b5351383a326e0398394a9dbc9d9bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.35` - linux; amd64

```console
$ docker pull orientdb@sha256:2006842c0d33c99491f9622cae36972fbfcc0826fed5d3564e47115d37265ea3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119568060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8b7d22435549d923fdfbd52d173ae68e04a71f3a661f97311e13935ea764e6d`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:51:15 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 15:51:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 06 Jul 2018 15:51:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 06 Jul 2018 15:51:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 15:51:16 GMT
ENV JAVA_VERSION=8u171
# Fri, 06 Jul 2018 15:51:16 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Fri, 06 Jul 2018 15:51:21 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 06 Jul 2018 20:11:35 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 06 Jul 2018 20:11:58 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 06 Jul 2018 20:11:58 GMT
ENV ORIENTDB_VERSION=2.2.35
# Fri, 06 Jul 2018 20:11:58 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9cc574028860b85f1b910a3c43e43082
# Fri, 06 Jul 2018 20:11:58 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=e9fca1028228249fa3f81094df2246802e880b52
# Fri, 06 Jul 2018 20:11:59 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.35/orientdb-community-2.2.35.tar.gz
# Fri, 06 Jul 2018 20:12:00 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 06 Jul 2018 20:12:09 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 06 Jul 2018 20:12:15 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 20:12:15 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 06 Jul 2018 20:12:15 GMT
WORKDIR /orientdb
# Fri, 06 Jul 2018 20:12:16 GMT
EXPOSE 2424/tcp
# Fri, 06 Jul 2018 20:12:16 GMT
EXPOSE 2480/tcp
# Fri, 06 Jul 2018 20:12:17 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001add52a901363833fa030b1451162d380a5423906a45f64e090a5ee9efb74`  
		Last Modified: Fri, 06 Jul 2018 15:54:00 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874028933da5d2edc0a5683332de9b0d399ef73993ce0048b1f9433d6d779026`  
		Last Modified: Fri, 06 Jul 2018 15:54:11 GMT  
		Size: 70.3 MB (70318463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07086165b418ec9419e2899adc72f8b3ec43d8aefc756e4fd2e7ff9c03d7ce47`  
		Last Modified: Fri, 06 Jul 2018 20:14:14 GMT  
		Size: 673.8 KB (673763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc526937369cf4742f29c1dfdc37e94e00dd47e0dda7c11160966b71a564545e`  
		Last Modified: Fri, 06 Jul 2018 20:14:20 GMT  
		Size: 46.5 MB (46472045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.35-spatial`

```console
$ docker pull orientdb@sha256:3508877bd3f9d5e86778faa2680b46429c69a6d58a0b77698bb7114a115c74d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.35-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:083732e2261db3b83e22d8696062260b4d448bc370bb8b8ab4d55f4464996bad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120770548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad5b31366fa37e61dc4020ec95051cf493832e0dc416453a9cf403df7855c2b8`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:51:15 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 15:51:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 06 Jul 2018 15:51:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 06 Jul 2018 15:51:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 15:51:16 GMT
ENV JAVA_VERSION=8u171
# Fri, 06 Jul 2018 15:51:16 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Fri, 06 Jul 2018 15:51:21 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 06 Jul 2018 20:11:35 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 06 Jul 2018 20:11:58 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 06 Jul 2018 20:11:58 GMT
ENV ORIENTDB_VERSION=2.2.35
# Fri, 06 Jul 2018 20:11:58 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9cc574028860b85f1b910a3c43e43082
# Fri, 06 Jul 2018 20:11:58 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=e9fca1028228249fa3f81094df2246802e880b52
# Fri, 06 Jul 2018 20:11:59 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.35/orientdb-community-2.2.35.tar.gz
# Fri, 06 Jul 2018 20:12:00 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 06 Jul 2018 20:12:09 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 06 Jul 2018 20:12:15 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 20:12:15 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 06 Jul 2018 20:12:15 GMT
WORKDIR /orientdb
# Fri, 06 Jul 2018 20:12:16 GMT
EXPOSE 2424/tcp
# Fri, 06 Jul 2018 20:12:16 GMT
EXPOSE 2480/tcp
# Fri, 06 Jul 2018 20:12:17 GMT
CMD ["server.sh"]
# Fri, 06 Jul 2018 20:12:29 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=d434e07628a1897f69bc348b7a214b0a
# Fri, 06 Jul 2018 20:12:29 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=eb37f21c3aa7b718a36a32963ef38fba0bb7b8d3
# Fri, 06 Jul 2018 20:12:30 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.35/orientdb-spatial-2.2.35-dist.jar
# Fri, 06 Jul 2018 20:12:31 GMT
RUN wget $ORIENTDB_DOWNLOAD_SPATIAL_URL     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_MD5 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | md5sum -c -     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_SHA1 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | sha1sum -c -     && mv orientdb-spatial-*-dist.jar /orientdb/lib/
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001add52a901363833fa030b1451162d380a5423906a45f64e090a5ee9efb74`  
		Last Modified: Fri, 06 Jul 2018 15:54:00 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874028933da5d2edc0a5683332de9b0d399ef73993ce0048b1f9433d6d779026`  
		Last Modified: Fri, 06 Jul 2018 15:54:11 GMT  
		Size: 70.3 MB (70318463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07086165b418ec9419e2899adc72f8b3ec43d8aefc756e4fd2e7ff9c03d7ce47`  
		Last Modified: Fri, 06 Jul 2018 20:14:14 GMT  
		Size: 673.8 KB (673763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc526937369cf4742f29c1dfdc37e94e00dd47e0dda7c11160966b71a564545e`  
		Last Modified: Fri, 06 Jul 2018 20:14:20 GMT  
		Size: 46.5 MB (46472045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703ff2f402e4eb9c3b78d8ac069f67faa950a8d20bee7fc1d1909fffc5d23b95`  
		Last Modified: Fri, 06 Jul 2018 20:14:40 GMT  
		Size: 1.2 MB (1202488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.3`

```console
$ docker pull orientdb@sha256:8c09a3ae31cc3b88c25a479fb94a01384915761837c19d1e3ce2075e9ceb9515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.3` - linux; amd64

```console
$ docker pull orientdb@sha256:20e9639bf2fc667e83d52fdb2fbd4f7278af9be0e0e02c84ca0343440f79cf5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109486094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69f4d016896364efd5f05ea4957f828b055c76ccab423b410e1ba2c17c903174`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:51:15 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 15:51:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 06 Jul 2018 15:51:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 06 Jul 2018 15:51:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 15:51:16 GMT
ENV JAVA_VERSION=8u171
# Fri, 06 Jul 2018 15:51:16 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Fri, 06 Jul 2018 15:51:21 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 06 Jul 2018 20:11:35 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 06 Jul 2018 20:11:58 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 06 Jul 2018 20:12:44 GMT
ENV ORIENTDB_VERSION=3.0.3
# Fri, 06 Jul 2018 20:12:44 GMT
ENV ORIENTDB_DOWNLOAD_MD5=d272811a06bb415cb6dc206162fd798a
# Fri, 06 Jul 2018 20:12:44 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=ac109b1f23fd2c5824c95b82c3326789bde128a8
# Fri, 06 Jul 2018 20:12:44 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.3/orientdb-community-3.0.3.tar.gz
# Fri, 06 Jul 2018 20:12:45 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 06 Jul 2018 20:12:56 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 06 Jul 2018 20:12:56 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 20:12:57 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 06 Jul 2018 20:12:57 GMT
WORKDIR /orientdb
# Fri, 06 Jul 2018 20:12:57 GMT
EXPOSE 2424/tcp
# Fri, 06 Jul 2018 20:12:58 GMT
EXPOSE 2480/tcp
# Fri, 06 Jul 2018 20:12:58 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001add52a901363833fa030b1451162d380a5423906a45f64e090a5ee9efb74`  
		Last Modified: Fri, 06 Jul 2018 15:54:00 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874028933da5d2edc0a5683332de9b0d399ef73993ce0048b1f9433d6d779026`  
		Last Modified: Fri, 06 Jul 2018 15:54:11 GMT  
		Size: 70.3 MB (70318463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb9965decb2484f1b2db4595d045f2ba1294b18658b61b6569301d8592d6bb6`  
		Last Modified: Fri, 06 Jul 2018 20:14:59 GMT  
		Size: 673.7 KB (673740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b48e28136167974cd36e222c22db3b30107729d0bf2137211ab9dd7c9bd7d89`  
		Last Modified: Fri, 06 Jul 2018 20:15:04 GMT  
		Size: 36.4 MB (36390102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.3-tp3`

```console
$ docker pull orientdb@sha256:9b1d6c047e86282401eb70503d8c16808985fc63115aac64f710b81ab90a43a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.3-tp3` - linux; amd64

```console
$ docker pull orientdb@sha256:a7c401498dbfe93814eb3f4f8a1f2bd44f278bd688d7a6fa14a83d9fd5b98897
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136766962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc58c16d36a6b25fe18962f93fc14d896111ecc50ce9b7114320351827d9b429`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:51:15 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 15:51:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 06 Jul 2018 15:51:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 06 Jul 2018 15:51:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 15:51:16 GMT
ENV JAVA_VERSION=8u171
# Fri, 06 Jul 2018 15:51:16 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Fri, 06 Jul 2018 15:51:21 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 06 Jul 2018 20:11:35 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 06 Jul 2018 20:11:58 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 06 Jul 2018 20:12:44 GMT
ENV ORIENTDB_VERSION=3.0.3
# Fri, 06 Jul 2018 20:13:12 GMT
ENV ORIENTDB_DOWNLOAD_MD5=8e463ef5b8b8b2f83154e9798a4329d7
# Fri, 06 Jul 2018 20:13:12 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=8447b8d66fbae768d504843efa03aa3c39da099b
# Fri, 06 Jul 2018 20:13:12 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-tp3/3.0.3/orientdb-tp3-3.0.3.tar.gz
# Fri, 06 Jul 2018 20:13:13 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 06 Jul 2018 20:13:19 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-tp3-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-tp3-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 06 Jul 2018 20:13:19 GMT
ADD file:99b7a1625594810d4a6ad850d8e45ce20c6e5e95127b6a7316cae65e7aa03c13 in /orientdb/config 
# Fri, 06 Jul 2018 20:13:19 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 20:13:20 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 06 Jul 2018 20:13:20 GMT
WORKDIR /orientdb
# Fri, 06 Jul 2018 20:13:20 GMT
EXPOSE 2424/tcp
# Fri, 06 Jul 2018 20:13:21 GMT
EXPOSE 2480/tcp
# Fri, 06 Jul 2018 20:13:21 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001add52a901363833fa030b1451162d380a5423906a45f64e090a5ee9efb74`  
		Last Modified: Fri, 06 Jul 2018 15:54:00 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874028933da5d2edc0a5683332de9b0d399ef73993ce0048b1f9433d6d779026`  
		Last Modified: Fri, 06 Jul 2018 15:54:11 GMT  
		Size: 70.3 MB (70318463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c568e215b1bb0b81b35bacebe1513be9e5ded289d6da9b926f6dc5b90c5f39`  
		Last Modified: Fri, 06 Jul 2018 20:15:38 GMT  
		Size: 673.7 KB (673742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dadc873b50f7bf00add829c9655d6e765a3c65d29499f833a1b5bf165f5d7de`  
		Last Modified: Fri, 06 Jul 2018 20:15:48 GMT  
		Size: 63.7 MB (63669593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fc0d11aaf08547ea583fd0857cc141bd9f291948a8ef04fcbd1064e6ac0b68`  
		Last Modified: Fri, 06 Jul 2018 20:15:37 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:8c09a3ae31cc3b88c25a479fb94a01384915761837c19d1e3ce2075e9ceb9515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:20e9639bf2fc667e83d52fdb2fbd4f7278af9be0e0e02c84ca0343440f79cf5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109486094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69f4d016896364efd5f05ea4957f828b055c76ccab423b410e1ba2c17c903174`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:51:15 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 15:51:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 06 Jul 2018 15:51:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 06 Jul 2018 15:51:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 15:51:16 GMT
ENV JAVA_VERSION=8u171
# Fri, 06 Jul 2018 15:51:16 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Fri, 06 Jul 2018 15:51:21 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 06 Jul 2018 20:11:35 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 06 Jul 2018 20:11:58 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 06 Jul 2018 20:12:44 GMT
ENV ORIENTDB_VERSION=3.0.3
# Fri, 06 Jul 2018 20:12:44 GMT
ENV ORIENTDB_DOWNLOAD_MD5=d272811a06bb415cb6dc206162fd798a
# Fri, 06 Jul 2018 20:12:44 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=ac109b1f23fd2c5824c95b82c3326789bde128a8
# Fri, 06 Jul 2018 20:12:44 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.3/orientdb-community-3.0.3.tar.gz
# Fri, 06 Jul 2018 20:12:45 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 06 Jul 2018 20:12:56 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 06 Jul 2018 20:12:56 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 20:12:57 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 06 Jul 2018 20:12:57 GMT
WORKDIR /orientdb
# Fri, 06 Jul 2018 20:12:57 GMT
EXPOSE 2424/tcp
# Fri, 06 Jul 2018 20:12:58 GMT
EXPOSE 2480/tcp
# Fri, 06 Jul 2018 20:12:58 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001add52a901363833fa030b1451162d380a5423906a45f64e090a5ee9efb74`  
		Last Modified: Fri, 06 Jul 2018 15:54:00 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874028933da5d2edc0a5683332de9b0d399ef73993ce0048b1f9433d6d779026`  
		Last Modified: Fri, 06 Jul 2018 15:54:11 GMT  
		Size: 70.3 MB (70318463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb9965decb2484f1b2db4595d045f2ba1294b18658b61b6569301d8592d6bb6`  
		Last Modified: Fri, 06 Jul 2018 20:14:59 GMT  
		Size: 673.7 KB (673740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b48e28136167974cd36e222c22db3b30107729d0bf2137211ab9dd7c9bd7d89`  
		Last Modified: Fri, 06 Jul 2018 20:15:04 GMT  
		Size: 36.4 MB (36390102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
