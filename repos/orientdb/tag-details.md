<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.37`](#orientdb2237)
-	[`orientdb:2.2.37-spatial`](#orientdb2237-spatial)
-	[`orientdb:3.0.18`](#orientdb3018)
-	[`orientdb:3.0.18-tp3`](#orientdb3018-tp3)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:c79349e380b3af92cbad1d50f4527d3e909a343d01f0b76ead250a4ed9194b74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

```console
$ docker pull orientdb@sha256:b6771eac5850bb8f140146cf431fa693f932335e47177f6190cdb2525f8c1a73
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.2 MB (293219502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0281ab6d5bf4ee1339ada442126956ba4a9602bf18b659ed75669212a8806cc8`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:02:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:06:59 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:07:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:07:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:07:01 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 05:07:01 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 05:07:01 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 05:07:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 12:39:54 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 08 May 2019 12:39:54 GMT
ENV ORIENTDB_VERSION=2.0.18
# Wed, 08 May 2019 12:39:55 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Wed, 08 May 2019 12:39:55 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Wed, 08 May 2019 12:40:05 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 08 May 2019 12:40:05 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 12:40:05 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 08 May 2019 12:40:06 GMT
WORKDIR /orientdb
# Wed, 08 May 2019 12:40:06 GMT
EXPOSE 2424
# Wed, 08 May 2019 12:40:06 GMT
EXPOSE 2480
# Wed, 08 May 2019 12:40:06 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eadaf4c0dff038c7597047e84133eb098bc3c6e6eabae1dea15d225a39d28e3`  
		Last Modified: Wed, 08 May 2019 05:26:41 GMT  
		Size: 892.7 KB (892652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1388ac89fe3b0cbf2648fe26c6f949a1f94c834480cb90a8027e131636c5b3`  
		Last Modified: Wed, 08 May 2019 05:29:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73713755b9cb5b8b5a8955c6d458d436a00fdb4ac9b101b5bf3b2529c6ba6537`  
		Last Modified: Wed, 08 May 2019 05:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5784ff1c03721cf20203b9770594c22edb973ee6a5fb9721c0dacadea4cdbbf4`  
		Last Modified: Wed, 08 May 2019 05:29:29 GMT  
		Size: 135.2 MB (135209246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c906f7f29443c97f447dd2e05ab343be6aac8f37989728908d8e6b03ba7d88ea`  
		Last Modified: Wed, 08 May 2019 12:40:42 GMT  
		Size: 46.6 MB (46586557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.25`

```console
$ docker pull orientdb@sha256:ad7952211f349c301ad85a95cb895e82208af87a0e11d7eea35a24afddebd0f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

```console
$ docker pull orientdb@sha256:e8b1d1e83ff8ec0c3f40c05c72ea0687ff5049d1948f0acbda817d334af872ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104861822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f3306d788fb5e734cb6b5fd074d80319aaad89cc69c1a3be409e9bbda5b53a3`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 01:52:32 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 01:52:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 01:52:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Apr 2019 01:52:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 May 2019 00:21:32 GMT
ENV JAVA_VERSION=8u212
# Tue, 07 May 2019 00:21:32 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Tue, 07 May 2019 00:21:35 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 May 2019 00:48:21 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 07 May 2019 00:48:21 GMT
ENV ORIENTDB_VERSION=2.1.25
# Tue, 07 May 2019 00:48:21 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Tue, 07 May 2019 00:48:21 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Tue, 07 May 2019 00:48:22 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Tue, 07 May 2019 00:48:27 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 07 May 2019 00:48:27 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 May 2019 00:48:28 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 07 May 2019 00:48:28 GMT
WORKDIR /orientdb
# Tue, 07 May 2019 00:48:28 GMT
EXPOSE 2424
# Tue, 07 May 2019 00:48:28 GMT
EXPOSE 2480
# Tue, 07 May 2019 00:48:29 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e12771959adeb3408e625492accf845401aa66bcca638859a6b34176d753d62`  
		Last Modified: Wed, 10 Apr 2019 01:57:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018b76c3c533954c0a7fbd9e90e85f48d7240c14898e0a3b822bdc8c38ca7b50`  
		Last Modified: Tue, 07 May 2019 00:23:15 GMT  
		Size: 70.7 MB (70732830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7737bd455ecbdf3262e83ad85668c6356f3884422c3eeb9ece6449f88ac8a3c`  
		Last Modified: Tue, 07 May 2019 00:49:16 GMT  
		Size: 283.8 KB (283780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a6964d691df1efcd78f7accf10b68d3d50b48e17bfb6268d2229a6aac0f3d2`  
		Last Modified: Tue, 07 May 2019 00:49:19 GMT  
		Size: 31.1 MB (31087966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.37`

```console
$ docker pull orientdb@sha256:7b27163128ac141585ab9969f84edf8be358101305d410e63b2bb20bec4674ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.37` - linux; amd64

```console
$ docker pull orientdb@sha256:b0e4f9759257352027e0ef636ccddff7fe36e16cbf04dd862d7c2ad1c193e89d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120748056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6162a2afd85791fc6c5fba7cf4fe9ed7b1ce7f5226e249361247cfe3d16a2649`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 01:52:32 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 01:52:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 01:52:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Apr 2019 01:52:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 May 2019 00:21:32 GMT
ENV JAVA_VERSION=8u212
# Tue, 07 May 2019 00:21:32 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Tue, 07 May 2019 00:21:35 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 May 2019 00:48:21 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 07 May 2019 00:48:32 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 07 May 2019 00:48:32 GMT
ENV ORIENTDB_VERSION=2.2.37
# Tue, 07 May 2019 00:48:32 GMT
ENV ORIENTDB_DOWNLOAD_MD5=cb80556ef3b0260d0ee5de88ea73fb9d
# Tue, 07 May 2019 00:48:32 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=469c402dde029f265fe905de2c08b43960e81f07
# Tue, 07 May 2019 00:48:32 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.37/orientdb-community-2.2.37.tar.gz
# Tue, 07 May 2019 00:48:33 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 07 May 2019 00:48:38 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 07 May 2019 00:48:38 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 May 2019 00:48:38 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 07 May 2019 00:48:38 GMT
WORKDIR /orientdb
# Tue, 07 May 2019 00:48:38 GMT
EXPOSE 2424
# Tue, 07 May 2019 00:48:39 GMT
EXPOSE 2480
# Tue, 07 May 2019 00:48:39 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e12771959adeb3408e625492accf845401aa66bcca638859a6b34176d753d62`  
		Last Modified: Wed, 10 Apr 2019 01:57:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018b76c3c533954c0a7fbd9e90e85f48d7240c14898e0a3b822bdc8c38ca7b50`  
		Last Modified: Tue, 07 May 2019 00:23:15 GMT  
		Size: 70.7 MB (70732830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c0bcb0fcefedd09787e90d07208ddae589ae30e8af17256d5d05f4bb44e89b`  
		Last Modified: Tue, 07 May 2019 00:49:26 GMT  
		Size: 784.1 KB (784071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8a844555088399b88a5a182c631a8525d1ce398a94eca02cdc79aba567181`  
		Last Modified: Tue, 07 May 2019 00:49:33 GMT  
		Size: 46.5 MB (46473909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.37-spatial`

```console
$ docker pull orientdb@sha256:617781b452daf6f7ba2f1fb649132fc619d217200c964b2872e7b8bf702e133b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.37-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:51a768be10b86d5f83a8a3a9f448c0948a34081b8ddfe547198a3c8165f5d380
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121950616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af7f3b7adf1b24ba73b81fc4d3eaa3436fec36331226619601c9fcf6a541ac05`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 01:52:32 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 01:52:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 01:52:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Apr 2019 01:52:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 May 2019 00:21:32 GMT
ENV JAVA_VERSION=8u212
# Tue, 07 May 2019 00:21:32 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Tue, 07 May 2019 00:21:35 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 May 2019 00:48:21 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 07 May 2019 00:48:32 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 07 May 2019 00:48:32 GMT
ENV ORIENTDB_VERSION=2.2.37
# Tue, 07 May 2019 00:48:32 GMT
ENV ORIENTDB_DOWNLOAD_MD5=cb80556ef3b0260d0ee5de88ea73fb9d
# Tue, 07 May 2019 00:48:32 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=469c402dde029f265fe905de2c08b43960e81f07
# Tue, 07 May 2019 00:48:32 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.37/orientdb-community-2.2.37.tar.gz
# Tue, 07 May 2019 00:48:33 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 07 May 2019 00:48:38 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 07 May 2019 00:48:38 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 May 2019 00:48:38 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 07 May 2019 00:48:38 GMT
WORKDIR /orientdb
# Tue, 07 May 2019 00:48:38 GMT
EXPOSE 2424
# Tue, 07 May 2019 00:48:39 GMT
EXPOSE 2480
# Tue, 07 May 2019 00:48:39 GMT
CMD ["server.sh"]
# Tue, 07 May 2019 00:48:42 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=9f64ab5e959f5d9ad9ea5195d6d621d2
# Tue, 07 May 2019 00:48:42 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=1748c9779ea7a8cb8fc068fcabf960e1778e8a19
# Tue, 07 May 2019 00:48:43 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.37/orientdb-spatial-2.2.37-dist.jar
# Tue, 07 May 2019 00:48:45 GMT
RUN wget $ORIENTDB_DOWNLOAD_SPATIAL_URL     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_MD5 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | md5sum -c -     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_SHA1 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | sha1sum -c -     && mv orientdb-spatial-*-dist.jar /orientdb/lib/
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e12771959adeb3408e625492accf845401aa66bcca638859a6b34176d753d62`  
		Last Modified: Wed, 10 Apr 2019 01:57:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018b76c3c533954c0a7fbd9e90e85f48d7240c14898e0a3b822bdc8c38ca7b50`  
		Last Modified: Tue, 07 May 2019 00:23:15 GMT  
		Size: 70.7 MB (70732830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c0bcb0fcefedd09787e90d07208ddae589ae30e8af17256d5d05f4bb44e89b`  
		Last Modified: Tue, 07 May 2019 00:49:26 GMT  
		Size: 784.1 KB (784071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8a844555088399b88a5a182c631a8525d1ce398a94eca02cdc79aba567181`  
		Last Modified: Tue, 07 May 2019 00:49:33 GMT  
		Size: 46.5 MB (46473909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464fb30fffccd8b93e30a20c91ddb926b5beae716f584e660f0c2c2680868282`  
		Last Modified: Tue, 07 May 2019 00:49:37 GMT  
		Size: 1.2 MB (1202560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.18`

```console
$ docker pull orientdb@sha256:00ea22fc6af47e3a6ae2d4e625e8c96ed61dfa82f14693deb9523a7547e5523d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.18` - linux; amd64

```console
$ docker pull orientdb@sha256:845f8f0e0d2e3a618682f78e8de5ef15beb5859d973bcd2fe6cbb61ec6cc15f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.1 MB (111108062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5337f258058cf0fd68fe5570a0857d31a18fee3011d53c2ca51b739bc4fbad1`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 01:52:32 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 01:52:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 01:52:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Apr 2019 01:52:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 May 2019 00:21:32 GMT
ENV JAVA_VERSION=8u212
# Tue, 07 May 2019 00:21:32 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Tue, 07 May 2019 00:21:35 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 May 2019 00:48:21 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 07 May 2019 00:48:32 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 07 May 2019 00:48:48 GMT
ENV ORIENTDB_VERSION=3.0.18
# Tue, 07 May 2019 00:48:48 GMT
ENV ORIENTDB_DOWNLOAD_MD5=7cd3b9cd476db4ceadf5203b361ccd9c
# Tue, 07 May 2019 00:48:49 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=4a3a208530972b4230fbd9515614003d61273135
# Tue, 07 May 2019 00:48:49 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.18/orientdb-community-3.0.18.tar.gz
# Tue, 07 May 2019 00:48:50 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 07 May 2019 00:48:54 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 07 May 2019 00:48:54 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 May 2019 00:48:54 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 07 May 2019 00:48:54 GMT
WORKDIR /orientdb
# Tue, 07 May 2019 00:48:55 GMT
EXPOSE 2424
# Tue, 07 May 2019 00:48:55 GMT
EXPOSE 2480
# Tue, 07 May 2019 00:48:55 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e12771959adeb3408e625492accf845401aa66bcca638859a6b34176d753d62`  
		Last Modified: Wed, 10 Apr 2019 01:57:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018b76c3c533954c0a7fbd9e90e85f48d7240c14898e0a3b822bdc8c38ca7b50`  
		Last Modified: Tue, 07 May 2019 00:23:15 GMT  
		Size: 70.7 MB (70732830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe8b0326bab342ced485e1af78a0a85ad4a2ec67b1bb33c4970de66fcd40c31`  
		Last Modified: Tue, 07 May 2019 00:49:44 GMT  
		Size: 784.1 KB (784077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327ad0ba0b6390e7204a0dce5b1eeef805e6ff23035288949b22acfdb2bac7f2`  
		Last Modified: Tue, 07 May 2019 00:49:47 GMT  
		Size: 36.8 MB (36833909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.18-tp3`

```console
$ docker pull orientdb@sha256:db7934ea3a0a5bdc457ee91c2dbfd10ada0bfdec5cc2da3d5c8107aade75e49d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.18-tp3` - linux; amd64

```console
$ docker pull orientdb@sha256:afdef09e4fb9761643e23abb2bb3b72614daf0ff260b75a83a5299dbedca7a81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138125804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c1fd462765dbfd2889afc61c03d0f22d1c77a3a30fa1745075b2e552efbda72`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 01:52:32 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 01:52:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 01:52:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Apr 2019 01:52:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 May 2019 00:21:32 GMT
ENV JAVA_VERSION=8u212
# Tue, 07 May 2019 00:21:32 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Tue, 07 May 2019 00:21:35 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 May 2019 00:48:21 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 07 May 2019 00:48:32 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 07 May 2019 00:48:48 GMT
ENV ORIENTDB_VERSION=3.0.18
# Tue, 07 May 2019 00:48:59 GMT
ENV ORIENTDB_DOWNLOAD_MD5=65af4a44655972727da5a78b93cd5d5d
# Tue, 07 May 2019 00:48:59 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=9ecd7597e41ff7bc2fd25449abb3de028bfd86ef
# Tue, 07 May 2019 00:48:59 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-tp3/3.0.18/orientdb-tp3-3.0.18.tar.gz
# Tue, 07 May 2019 00:49:00 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 07 May 2019 00:49:06 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-tp3-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-tp3-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 07 May 2019 00:49:06 GMT
ADD file:5bcd10827429355383b443914a6e6c163692cb388c7594e6e8d3d4625653a011 in /orientdb/config 
# Tue, 07 May 2019 00:49:06 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 May 2019 00:49:06 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 07 May 2019 00:49:07 GMT
WORKDIR /orientdb
# Tue, 07 May 2019 00:49:07 GMT
EXPOSE 2424
# Tue, 07 May 2019 00:49:07 GMT
EXPOSE 2480
# Tue, 07 May 2019 00:49:07 GMT
EXPOSE 8182
# Tue, 07 May 2019 00:49:07 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e12771959adeb3408e625492accf845401aa66bcca638859a6b34176d753d62`  
		Last Modified: Wed, 10 Apr 2019 01:57:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018b76c3c533954c0a7fbd9e90e85f48d7240c14898e0a3b822bdc8c38ca7b50`  
		Last Modified: Tue, 07 May 2019 00:23:15 GMT  
		Size: 70.7 MB (70732830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f506b8bbb0c8844fafe89e9eecb1a1b75eb0ee078fb18ab8246f37e3e663f82a`  
		Last Modified: Tue, 07 May 2019 00:49:51 GMT  
		Size: 784.1 KB (784093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383dabbf8fbb1a0aa1869513cb446cfed7efe370b3a745c25aae3dc60a412eca`  
		Last Modified: Tue, 07 May 2019 00:49:56 GMT  
		Size: 63.9 MB (63850261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f414bbdd21f231a0e0a92f38871ee8988f834bb8f3801ca39b6aec89f95c4ff9`  
		Last Modified: Tue, 07 May 2019 00:49:51 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:00ea22fc6af47e3a6ae2d4e625e8c96ed61dfa82f14693deb9523a7547e5523d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:845f8f0e0d2e3a618682f78e8de5ef15beb5859d973bcd2fe6cbb61ec6cc15f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.1 MB (111108062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5337f258058cf0fd68fe5570a0857d31a18fee3011d53c2ca51b739bc4fbad1`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 01:52:32 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 01:52:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 01:52:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Apr 2019 01:52:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 May 2019 00:21:32 GMT
ENV JAVA_VERSION=8u212
# Tue, 07 May 2019 00:21:32 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Tue, 07 May 2019 00:21:35 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 May 2019 00:48:21 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 07 May 2019 00:48:32 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 07 May 2019 00:48:48 GMT
ENV ORIENTDB_VERSION=3.0.18
# Tue, 07 May 2019 00:48:48 GMT
ENV ORIENTDB_DOWNLOAD_MD5=7cd3b9cd476db4ceadf5203b361ccd9c
# Tue, 07 May 2019 00:48:49 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=4a3a208530972b4230fbd9515614003d61273135
# Tue, 07 May 2019 00:48:49 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.18/orientdb-community-3.0.18.tar.gz
# Tue, 07 May 2019 00:48:50 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 07 May 2019 00:48:54 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 07 May 2019 00:48:54 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 May 2019 00:48:54 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 07 May 2019 00:48:54 GMT
WORKDIR /orientdb
# Tue, 07 May 2019 00:48:55 GMT
EXPOSE 2424
# Tue, 07 May 2019 00:48:55 GMT
EXPOSE 2480
# Tue, 07 May 2019 00:48:55 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e12771959adeb3408e625492accf845401aa66bcca638859a6b34176d753d62`  
		Last Modified: Wed, 10 Apr 2019 01:57:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018b76c3c533954c0a7fbd9e90e85f48d7240c14898e0a3b822bdc8c38ca7b50`  
		Last Modified: Tue, 07 May 2019 00:23:15 GMT  
		Size: 70.7 MB (70732830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe8b0326bab342ced485e1af78a0a85ad4a2ec67b1bb33c4970de66fcd40c31`  
		Last Modified: Tue, 07 May 2019 00:49:44 GMT  
		Size: 784.1 KB (784077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327ad0ba0b6390e7204a0dce5b1eeef805e6ff23035288949b22acfdb2bac7f2`  
		Last Modified: Tue, 07 May 2019 00:49:47 GMT  
		Size: 36.8 MB (36833909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
