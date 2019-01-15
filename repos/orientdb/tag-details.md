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
$ docker pull orientdb@sha256:3a1a657cd2bb2c4ff8a57479c8c46e571df6a622888380a105e3f9b7930e034a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

```console
$ docker pull orientdb@sha256:869991ed382f4fd68de7decf18e04ac73f7deb72d3aba5aa0a9b762a972dda1d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 MB (291962417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fce4447d151dea5b55c6ed695f5743ddd966bdce1148d12e13c80092b2508d3`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:56:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:56:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:57:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 12:04:48 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 29 Dec 2018 12:04:48 GMT
ENV ORIENTDB_VERSION=2.0.18
# Sat, 29 Dec 2018 12:04:48 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Sat, 29 Dec 2018 12:04:49 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Sat, 29 Dec 2018 12:04:54 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 29 Dec 2018 12:04:55 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 12:04:55 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 29 Dec 2018 12:04:55 GMT
WORKDIR /orientdb
# Sat, 29 Dec 2018 12:04:56 GMT
EXPOSE 2424
# Sat, 29 Dec 2018 12:04:56 GMT
EXPOSE 2480
# Sat, 29 Dec 2018 12:04:56 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045b51e26e750443c84216071a1367a7aae0b76245800629dc04934628b4b1ea`  
		Last Modified: Sat, 29 Dec 2018 00:22:00 GMT  
		Size: 50.1 MB (50062697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e50f3a5916063721a472d949e4708f7ef54cd00ea07336c43cc1b192f5a30c`  
		Last Modified: Sat, 29 Dec 2018 03:21:36 GMT  
		Size: 892.3 KB (892281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c546cdc7ce4fc7024f36d943e72738660870cf6eddd1491e1f7afe7739ea9d`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b0460146c0de06889859885b2591dbb2c6b8d29b4163c3d9d0782b8b3e360b`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428095c4a908303a8f98178b90d393c8b4cddaafa1b67d50e71d369adc680294`  
		Last Modified: Sat, 29 Dec 2018 03:24:53 GMT  
		Size: 134.0 MB (133975764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ec19a4a6f5607b4deda86a185a4c795dfe493e11e239a586e86a01165c4c02`  
		Last Modified: Sat, 29 Dec 2018 12:05:31 GMT  
		Size: 46.6 MB (46586570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.25`

```console
$ docker pull orientdb@sha256:62e938f3dd4ea5826a9023ae72040132bee709c6632057d2bbc0060fa35041e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

```console
$ docker pull orientdb@sha256:b8fce262bac7fc6b08b6f510cc667272406287d278475d28a8fa4c41c2023e3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104225840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3148e04d09119af710fa4c108f10f2a576943e972d802dc6b20ad3707e8c50f`
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
# Fri, 11 Jan 2019 00:26:01 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 00:26:01 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 00:26:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 02:05:42 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 11 Jan 2019 02:05:42 GMT
ENV ORIENTDB_VERSION=2.1.25
# Fri, 11 Jan 2019 02:05:43 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Fri, 11 Jan 2019 02:05:43 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Fri, 11 Jan 2019 02:05:44 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Fri, 11 Jan 2019 02:05:47 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 11 Jan 2019 02:05:47 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 02:05:47 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 11 Jan 2019 02:05:48 GMT
WORKDIR /orientdb
# Fri, 11 Jan 2019 02:05:48 GMT
EXPOSE 2424
# Fri, 11 Jan 2019 02:05:48 GMT
EXPOSE 2480
# Fri, 11 Jan 2019 02:05:48 GMT
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
	-	`sha256:88b05767cad1d214d47942193ae9397b177ebf5866fa7997ed3b59e9f4c52a38`  
		Last Modified: Fri, 11 Jan 2019 00:29:57 GMT  
		Size: 70.7 MB (70650933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a7ef0ca731af58a6f77056b878051894c733bb402d3dcfdeaa70874c47b94d`  
		Last Modified: Fri, 11 Jan 2019 02:06:31 GMT  
		Size: 279.7 KB (279683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7c1ed1ad3a7dc0891fe3c14d6afadd70c3173255bbc389c420c6e975ae39e9`  
		Last Modified: Fri, 11 Jan 2019 02:06:34 GMT  
		Size: 31.1 MB (31087962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.37`

```console
$ docker pull orientdb@sha256:d47a24389c5fd2599b57fada735737946ed457af7adc8b37e72f01dd9c28c8fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.37` - linux; amd64

```console
$ docker pull orientdb@sha256:30f1d931d628cfae74df73933b16533491094da25d943ab6e92acacffbd3fd47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.1 MB (120099336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:251e1a67263b45cde2ae5b13b5c7175e0aa47b76599470837f8453d11a6d2460`
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
# Fri, 11 Jan 2019 00:26:01 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 00:26:01 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 00:26:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 02:05:42 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 11 Jan 2019 02:05:51 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 11 Jan 2019 02:05:51 GMT
ENV ORIENTDB_VERSION=2.2.37
# Fri, 11 Jan 2019 02:05:52 GMT
ENV ORIENTDB_DOWNLOAD_MD5=cb80556ef3b0260d0ee5de88ea73fb9d
# Fri, 11 Jan 2019 02:05:52 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=469c402dde029f265fe905de2c08b43960e81f07
# Fri, 11 Jan 2019 02:05:52 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.37/orientdb-community-2.2.37.tar.gz
# Fri, 11 Jan 2019 02:05:53 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 11 Jan 2019 02:05:57 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 11 Jan 2019 02:05:57 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 02:05:57 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 11 Jan 2019 02:05:57 GMT
WORKDIR /orientdb
# Fri, 11 Jan 2019 02:05:57 GMT
EXPOSE 2424
# Fri, 11 Jan 2019 02:05:58 GMT
EXPOSE 2480
# Fri, 11 Jan 2019 02:05:58 GMT
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
	-	`sha256:88b05767cad1d214d47942193ae9397b177ebf5866fa7997ed3b59e9f4c52a38`  
		Last Modified: Fri, 11 Jan 2019 00:29:57 GMT  
		Size: 70.7 MB (70650933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc884b7cb81332634fc002dda972e513cd1e832f13b78e21fb957792f5303722`  
		Last Modified: Fri, 11 Jan 2019 02:06:41 GMT  
		Size: 767.2 KB (767224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be99f52b9c104cc2e2f9a91ffa8428ccd12ab2e914b6fb7c38c356e100ca15c`  
		Last Modified: Fri, 11 Jan 2019 02:06:45 GMT  
		Size: 46.5 MB (46473917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.37-spatial`

```console
$ docker pull orientdb@sha256:592ca622b5f9920a8e9d2e3b8a5d1d6fc1fe7be8eb8d7f6464df70a5ac0cae65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.37-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:57899c3055001465b24a853caf822292e34809f919d85541a4605b2ce961ab13
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121301896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65aa1e4653ac6fd2efaab3946cf57bd5a6ac4f48a0455fb2132e8837feeb4ec8`
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
# Fri, 11 Jan 2019 00:26:01 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 00:26:01 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 00:26:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 02:05:42 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 11 Jan 2019 02:05:51 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 11 Jan 2019 02:05:51 GMT
ENV ORIENTDB_VERSION=2.2.37
# Fri, 11 Jan 2019 02:05:52 GMT
ENV ORIENTDB_DOWNLOAD_MD5=cb80556ef3b0260d0ee5de88ea73fb9d
# Fri, 11 Jan 2019 02:05:52 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=469c402dde029f265fe905de2c08b43960e81f07
# Fri, 11 Jan 2019 02:05:52 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.37/orientdb-community-2.2.37.tar.gz
# Fri, 11 Jan 2019 02:05:53 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 11 Jan 2019 02:05:57 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 11 Jan 2019 02:05:57 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 02:05:57 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 11 Jan 2019 02:05:57 GMT
WORKDIR /orientdb
# Fri, 11 Jan 2019 02:05:57 GMT
EXPOSE 2424
# Fri, 11 Jan 2019 02:05:58 GMT
EXPOSE 2480
# Fri, 11 Jan 2019 02:05:58 GMT
CMD ["server.sh"]
# Fri, 11 Jan 2019 02:06:01 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=9f64ab5e959f5d9ad9ea5195d6d621d2
# Fri, 11 Jan 2019 02:06:01 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=1748c9779ea7a8cb8fc068fcabf960e1778e8a19
# Fri, 11 Jan 2019 02:06:02 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.37/orientdb-spatial-2.2.37-dist.jar
# Fri, 11 Jan 2019 02:06:02 GMT
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
	-	`sha256:88b05767cad1d214d47942193ae9397b177ebf5866fa7997ed3b59e9f4c52a38`  
		Last Modified: Fri, 11 Jan 2019 00:29:57 GMT  
		Size: 70.7 MB (70650933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc884b7cb81332634fc002dda972e513cd1e832f13b78e21fb957792f5303722`  
		Last Modified: Fri, 11 Jan 2019 02:06:41 GMT  
		Size: 767.2 KB (767224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be99f52b9c104cc2e2f9a91ffa8428ccd12ab2e914b6fb7c38c356e100ca15c`  
		Last Modified: Fri, 11 Jan 2019 02:06:45 GMT  
		Size: 46.5 MB (46473917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12dd7db4ef6f3cde39fce9cffb357d5111757396ad68f1b8886f47f0e248bbe`  
		Last Modified: Fri, 11 Jan 2019 02:06:49 GMT  
		Size: 1.2 MB (1202560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.13`

```console
$ docker pull orientdb@sha256:85a2d2e5364c38c5d147fec9519e9e40f886e14d56e52ed8f7389ab368a5b3cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.13` - linux; amd64

```console
$ docker pull orientdb@sha256:6f97cc56acd228663d12b0389422c3212df5c7cb5d5db9be388b912427fd985b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.5 MB (110549329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef526561c909b9a2b33ac08ae7b9156b77178e9f6e06474ac02138d9dd76c55`
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
# Fri, 11 Jan 2019 00:26:01 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 00:26:01 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 00:26:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 02:05:42 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 11 Jan 2019 02:05:51 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 11 Jan 2019 02:06:05 GMT
ENV ORIENTDB_VERSION=3.0.13
# Fri, 11 Jan 2019 02:06:06 GMT
ENV ORIENTDB_DOWNLOAD_MD5=12b955c069aeefd8697891d2310c7520
# Fri, 11 Jan 2019 02:06:06 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=35bc1cdfa79d6aa133cdcdffe72a3ed9f7a39cde
# Fri, 11 Jan 2019 02:06:06 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.13/orientdb-community-3.0.13.tar.gz
# Fri, 11 Jan 2019 02:06:07 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 11 Jan 2019 02:06:11 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 11 Jan 2019 02:06:11 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 02:06:11 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 11 Jan 2019 02:06:11 GMT
WORKDIR /orientdb
# Fri, 11 Jan 2019 02:06:12 GMT
EXPOSE 2424
# Fri, 11 Jan 2019 02:06:12 GMT
EXPOSE 2480
# Fri, 11 Jan 2019 02:06:12 GMT
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
	-	`sha256:88b05767cad1d214d47942193ae9397b177ebf5866fa7997ed3b59e9f4c52a38`  
		Last Modified: Fri, 11 Jan 2019 00:29:57 GMT  
		Size: 70.7 MB (70650933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11453518f794592f4f25c53693144638824d917af337515c810303923d0cc352`  
		Last Modified: Fri, 11 Jan 2019 02:06:52 GMT  
		Size: 767.2 KB (767241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a79e5f52af12d989f530b78a37af590cd15ee57dc481e3c56d66a3043e0a23`  
		Last Modified: Fri, 11 Jan 2019 02:06:55 GMT  
		Size: 36.9 MB (36923893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.13-tp3`

```console
$ docker pull orientdb@sha256:7ac45befbe1d3a2b107c6fb8a96f1f444779297e9026884257e49cee95268964
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.13-tp3` - linux; amd64

```console
$ docker pull orientdb@sha256:72905ea16b6f3cdd0cec92eaf1f9bfb15ba81b6072daf99245f4f769f97e7375
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137834558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b07bc27d501b50d28f8ed104375b9be9362cb082c8db9fcd121fdea68d9700f`
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
# Fri, 11 Jan 2019 00:26:01 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 00:26:01 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 00:26:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 02:05:42 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 11 Jan 2019 02:05:51 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 11 Jan 2019 02:06:05 GMT
ENV ORIENTDB_VERSION=3.0.13
# Fri, 11 Jan 2019 02:06:15 GMT
ENV ORIENTDB_DOWNLOAD_MD5=dc37c1e9e30f4cf3da4bfdedd47ef134
# Fri, 11 Jan 2019 02:06:15 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=abdcff739b1805a6d0c5fdaaa92a3b453cc75b70
# Fri, 11 Jan 2019 02:06:15 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-tp3/3.0.13/orientdb-tp3-3.0.13.tar.gz
# Fri, 11 Jan 2019 02:06:16 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 11 Jan 2019 02:06:21 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-tp3-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-tp3-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 11 Jan 2019 02:06:21 GMT
ADD file:5bcd10827429355383b443914a6e6c163692cb388c7594e6e8d3d4625653a011 in /orientdb/config 
# Fri, 11 Jan 2019 02:06:21 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 02:06:21 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 11 Jan 2019 02:06:22 GMT
WORKDIR /orientdb
# Fri, 11 Jan 2019 02:06:22 GMT
EXPOSE 2424
# Fri, 11 Jan 2019 02:06:22 GMT
EXPOSE 2480
# Fri, 11 Jan 2019 02:06:22 GMT
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
	-	`sha256:88b05767cad1d214d47942193ae9397b177ebf5866fa7997ed3b59e9f4c52a38`  
		Last Modified: Fri, 11 Jan 2019 00:29:57 GMT  
		Size: 70.7 MB (70650933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65aa192d1041fbb862ef4b0d566cfa115a35e4af1125a6dd07f532c14452e80`  
		Last Modified: Fri, 11 Jan 2019 02:07:00 GMT  
		Size: 767.2 KB (767240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb4ac58c213afe1d25671e1b2d753e7b74615d5d6f270b69eaad79735168035`  
		Last Modified: Fri, 11 Jan 2019 02:07:05 GMT  
		Size: 64.2 MB (64207746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73c47ac1508a63fb045649c85dfa9b6eb9c06374e59fb3002ef2333edfd2887`  
		Last Modified: Fri, 11 Jan 2019 02:07:00 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:85a2d2e5364c38c5d147fec9519e9e40f886e14d56e52ed8f7389ab368a5b3cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:6f97cc56acd228663d12b0389422c3212df5c7cb5d5db9be388b912427fd985b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.5 MB (110549329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef526561c909b9a2b33ac08ae7b9156b77178e9f6e06474ac02138d9dd76c55`
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
# Fri, 11 Jan 2019 00:26:01 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 00:26:01 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 00:26:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 02:05:42 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 11 Jan 2019 02:05:51 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 11 Jan 2019 02:06:05 GMT
ENV ORIENTDB_VERSION=3.0.13
# Fri, 11 Jan 2019 02:06:06 GMT
ENV ORIENTDB_DOWNLOAD_MD5=12b955c069aeefd8697891d2310c7520
# Fri, 11 Jan 2019 02:06:06 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=35bc1cdfa79d6aa133cdcdffe72a3ed9f7a39cde
# Fri, 11 Jan 2019 02:06:06 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.13/orientdb-community-3.0.13.tar.gz
# Fri, 11 Jan 2019 02:06:07 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 11 Jan 2019 02:06:11 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 11 Jan 2019 02:06:11 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 02:06:11 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 11 Jan 2019 02:06:11 GMT
WORKDIR /orientdb
# Fri, 11 Jan 2019 02:06:12 GMT
EXPOSE 2424
# Fri, 11 Jan 2019 02:06:12 GMT
EXPOSE 2480
# Fri, 11 Jan 2019 02:06:12 GMT
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
	-	`sha256:88b05767cad1d214d47942193ae9397b177ebf5866fa7997ed3b59e9f4c52a38`  
		Last Modified: Fri, 11 Jan 2019 00:29:57 GMT  
		Size: 70.7 MB (70650933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11453518f794592f4f25c53693144638824d917af337515c810303923d0cc352`  
		Last Modified: Fri, 11 Jan 2019 02:06:52 GMT  
		Size: 767.2 KB (767241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a79e5f52af12d989f530b78a37af590cd15ee57dc481e3c56d66a3043e0a23`  
		Last Modified: Fri, 11 Jan 2019 02:06:55 GMT  
		Size: 36.9 MB (36923893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
