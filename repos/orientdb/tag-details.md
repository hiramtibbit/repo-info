<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.37`](#orientdb2237)
-	[`orientdb:2.2.37-spatial`](#orientdb2237-spatial)
-	[`orientdb:3.0.19`](#orientdb3019)
-	[`orientdb:3.0.19-tp3`](#orientdb3019-tp3)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:236fb2ed80251ef23ea6fa97576d79ee1412ca9a3bb127bc15628e884d22d42d
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
$ docker pull orientdb@sha256:c92863b830070ff0e0149474ed77406bd17de4e92b4bbc3c001dc7e41977a293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

```console
$ docker pull orientdb@sha256:cc888d7b672542892e23a64b9490c3b2e388993782687c793957ff053bf4354a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104861779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989bfc02f4148fe7b16dc8603324735cba07b8f25a9af65d1f6a93bac0c96d38`
-	Default Command: `["server.sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:32:11 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 01:32:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 11 May 2019 01:32:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 01:32:13 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 01:32:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 04:17:31 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 11 May 2019 04:17:31 GMT
ENV ORIENTDB_VERSION=2.1.25
# Sat, 11 May 2019 04:17:31 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Sat, 11 May 2019 04:17:32 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Sat, 11 May 2019 04:17:33 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Sat, 11 May 2019 04:17:37 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 11 May 2019 04:17:37 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 04:17:38 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 11 May 2019 04:17:38 GMT
WORKDIR /orientdb
# Sat, 11 May 2019 04:17:38 GMT
EXPOSE 2424
# Sat, 11 May 2019 04:17:38 GMT
EXPOSE 2480
# Sat, 11 May 2019 04:17:38 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f910a506b6cb1dbec766725d70356f695ae2bf2bea6224dbe8c7c6ad4f3664a2`  
		Last Modified: Sat, 11 May 2019 01:36:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2274a1a0e2786ee9101b08f76111f9ab8019e368dce1e325d3c284a0ca33397`  
		Last Modified: Sat, 11 May 2019 01:37:08 GMT  
		Size: 70.7 MB (70732768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf708c70c42d52a75ff1133eea4bf5c417c4378c1aa2c024cff9e72a5c3f198`  
		Last Modified: Sat, 11 May 2019 04:18:25 GMT  
		Size: 283.8 KB (283776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c77f236456c95921fccd729e8aa345fde9a3f6298c44516d6c09e7134d9201`  
		Last Modified: Sat, 11 May 2019 04:18:27 GMT  
		Size: 31.1 MB (31087963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.37`

```console
$ docker pull orientdb@sha256:d3eab1eb86ee1a0bacd7b21d37e512af40f8f81a3964f8e3e422702e5616ecd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.37` - linux; amd64

```console
$ docker pull orientdb@sha256:72b44d3704534e2c4cbc6fd8e87d41f711f51eea68cef39c9c4fa568064c61f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120748007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0517307e55c95d630689afcaddd60f126b26608513587d0e9f0e1ddf26f054c`
-	Default Command: `["server.sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:32:11 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 01:32:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 11 May 2019 01:32:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 01:32:13 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 01:32:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 04:17:31 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 11 May 2019 04:17:42 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Sat, 11 May 2019 04:17:42 GMT
ENV ORIENTDB_VERSION=2.2.37
# Sat, 11 May 2019 04:17:42 GMT
ENV ORIENTDB_DOWNLOAD_MD5=cb80556ef3b0260d0ee5de88ea73fb9d
# Sat, 11 May 2019 04:17:42 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=469c402dde029f265fe905de2c08b43960e81f07
# Sat, 11 May 2019 04:17:42 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.37/orientdb-community-2.2.37.tar.gz
# Sat, 11 May 2019 04:17:43 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Sat, 11 May 2019 04:17:48 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 11 May 2019 04:17:48 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 04:17:48 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 11 May 2019 04:17:48 GMT
WORKDIR /orientdb
# Sat, 11 May 2019 04:17:49 GMT
EXPOSE 2424
# Sat, 11 May 2019 04:17:49 GMT
EXPOSE 2480
# Sat, 11 May 2019 04:17:49 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f910a506b6cb1dbec766725d70356f695ae2bf2bea6224dbe8c7c6ad4f3664a2`  
		Last Modified: Sat, 11 May 2019 01:36:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2274a1a0e2786ee9101b08f76111f9ab8019e368dce1e325d3c284a0ca33397`  
		Last Modified: Sat, 11 May 2019 01:37:08 GMT  
		Size: 70.7 MB (70732768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b899754da923dd693262fcba8e8907aec08d02f52d5cc5c71f9347c909090b9`  
		Last Modified: Sat, 11 May 2019 04:18:31 GMT  
		Size: 784.1 KB (784080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20c0de25af985407eaaf612302e5bb9bcdee6428d091d95d87b7e5544a91c87`  
		Last Modified: Sat, 11 May 2019 04:18:34 GMT  
		Size: 46.5 MB (46473887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.37-spatial`

```console
$ docker pull orientdb@sha256:3e3f04ce9089bbe118b9597d0f94c4aebbd9f6c44a45801c25b7c39d85d95ffc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.37-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:1434ba74f8f3d90a76d2cdbbdd67be92390a95562fbf622cbbae41d707e81b0f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121950567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ade5a7e48c34185f6222920b097f90d2f83a50d7f885290b4dad0ea56b4cd8c1`
-	Default Command: `["server.sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:32:11 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 01:32:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 11 May 2019 01:32:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 01:32:13 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 01:32:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 04:17:31 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 11 May 2019 04:17:42 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Sat, 11 May 2019 04:17:42 GMT
ENV ORIENTDB_VERSION=2.2.37
# Sat, 11 May 2019 04:17:42 GMT
ENV ORIENTDB_DOWNLOAD_MD5=cb80556ef3b0260d0ee5de88ea73fb9d
# Sat, 11 May 2019 04:17:42 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=469c402dde029f265fe905de2c08b43960e81f07
# Sat, 11 May 2019 04:17:42 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.37/orientdb-community-2.2.37.tar.gz
# Sat, 11 May 2019 04:17:43 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Sat, 11 May 2019 04:17:48 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 11 May 2019 04:17:48 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 04:17:48 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 11 May 2019 04:17:48 GMT
WORKDIR /orientdb
# Sat, 11 May 2019 04:17:49 GMT
EXPOSE 2424
# Sat, 11 May 2019 04:17:49 GMT
EXPOSE 2480
# Sat, 11 May 2019 04:17:49 GMT
CMD ["server.sh"]
# Sat, 11 May 2019 04:17:52 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=9f64ab5e959f5d9ad9ea5195d6d621d2
# Sat, 11 May 2019 04:17:52 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=1748c9779ea7a8cb8fc068fcabf960e1778e8a19
# Sat, 11 May 2019 04:17:53 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.37/orientdb-spatial-2.2.37-dist.jar
# Sat, 11 May 2019 04:17:54 GMT
RUN wget $ORIENTDB_DOWNLOAD_SPATIAL_URL     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_MD5 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | md5sum -c -     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_SHA1 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | sha1sum -c -     && mv orientdb-spatial-*-dist.jar /orientdb/lib/
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f910a506b6cb1dbec766725d70356f695ae2bf2bea6224dbe8c7c6ad4f3664a2`  
		Last Modified: Sat, 11 May 2019 01:36:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2274a1a0e2786ee9101b08f76111f9ab8019e368dce1e325d3c284a0ca33397`  
		Last Modified: Sat, 11 May 2019 01:37:08 GMT  
		Size: 70.7 MB (70732768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b899754da923dd693262fcba8e8907aec08d02f52d5cc5c71f9347c909090b9`  
		Last Modified: Sat, 11 May 2019 04:18:31 GMT  
		Size: 784.1 KB (784080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20c0de25af985407eaaf612302e5bb9bcdee6428d091d95d87b7e5544a91c87`  
		Last Modified: Sat, 11 May 2019 04:18:34 GMT  
		Size: 46.5 MB (46473887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a605d9851ea861671003eea3659ed759820014e2ced170ff128c9e2f534b12`  
		Last Modified: Sat, 11 May 2019 04:18:45 GMT  
		Size: 1.2 MB (1202560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.19`

**does not exist** (yet?)

## `orientdb:3.0.19-tp3`

**does not exist** (yet?)

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:87e39f3ec6bde46ba927e44ad673b19c51cf849fe6ec4becff0b4f18f23e3049
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:f93cad0aa321f9f65478abf58c93dd01629fe3f05d0f291d5bba4c3b2c48f682
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.1 MB (111108047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6793f9885de69f82c0430ec91d0694676127d95a79a474e04fb2121deb29895`
-	Default Command: `["server.sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:32:11 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 01:32:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 11 May 2019 01:32:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 01:32:13 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 01:32:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 04:17:31 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 11 May 2019 04:17:42 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Sat, 11 May 2019 04:17:56 GMT
ENV ORIENTDB_VERSION=3.0.18
# Sat, 11 May 2019 04:17:57 GMT
ENV ORIENTDB_DOWNLOAD_MD5=7cd3b9cd476db4ceadf5203b361ccd9c
# Sat, 11 May 2019 04:17:57 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=4a3a208530972b4230fbd9515614003d61273135
# Sat, 11 May 2019 04:17:57 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.18/orientdb-community-3.0.18.tar.gz
# Sat, 11 May 2019 04:17:58 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Sat, 11 May 2019 04:18:03 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 11 May 2019 04:18:03 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 04:18:03 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 11 May 2019 04:18:03 GMT
WORKDIR /orientdb
# Sat, 11 May 2019 04:18:04 GMT
EXPOSE 2424
# Sat, 11 May 2019 04:18:04 GMT
EXPOSE 2480
# Sat, 11 May 2019 04:18:04 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f910a506b6cb1dbec766725d70356f695ae2bf2bea6224dbe8c7c6ad4f3664a2`  
		Last Modified: Sat, 11 May 2019 01:36:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2274a1a0e2786ee9101b08f76111f9ab8019e368dce1e325d3c284a0ca33397`  
		Last Modified: Sat, 11 May 2019 01:37:08 GMT  
		Size: 70.7 MB (70732768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff9c7b6f917ead16711706abc38a6402e0a72263b0487db2fce8e240374dbd2`  
		Last Modified: Sat, 11 May 2019 04:18:48 GMT  
		Size: 784.1 KB (784080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121309ea4727ba30e715fd23522448082e6038c1e2101d3d81be9cb4105fec70`  
		Last Modified: Sat, 11 May 2019 04:18:51 GMT  
		Size: 36.8 MB (36833927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
