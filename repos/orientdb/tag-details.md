<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.37`](#orientdb2237)
-	[`orientdb:2.2.37-spatial`](#orientdb2237-spatial)
-	[`orientdb:3.0.17`](#orientdb3017)
-	[`orientdb:3.0.17-tp3`](#orientdb3017-tp3)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:2dfab0e6d3b71823b632f6ed3933992e529bd5af9c6f03fa901878231b9705f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

```console
$ docker pull orientdb@sha256:7b689f3132d39e89e807ba55243b2bf63257503f289c3c217ffe704605c8db21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291984910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2cc4243bbc3f6ec704e1bbe6ec4ef56db7ec6f865dbb72a86b86e04188a8c0`
-	Default Command: `["server.sh"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:59:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:03:23 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:03:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:04:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:30:53 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 05 Mar 2019 14:30:54 GMT
ENV ORIENTDB_VERSION=2.0.18
# Tue, 05 Mar 2019 14:30:54 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Tue, 05 Mar 2019 14:30:55 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Tue, 05 Mar 2019 14:31:00 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 05 Mar 2019 14:31:00 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 14:31:00 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 05 Mar 2019 14:31:01 GMT
WORKDIR /orientdb
# Tue, 05 Mar 2019 14:31:02 GMT
EXPOSE 2424
# Tue, 05 Mar 2019 14:31:02 GMT
EXPOSE 2480
# Tue, 05 Mar 2019 14:31:02 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d327b352258a8208acc249d97d70cac3c5cda0cea4a08de4de3cb406d8e5`  
		Last Modified: Tue, 05 Mar 2019 02:43:57 GMT  
		Size: 50.1 MB (50065610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddb9bb0d37c8247e709a0deea556c410b2c8f5f481eb3f70ee7624d41334fbf`  
		Last Modified: Tue, 05 Mar 2019 04:23:59 GMT  
		Size: 892.4 KB (892426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b535486c968ffbdf9f264ff4427502d75b637cea6a5b375ae4e8e63550621176`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e976e6210c617c81b0b232554325eb2bda0385c3c10ffbf5f8f6d031deec4f`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c11b10291d2a6a1af223d1892b22a25c11cd950117d699980479f8d061d56a`  
		Last Modified: Tue, 05 Mar 2019 04:26:59 GMT  
		Size: 134.0 MB (133975305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd4c020d89a5dae96d60402f2671029b5549473a291d4cbe29004f7dc8bb0a4`  
		Last Modified: Tue, 05 Mar 2019 14:31:27 GMT  
		Size: 46.6 MB (46586556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.25`

```console
$ docker pull orientdb@sha256:726af83a94232d45c31ee8a38b480e429eb3533d96d5691ab644d8071c54b0e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

```console
$ docker pull orientdb@sha256:625834c86d95cbc31c3dbaf2fd0e6b7df17816073fbda7fe2003e36671af4528
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104838625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9496e555fea61df89f74ab0f183a16e449104cbb723def8eb7a4f66e960e5200`
-	Default Command: `["server.sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 02:13:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 02:13:34 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 04:04:36 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 08 Mar 2019 04:04:36 GMT
ENV ORIENTDB_VERSION=2.1.25
# Fri, 08 Mar 2019 04:04:37 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Fri, 08 Mar 2019 04:04:37 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Fri, 08 Mar 2019 04:04:38 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Fri, 08 Mar 2019 04:04:44 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 08 Mar 2019 04:04:44 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:04:44 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 08 Mar 2019 04:04:44 GMT
WORKDIR /orientdb
# Fri, 08 Mar 2019 04:04:45 GMT
EXPOSE 2424
# Fri, 08 Mar 2019 04:04:45 GMT
EXPOSE 2480
# Fri, 08 Mar 2019 04:04:45 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e04b7d13ab51df65ba1284789563d2ca346b259251206cd707e58e1aabb6b7`  
		Last Modified: Fri, 08 Mar 2019 02:16:03 GMT  
		Size: 70.7 MB (70712077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295d960b54e69c2ad87b8dc3b40c02dba284b35cbb101469c02484b1d05a123f`  
		Last Modified: Fri, 08 Mar 2019 04:05:40 GMT  
		Size: 283.6 KB (283630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e7f688893e41adb3f0ffb6a33fc4b5b8b255a6fc7053d2dfcb2b761d04df1c`  
		Last Modified: Fri, 08 Mar 2019 04:05:42 GMT  
		Size: 31.1 MB (31087950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.37`

```console
$ docker pull orientdb@sha256:5b6003adeed88f01ed784cef61a679cca68d334e39eb361364aeeee02abda2ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.37` - linux; amd64

```console
$ docker pull orientdb@sha256:3d15a51edf9b9d9076e2268f81bef3b3b96dd6718d001ffece0acb1f528316fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120724070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c658580362223cc233711253842966ecd6c363ae5c4125bb3d8a4b4116de830`
-	Default Command: `["server.sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 02:13:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 02:13:34 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 04:04:36 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 08 Mar 2019 04:04:49 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 08 Mar 2019 04:04:49 GMT
ENV ORIENTDB_VERSION=2.2.37
# Fri, 08 Mar 2019 04:04:49 GMT
ENV ORIENTDB_DOWNLOAD_MD5=cb80556ef3b0260d0ee5de88ea73fb9d
# Fri, 08 Mar 2019 04:04:50 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=469c402dde029f265fe905de2c08b43960e81f07
# Fri, 08 Mar 2019 04:04:50 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.37/orientdb-community-2.2.37.tar.gz
# Fri, 08 Mar 2019 04:04:51 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 08 Mar 2019 04:04:56 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 08 Mar 2019 04:04:56 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:04:56 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 08 Mar 2019 04:04:57 GMT
WORKDIR /orientdb
# Fri, 08 Mar 2019 04:04:57 GMT
EXPOSE 2424
# Fri, 08 Mar 2019 04:04:57 GMT
EXPOSE 2480
# Fri, 08 Mar 2019 04:04:58 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e04b7d13ab51df65ba1284789563d2ca346b259251206cd707e58e1aabb6b7`  
		Last Modified: Fri, 08 Mar 2019 02:16:03 GMT  
		Size: 70.7 MB (70712077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee446a1e8a31c99a4abbdeab0068a13fe357f8ecb8c6b0a2559ddbd71fbe757`  
		Last Modified: Fri, 08 Mar 2019 04:05:45 GMT  
		Size: 783.1 KB (783117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ace0cde7c4c20a3b4fbd27b242504aec350fd74c4b7c137868a1edeb39e94e4`  
		Last Modified: Fri, 08 Mar 2019 04:05:49 GMT  
		Size: 46.5 MB (46473908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.37-spatial`

```console
$ docker pull orientdb@sha256:d23deafc39086d6da2ac09bf8be89252a14216af154096962f2ddbb64d95a75f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.37-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:cb56d3b681efd6f21a2926f389895e4fe5cf17f93dfae4b1d75bee0b0ca7700f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.9 MB (121926634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62c5c0add76d10fcda7689033a6ba20bdf4715c7adb2998dcdb9cf830a1230de`
-	Default Command: `["server.sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 02:13:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 02:13:34 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 04:04:36 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 08 Mar 2019 04:04:49 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 08 Mar 2019 04:04:49 GMT
ENV ORIENTDB_VERSION=2.2.37
# Fri, 08 Mar 2019 04:04:49 GMT
ENV ORIENTDB_DOWNLOAD_MD5=cb80556ef3b0260d0ee5de88ea73fb9d
# Fri, 08 Mar 2019 04:04:50 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=469c402dde029f265fe905de2c08b43960e81f07
# Fri, 08 Mar 2019 04:04:50 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.37/orientdb-community-2.2.37.tar.gz
# Fri, 08 Mar 2019 04:04:51 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 08 Mar 2019 04:04:56 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 08 Mar 2019 04:04:56 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:04:56 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 08 Mar 2019 04:04:57 GMT
WORKDIR /orientdb
# Fri, 08 Mar 2019 04:04:57 GMT
EXPOSE 2424
# Fri, 08 Mar 2019 04:04:57 GMT
EXPOSE 2480
# Fri, 08 Mar 2019 04:04:58 GMT
CMD ["server.sh"]
# Fri, 08 Mar 2019 04:05:02 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=9f64ab5e959f5d9ad9ea5195d6d621d2
# Fri, 08 Mar 2019 04:05:02 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=1748c9779ea7a8cb8fc068fcabf960e1778e8a19
# Fri, 08 Mar 2019 04:05:02 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.37/orientdb-spatial-2.2.37-dist.jar
# Fri, 08 Mar 2019 04:05:03 GMT
RUN wget $ORIENTDB_DOWNLOAD_SPATIAL_URL     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_MD5 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | md5sum -c -     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_SHA1 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | sha1sum -c -     && mv orientdb-spatial-*-dist.jar /orientdb/lib/
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e04b7d13ab51df65ba1284789563d2ca346b259251206cd707e58e1aabb6b7`  
		Last Modified: Fri, 08 Mar 2019 02:16:03 GMT  
		Size: 70.7 MB (70712077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee446a1e8a31c99a4abbdeab0068a13fe357f8ecb8c6b0a2559ddbd71fbe757`  
		Last Modified: Fri, 08 Mar 2019 04:05:45 GMT  
		Size: 783.1 KB (783117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ace0cde7c4c20a3b4fbd27b242504aec350fd74c4b7c137868a1edeb39e94e4`  
		Last Modified: Fri, 08 Mar 2019 04:05:49 GMT  
		Size: 46.5 MB (46473908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70379e6d1af534b238fcd85ea7f4a6123e53c8ef11d61aaaa4b4cfa0f121e808`  
		Last Modified: Fri, 08 Mar 2019 04:05:52 GMT  
		Size: 1.2 MB (1202564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.17`

```console
$ docker pull orientdb@sha256:d4293ec30033c5482cc0e58374cc81af7695acda0a3e4ed4a56aef1cfaba86a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.17` - linux; amd64

```console
$ docker pull orientdb@sha256:104a330a8461e0adb0dd41ca52e22d345968802f02ef7852086a5fa45c686850
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111357891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:160f9fd3bfa99e5a815abc335adf7b95fddc711165de8a4bb5a70fb6777e7f4d`
-	Default Command: `["server.sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 02:13:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 02:13:34 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 04:04:36 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 08 Mar 2019 04:04:49 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 08 Mar 2019 04:05:07 GMT
ENV ORIENTDB_VERSION=3.0.17
# Fri, 08 Mar 2019 04:05:07 GMT
ENV ORIENTDB_DOWNLOAD_MD5=61e53dc7fd402bd265556e2a67ccecd1
# Fri, 08 Mar 2019 04:05:07 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=44efc772ed0469c52d3e0072785289c2e6268b5a
# Fri, 08 Mar 2019 04:05:07 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.17/orientdb-community-3.0.17.tar.gz
# Fri, 08 Mar 2019 04:05:08 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 08 Mar 2019 04:05:13 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 08 Mar 2019 04:05:13 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:05:13 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 08 Mar 2019 04:05:13 GMT
WORKDIR /orientdb
# Fri, 08 Mar 2019 04:05:13 GMT
EXPOSE 2424
# Fri, 08 Mar 2019 04:05:14 GMT
EXPOSE 2480
# Fri, 08 Mar 2019 04:05:14 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e04b7d13ab51df65ba1284789563d2ca346b259251206cd707e58e1aabb6b7`  
		Last Modified: Fri, 08 Mar 2019 02:16:03 GMT  
		Size: 70.7 MB (70712077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08221ab6fcfec00b96d4e688c0048d44d8f680e2ecfa4b212b4d22866833f371`  
		Last Modified: Fri, 08 Mar 2019 04:05:55 GMT  
		Size: 783.1 KB (783124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c441bcd3bfac6f72a7554d2e5d2ef9dce996e7a66acb0c469232648429eb1845`  
		Last Modified: Fri, 08 Mar 2019 04:05:58 GMT  
		Size: 37.1 MB (37107722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.17-tp3`

```console
$ docker pull orientdb@sha256:a9d3387bee6b5c776f7a1580d71bf67f516d46dc2d78151a725b4fb025fc7537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.17-tp3` - linux; amd64

```console
$ docker pull orientdb@sha256:babd4442144106c27dfcefb60d3d5568dbba6b649bd41e4009dff1b624235a24
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.6 MB (138644531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88299039a4018561611ed18626ee0f6392d037005218519adc0938d4c2192568`
-	Default Command: `["server.sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 02:13:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 02:13:34 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 04:04:36 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 08 Mar 2019 04:04:49 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 08 Mar 2019 04:05:07 GMT
ENV ORIENTDB_VERSION=3.0.17
# Fri, 08 Mar 2019 04:05:18 GMT
ENV ORIENTDB_DOWNLOAD_MD5=36b930bbbf0dd25462825359f924c35e
# Fri, 08 Mar 2019 04:05:18 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=d8ebd3ef0cb36996d56dc298840525ab451c7261
# Fri, 08 Mar 2019 04:05:18 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-tp3/3.0.17/orientdb-tp3-3.0.17.tar.gz
# Fri, 08 Mar 2019 04:05:20 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 08 Mar 2019 04:05:29 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-tp3-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-tp3-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 08 Mar 2019 04:05:29 GMT
ADD file:5bcd10827429355383b443914a6e6c163692cb388c7594e6e8d3d4625653a011 in /orientdb/config 
# Fri, 08 Mar 2019 04:05:29 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:05:30 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 08 Mar 2019 04:05:30 GMT
WORKDIR /orientdb
# Fri, 08 Mar 2019 04:05:30 GMT
EXPOSE 2424
# Fri, 08 Mar 2019 04:05:31 GMT
EXPOSE 2480
# Fri, 08 Mar 2019 04:05:31 GMT
EXPOSE 8182
# Fri, 08 Mar 2019 04:05:31 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e04b7d13ab51df65ba1284789563d2ca346b259251206cd707e58e1aabb6b7`  
		Last Modified: Fri, 08 Mar 2019 02:16:03 GMT  
		Size: 70.7 MB (70712077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcbb3281d3fa8edf9929bd652280e689056ec1d25409a2406d0e6561b5c8330`  
		Last Modified: Fri, 08 Mar 2019 04:06:07 GMT  
		Size: 783.1 KB (783123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486c32ba21fa4896d9dea02cb5d8f521857e2431aadfa2fdbc0a2e872b59b67b`  
		Last Modified: Fri, 08 Mar 2019 04:06:14 GMT  
		Size: 64.4 MB (64392984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6866fd37789ec86b889e645e36665b55b98198661746a079d834e5e6f5bf8a`  
		Last Modified: Fri, 08 Mar 2019 04:06:07 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:d4293ec30033c5482cc0e58374cc81af7695acda0a3e4ed4a56aef1cfaba86a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:104a330a8461e0adb0dd41ca52e22d345968802f02ef7852086a5fa45c686850
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111357891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:160f9fd3bfa99e5a815abc335adf7b95fddc711165de8a4bb5a70fb6777e7f4d`
-	Default Command: `["server.sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 02:13:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 02:13:34 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 04:04:36 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 08 Mar 2019 04:04:49 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 08 Mar 2019 04:05:07 GMT
ENV ORIENTDB_VERSION=3.0.17
# Fri, 08 Mar 2019 04:05:07 GMT
ENV ORIENTDB_DOWNLOAD_MD5=61e53dc7fd402bd265556e2a67ccecd1
# Fri, 08 Mar 2019 04:05:07 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=44efc772ed0469c52d3e0072785289c2e6268b5a
# Fri, 08 Mar 2019 04:05:07 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.17/orientdb-community-3.0.17.tar.gz
# Fri, 08 Mar 2019 04:05:08 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 08 Mar 2019 04:05:13 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 08 Mar 2019 04:05:13 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:05:13 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 08 Mar 2019 04:05:13 GMT
WORKDIR /orientdb
# Fri, 08 Mar 2019 04:05:13 GMT
EXPOSE 2424
# Fri, 08 Mar 2019 04:05:14 GMT
EXPOSE 2480
# Fri, 08 Mar 2019 04:05:14 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e04b7d13ab51df65ba1284789563d2ca346b259251206cd707e58e1aabb6b7`  
		Last Modified: Fri, 08 Mar 2019 02:16:03 GMT  
		Size: 70.7 MB (70712077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08221ab6fcfec00b96d4e688c0048d44d8f680e2ecfa4b212b4d22866833f371`  
		Last Modified: Fri, 08 Mar 2019 04:05:55 GMT  
		Size: 783.1 KB (783124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c441bcd3bfac6f72a7554d2e5d2ef9dce996e7a66acb0c469232648429eb1845`  
		Last Modified: Fri, 08 Mar 2019 04:05:58 GMT  
		Size: 37.1 MB (37107722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
