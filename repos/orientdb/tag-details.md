<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.32`](#orientdb2232)
-	[`orientdb:2.2.32-spatial`](#orientdb2232-spatial)
-	[`orientdb:3.0.0RC1`](#orientdb300rc1)
-	[`orientdb:3.0.0RC1-spatial`](#orientdb300rc1-spatial)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:2894c29f93d3ea344e3054c9ffe6543e23440970d1f6909c038857bf27cb4814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

```console
$ docker pull orientdb@sha256:963276a3ff746abdfa5ef279c646f62565b73dddd8759624e436ba088c874f9a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.2 MB (341240309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07cbf1b2e011fd5c5717a4c021e235a3aead846c9a2d98582541c04d46bda134`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 07:54:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:14:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:14:21 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 15:14:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 15:14:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 15:14:24 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 15:14:24 GMT
ENV JAVA_VERSION=8u151
# Tue, 12 Dec 2017 15:14:25 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 12 Dec 2017 15:14:25 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Dec 2017 15:15:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 15:15:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 12 Dec 2017 18:49:26 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 12 Dec 2017 18:49:27 GMT
ENV ORIENTDB_VERSION=2.0.18
# Tue, 12 Dec 2017 18:49:27 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Tue, 12 Dec 2017 18:49:27 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Tue, 12 Dec 2017 18:49:33 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 12 Dec 2017 18:49:33 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 18:49:34 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 12 Dec 2017 18:49:34 GMT
WORKDIR /orientdb
# Tue, 12 Dec 2017 18:49:35 GMT
EXPOSE 2424/tcp
# Tue, 12 Dec 2017 18:49:35 GMT
EXPOSE 2480/tcp
# Tue, 12 Dec 2017 18:49:35 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe15a44e12f84b4aac20d4f2b450ec8638cc0b176c9130d1802cb4fed17d953`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 11.1 MB (11107352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a28e3cc3de08700c9d37c809a6d3aa43dc076402943919f4a78c286c60a0b`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 4.3 MB (4335420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50316693559041b3c6895bce352b10c302f31c074495671a820b689d2ce12baa`  
		Last Modified: Tue, 12 Dec 2017 08:04:27 GMT  
		Size: 50.0 MB (50022829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043a12c29ea469f2521637d790e447a11583651eaa1809da1b15cbbdcdccc0ed`  
		Last Modified: Tue, 12 Dec 2017 16:17:47 GMT  
		Size: 892.0 KB (892049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3036204524472a3bf48d87444c797e8d0ea5e2b7b7490702a059314d797aa697`  
		Last Modified: Tue, 12 Dec 2017 16:17:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61f95baa024b8c0a05ab25a2180f5a37d9cae8284ff70709ca0fcb36d97d9e6`  
		Last Modified: Tue, 12 Dec 2017 16:17:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2018472a1fdc5a8ef25fbbf2cde838d8c9aa99ca9e799c0f38d82552368d8c`  
		Last Modified: Tue, 12 Dec 2017 16:18:35 GMT  
		Size: 182.9 MB (182901918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a25f8a69c882f7cd39cfd819ae28c9d228bfc4255fe39a18a5d6bd41fd60b061`  
		Last Modified: Tue, 12 Dec 2017 16:17:43 GMT  
		Size: 272.2 KB (272178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fe7a535f71f7038cb2c8c79c838145c60a099856112a5035396c1ed459bf01`  
		Last Modified: Tue, 12 Dec 2017 18:50:04 GMT  
		Size: 46.6 MB (46586556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.25`

```console
$ docker pull orientdb@sha256:8354358adb9028687fa591fc83444f0c311da53ef65ac71ce7b173a608ec0806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

```console
$ docker pull orientdb@sha256:3a0bbe0d284965c18bc23a477d3c1314818d4fd02525f767746b375d131227b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.7 MB (103650140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5229d26744970db4f91bb46d2dda30dd531c6197dd70d5a0891477efe20259ad`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Jan 2018 04:50:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:51:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 09:22:07 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 10 Jan 2018 09:22:07 GMT
ENV ORIENTDB_VERSION=2.1.25
# Wed, 10 Jan 2018 09:22:08 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Wed, 10 Jan 2018 09:22:08 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Wed, 10 Jan 2018 09:22:11 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Wed, 10 Jan 2018 09:22:16 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 10 Jan 2018 09:22:23 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 09:22:23 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 10 Jan 2018 09:22:23 GMT
WORKDIR /orientdb
# Wed, 10 Jan 2018 09:22:24 GMT
EXPOSE 2424/tcp
# Wed, 10 Jan 2018 09:22:24 GMT
EXPOSE 2480/tcp
# Wed, 10 Jan 2018 09:22:25 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd869c8b9b592f2fcb5ed4d6055d651ae18d5c2cce22f56896f0ff96cdcbcbf7`  
		Last Modified: Wed, 10 Jan 2018 04:56:54 GMT  
		Size: 70.2 MB (70227764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9269c7eb829a8e88e50f06aa181025cceb56fda2918cd1728de52d3b39d0792c`  
		Last Modified: Wed, 10 Jan 2018 09:24:42 GMT  
		Size: 268.6 KB (268614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f083bb29325c845828130d498237f564435d759c42df9111528dc24636087f`  
		Last Modified: Wed, 10 Jan 2018 09:24:45 GMT  
		Size: 31.1 MB (31087987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.32`

```console
$ docker pull orientdb@sha256:1cf4b90b85448ebf13c1f176bfbab1d54d1305273d8b3a7591048c7a2e18f0ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.32` - linux; amd64

```console
$ docker pull orientdb@sha256:2147adc7331ff13f6191b50ed76e48bf86e439222c75755a532869b34385817d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119416473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461f24e52a91c1bf0091ecc19f875e4284b9207cc3d3daac77bf2f74659da271`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Jan 2018 04:50:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:51:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 09:22:07 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 10 Jan 2018 09:22:36 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 06 Feb 2018 17:36:57 GMT
ENV ORIENTDB_VERSION=2.2.32
# Tue, 06 Feb 2018 17:36:57 GMT
ENV ORIENTDB_DOWNLOAD_MD5=bcc9ebb507f614da691aaeb6b36f34a9
# Tue, 06 Feb 2018 17:36:57 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=fc0e69e46f03bb024be36be5a76130ae3f8f217e
# Tue, 06 Feb 2018 17:36:57 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.32/orientdb-community-2.2.32.tar.gz
# Tue, 06 Feb 2018 17:37:02 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 06 Feb 2018 17:37:05 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 06 Feb 2018 17:37:05 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 06 Feb 2018 17:37:06 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 06 Feb 2018 17:37:06 GMT
WORKDIR /orientdb
# Tue, 06 Feb 2018 17:37:07 GMT
EXPOSE 2424/tcp
# Tue, 06 Feb 2018 17:37:07 GMT
EXPOSE 2480/tcp
# Tue, 06 Feb 2018 17:37:07 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd869c8b9b592f2fcb5ed4d6055d651ae18d5c2cce22f56896f0ff96cdcbcbf7`  
		Last Modified: Wed, 10 Jan 2018 04:56:54 GMT  
		Size: 70.2 MB (70227764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea05bad742ebf1998f638b92051301e7203ee692476b537001ef280c35b8ce2`  
		Last Modified: Tue, 06 Feb 2018 17:37:53 GMT  
		Size: 665.5 KB (665508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba883f9a7072d97bddcf414d77230defae408a14d85be4e210e96f3e13941ce`  
		Last Modified: Tue, 06 Feb 2018 17:37:56 GMT  
		Size: 46.5 MB (46457426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.32-spatial`

```console
$ docker pull orientdb@sha256:5bd4c15938545d16209141a4fc5815c70e6dd7fb6aa738d66e2d24bbee2b63a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.32-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:2450063287b00c2519f1401946e093f9c8f3cb3d45fe44ecaf77672e4d9b77fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120619052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6eb517e38b7d827af1da2345df705312526f8442894c6c216da5f4ea8fff0b`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Jan 2018 04:50:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:51:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 09:22:07 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 10 Jan 2018 09:22:36 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 06 Feb 2018 17:36:57 GMT
ENV ORIENTDB_VERSION=2.2.32
# Tue, 06 Feb 2018 17:36:57 GMT
ENV ORIENTDB_DOWNLOAD_MD5=bcc9ebb507f614da691aaeb6b36f34a9
# Tue, 06 Feb 2018 17:36:57 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=fc0e69e46f03bb024be36be5a76130ae3f8f217e
# Tue, 06 Feb 2018 17:36:57 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.32/orientdb-community-2.2.32.tar.gz
# Tue, 06 Feb 2018 17:37:02 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 06 Feb 2018 17:37:05 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 06 Feb 2018 17:37:05 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 06 Feb 2018 17:37:06 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 06 Feb 2018 17:37:06 GMT
WORKDIR /orientdb
# Tue, 06 Feb 2018 17:37:07 GMT
EXPOSE 2424/tcp
# Tue, 06 Feb 2018 17:37:07 GMT
EXPOSE 2480/tcp
# Tue, 06 Feb 2018 17:37:07 GMT
CMD ["server.sh"]
# Tue, 06 Feb 2018 17:37:30 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=6dedf68e0964001c9be4e72450989b50
# Tue, 06 Feb 2018 17:37:31 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=b4affb8dea053cc7b1f11792b1c48cdc41a73fb4
# Tue, 06 Feb 2018 17:37:31 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.32/orientdb-spatial-2.2.32-dist.jar
# Tue, 06 Feb 2018 17:37:32 GMT
RUN wget $ORIENTDB_DOWNLOAD_SPATIAL_URL     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_MD5 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | md5sum -c -     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_SHA1 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | sha1sum -c -     && mv orientdb-spatial-*-dist.jar /orientdb/lib/
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd869c8b9b592f2fcb5ed4d6055d651ae18d5c2cce22f56896f0ff96cdcbcbf7`  
		Last Modified: Wed, 10 Jan 2018 04:56:54 GMT  
		Size: 70.2 MB (70227764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea05bad742ebf1998f638b92051301e7203ee692476b537001ef280c35b8ce2`  
		Last Modified: Tue, 06 Feb 2018 17:37:53 GMT  
		Size: 665.5 KB (665508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba883f9a7072d97bddcf414d77230defae408a14d85be4e210e96f3e13941ce`  
		Last Modified: Tue, 06 Feb 2018 17:37:56 GMT  
		Size: 46.5 MB (46457426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca50c6bc13ab75838089a4c5a375100ca1aa200de677f81eca595b3802e51897`  
		Last Modified: Tue, 06 Feb 2018 17:38:26 GMT  
		Size: 1.2 MB (1202579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0RC1`

```console
$ docker pull orientdb@sha256:c4b30627fc8dc6128cde15cd2ba6250e013a4e6f193e9bffb5308670193a73d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0RC1` - linux; amd64

```console
$ docker pull orientdb@sha256:73eba8d2d44d89f87b0e96812f3d95f85b32f099a186691df76e40b0bb0aee93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134884945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6147b73c9e4d2a461a32eaff16e57bf19c80af874cc9881b665abd42e1ce76c`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Jan 2018 04:50:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:51:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 09:22:07 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 10 Jan 2018 09:22:36 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 10 Jan 2018 09:23:40 GMT
ENV ORIENTDB_VERSION=3.0.0RC1
# Wed, 10 Jan 2018 09:23:41 GMT
ENV ORIENTDB_DOWNLOAD_MD5=f231735d7ac8c18e8e5f6aab5e6ae459
# Wed, 10 Jan 2018 09:23:41 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=8a1d8d5468d55bdb9430f525481ba356e9ca6209
# Wed, 10 Jan 2018 09:23:41 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-gremlin/3.0.0RC1/orientdb-community-gremlin-3.0.0RC1.tar.gz
# Wed, 10 Jan 2018 09:23:46 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 10 Jan 2018 09:23:53 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 10 Jan 2018 09:23:53 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 09:23:53 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 10 Jan 2018 09:23:54 GMT
WORKDIR /orientdb
# Wed, 10 Jan 2018 09:23:54 GMT
EXPOSE 2424/tcp
# Wed, 10 Jan 2018 09:23:55 GMT
EXPOSE 2480/tcp
# Wed, 10 Jan 2018 09:23:55 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd869c8b9b592f2fcb5ed4d6055d651ae18d5c2cce22f56896f0ff96cdcbcbf7`  
		Last Modified: Wed, 10 Jan 2018 04:56:54 GMT  
		Size: 70.2 MB (70227764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36979cff972d2466a25c644559ec523c509a68a1d8099debdd554b6b1b3bafb4`  
		Last Modified: Wed, 10 Jan 2018 09:25:53 GMT  
		Size: 665.5 KB (665516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56f9da8230edab94a9c1e24b32d8f8bd7f67ea73358a3eb9e132d6539f99a9e`  
		Last Modified: Wed, 10 Jan 2018 09:25:58 GMT  
		Size: 61.9 MB (61925890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0RC1-spatial`

```console
$ docker pull orientdb@sha256:44af95bac0683af8f53618bafd6b386f448cd538dfb3c8f7b6536e68ad2b7400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0RC1-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:233a770c4fb1d0ed5cf4329350c0d5322c99a15dea7192481f2284c2d6b31487
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.9 MB (137923082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c0f09e713bce45e7740783568714c095849a7f65554934eaa21d59e7f32a2ec`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Jan 2018 04:50:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:51:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 09:22:07 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 10 Jan 2018 09:22:36 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 10 Jan 2018 09:23:40 GMT
ENV ORIENTDB_VERSION=3.0.0RC1
# Wed, 10 Jan 2018 09:24:09 GMT
ENV ORIENTDB_DOWNLOAD_MD5=ca13076821b8b358f723ed4245c6fbf1
# Wed, 10 Jan 2018 09:24:09 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=0dc325fbe3583c32eb9c785a1a6c92cda1112031
# Wed, 10 Jan 2018 09:24:09 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-spatial/3.0.0RC1/orientdb-community-spatial-3.0.0RC1.tar.gz
# Wed, 10 Jan 2018 09:24:13 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 10 Jan 2018 09:24:22 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 10 Jan 2018 09:24:23 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 09:24:24 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 10 Jan 2018 09:24:25 GMT
WORKDIR /orientdb
# Wed, 10 Jan 2018 09:24:25 GMT
EXPOSE 2424/tcp
# Wed, 10 Jan 2018 09:24:25 GMT
EXPOSE 2480/tcp
# Wed, 10 Jan 2018 09:24:26 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd869c8b9b592f2fcb5ed4d6055d651ae18d5c2cce22f56896f0ff96cdcbcbf7`  
		Last Modified: Wed, 10 Jan 2018 04:56:54 GMT  
		Size: 70.2 MB (70227764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d44e50b6b78470af2a8b0f885d6fb33e41627cd0ba10b760acf1e2c085acd4`  
		Last Modified: Wed, 10 Jan 2018 09:26:17 GMT  
		Size: 665.5 KB (665519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f7a740d88fe05be0e868b6cd557d4b09c51c1b995dd708ee7ccbffea70c6b1`  
		Last Modified: Wed, 10 Jan 2018 09:26:22 GMT  
		Size: 65.0 MB (64964024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:1cf4b90b85448ebf13c1f176bfbab1d54d1305273d8b3a7591048c7a2e18f0ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:2147adc7331ff13f6191b50ed76e48bf86e439222c75755a532869b34385817d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119416473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461f24e52a91c1bf0091ecc19f875e4284b9207cc3d3daac77bf2f74659da271`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Jan 2018 04:50:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:51:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 09:22:07 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 10 Jan 2018 09:22:36 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 06 Feb 2018 17:36:57 GMT
ENV ORIENTDB_VERSION=2.2.32
# Tue, 06 Feb 2018 17:36:57 GMT
ENV ORIENTDB_DOWNLOAD_MD5=bcc9ebb507f614da691aaeb6b36f34a9
# Tue, 06 Feb 2018 17:36:57 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=fc0e69e46f03bb024be36be5a76130ae3f8f217e
# Tue, 06 Feb 2018 17:36:57 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.32/orientdb-community-2.2.32.tar.gz
# Tue, 06 Feb 2018 17:37:02 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 06 Feb 2018 17:37:05 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 06 Feb 2018 17:37:05 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 06 Feb 2018 17:37:06 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 06 Feb 2018 17:37:06 GMT
WORKDIR /orientdb
# Tue, 06 Feb 2018 17:37:07 GMT
EXPOSE 2424/tcp
# Tue, 06 Feb 2018 17:37:07 GMT
EXPOSE 2480/tcp
# Tue, 06 Feb 2018 17:37:07 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd869c8b9b592f2fcb5ed4d6055d651ae18d5c2cce22f56896f0ff96cdcbcbf7`  
		Last Modified: Wed, 10 Jan 2018 04:56:54 GMT  
		Size: 70.2 MB (70227764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea05bad742ebf1998f638b92051301e7203ee692476b537001ef280c35b8ce2`  
		Last Modified: Tue, 06 Feb 2018 17:37:53 GMT  
		Size: 665.5 KB (665508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba883f9a7072d97bddcf414d77230defae408a14d85be4e210e96f3e13941ce`  
		Last Modified: Tue, 06 Feb 2018 17:37:56 GMT  
		Size: 46.5 MB (46457426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
