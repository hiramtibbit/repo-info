<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.36`](#orientdb2236)
-	[`orientdb:2.2.36-spatial`](#orientdb2236-spatial)
-	[`orientdb:3.0.6`](#orientdb306)
-	[`orientdb:3.0.6-tp3`](#orientdb306-tp3)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:9ea71baaa5d50bd404a08c5e8ddbc1878c2828307f5513636f15790b5efd70bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

```console
$ docker pull orientdb@sha256:3f65d10b8dd3769eb3b29e94779e0834e882e3eb0d02ce4dd529b371c427a989
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.2 MB (292169093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b166bf656a5abedf043c796c20174fa60b400b8d93dbce8a4220979196361c7`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:21:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:21:21 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:21:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:21:22 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:21:22 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 01:21:23 GMT
ENV JAVA_VERSION=8u181
# Wed, 05 Sep 2018 01:21:23 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Wed, 05 Sep 2018 01:21:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 05 Sep 2018 01:22:06 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 01:22:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 05 Sep 2018 15:40:52 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 05 Sep 2018 15:40:53 GMT
ENV ORIENTDB_VERSION=2.0.18
# Wed, 05 Sep 2018 15:40:53 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Wed, 05 Sep 2018 15:40:53 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Wed, 05 Sep 2018 15:41:01 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 05 Sep 2018 15:41:01 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 15:41:02 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 05 Sep 2018 15:41:02 GMT
WORKDIR /orientdb
# Wed, 05 Sep 2018 15:41:03 GMT
EXPOSE 2424/tcp
# Wed, 05 Sep 2018 15:41:03 GMT
EXPOSE 2480/tcp
# Wed, 05 Sep 2018 15:41:04 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40624ba8b77e273f4be3be6b60a55bd8b700624eeb37a26acb3d019f7fd862c8`  
		Last Modified: Wed, 05 Sep 2018 01:39:51 GMT  
		Size: 892.4 KB (892405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8081dc39373d6d82eda189828a91d6f8ffaa33a764491c97a11946ae26714504`  
		Last Modified: Wed, 05 Sep 2018 01:39:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4b3841871b679275ac91146501ee28b1b961c0e8495af78bb8e19ff9ae548d`  
		Last Modified: Wed, 05 Sep 2018 01:39:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b919b8fd1620fbf048cb2f5e94af0f35b4981c92b319519625ee5d61c181a9d1`  
		Last Modified: Wed, 05 Sep 2018 01:40:13 GMT  
		Size: 134.0 MB (133991165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2760538fe6000d443ada98bfeaca178ac09e818f3b7604a8723e05e7b89661b0`  
		Last Modified: Wed, 05 Sep 2018 01:39:51 GMT  
		Size: 246.7 KB (246701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e975158122655b734eb9ce67a851556ac6bcb04a40a3d1c388aa065381a7ef8b`  
		Last Modified: Wed, 05 Sep 2018 15:42:53 GMT  
		Size: 46.6 MB (46586559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.25`

```console
$ docker pull orientdb@sha256:27152fc94fe703964353017ca0d673f461044763de210c70e77955d315727fd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

```console
$ docker pull orientdb@sha256:2b4d78177639d4b69b3b9dfb36bf7ef1a88402b36f29054cb7cd7824d974da5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104155664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa6599f379ae9c0de3090f0e68229cec1f36c82096d4557982dcc3d30e168724`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 01:23:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 05 Sep 2018 01:23:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 01:23:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 05 Sep 2018 15:41:13 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 05 Sep 2018 15:41:13 GMT
ENV ORIENTDB_VERSION=2.1.25
# Wed, 05 Sep 2018 15:41:13 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Wed, 05 Sep 2018 15:41:14 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Wed, 05 Sep 2018 15:41:15 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Wed, 05 Sep 2018 15:41:21 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 05 Sep 2018 15:41:21 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 15:41:22 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 05 Sep 2018 15:41:22 GMT
WORKDIR /orientdb
# Wed, 05 Sep 2018 15:41:23 GMT
EXPOSE 2424/tcp
# Wed, 05 Sep 2018 15:41:23 GMT
EXPOSE 2480/tcp
# Wed, 05 Sep 2018 15:41:23 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146c373b4668ab06b15e7bed7d009c501c752b3de4c71491e4fc1a4b5d4d71a`  
		Last Modified: Wed, 05 Sep 2018 01:41:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c25b7e741b44f5fbe32ea548b5bc3c49b59cde87cb61dfb823b8606b3b82a0`  
		Last Modified: Wed, 05 Sep 2018 01:41:22 GMT  
		Size: 70.6 MB (70581257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff7dc326070caa497cd930891ca9dc5fb33c32d4fd36205c0d1b6467c0c4795`  
		Last Modified: Wed, 05 Sep 2018 15:43:01 GMT  
		Size: 279.7 KB (279658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a59c15675b835d5d009663eb37269359d31682d312fd13e33f1398d5617a8b`  
		Last Modified: Wed, 05 Sep 2018 15:43:06 GMT  
		Size: 31.1 MB (31087967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.36`

```console
$ docker pull orientdb@sha256:21fcb4e91849f9602f13be0845e541deb83fa5a1ce1ddd7bcfa3a9964590f12c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.36` - linux; amd64

```console
$ docker pull orientdb@sha256:c0685f23299339e5de9d532cbd8199b5474a128714177fe809c67466eadf344c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.0 MB (120027397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2daa27ad4af807204baa40baa05c8348fdef4f675b0da0fee13d9320aab2cdee`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 01:23:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 05 Sep 2018 01:23:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 01:23:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 05 Sep 2018 15:41:13 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 05 Sep 2018 15:41:32 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 05 Sep 2018 15:41:32 GMT
ENV ORIENTDB_VERSION=2.2.36
# Wed, 05 Sep 2018 15:41:33 GMT
ENV ORIENTDB_DOWNLOAD_MD5=0db280d733a000b75adb1e52c819497b
# Wed, 05 Sep 2018 15:41:33 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=ce5527f027d40cb32af5537130316d5ea81588db
# Wed, 05 Sep 2018 15:41:33 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.36/orientdb-community-2.2.36.tar.gz
# Wed, 05 Sep 2018 15:41:35 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 05 Sep 2018 15:41:40 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 05 Sep 2018 15:41:41 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 15:41:41 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 05 Sep 2018 15:41:42 GMT
WORKDIR /orientdb
# Wed, 05 Sep 2018 15:41:42 GMT
EXPOSE 2424/tcp
# Wed, 05 Sep 2018 15:41:43 GMT
EXPOSE 2480/tcp
# Wed, 05 Sep 2018 15:41:43 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146c373b4668ab06b15e7bed7d009c501c752b3de4c71491e4fc1a4b5d4d71a`  
		Last Modified: Wed, 05 Sep 2018 01:41:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c25b7e741b44f5fbe32ea548b5bc3c49b59cde87cb61dfb823b8606b3b82a0`  
		Last Modified: Wed, 05 Sep 2018 01:41:22 GMT  
		Size: 70.6 MB (70581257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5391afe24a9a37bccfc92b72089a1107392fd357ee231039e81081e889630b`  
		Last Modified: Wed, 05 Sep 2018 15:43:16 GMT  
		Size: 766.0 KB (765984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735ccda9d39ea2b96bdd82ca0936e72f2298774ac36f6686a463f2c308b9ec7c`  
		Last Modified: Wed, 05 Sep 2018 15:43:22 GMT  
		Size: 46.5 MB (46473374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.36-spatial`

```console
$ docker pull orientdb@sha256:69dc952f83b2e4e94e67f3956dacf47a057cdcf86ca54023d5e2274373bfed4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.36-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:0d5e9ed910f720d52447e238d6ae047a7a7f46def69136134cee3c7042fcd8dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121229987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41ff326984394ea8faac528bfbb176a3d40fd9faa06462569f27fc1a15f24aab`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 01:23:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 05 Sep 2018 01:23:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 01:23:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 05 Sep 2018 15:41:13 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 05 Sep 2018 15:41:32 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 05 Sep 2018 15:41:32 GMT
ENV ORIENTDB_VERSION=2.2.36
# Wed, 05 Sep 2018 15:41:33 GMT
ENV ORIENTDB_DOWNLOAD_MD5=0db280d733a000b75adb1e52c819497b
# Wed, 05 Sep 2018 15:41:33 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=ce5527f027d40cb32af5537130316d5ea81588db
# Wed, 05 Sep 2018 15:41:33 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.36/orientdb-community-2.2.36.tar.gz
# Wed, 05 Sep 2018 15:41:35 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 05 Sep 2018 15:41:40 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 05 Sep 2018 15:41:41 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 15:41:41 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 05 Sep 2018 15:41:42 GMT
WORKDIR /orientdb
# Wed, 05 Sep 2018 15:41:42 GMT
EXPOSE 2424/tcp
# Wed, 05 Sep 2018 15:41:43 GMT
EXPOSE 2480/tcp
# Wed, 05 Sep 2018 15:41:43 GMT
CMD ["server.sh"]
# Wed, 05 Sep 2018 15:41:51 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=0b027f68e3dac4f03357d5f3064ec0f3
# Wed, 05 Sep 2018 15:41:52 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=8f3adeddbad4d7f5436f4e2cdd418294135cd824
# Wed, 05 Sep 2018 15:41:52 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.36/orientdb-spatial-2.2.36-dist.jar
# Wed, 05 Sep 2018 15:41:54 GMT
RUN wget $ORIENTDB_DOWNLOAD_SPATIAL_URL     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_MD5 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | md5sum -c -     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_SHA1 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | sha1sum -c -     && mv orientdb-spatial-*-dist.jar /orientdb/lib/
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146c373b4668ab06b15e7bed7d009c501c752b3de4c71491e4fc1a4b5d4d71a`  
		Last Modified: Wed, 05 Sep 2018 01:41:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c25b7e741b44f5fbe32ea548b5bc3c49b59cde87cb61dfb823b8606b3b82a0`  
		Last Modified: Wed, 05 Sep 2018 01:41:22 GMT  
		Size: 70.6 MB (70581257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5391afe24a9a37bccfc92b72089a1107392fd357ee231039e81081e889630b`  
		Last Modified: Wed, 05 Sep 2018 15:43:16 GMT  
		Size: 766.0 KB (765984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735ccda9d39ea2b96bdd82ca0936e72f2298774ac36f6686a463f2c308b9ec7c`  
		Last Modified: Wed, 05 Sep 2018 15:43:22 GMT  
		Size: 46.5 MB (46473374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d230d03c8a727c3afba6eed1b07ca0bd3eb0987fed2db2e2cacb59fc6dcac1ee`  
		Last Modified: Wed, 05 Sep 2018 15:43:33 GMT  
		Size: 1.2 MB (1202590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.6`

```console
$ docker pull orientdb@sha256:58221f370ce8f77c3dc70f8f9adf0299b17ccc4a349e6dc7c1a316ca8324f97e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.6` - linux; amd64

```console
$ docker pull orientdb@sha256:affd029d9ae2e6a2ad61027a1c53795ac45f8834bb808c85e850e4d959154b1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109966051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:341ff6a0990fd35055c2491442298f1aad1b4630943f6c87bfc5d5340616c967`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 01:23:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 05 Sep 2018 01:23:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 01:23:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 05 Sep 2018 15:41:13 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 05 Sep 2018 15:41:32 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 05 Sep 2018 15:42:02 GMT
ENV ORIENTDB_VERSION=3.0.6
# Wed, 05 Sep 2018 15:42:02 GMT
ENV ORIENTDB_DOWNLOAD_MD5=90d88e4d3e3932c1a99ba7155ec52b09
# Wed, 05 Sep 2018 15:42:02 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=7b0b6a07638b93cbaf53c7dafb2a9e6c451dc135
# Wed, 05 Sep 2018 15:42:03 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.6/orientdb-community-3.0.6.tar.gz
# Wed, 05 Sep 2018 15:42:04 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 05 Sep 2018 15:42:10 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 05 Sep 2018 15:42:10 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 15:42:11 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 05 Sep 2018 15:42:11 GMT
WORKDIR /orientdb
# Wed, 05 Sep 2018 15:42:12 GMT
EXPOSE 2424/tcp
# Wed, 05 Sep 2018 15:42:12 GMT
EXPOSE 2480/tcp
# Wed, 05 Sep 2018 15:42:13 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146c373b4668ab06b15e7bed7d009c501c752b3de4c71491e4fc1a4b5d4d71a`  
		Last Modified: Wed, 05 Sep 2018 01:41:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c25b7e741b44f5fbe32ea548b5bc3c49b59cde87cb61dfb823b8606b3b82a0`  
		Last Modified: Wed, 05 Sep 2018 01:41:22 GMT  
		Size: 70.6 MB (70581257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc90fc6e6c24f39c67e276f6ddc760901ae2d21040a10ed8570bbadab3fe80d7`  
		Last Modified: Wed, 05 Sep 2018 15:43:40 GMT  
		Size: 766.0 KB (765983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4f8a354715066bc3252fbb286b1525aaac1389a245c90f4084363ca4464053`  
		Last Modified: Wed, 05 Sep 2018 15:43:45 GMT  
		Size: 36.4 MB (36412029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.6-tp3`

```console
$ docker pull orientdb@sha256:42fcad5edc26398193d2d39cd47a4e2ca9129967a7f0bea0f2b5424d057c6564
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.6-tp3` - linux; amd64

```console
$ docker pull orientdb@sha256:f5d200cdb48b33fe3a0abefe59ff0fc5eb1a557d1a0aed002f7675c1524ec633
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.3 MB (137251054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86ad024b3338e09c5a0dec5b5ce44ef00cd90480a7a83f5ba86d3585fb001ca5`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 01:23:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 05 Sep 2018 01:23:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 01:23:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 05 Sep 2018 15:41:13 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 05 Sep 2018 15:41:32 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 05 Sep 2018 15:42:02 GMT
ENV ORIENTDB_VERSION=3.0.6
# Wed, 05 Sep 2018 15:42:22 GMT
ENV ORIENTDB_DOWNLOAD_MD5=1ea59a1ceb83bc64e2f1e9c06f2d87a9
# Wed, 05 Sep 2018 15:42:22 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=349b8480c57473fdf41a12de8fb96e4473c4283b
# Wed, 05 Sep 2018 15:42:23 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-tp3/3.0.6/orientdb-tp3-3.0.6.tar.gz
# Wed, 05 Sep 2018 15:42:24 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 05 Sep 2018 15:42:31 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-tp3-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-tp3-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 05 Sep 2018 15:42:32 GMT
ADD file:99b7a1625594810d4a6ad850d8e45ce20c6e5e95127b6a7316cae65e7aa03c13 in /orientdb/config 
# Wed, 05 Sep 2018 15:42:32 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 15:42:32 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 05 Sep 2018 15:42:33 GMT
WORKDIR /orientdb
# Wed, 05 Sep 2018 15:42:33 GMT
EXPOSE 2424/tcp
# Wed, 05 Sep 2018 15:42:34 GMT
EXPOSE 2480/tcp
# Wed, 05 Sep 2018 15:42:34 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146c373b4668ab06b15e7bed7d009c501c752b3de4c71491e4fc1a4b5d4d71a`  
		Last Modified: Wed, 05 Sep 2018 01:41:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c25b7e741b44f5fbe32ea548b5bc3c49b59cde87cb61dfb823b8606b3b82a0`  
		Last Modified: Wed, 05 Sep 2018 01:41:22 GMT  
		Size: 70.6 MB (70581257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d03cf7afa0aa20f23cf5ad6798b0a732bcec7d0e0720c83fd73801780d18092`  
		Last Modified: Wed, 05 Sep 2018 15:43:59 GMT  
		Size: 766.0 KB (765991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eb88f439c6053d060b22190b3f93bf70fba3e3595bf7b3fc9670dd97f18a21`  
		Last Modified: Wed, 05 Sep 2018 15:44:07 GMT  
		Size: 63.7 MB (63695648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf13ceec743c9ea95ebef63d81ed75ee8a2c6b342e96a4f8081803065ab3a865`  
		Last Modified: Wed, 05 Sep 2018 15:43:59 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:58221f370ce8f77c3dc70f8f9adf0299b17ccc4a349e6dc7c1a316ca8324f97e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:affd029d9ae2e6a2ad61027a1c53795ac45f8834bb808c85e850e4d959154b1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109966051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:341ff6a0990fd35055c2491442298f1aad1b4630943f6c87bfc5d5340616c967`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 01:23:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 05 Sep 2018 01:23:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 01:23:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 05 Sep 2018 15:41:13 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 05 Sep 2018 15:41:32 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 05 Sep 2018 15:42:02 GMT
ENV ORIENTDB_VERSION=3.0.6
# Wed, 05 Sep 2018 15:42:02 GMT
ENV ORIENTDB_DOWNLOAD_MD5=90d88e4d3e3932c1a99ba7155ec52b09
# Wed, 05 Sep 2018 15:42:02 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=7b0b6a07638b93cbaf53c7dafb2a9e6c451dc135
# Wed, 05 Sep 2018 15:42:03 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.6/orientdb-community-3.0.6.tar.gz
# Wed, 05 Sep 2018 15:42:04 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 05 Sep 2018 15:42:10 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 05 Sep 2018 15:42:10 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 15:42:11 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 05 Sep 2018 15:42:11 GMT
WORKDIR /orientdb
# Wed, 05 Sep 2018 15:42:12 GMT
EXPOSE 2424/tcp
# Wed, 05 Sep 2018 15:42:12 GMT
EXPOSE 2480/tcp
# Wed, 05 Sep 2018 15:42:13 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146c373b4668ab06b15e7bed7d009c501c752b3de4c71491e4fc1a4b5d4d71a`  
		Last Modified: Wed, 05 Sep 2018 01:41:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c25b7e741b44f5fbe32ea548b5bc3c49b59cde87cb61dfb823b8606b3b82a0`  
		Last Modified: Wed, 05 Sep 2018 01:41:22 GMT  
		Size: 70.6 MB (70581257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc90fc6e6c24f39c67e276f6ddc760901ae2d21040a10ed8570bbadab3fe80d7`  
		Last Modified: Wed, 05 Sep 2018 15:43:40 GMT  
		Size: 766.0 KB (765983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4f8a354715066bc3252fbb286b1525aaac1389a245c90f4084363ca4464053`  
		Last Modified: Wed, 05 Sep 2018 15:43:45 GMT  
		Size: 36.4 MB (36412029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
