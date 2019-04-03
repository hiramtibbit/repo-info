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
$ docker pull orientdb@sha256:9bec9a076f7bd14e16f9829acf67fcc7f4ef48ab9f24b0550cf6e3f4ceb074d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

```console
$ docker pull orientdb@sha256:fbe97d2eacbd799d46d2428d66d025e6ee282d3126c75b7c4a12987df58ea94a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.2 MB (293218342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26279313e71eefd18d2a8dfd570b91c773af7c0858c988343f01f14ff56e8086`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:12:25 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 28 Mar 2019 00:12:25 GMT
ENV ORIENTDB_VERSION=2.0.18
# Thu, 28 Mar 2019 00:12:26 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Thu, 28 Mar 2019 00:12:26 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Thu, 28 Mar 2019 00:12:31 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 28 Mar 2019 00:12:32 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:12:32 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 28 Mar 2019 00:12:32 GMT
WORKDIR /orientdb
# Thu, 28 Mar 2019 00:12:32 GMT
EXPOSE 2424
# Thu, 28 Mar 2019 00:12:32 GMT
EXPOSE 2480
# Thu, 28 Mar 2019 00:12:33 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f9800c8b65cacc6c8b2ffc0826da406a90a4cdcdae68b3b464dc619eaca750`  
		Last Modified: Thu, 28 Mar 2019 00:13:54 GMT  
		Size: 46.6 MB (46586559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.25`

```console
$ docker pull orientdb@sha256:2109bd57d298cc4d07b108d36a3e016d8fa846217674c248ed695d326ef83b13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

```console
$ docker pull orientdb@sha256:73665bdca8c89e082305f612a64be46d65a5cf2817a686a8c88e138a8e9d1a85
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104842676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:642d9c6e040bcf473a525e1e3ff95948192df6242e42003b70523275393a4e05`
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
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_VERSION=8u201
# Tue, 02 Apr 2019 23:45:30 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:13:50 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 03 Apr 2019 00:13:50 GMT
ENV ORIENTDB_VERSION=2.1.25
# Wed, 03 Apr 2019 00:13:50 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Wed, 03 Apr 2019 00:13:50 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Wed, 03 Apr 2019 00:13:51 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Wed, 03 Apr 2019 00:13:57 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 03 Apr 2019 00:13:57 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 03 Apr 2019 00:13:57 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 03 Apr 2019 00:13:57 GMT
WORKDIR /orientdb
# Wed, 03 Apr 2019 00:13:57 GMT
EXPOSE 2424
# Wed, 03 Apr 2019 00:13:58 GMT
EXPOSE 2480
# Wed, 03 Apr 2019 00:13:58 GMT
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
	-	`sha256:ec484ea07ed1e4b3d2c8bb6ffb98d668fc1602607ced25e40a0d3649c875af12`  
		Last Modified: Tue, 02 Apr 2019 23:47:15 GMT  
		Size: 70.7 MB (70716050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05385a8d09dff05d6a10f30acfcf58c11e3483f5415a94c7965104ec53650c5c`  
		Last Modified: Wed, 03 Apr 2019 00:14:47 GMT  
		Size: 283.7 KB (283692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441331b8d8b26b96e7db822e41e5f3607822b78a91d1b3a5036ce9f7f3de909d`  
		Last Modified: Wed, 03 Apr 2019 00:14:49 GMT  
		Size: 31.1 MB (31087966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.37`

```console
$ docker pull orientdb@sha256:c4f0003bc2b088251c5cd0e5637b05d22a529bdbce6c6593f1034c1f608adb4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.37` - linux; amd64

```console
$ docker pull orientdb@sha256:7d4e76db522805d9998df217bf11ead3fdb253e452341b20d36053631f184d28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120728884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a5fc62b62b69fa3f78b305b11aa8e9baab8ef663d1dde1879c3e48c5b5dd93`
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
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_VERSION=8u201
# Tue, 02 Apr 2019 23:45:30 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:13:50 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 03 Apr 2019 00:14:01 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 03 Apr 2019 00:14:01 GMT
ENV ORIENTDB_VERSION=2.2.37
# Wed, 03 Apr 2019 00:14:01 GMT
ENV ORIENTDB_DOWNLOAD_MD5=cb80556ef3b0260d0ee5de88ea73fb9d
# Wed, 03 Apr 2019 00:14:01 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=469c402dde029f265fe905de2c08b43960e81f07
# Wed, 03 Apr 2019 00:14:02 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.37/orientdb-community-2.2.37.tar.gz
# Wed, 03 Apr 2019 00:14:03 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 03 Apr 2019 00:14:07 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 03 Apr 2019 00:14:07 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 03 Apr 2019 00:14:07 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 03 Apr 2019 00:14:07 GMT
WORKDIR /orientdb
# Wed, 03 Apr 2019 00:14:08 GMT
EXPOSE 2424
# Wed, 03 Apr 2019 00:14:08 GMT
EXPOSE 2480
# Wed, 03 Apr 2019 00:14:08 GMT
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
	-	`sha256:ec484ea07ed1e4b3d2c8bb6ffb98d668fc1602607ced25e40a0d3649c875af12`  
		Last Modified: Tue, 02 Apr 2019 23:47:15 GMT  
		Size: 70.7 MB (70716050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62a22d801eeab3c0a857414ee77ed5be7c65ed28b587a04a4607850f365bb69`  
		Last Modified: Wed, 03 Apr 2019 00:14:52 GMT  
		Size: 784.0 KB (783980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd17369ea8d06bc479b0e0407ce3113602c86f2b8772cc0870937fe8e0751984`  
		Last Modified: Wed, 03 Apr 2019 00:14:56 GMT  
		Size: 46.5 MB (46473886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.37-spatial`

```console
$ docker pull orientdb@sha256:a45e3d97df899147d6c71b02b49546791abfd5c192725ee0473daec772664138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.37-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:16fdec0b942e7d2f5a132cbfff732583b005e98b844c3126af3b4d1d4fa8d1b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.9 MB (121931444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bbe03ff54b16583b24800876ca8d1dd997cc9209fffdf7c58a5366d979d11d2`
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
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_VERSION=8u201
# Tue, 02 Apr 2019 23:45:30 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:13:50 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 03 Apr 2019 00:14:01 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 03 Apr 2019 00:14:01 GMT
ENV ORIENTDB_VERSION=2.2.37
# Wed, 03 Apr 2019 00:14:01 GMT
ENV ORIENTDB_DOWNLOAD_MD5=cb80556ef3b0260d0ee5de88ea73fb9d
# Wed, 03 Apr 2019 00:14:01 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=469c402dde029f265fe905de2c08b43960e81f07
# Wed, 03 Apr 2019 00:14:02 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.37/orientdb-community-2.2.37.tar.gz
# Wed, 03 Apr 2019 00:14:03 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 03 Apr 2019 00:14:07 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 03 Apr 2019 00:14:07 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 03 Apr 2019 00:14:07 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 03 Apr 2019 00:14:07 GMT
WORKDIR /orientdb
# Wed, 03 Apr 2019 00:14:08 GMT
EXPOSE 2424
# Wed, 03 Apr 2019 00:14:08 GMT
EXPOSE 2480
# Wed, 03 Apr 2019 00:14:08 GMT
CMD ["server.sh"]
# Wed, 03 Apr 2019 00:14:10 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=9f64ab5e959f5d9ad9ea5195d6d621d2
# Wed, 03 Apr 2019 00:14:10 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=1748c9779ea7a8cb8fc068fcabf960e1778e8a19
# Wed, 03 Apr 2019 00:14:11 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.37/orientdb-spatial-2.2.37-dist.jar
# Wed, 03 Apr 2019 00:14:12 GMT
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
	-	`sha256:ec484ea07ed1e4b3d2c8bb6ffb98d668fc1602607ced25e40a0d3649c875af12`  
		Last Modified: Tue, 02 Apr 2019 23:47:15 GMT  
		Size: 70.7 MB (70716050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62a22d801eeab3c0a857414ee77ed5be7c65ed28b587a04a4607850f365bb69`  
		Last Modified: Wed, 03 Apr 2019 00:14:52 GMT  
		Size: 784.0 KB (783980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd17369ea8d06bc479b0e0407ce3113602c86f2b8772cc0870937fe8e0751984`  
		Last Modified: Wed, 03 Apr 2019 00:14:56 GMT  
		Size: 46.5 MB (46473886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa05d4449991ddf68fa88595e8431dbc1ced84ff072eeb6903d5cd94524fdc05`  
		Last Modified: Wed, 03 Apr 2019 00:14:59 GMT  
		Size: 1.2 MB (1202560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.18`

```console
$ docker pull orientdb@sha256:1577a38253fa84f9556c24eca2c70db8d8730a9dd9942bd8d1c8154e9a866d94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.18` - linux; amd64

```console
$ docker pull orientdb@sha256:3e35668ae9c0a657b622b5fe658524b37241ee58c212f5264a5992ed7b3ac99a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.1 MB (111088933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43330a2a5ea4d0c6cdca8eae01e057bbeccc9994556ee12549c3b75a347555d6`
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
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_VERSION=8u201
# Tue, 02 Apr 2019 23:45:30 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:13:50 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 03 Apr 2019 00:14:01 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 03 Apr 2019 00:14:14 GMT
ENV ORIENTDB_VERSION=3.0.18
# Wed, 03 Apr 2019 00:14:14 GMT
ENV ORIENTDB_DOWNLOAD_MD5=7cd3b9cd476db4ceadf5203b361ccd9c
# Wed, 03 Apr 2019 00:14:14 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=4a3a208530972b4230fbd9515614003d61273135
# Wed, 03 Apr 2019 00:14:14 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.18/orientdb-community-3.0.18.tar.gz
# Wed, 03 Apr 2019 00:14:16 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 03 Apr 2019 00:14:20 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 03 Apr 2019 00:14:20 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 03 Apr 2019 00:14:20 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 03 Apr 2019 00:14:21 GMT
WORKDIR /orientdb
# Wed, 03 Apr 2019 00:14:21 GMT
EXPOSE 2424
# Wed, 03 Apr 2019 00:14:21 GMT
EXPOSE 2480
# Wed, 03 Apr 2019 00:14:21 GMT
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
	-	`sha256:ec484ea07ed1e4b3d2c8bb6ffb98d668fc1602607ced25e40a0d3649c875af12`  
		Last Modified: Tue, 02 Apr 2019 23:47:15 GMT  
		Size: 70.7 MB (70716050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b8082f214f998630d3a1b2b83ce4d7ea327b949882c0210bf54767d561401c`  
		Last Modified: Wed, 03 Apr 2019 00:15:02 GMT  
		Size: 784.0 KB (783987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94488307f1dd773be5468fe91b7fdee7584b70b4d595ce8a8fb9cbcae6fad00`  
		Last Modified: Wed, 03 Apr 2019 00:15:05 GMT  
		Size: 36.8 MB (36833928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.18-tp3`

```console
$ docker pull orientdb@sha256:d3ff308fc3486ab0d09abdd2860da314387e4a56f1c648bd157f9ce0e9b51bf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.18-tp3` - linux; amd64

```console
$ docker pull orientdb@sha256:75d857129d047cf8af3a1a26f94e01186e4b400b5a88016ae1210cb562897c87
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138106633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a1ec4993cababe86bbb8804e954fc74ab335551a1cf754fa39e8fec83b9f5f2`
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
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_VERSION=8u201
# Tue, 02 Apr 2019 23:45:30 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:13:50 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 03 Apr 2019 00:14:01 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 03 Apr 2019 00:14:14 GMT
ENV ORIENTDB_VERSION=3.0.18
# Wed, 03 Apr 2019 00:14:25 GMT
ENV ORIENTDB_DOWNLOAD_MD5=65af4a44655972727da5a78b93cd5d5d
# Wed, 03 Apr 2019 00:14:25 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=9ecd7597e41ff7bc2fd25449abb3de028bfd86ef
# Wed, 03 Apr 2019 00:14:25 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-tp3/3.0.18/orientdb-tp3-3.0.18.tar.gz
# Wed, 03 Apr 2019 00:14:26 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 03 Apr 2019 00:14:35 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-tp3-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-tp3-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 03 Apr 2019 00:14:36 GMT
ADD file:5bcd10827429355383b443914a6e6c163692cb388c7594e6e8d3d4625653a011 in /orientdb/config 
# Wed, 03 Apr 2019 00:14:36 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 03 Apr 2019 00:14:36 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 03 Apr 2019 00:14:36 GMT
WORKDIR /orientdb
# Wed, 03 Apr 2019 00:14:36 GMT
EXPOSE 2424
# Wed, 03 Apr 2019 00:14:37 GMT
EXPOSE 2480
# Wed, 03 Apr 2019 00:14:37 GMT
EXPOSE 8182
# Wed, 03 Apr 2019 00:14:37 GMT
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
	-	`sha256:ec484ea07ed1e4b3d2c8bb6ffb98d668fc1602607ced25e40a0d3649c875af12`  
		Last Modified: Tue, 02 Apr 2019 23:47:15 GMT  
		Size: 70.7 MB (70716050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e4fb1acb38d07538b52c0a53f86513373319f12f4283dc85937cd3376d25c`  
		Last Modified: Wed, 03 Apr 2019 00:15:11 GMT  
		Size: 784.0 KB (783986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba385117eebad24cf0db30747bfb68a57c5b6289cd67405e07b22410d634cc1`  
		Last Modified: Wed, 03 Apr 2019 00:15:16 GMT  
		Size: 63.9 MB (63850252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464121a377ee5d82b475b5b919ca0d6bb0898daec44f71f7c06a77901133fd46`  
		Last Modified: Wed, 03 Apr 2019 00:15:10 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:1577a38253fa84f9556c24eca2c70db8d8730a9dd9942bd8d1c8154e9a866d94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:3e35668ae9c0a657b622b5fe658524b37241ee58c212f5264a5992ed7b3ac99a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.1 MB (111088933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43330a2a5ea4d0c6cdca8eae01e057bbeccc9994556ee12549c3b75a347555d6`
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
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_VERSION=8u201
# Tue, 02 Apr 2019 23:45:30 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:13:50 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 03 Apr 2019 00:14:01 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 03 Apr 2019 00:14:14 GMT
ENV ORIENTDB_VERSION=3.0.18
# Wed, 03 Apr 2019 00:14:14 GMT
ENV ORIENTDB_DOWNLOAD_MD5=7cd3b9cd476db4ceadf5203b361ccd9c
# Wed, 03 Apr 2019 00:14:14 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=4a3a208530972b4230fbd9515614003d61273135
# Wed, 03 Apr 2019 00:14:14 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.18/orientdb-community-3.0.18.tar.gz
# Wed, 03 Apr 2019 00:14:16 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 03 Apr 2019 00:14:20 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 03 Apr 2019 00:14:20 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 03 Apr 2019 00:14:20 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 03 Apr 2019 00:14:21 GMT
WORKDIR /orientdb
# Wed, 03 Apr 2019 00:14:21 GMT
EXPOSE 2424
# Wed, 03 Apr 2019 00:14:21 GMT
EXPOSE 2480
# Wed, 03 Apr 2019 00:14:21 GMT
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
	-	`sha256:ec484ea07ed1e4b3d2c8bb6ffb98d668fc1602607ced25e40a0d3649c875af12`  
		Last Modified: Tue, 02 Apr 2019 23:47:15 GMT  
		Size: 70.7 MB (70716050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b8082f214f998630d3a1b2b83ce4d7ea327b949882c0210bf54767d561401c`  
		Last Modified: Wed, 03 Apr 2019 00:15:02 GMT  
		Size: 784.0 KB (783987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94488307f1dd773be5468fe91b7fdee7584b70b4d595ce8a8fb9cbcae6fad00`  
		Last Modified: Wed, 03 Apr 2019 00:15:05 GMT  
		Size: 36.8 MB (36833928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
