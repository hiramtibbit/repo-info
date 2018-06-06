<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.35`](#orientdb2235)
-	[`orientdb:2.2.35-spatial`](#orientdb2235-spatial)
-	[`orientdb:3.0.1`](#orientdb301)
-	[`orientdb:3.0.1-spatial`](#orientdb301-spatial)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:d774c731e03ffe3cc833f647bc1dcf2dba041a391b8e4ca30ce9e6ce77f81b68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

```console
$ docker pull orientdb@sha256:215ba4c70e7e4ad9d17b61cde4540291ddba14188a76bee2c66c1c3a50672fed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.2 MB (292216409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:502764a3163e783ac68d269e6fc1bc55d41871542e294f13181ad6a8965df320`
-	Default Command: `["server.sh"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Jun 2018 23:14:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 01:55:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 01:56:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:56:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 06:07:45 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 06 Jun 2018 06:07:45 GMT
ENV ORIENTDB_VERSION=2.0.18
# Wed, 06 Jun 2018 06:07:45 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Wed, 06 Jun 2018 06:07:45 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Wed, 06 Jun 2018 06:07:54 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 06 Jun 2018 06:07:55 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 06:07:55 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 06 Jun 2018 06:07:55 GMT
WORKDIR /orientdb
# Wed, 06 Jun 2018 06:07:55 GMT
EXPOSE 2424/tcp
# Wed, 06 Jun 2018 06:07:56 GMT
EXPOSE 2480/tcp
# Wed, 06 Jun 2018 06:07:56 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2aa70286b89febc36370098220c9b2960cc67c03375c9df4e82736519f1e8a`  
		Last Modified: Tue, 05 Jun 2018 23:42:32 GMT  
		Size: 50.1 MB (50063911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276ddd61a47bf599ce5a661fc1c028903efd982c1aeed6f206e521215c24f054`  
		Last Modified: Wed, 06 Jun 2018 02:16:12 GMT  
		Size: 892.5 KB (892508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c60f2a0b5512e9dc45835e4d02930ca36905378bab4cd52c22378017da1419a`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abbe5585c9b201f4cc15964582b4085018f86bbd6dfd1223c9b4fb3ed6420b1`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaeb39f0b473ec0d40a97e515dad235a0a0998ac33a3909f7a6554ff6527234d`  
		Last Modified: Wed, 06 Jun 2018 02:16:49 GMT  
		Size: 134.0 MB (133972730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ec96bfaf1628b8d5fc8b7cd38c422f89e802a9986d910851745f30e043daa4`  
		Last Modified: Wed, 06 Jun 2018 02:16:11 GMT  
		Size: 272.1 KB (272090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d36ff4cad74ead9e2cdef4b5995c342d9504d0d3cf2211f0fd48b5bfee9523f`  
		Last Modified: Wed, 06 Jun 2018 06:09:27 GMT  
		Size: 46.6 MB (46586560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.25`

```console
$ docker pull orientdb@sha256:0f5270ab861452bacefc9ed300408745b642a04467ad300268403fa9cb9eef69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

```console
$ docker pull orientdb@sha256:85dff2a6e173e0de8fda3c9047cdc34e873d54c37a573dfe8f0f90e6e948d349
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.7 MB (103650035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d2ed170e16d1b8140384b7634bdf735a6acbc271d6a56571f197656027a4fab`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:57:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 06 Jun 2018 01:57:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Jun 2018 01:57:39 GMT
ENV JAVA_VERSION=8u151
# Wed, 06 Jun 2018 01:57:40 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 06 Jun 2018 01:57:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Jun 2018 06:08:00 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 06 Jun 2018 06:08:00 GMT
ENV ORIENTDB_VERSION=2.1.25
# Wed, 06 Jun 2018 06:08:00 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Wed, 06 Jun 2018 06:08:00 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Wed, 06 Jun 2018 06:08:01 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Wed, 06 Jun 2018 06:08:14 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 06 Jun 2018 06:08:14 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Jun 2018 06:08:15 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 06 Jun 2018 06:08:15 GMT
WORKDIR /orientdb
# Wed, 06 Jun 2018 06:08:15 GMT
EXPOSE 2424/tcp
# Wed, 06 Jun 2018 06:08:15 GMT
EXPOSE 2480/tcp
# Wed, 06 Jun 2018 06:08:16 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8906544047d741c82ab8e4f6b3a698cdc37170b9afe8006a7c2aee85bc78618`  
		Last Modified: Wed, 06 Jun 2018 02:15:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9db8d675e1fae91c193ff65ae84529aeb62d738d5bc5b09eb2fdc655edbffa`  
		Last Modified: Wed, 06 Jun 2018 02:19:31 GMT  
		Size: 70.2 MB (70227658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc91fafa69737dc804e9c97f50cc8598292eb6d81ac75e3cbbf44560251cf712`  
		Last Modified: Wed, 06 Jun 2018 06:09:39 GMT  
		Size: 268.6 KB (268626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33317ca0bbe77ef0d5d9c50036f74662ba50cccbe99b53bd1e79857115e8633f`  
		Last Modified: Wed, 06 Jun 2018 06:09:47 GMT  
		Size: 31.1 MB (31087973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.35`

```console
$ docker pull orientdb@sha256:aaee307f1b76683f1cd231e68719e933523dbba5443fa15eb8b0fb6f27e9a2ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.35` - linux; amd64

```console
$ docker pull orientdb@sha256:d8761eb7c03d654b921c0583835562f7a8f15f8e924fd19ab077310527d1f1ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119438781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bc5dbd49cb8f9257a163deb6c439f57c5e90b76dce23d01f5d90ce68f261b29`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:57:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 06 Jun 2018 01:57:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Jun 2018 01:57:39 GMT
ENV JAVA_VERSION=8u151
# Wed, 06 Jun 2018 01:57:40 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 06 Jun 2018 01:57:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Jun 2018 06:08:00 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 06 Jun 2018 06:08:20 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 06 Jun 2018 06:08:20 GMT
ENV ORIENTDB_VERSION=2.2.35
# Wed, 06 Jun 2018 06:08:20 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9cc574028860b85f1b910a3c43e43082
# Wed, 06 Jun 2018 06:08:20 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=e9fca1028228249fa3f81094df2246802e880b52
# Wed, 06 Jun 2018 06:08:21 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.35/orientdb-community-2.2.35.tar.gz
# Wed, 06 Jun 2018 06:08:22 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 06 Jun 2018 06:08:31 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 06 Jun 2018 06:08:31 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Jun 2018 06:08:32 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 06 Jun 2018 06:08:32 GMT
WORKDIR /orientdb
# Wed, 06 Jun 2018 06:08:32 GMT
EXPOSE 2424/tcp
# Wed, 06 Jun 2018 06:08:32 GMT
EXPOSE 2480/tcp
# Wed, 06 Jun 2018 06:08:33 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8906544047d741c82ab8e4f6b3a698cdc37170b9afe8006a7c2aee85bc78618`  
		Last Modified: Wed, 06 Jun 2018 02:15:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9db8d675e1fae91c193ff65ae84529aeb62d738d5bc5b09eb2fdc655edbffa`  
		Last Modified: Wed, 06 Jun 2018 02:19:31 GMT  
		Size: 70.2 MB (70227658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96fe436104f08417540617b66eebd78bcc4cf3fac0d20637c11ec3b323044fdc`  
		Last Modified: Wed, 06 Jun 2018 06:09:56 GMT  
		Size: 673.3 KB (673306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eda7e8ee39ebc7e1aa4dbeff93c4c7d311f62c4f2e7fbe4b80b2e0b34039ee0`  
		Last Modified: Wed, 06 Jun 2018 06:10:08 GMT  
		Size: 46.5 MB (46472039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.35-spatial`

```console
$ docker pull orientdb@sha256:2d689b941c6e3c45dd5ddd29986230631bb34f59c348307d6ba09af525e9d167
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.35-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:4327aca1535331bef07876ea82a9ed90af266ed45eb17485d348b7d528526c34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.6 MB (120641269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a67ec68b6ef206364648dc17a8529fa747958e599fb6403947ed7564ec5763`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:57:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 06 Jun 2018 01:57:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Jun 2018 01:57:39 GMT
ENV JAVA_VERSION=8u151
# Wed, 06 Jun 2018 01:57:40 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 06 Jun 2018 01:57:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Jun 2018 06:08:00 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 06 Jun 2018 06:08:20 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 06 Jun 2018 06:08:20 GMT
ENV ORIENTDB_VERSION=2.2.35
# Wed, 06 Jun 2018 06:08:20 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9cc574028860b85f1b910a3c43e43082
# Wed, 06 Jun 2018 06:08:20 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=e9fca1028228249fa3f81094df2246802e880b52
# Wed, 06 Jun 2018 06:08:21 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.35/orientdb-community-2.2.35.tar.gz
# Wed, 06 Jun 2018 06:08:22 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 06 Jun 2018 06:08:31 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 06 Jun 2018 06:08:31 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Jun 2018 06:08:32 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 06 Jun 2018 06:08:32 GMT
WORKDIR /orientdb
# Wed, 06 Jun 2018 06:08:32 GMT
EXPOSE 2424/tcp
# Wed, 06 Jun 2018 06:08:32 GMT
EXPOSE 2480/tcp
# Wed, 06 Jun 2018 06:08:33 GMT
CMD ["server.sh"]
# Wed, 06 Jun 2018 06:08:37 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=d434e07628a1897f69bc348b7a214b0a
# Wed, 06 Jun 2018 06:08:38 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=eb37f21c3aa7b718a36a32963ef38fba0bb7b8d3
# Wed, 06 Jun 2018 06:08:38 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.35/orientdb-spatial-2.2.35-dist.jar
# Wed, 06 Jun 2018 06:08:39 GMT
RUN wget $ORIENTDB_DOWNLOAD_SPATIAL_URL     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_MD5 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | md5sum -c -     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_SHA1 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | sha1sum -c -     && mv orientdb-spatial-*-dist.jar /orientdb/lib/
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8906544047d741c82ab8e4f6b3a698cdc37170b9afe8006a7c2aee85bc78618`  
		Last Modified: Wed, 06 Jun 2018 02:15:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9db8d675e1fae91c193ff65ae84529aeb62d738d5bc5b09eb2fdc655edbffa`  
		Last Modified: Wed, 06 Jun 2018 02:19:31 GMT  
		Size: 70.2 MB (70227658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96fe436104f08417540617b66eebd78bcc4cf3fac0d20637c11ec3b323044fdc`  
		Last Modified: Wed, 06 Jun 2018 06:09:56 GMT  
		Size: 673.3 KB (673306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eda7e8ee39ebc7e1aa4dbeff93c4c7d311f62c4f2e7fbe4b80b2e0b34039ee0`  
		Last Modified: Wed, 06 Jun 2018 06:10:08 GMT  
		Size: 46.5 MB (46472039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c677e4a3f4caef9765d74d70236d0b974c120b5c5f9ce601a9d0de1b9a06308`  
		Last Modified: Wed, 06 Jun 2018 06:10:20 GMT  
		Size: 1.2 MB (1202488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.1`

```console
$ docker pull orientdb@sha256:f015ab80cedd2e781644ad76550b47b85a6bc03eed780b1ce850535de5dcb678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.1` - linux; amd64

```console
$ docker pull orientdb@sha256:9ac727c627514f20eb0ddbffc550b8496af86cd645633abe2fc331d7170602e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107904774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b1b9650f2c19da5ed377ab08ec32e3eaef53d1c5d132ef948a5ee2fb836e640`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:57:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 06 Jun 2018 01:57:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Jun 2018 01:57:39 GMT
ENV JAVA_VERSION=8u151
# Wed, 06 Jun 2018 01:57:40 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 06 Jun 2018 01:57:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Jun 2018 06:08:00 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 06 Jun 2018 06:08:20 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 06 Jun 2018 06:08:42 GMT
ENV ORIENTDB_VERSION=3.0.1
# Wed, 06 Jun 2018 06:08:42 GMT
ENV ORIENTDB_DOWNLOAD_MD5=14822052f6fdbd7e1c3a8331e2794e0f
# Wed, 06 Jun 2018 06:08:42 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=22402e40030bcc821ec20b6259e407366ad85e35
# Wed, 06 Jun 2018 06:08:42 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.1/orientdb-community-3.0.1.tar.gz
# Wed, 06 Jun 2018 06:08:43 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 06 Jun 2018 06:08:53 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 06 Jun 2018 06:08:53 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Jun 2018 06:08:53 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 06 Jun 2018 06:08:53 GMT
WORKDIR /orientdb
# Wed, 06 Jun 2018 06:08:54 GMT
EXPOSE 2424/tcp
# Wed, 06 Jun 2018 06:08:54 GMT
EXPOSE 2480/tcp
# Wed, 06 Jun 2018 06:08:54 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8906544047d741c82ab8e4f6b3a698cdc37170b9afe8006a7c2aee85bc78618`  
		Last Modified: Wed, 06 Jun 2018 02:15:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9db8d675e1fae91c193ff65ae84529aeb62d738d5bc5b09eb2fdc655edbffa`  
		Last Modified: Wed, 06 Jun 2018 02:19:31 GMT  
		Size: 70.2 MB (70227658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6e3aeb46e27d2396311b7fa61da9629c0fad1cb42ed0e27b1446681ef435e8`  
		Last Modified: Wed, 06 Jun 2018 06:10:29 GMT  
		Size: 673.3 KB (673319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f38b1b7a52c89047883a62c7aa9e528cae68efa16ff04eec67f451a17720b4`  
		Last Modified: Wed, 06 Jun 2018 06:10:41 GMT  
		Size: 34.9 MB (34938019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.1-spatial`

```console
$ docker pull orientdb@sha256:f015ab80cedd2e781644ad76550b47b85a6bc03eed780b1ce850535de5dcb678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.1-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:9ac727c627514f20eb0ddbffc550b8496af86cd645633abe2fc331d7170602e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107904774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b1b9650f2c19da5ed377ab08ec32e3eaef53d1c5d132ef948a5ee2fb836e640`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:57:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 06 Jun 2018 01:57:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Jun 2018 01:57:39 GMT
ENV JAVA_VERSION=8u151
# Wed, 06 Jun 2018 01:57:40 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 06 Jun 2018 01:57:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Jun 2018 06:08:00 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 06 Jun 2018 06:08:20 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 06 Jun 2018 06:08:42 GMT
ENV ORIENTDB_VERSION=3.0.1
# Wed, 06 Jun 2018 06:08:42 GMT
ENV ORIENTDB_DOWNLOAD_MD5=14822052f6fdbd7e1c3a8331e2794e0f
# Wed, 06 Jun 2018 06:08:42 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=22402e40030bcc821ec20b6259e407366ad85e35
# Wed, 06 Jun 2018 06:08:42 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.1/orientdb-community-3.0.1.tar.gz
# Wed, 06 Jun 2018 06:08:43 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 06 Jun 2018 06:08:53 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 06 Jun 2018 06:08:53 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Jun 2018 06:08:53 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 06 Jun 2018 06:08:53 GMT
WORKDIR /orientdb
# Wed, 06 Jun 2018 06:08:54 GMT
EXPOSE 2424/tcp
# Wed, 06 Jun 2018 06:08:54 GMT
EXPOSE 2480/tcp
# Wed, 06 Jun 2018 06:08:54 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8906544047d741c82ab8e4f6b3a698cdc37170b9afe8006a7c2aee85bc78618`  
		Last Modified: Wed, 06 Jun 2018 02:15:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9db8d675e1fae91c193ff65ae84529aeb62d738d5bc5b09eb2fdc655edbffa`  
		Last Modified: Wed, 06 Jun 2018 02:19:31 GMT  
		Size: 70.2 MB (70227658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6e3aeb46e27d2396311b7fa61da9629c0fad1cb42ed0e27b1446681ef435e8`  
		Last Modified: Wed, 06 Jun 2018 06:10:29 GMT  
		Size: 673.3 KB (673319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f38b1b7a52c89047883a62c7aa9e528cae68efa16ff04eec67f451a17720b4`  
		Last Modified: Wed, 06 Jun 2018 06:10:41 GMT  
		Size: 34.9 MB (34938019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:3eb5371f81ff14a4b75d74fbc4ae17faf67950144d58ce7039a4be8373cfd662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:437421c4788ea25a08dabddffd8bac13c12d6f593332a2eeb6a8cf435f94496e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107904884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f52df70e067ccf1d7b750e49f3aea359f1156688b668934bde9e8a65a422b52`
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
# Mon, 21 May 2018 22:21:26 GMT
ENV ORIENTDB_VERSION=3.0.1
# Mon, 21 May 2018 22:21:26 GMT
ENV ORIENTDB_DOWNLOAD_MD5=14822052f6fdbd7e1c3a8331e2794e0f
# Mon, 21 May 2018 22:21:26 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=22402e40030bcc821ec20b6259e407366ad85e35
# Mon, 21 May 2018 22:21:27 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.1/orientdb-community-3.0.1.tar.gz
# Mon, 21 May 2018 22:21:28 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Mon, 21 May 2018 22:21:31 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Mon, 21 May 2018 22:21:31 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 21 May 2018 22:21:31 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Mon, 21 May 2018 22:21:32 GMT
WORKDIR /orientdb
# Mon, 21 May 2018 22:21:32 GMT
EXPOSE 2424/tcp
# Mon, 21 May 2018 22:21:32 GMT
EXPOSE 2480/tcp
# Mon, 21 May 2018 22:21:33 GMT
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
	-	`sha256:8d24a691f18a7b3690a45b741ac906c380adf151a980707528405623c929e07f`  
		Last Modified: Mon, 21 May 2018 22:21:51 GMT  
		Size: 673.3 KB (673332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f5c1ecdca28f907c6c6c5baf62e3e0ac927098f0f4fbded0bf4642b76c92ad`  
		Last Modified: Mon, 21 May 2018 22:21:56 GMT  
		Size: 34.9 MB (34938013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
