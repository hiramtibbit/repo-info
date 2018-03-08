<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.33`](#orientdb2233)
-	[`orientdb:2.2.33-spatial`](#orientdb2233-spatial)
-	[`orientdb:3.0.0RC2`](#orientdb300rc2)
-	[`orientdb:3.0.0RC2-spatial`](#orientdb300rc2-spatial)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:ed3e252b58ac432fe7a392704c052fe651ad353fe8081c0e667fd44eff7cf7cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

```console
$ docker pull orientdb@sha256:c2c80ac785813adb4209760ec52a2141fb26fe513c21a03d1309e878cb97c5fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.3 MB (341256751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64aff3ceec8c486393b593267099fa6614faf266e6b4a02ea96113cb4d0613d7`
-	Default Command: `["server.sh"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 03:56:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:17:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:17:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:17:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:17:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:17:59 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:17:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:18:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:18:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 17:18:33 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 15 Feb 2018 17:18:33 GMT
ENV ORIENTDB_VERSION=2.0.18
# Thu, 15 Feb 2018 17:18:33 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Thu, 15 Feb 2018 17:18:34 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Thu, 15 Feb 2018 17:18:39 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 15 Feb 2018 17:18:39 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 17:18:39 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 15 Feb 2018 17:18:40 GMT
WORKDIR /orientdb
# Thu, 15 Feb 2018 17:18:40 GMT
EXPOSE 2424/tcp
# Thu, 15 Feb 2018 17:18:40 GMT
EXPOSE 2480/tcp
# Thu, 15 Feb 2018 17:18:41 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e99216b7ade69e485ea213e61a54528fde48b4dc4cf05715fa3492b9dad3f1`  
		Last Modified: Thu, 15 Feb 2018 04:41:14 GMT  
		Size: 50.0 MB (50022692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e688b2d72158e454f2bbb324aa92263cb6dcc782e7ff5f700b94cc1f2b16131`  
		Last Modified: Thu, 15 Feb 2018 13:42:49 GMT  
		Size: 892.1 KB (892065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e9ec3ed749a92de10f82502b1fc6da0a67f646988435dcb2bf232ba9c38b92`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd3ba26786476877c00c53a3abab5d25ba03ea1293a589e4a32aa955d7ceb2d`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5672be24157fde538cf58b4df4a0c8c1b02b9f66fe0bca510e758230a276dc06`  
		Last Modified: Thu, 15 Feb 2018 13:43:28 GMT  
		Size: 182.9 MB (182907087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5307d6ff27ac265ed9022a799a47e4d74086dc051ca0de5c9ae36e1b5679ba`  
		Last Modified: Thu, 15 Feb 2018 13:42:48 GMT  
		Size: 272.1 KB (272094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507e9a9f9ca68ed9f7889bbe32653440a0507e250ca4677ea419cc5887c4efa3`  
		Last Modified: Thu, 15 Feb 2018 17:19:13 GMT  
		Size: 46.6 MB (46586559 bytes)  
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

## `orientdb:2.2.33`

```console
$ docker pull orientdb@sha256:4e5305d089aa1a1c2c9934f4110a6ded38b26ba89c75975e75043e2b88594aee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.33` - linux; amd64

```console
$ docker pull orientdb@sha256:8bf48f9bc62ec077f8154087c8c93a7fef6a4c17f57203baf79b7c91b0642ef2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119423930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af5449828468b103b52ff882fb84a425c2f4e3339fa316ee362e48629a379443`
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
# Thu, 08 Mar 2018 18:37:07 GMT
ENV ORIENTDB_VERSION=2.2.33
# Thu, 08 Mar 2018 18:37:07 GMT
ENV ORIENTDB_DOWNLOAD_MD5=163fc4f24c7b7d7a8179a7d10f49903e
# Thu, 08 Mar 2018 18:37:08 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=ddf34eda1d03484a2e1ace0cbc4abc3100c86400
# Thu, 08 Mar 2018 18:37:08 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.33/orientdb-community-2.2.33.tar.gz
# Thu, 08 Mar 2018 18:37:11 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 08 Mar 2018 18:37:15 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 08 Mar 2018 18:37:15 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 08 Mar 2018 18:37:15 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 08 Mar 2018 18:37:16 GMT
WORKDIR /orientdb
# Thu, 08 Mar 2018 18:37:16 GMT
EXPOSE 2424/tcp
# Thu, 08 Mar 2018 18:37:16 GMT
EXPOSE 2480/tcp
# Thu, 08 Mar 2018 18:37:17 GMT
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
	-	`sha256:d10461246947f87c89c008ba246b5e7b8111bb4d1247bcb0fa56e574c0af1fb7`  
		Last Modified: Thu, 08 Mar 2018 18:37:55 GMT  
		Size: 668.3 KB (668349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050c08f4b9d30bb04f8e8c797de4d647800b230111e37b21c43754058ab43373`  
		Last Modified: Thu, 08 Mar 2018 18:37:58 GMT  
		Size: 46.5 MB (46462042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.33-spatial`

```console
$ docker pull orientdb@sha256:cfb4daa3a69c2142b4ac9770acbfdc0a615f0fd7f6146abbd59bcc550c04d54a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.33-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:bce759c1134f4a4fc74da4bdfb304696d63e4ec575195f06e2dac0afc5294ae4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120626458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3061c8bab859da23962f181f08dc0d2fe445e40e6b819368868cc0c3ed6fdd56`
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
# Thu, 08 Mar 2018 18:37:07 GMT
ENV ORIENTDB_VERSION=2.2.33
# Thu, 08 Mar 2018 18:37:07 GMT
ENV ORIENTDB_DOWNLOAD_MD5=163fc4f24c7b7d7a8179a7d10f49903e
# Thu, 08 Mar 2018 18:37:08 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=ddf34eda1d03484a2e1ace0cbc4abc3100c86400
# Thu, 08 Mar 2018 18:37:08 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.33/orientdb-community-2.2.33.tar.gz
# Thu, 08 Mar 2018 18:37:11 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 08 Mar 2018 18:37:15 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 08 Mar 2018 18:37:15 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 08 Mar 2018 18:37:15 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 08 Mar 2018 18:37:16 GMT
WORKDIR /orientdb
# Thu, 08 Mar 2018 18:37:16 GMT
EXPOSE 2424/tcp
# Thu, 08 Mar 2018 18:37:16 GMT
EXPOSE 2480/tcp
# Thu, 08 Mar 2018 18:37:17 GMT
CMD ["server.sh"]
# Thu, 08 Mar 2018 18:37:32 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=1dfad842025528e780176fb880edff3c
# Thu, 08 Mar 2018 18:37:33 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=2c1672728a46cf0c5453016a0b03d18d6ff15805
# Thu, 08 Mar 2018 18:37:33 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.33/orientdb-spatial-2.2.33-dist.jar
# Thu, 08 Mar 2018 18:37:34 GMT
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
	-	`sha256:d10461246947f87c89c008ba246b5e7b8111bb4d1247bcb0fa56e574c0af1fb7`  
		Last Modified: Thu, 08 Mar 2018 18:37:55 GMT  
		Size: 668.3 KB (668349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050c08f4b9d30bb04f8e8c797de4d647800b230111e37b21c43754058ab43373`  
		Last Modified: Thu, 08 Mar 2018 18:37:58 GMT  
		Size: 46.5 MB (46462042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6ebbb78a2a3ca549d0100f5239bc28c812abe6d906fac644e8e95f0fcdc3f3`  
		Last Modified: Thu, 08 Mar 2018 18:38:37 GMT  
		Size: 1.2 MB (1202528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0RC2`

```console
$ docker pull orientdb@sha256:55fc4010c0d1f76872cf01aeeb2ceaa33221cb53229d7f69f030d01816241e37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0RC2` - linux; amd64

```console
$ docker pull orientdb@sha256:d4c84384c9515b5f20cfc43e524cee6a85752154222a80e55ea35673ff2bbc6d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134442311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd5a74dcd9d3b0e760d0863e2b86065c42a25fd37a4949b354ed2ef8a1e4468c`
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
# Wed, 28 Feb 2018 19:36:56 GMT
ENV ORIENTDB_VERSION=3.0.0RC2
# Wed, 28 Feb 2018 19:36:56 GMT
ENV ORIENTDB_DOWNLOAD_MD5=5deeeda898ae0c52a3e992fe3fb0b70e
# Wed, 28 Feb 2018 19:36:57 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=6035a7aef10c1caf92e1ac733c0b417002bcb0f4
# Wed, 28 Feb 2018 19:36:57 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-gremlin/3.0.0RC2/orientdb-community-gremlin-3.0.0RC2.tar.gz
# Wed, 28 Feb 2018 19:37:00 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 28 Feb 2018 19:37:07 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 28 Feb 2018 19:37:08 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Feb 2018 19:37:08 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 28 Feb 2018 19:37:08 GMT
WORKDIR /orientdb
# Wed, 28 Feb 2018 19:37:09 GMT
EXPOSE 2424/tcp
# Wed, 28 Feb 2018 19:37:09 GMT
EXPOSE 2480/tcp
# Wed, 28 Feb 2018 19:37:10 GMT
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
	-	`sha256:798134872045fae661fc6e7eb5ecf4de4ff392c4d06571deff7de383afdfafe9`  
		Last Modified: Wed, 28 Feb 2018 19:38:03 GMT  
		Size: 668.3 KB (668337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ca0aab245de9940129973a34d736749b1eb2071e641d90a0d688ece4d66b76`  
		Last Modified: Wed, 28 Feb 2018 19:38:07 GMT  
		Size: 61.5 MB (61480435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0RC2-spatial`

```console
$ docker pull orientdb@sha256:d8e5dc3e35e1e82009004569197dd25c407c0d6eca744b8268b035f7ccf5faf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0RC2-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:bccdb4dde2f35a1c86f7cff98cf5df6f7cf9237912cea1882f651fe8fd2107a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137482342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5cd321a9b5d2e2e946560efc79b743af4de037ed2f4e948b5097a2b07beb262`
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
# Wed, 28 Feb 2018 19:36:56 GMT
ENV ORIENTDB_VERSION=3.0.0RC2
# Wed, 28 Feb 2018 19:37:24 GMT
ENV ORIENTDB_DOWNLOAD_MD5=c59fc0fd19539755202fbbe3d0c62675
# Wed, 28 Feb 2018 19:37:24 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=07a9531cb8ff6fa9cfda0e4e58e4fd99396dd418
# Wed, 28 Feb 2018 19:37:25 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-spatial/3.0.0RC2/orientdb-community-spatial-3.0.0RC2.tar.gz
# Wed, 28 Feb 2018 19:37:28 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 28 Feb 2018 19:37:39 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 28 Feb 2018 19:37:39 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Feb 2018 19:37:40 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 28 Feb 2018 19:37:40 GMT
WORKDIR /orientdb
# Wed, 28 Feb 2018 19:37:41 GMT
EXPOSE 2424/tcp
# Wed, 28 Feb 2018 19:37:41 GMT
EXPOSE 2480/tcp
# Wed, 28 Feb 2018 19:37:42 GMT
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
	-	`sha256:a1af75eae5834f1ca94793bd73139b03615db1fe8dd9671059e74bbe29419899`  
		Last Modified: Wed, 28 Feb 2018 19:38:27 GMT  
		Size: 668.3 KB (668335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cdb4eb48ec17433175136b5c5012eaad444b3358aaf8787341279014f6857b`  
		Last Modified: Wed, 28 Feb 2018 19:38:32 GMT  
		Size: 64.5 MB (64520468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:4e5305d089aa1a1c2c9934f4110a6ded38b26ba89c75975e75043e2b88594aee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:8bf48f9bc62ec077f8154087c8c93a7fef6a4c17f57203baf79b7c91b0642ef2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119423930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af5449828468b103b52ff882fb84a425c2f4e3339fa316ee362e48629a379443`
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
# Thu, 08 Mar 2018 18:37:07 GMT
ENV ORIENTDB_VERSION=2.2.33
# Thu, 08 Mar 2018 18:37:07 GMT
ENV ORIENTDB_DOWNLOAD_MD5=163fc4f24c7b7d7a8179a7d10f49903e
# Thu, 08 Mar 2018 18:37:08 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=ddf34eda1d03484a2e1ace0cbc4abc3100c86400
# Thu, 08 Mar 2018 18:37:08 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.33/orientdb-community-2.2.33.tar.gz
# Thu, 08 Mar 2018 18:37:11 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 08 Mar 2018 18:37:15 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 08 Mar 2018 18:37:15 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 08 Mar 2018 18:37:15 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 08 Mar 2018 18:37:16 GMT
WORKDIR /orientdb
# Thu, 08 Mar 2018 18:37:16 GMT
EXPOSE 2424/tcp
# Thu, 08 Mar 2018 18:37:16 GMT
EXPOSE 2480/tcp
# Thu, 08 Mar 2018 18:37:17 GMT
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
	-	`sha256:d10461246947f87c89c008ba246b5e7b8111bb4d1247bcb0fa56e574c0af1fb7`  
		Last Modified: Thu, 08 Mar 2018 18:37:55 GMT  
		Size: 668.3 KB (668349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050c08f4b9d30bb04f8e8c797de4d647800b230111e37b21c43754058ab43373`  
		Last Modified: Thu, 08 Mar 2018 18:37:58 GMT  
		Size: 46.5 MB (46462042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
