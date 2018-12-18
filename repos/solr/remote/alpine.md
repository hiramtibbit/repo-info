## `solr:alpine`

```console
$ docker pull solr@sha256:9f0a6e290579c0ad9a15ed6912c8e11690930a73f1f9ebda8a5689cdced145ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `solr:alpine` - linux; amd64

```console
$ docker pull solr@sha256:48b7e9ebe0b09d21f00fe673192059b437b9646ff0ec169a3aba7b12ca2877a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.1 MB (236086200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38e0f8a91a2b814e8a603b1b3b8cce1f7901356c32dd6aa2e51f0792ac8042dc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:07:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 12 Sep 2018 00:07:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:32:14 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:32:14 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:32:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 00:15:41 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 25 Oct 2018 00:15:41 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 25 Oct 2018 00:15:43 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Thu, 25 Oct 2018 00:15:44 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 18 Dec 2018 01:20:57 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.6.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.6.0/solr-7.6.0.tgz SOLR_SHA256=2cb425a0b30ff153465d306803e514e53e41924d74f28d842cb3a07cace759d5 SOLR_KEYS=95B01F0E78111D63D331C1A751F0CC22F625308A PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Dec 2018 01:20:57 GMT
ENV GOSU_VERSION=1.10
# Tue, 18 Dec 2018 01:20:57 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 18 Dec 2018 01:20:58 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Tue, 18 Dec 2018 01:21:03 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 18 Dec 2018 01:21:19 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 18 Dec 2018 01:21:20 GMT
COPY dir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Tue, 18 Dec 2018 01:21:20 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 18 Dec 2018 01:21:21 GMT
EXPOSE 8983
# Tue, 18 Dec 2018 01:21:21 GMT
WORKDIR /opt/solr
# Tue, 18 Dec 2018 01:21:21 GMT
USER solr
# Tue, 18 Dec 2018 01:21:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Dec 2018 01:21:21 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819f4a45746c3207fc5fa281ad62cf165d39c18de53a5bfd42eddfec32430d83`  
		Last Modified: Wed, 24 Oct 2018 22:45:47 GMT  
		Size: 54.8 MB (54829651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28486f7f221f8af3d8fc83cd3d13a49d54cb6e3fbb8af4264ca000eda62bbf6a`  
		Last Modified: Thu, 25 Oct 2018 00:30:48 GMT  
		Size: 7.1 MB (7118983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75e59a38a77c0e5b36fe786747c8d97758abfcdeff9ec4640c4d7360c041eef`  
		Last Modified: Thu, 25 Oct 2018 00:30:45 GMT  
		Size: 588.0 KB (587977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f69d68ea6f14aabc7d5cb8fe226894ed0c51245cbcfe8466eabd19c0578392`  
		Last Modified: Tue, 18 Dec 2018 01:39:38 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33be1b0173c8cfc0e6165d63b4f2c3d7cbba2add80c719b16a85f2773f8a4546`  
		Last Modified: Tue, 18 Dec 2018 01:39:38 GMT  
		Size: 73.2 KB (73194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91baf1e20b17a9e81fbae67a1d54d060320c2df106f890b6ae452623d0290338`  
		Last Modified: Tue, 18 Dec 2018 01:39:53 GMT  
		Size: 171.3 MB (171259493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4f2bf2f12944717673b38c3e0bd9f76db1cbadf2417e1b1a0ef8ad0a83be13`  
		Last Modified: Tue, 18 Dec 2018 01:39:38 GMT  
		Size: 4.2 KB (4225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894ae9ebb779fdcb1b7b5d59044fdecc76871f0409c1d78e9bdde666b1aaca64`  
		Last Modified: Tue, 18 Dec 2018 01:39:38 GMT  
		Size: 4.3 KB (4258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:alpine` - linux; arm variant v6

```console
$ docker pull solr@sha256:9d6b3295cf18fa28c323825d6e62e7b9483935a312fd2ae4a6bcae483e532b7d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.1 MB (233115746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76103d5e6e0152b9043b6347a41c809c7b7ef3b9ad23bd0f665f5aee2471b093`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:28:56 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 08:28:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 08:29:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 12 Sep 2018 08:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 25 Oct 2018 07:53:14 GMT
ENV JAVA_VERSION=8u181
# Thu, 25 Oct 2018 07:53:15 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Thu, 25 Oct 2018 07:53:19 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 08:28:15 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 25 Oct 2018 08:28:15 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 25 Oct 2018 08:28:18 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Thu, 25 Oct 2018 08:28:20 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 18 Dec 2018 08:54:05 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.6.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.6.0/solr-7.6.0.tgz SOLR_SHA256=2cb425a0b30ff153465d306803e514e53e41924d74f28d842cb3a07cace759d5 SOLR_KEYS=95B01F0E78111D63D331C1A751F0CC22F625308A PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Dec 2018 08:54:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 18 Dec 2018 08:54:06 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 18 Dec 2018 08:54:07 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Tue, 18 Dec 2018 08:54:11 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 18 Dec 2018 08:55:36 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 18 Dec 2018 08:55:37 GMT
COPY dir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Tue, 18 Dec 2018 08:55:38 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 18 Dec 2018 08:55:39 GMT
EXPOSE 8983
# Tue, 18 Dec 2018 08:55:39 GMT
WORKDIR /opt/solr
# Tue, 18 Dec 2018 08:55:39 GMT
USER solr
# Tue, 18 Dec 2018 08:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Dec 2018 08:55:40 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5330a9c830688a5533553fc6f68b39796b550d1e9e2adec9da6321849c3091f`  
		Last Modified: Wed, 12 Sep 2018 08:30:15 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bc5e33e2886dcc3a99be4e4d5ad45dec02e660f7a1bac7f1fcdda33450b5417`  
		Last Modified: Thu, 25 Oct 2018 07:54:32 GMT  
		Size: 52.3 MB (52291258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3f4f35091b0e551e28cf07c98405b77413034271206a71beb8b63952906d1a`  
		Last Modified: Thu, 25 Oct 2018 08:40:59 GMT  
		Size: 6.8 MB (6780495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b808831727fe29bacf35f1590d7071d6d69684e913ac3d1b717af623bf31509`  
		Last Modified: Thu, 25 Oct 2018 08:40:57 GMT  
		Size: 578.0 KB (578010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be743f439660e01467348a54e4e82d69f6c3abcfdb6f33588421c16a36b0340`  
		Last Modified: Tue, 18 Dec 2018 09:07:39 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd867864c6834f4e012ac8160d4fa8e524add4688b1cce04048073d5545c75c`  
		Last Modified: Tue, 18 Dec 2018 09:07:39 GMT  
		Size: 73.2 KB (73226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e7b5a24edbc72b33cfa9b2c4ba0d01b7eed862a15383ed354bee82eb6dd520`  
		Last Modified: Tue, 18 Dec 2018 09:08:03 GMT  
		Size: 171.2 MB (171236104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a0616c1c55d9c03dc01775ab42037072722d4b839219b6405d1b8ae91208d0`  
		Last Modified: Tue, 18 Dec 2018 09:07:39 GMT  
		Size: 4.3 KB (4254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01154ba0891d5f85e535d6148f17656ad441f00ed69d9d7ca3fb128c7e915816`  
		Last Modified: Tue, 18 Dec 2018 09:07:39 GMT  
		Size: 4.3 KB (4259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:alpine` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:7c880a5692df0d7537daf9ee04e4db2cfe2a2a3b2f3b6cecd5a6a7ba9ba250e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.9 MB (233880456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29fde369f97eced1a439a841d0b2306a6dd8daa1599238cee5cb8985b93a86e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 10:31:14 GMT
ENV LANG=C.UTF-8
# Sat, 15 Sep 2018 10:31:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 15 Sep 2018 10:32:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 15 Sep 2018 10:32:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 25 Oct 2018 09:17:58 GMT
ENV JAVA_VERSION=8u181
# Thu, 25 Oct 2018 09:17:59 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Thu, 25 Oct 2018 09:18:08 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 10:51:23 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 25 Oct 2018 10:51:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 25 Oct 2018 10:51:30 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Thu, 25 Oct 2018 10:51:33 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 18 Dec 2018 10:40:57 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.6.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.6.0/solr-7.6.0.tgz SOLR_SHA256=2cb425a0b30ff153465d306803e514e53e41924d74f28d842cb3a07cace759d5 SOLR_KEYS=95B01F0E78111D63D331C1A751F0CC22F625308A PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Dec 2018 10:40:58 GMT
ENV GOSU_VERSION=1.10
# Tue, 18 Dec 2018 10:41:01 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 18 Dec 2018 10:41:04 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Tue, 18 Dec 2018 10:41:14 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 18 Dec 2018 10:41:57 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 18 Dec 2018 10:41:58 GMT
COPY dir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Tue, 18 Dec 2018 10:42:01 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 18 Dec 2018 10:42:03 GMT
EXPOSE 8983
# Tue, 18 Dec 2018 10:42:04 GMT
WORKDIR /opt/solr
# Tue, 18 Dec 2018 10:42:05 GMT
USER solr
# Tue, 18 Dec 2018 10:42:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Dec 2018 10:42:09 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f5ccd8840b9ed31daf1700ec6ed07458ba25d6734206c6c4c5910f09d8c0a6`  
		Last Modified: Sat, 15 Sep 2018 10:49:34 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6a4067fe21d0e5d7bc2f00538e0f83c6d2c7c88299a7ae6f834d2213521d93`  
		Last Modified: Thu, 25 Oct 2018 09:32:23 GMT  
		Size: 53.3 MB (53345648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9bad24b32b5ae61b2e25f3aca7601ba9dcc98a1b6397522afa840bf00e0a8d`  
		Last Modified: Fri, 02 Nov 2018 09:50:41 GMT  
		Size: 6.6 MB (6553425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7a59a11882990f65292dfda231bfd27b5897b9bcbc2e78bf3f9d8d9fc3a3fb`  
		Last Modified: Fri, 02 Nov 2018 09:50:30 GMT  
		Size: 569.2 KB (569205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00f0c70c24329ecea5830daf0e85e458ac417d6f8644cd105215e59eb61371e`  
		Last Modified: Tue, 18 Dec 2018 11:02:58 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c26b3219513fe0cd7fab7e189b5a500ad600925463751a9e94bf8ebb81daa74`  
		Last Modified: Tue, 18 Dec 2018 11:02:58 GMT  
		Size: 73.2 KB (73189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727cc9706c0f7551a13a3e1592a9f4cc18e4f7c8a9390ae596b0d4edc7417731`  
		Last Modified: Tue, 18 Dec 2018 11:03:22 GMT  
		Size: 171.2 MB (171229082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9354cabca6b9f4dfdc1ac0de5d74028a90f47ec8913f4e4e1c2cb258d9c830`  
		Last Modified: Tue, 18 Dec 2018 11:02:58 GMT  
		Size: 4.2 KB (4224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33aed0e455cb018fc9075140e49bd87d201b6845480e7d111620585f271b6c92`  
		Last Modified: Tue, 18 Dec 2018 11:02:58 GMT  
		Size: 4.3 KB (4256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
