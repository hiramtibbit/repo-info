## `solr:6-alpine`

```console
$ docker pull solr@sha256:7ebd9b76cea6a1a9650865ed624a7efdc452c97af0e60ad4d16403206924ce17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; s390x

### `solr:6-alpine` - linux; amd64

```console
$ docker pull solr@sha256:87aa9e771db1d4e2d5d45f74be297ccdae93ece81d38f0b6e0137516aebf991f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.7 MB (213654158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70e0271800138fdc136c40ad79299772e17e75a16b2c6f77aef160f8a0310a5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Feb 2019 20:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:40:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 22:17:49 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 05 Feb 2019 22:17:49 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 05 Feb 2019 22:17:52 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 05 Feb 2019 22:17:54 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 05 Feb 2019 22:21:14 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.5/solr-6.6.5.tgz SOLR_SHA256=fa65e922bc32d36ef65bee866095da563aa5ddd7e953798c06b6494572d51729 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 22:21:14 GMT
ENV GOSU_VERSION=1.10
# Tue, 05 Feb 2019 22:21:14 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 05 Feb 2019 22:21:15 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Tue, 05 Feb 2019 22:21:16 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 05 Feb 2019 22:21:33 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 05 Feb 2019 22:21:34 GMT
COPY dir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Tue, 05 Feb 2019 22:21:35 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 05 Feb 2019 22:21:35 GMT
EXPOSE 8983
# Tue, 05 Feb 2019 22:21:35 GMT
WORKDIR /opt/solr
# Tue, 05 Feb 2019 22:21:36 GMT
USER solr
# Tue, 05 Feb 2019 22:21:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Feb 2019 22:21:36 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fe1b6eee3555498a7e15b3bf048a7ec274302a92d0c8b34fda111c780fdcf`  
		Last Modified: Tue, 05 Feb 2019 20:45:56 GMT  
		Size: 54.9 MB (54922733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac68e40dce12e203fc033661aec7c495b2c69e383f5b674725b4cbe5e790f460`  
		Last Modified: Tue, 05 Feb 2019 22:22:58 GMT  
		Size: 7.4 MB (7354540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe113ad3cfcc5606062c5aa4013b7c33de01042092b339fa6625ea444d3818d`  
		Last Modified: Tue, 05 Feb 2019 22:22:55 GMT  
		Size: 584.4 KB (584369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6f2f8f86c39815ff4e5c612a59e3d91e5fc8e476a0f4fb500abbdf245ca4cd`  
		Last Modified: Tue, 05 Feb 2019 22:25:01 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28b44243dc46f6124d547417cd608c9463d21f09af80da0248e6272ac8cecb2`  
		Last Modified: Tue, 05 Feb 2019 22:25:01 GMT  
		Size: 74.2 KB (74224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9af3e82f0df982e22038f0c0f46227badd3fffc164b0b41880352ca2074761`  
		Last Modified: Tue, 05 Feb 2019 22:25:11 GMT  
		Size: 148.0 MB (147953598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21de40b0a983827f078499cefa6dd33fafd502633eae316b5754c6920141df9`  
		Last Modified: Tue, 05 Feb 2019 22:25:01 GMT  
		Size: 4.2 KB (4225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d7806f66e850c3e3e199de55637feeef2164e68d44f154679903b78155454f`  
		Last Modified: Tue, 05 Feb 2019 22:25:01 GMT  
		Size: 4.3 KB (4257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:6-alpine` - linux; arm variant v6

```console
$ docker pull solr@sha256:ff3f05b65766a281306d6159ce6ce66b5dc8f3a9e1c5d7a952b034e6625a161c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.8 MB (209843292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82c1498680bffc77560a10ae15b2d638d4ae04dc1bd13461d7ce4feb89d52c60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:54:13 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 09:54:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 09:54:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 09:54:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 08:52:43 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 08:52:44 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 08:52:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 09:30:12 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 11 Jan 2019 09:30:12 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 11 Jan 2019 09:30:16 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Fri, 11 Jan 2019 09:30:18 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Fri, 11 Jan 2019 09:41:05 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.5/solr-6.6.5.tgz SOLR_SHA256=fa65e922bc32d36ef65bee866095da563aa5ddd7e953798c06b6494572d51729 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 09:41:06 GMT
ENV GOSU_VERSION=1.10
# Fri, 11 Jan 2019 09:41:06 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 11 Jan 2019 09:41:07 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Fri, 11 Jan 2019 09:41:11 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 11 Jan 2019 09:42:23 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Fri, 11 Jan 2019 09:42:24 GMT
COPY dir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Fri, 11 Jan 2019 09:42:26 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Fri, 11 Jan 2019 09:42:26 GMT
EXPOSE 8983
# Fri, 11 Jan 2019 09:42:26 GMT
WORKDIR /opt/solr
# Fri, 11 Jan 2019 09:42:27 GMT
USER solr
# Fri, 11 Jan 2019 09:42:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 09:42:27 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db946754b322adc3ac60fe5714a9c65ff7c92700903efa2f530018cbf95e2746`  
		Last Modified: Fri, 21 Dec 2018 09:55:28 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b747ae367a283db1307b30d3b9264cb69c982ab55c9ca7a7671811919ac10ea5`  
		Last Modified: Fri, 11 Jan 2019 08:53:50 GMT  
		Size: 52.3 MB (52326802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fea9b37bb4c98be925c03a3eed64b915b59b27bc195472c43565503f7ea8d54`  
		Last Modified: Fri, 11 Jan 2019 09:44:20 GMT  
		Size: 6.8 MB (6780508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82de93d47485b895ce2c868f27e47eafea42b63ee78f28896cc52cd9a310819d`  
		Last Modified: Fri, 11 Jan 2019 09:44:17 GMT  
		Size: 577.4 KB (577409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64eb12fc9f8d7e301ac5252cbd1174cf35fe84b6b5d134f27134cca245aaff2b`  
		Last Modified: Fri, 11 Jan 2019 09:47:24 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e426085d7101fa0309a43a7db21dd114932833106399edb5e8540c467b26668`  
		Last Modified: Fri, 11 Jan 2019 09:47:21 GMT  
		Size: 74.3 KB (74298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9d322e9185919b3621c7f8152f6c9eb118b31362d47d7f2d922ba5261a9cc3`  
		Last Modified: Fri, 11 Jan 2019 09:47:48 GMT  
		Size: 147.9 MB (147928297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49000efa17a215fa90683abc7ee9a0ebf54a4fc7e80a7fb3e00811447fd1d39`  
		Last Modified: Fri, 11 Jan 2019 09:47:21 GMT  
		Size: 4.3 KB (4252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e194d6af1e58ccf21674425daada8f4222e038245f5e56cd8aa8edac9f7d5baa`  
		Last Modified: Fri, 11 Jan 2019 09:47:21 GMT  
		Size: 4.3 KB (4256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:6-alpine` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:b80ffa420e8a1d02b12dd284f5dfd78fd892f44d6b01c1a62eba1af3c08db88b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.6 MB (210612269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa9ced95113ba0dd4c4f13754813c3deed43ba95d9c4f7cf7825661f97229307`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:05:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 13:05:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 13:06:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 13:06:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 09:55:45 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 09:55:46 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 09:55:53 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 13:35:37 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 11 Jan 2019 13:35:37 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 11 Jan 2019 13:35:42 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Fri, 11 Jan 2019 13:35:45 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Fri, 11 Jan 2019 13:43:31 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.5/solr-6.6.5.tgz SOLR_SHA256=fa65e922bc32d36ef65bee866095da563aa5ddd7e953798c06b6494572d51729 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 13:43:32 GMT
ENV GOSU_VERSION=1.10
# Fri, 11 Jan 2019 13:43:33 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 11 Jan 2019 13:43:38 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Fri, 11 Jan 2019 13:43:45 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 11 Jan 2019 13:44:21 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Fri, 11 Jan 2019 13:44:22 GMT
COPY dir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Fri, 11 Jan 2019 13:44:27 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Fri, 11 Jan 2019 13:44:28 GMT
EXPOSE 8983
# Fri, 11 Jan 2019 13:44:29 GMT
WORKDIR /opt/solr
# Fri, 11 Jan 2019 13:44:30 GMT
USER solr
# Fri, 11 Jan 2019 13:44:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 13:44:31 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d8dfc4d0852b7a74d115eecd508b6a48a39664fe4129497ea3871524e33ce9`  
		Last Modified: Fri, 21 Dec 2018 13:09:35 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d455313bbb0c73891a051ae66aef5dc2c403476dd089e389a2f7da1c424df4`  
		Last Modified: Fri, 11 Jan 2019 09:58:32 GMT  
		Size: 53.4 MB (53384098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368feb6050e49c63b667fd81a6ba0d07136b1bc4f6c9102a42abf81ced808c49`  
		Last Modified: Fri, 11 Jan 2019 13:46:44 GMT  
		Size: 6.6 MB (6553475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8661206ba7aef55fec461cf6277bd88a71fb767898b4a47057050fa965449aae`  
		Last Modified: Fri, 11 Jan 2019 13:46:41 GMT  
		Size: 568.9 KB (568891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df096a0fa0b2756440c829598d7b30ab6767bab5524616876dd5fdbcdd68e62`  
		Last Modified: Fri, 11 Jan 2019 13:50:14 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72c203a432613dc370a74e8d4198ad2d4d4e6b307e73e713e4eff3f6dca22c`  
		Last Modified: Fri, 11 Jan 2019 13:50:15 GMT  
		Size: 74.3 KB (74269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9a5c62de74611b8058326ab90e1842637ba8247f6404cb27585393c80b9d91`  
		Last Modified: Fri, 11 Jan 2019 13:50:37 GMT  
		Size: 147.9 MB (147921555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387d5d8567b0f0c6a3df2ce765a4b80bb9eee530da26441b67f71a8bffc1efaf`  
		Last Modified: Fri, 11 Jan 2019 13:50:14 GMT  
		Size: 4.2 KB (4224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3527461c8da6d76f636ecb6ad9107710ccfd9adfdb215e8de2fe9c2d3109a855`  
		Last Modified: Fri, 11 Jan 2019 13:50:15 GMT  
		Size: 4.3 KB (4254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:6-alpine` - linux; s390x

```console
$ docker pull solr@sha256:6580159bf422f172ea1e063a0fd3e1c3103261ce00de9cafb739dd8b80997dbf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211847913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97b41f97e99b23de59125a61933c7b64cef3d0d2343cc92a93f23da7847ba414`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:28:45 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 13:28:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 13:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 13:29:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 12:49:06 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 12:49:06 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 12:49:08 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 13:44:59 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 11 Jan 2019 13:44:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 11 Jan 2019 13:45:01 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Fri, 11 Jan 2019 13:45:03 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Fri, 11 Jan 2019 13:48:47 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.5/solr-6.6.5.tgz SOLR_SHA256=fa65e922bc32d36ef65bee866095da563aa5ddd7e953798c06b6494572d51729 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 13:48:47 GMT
ENV GOSU_VERSION=1.10
# Fri, 11 Jan 2019 13:48:47 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 11 Jan 2019 13:48:48 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Fri, 11 Jan 2019 13:48:51 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 11 Jan 2019 13:49:04 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Fri, 11 Jan 2019 13:49:05 GMT
COPY dir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Fri, 11 Jan 2019 13:49:05 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Fri, 11 Jan 2019 13:49:06 GMT
EXPOSE 8983
# Fri, 11 Jan 2019 13:49:06 GMT
WORKDIR /opt/solr
# Fri, 11 Jan 2019 13:49:06 GMT
USER solr
# Fri, 11 Jan 2019 13:49:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 Jan 2019 13:49:06 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834a618d8a86ef384988744d20f6cca1936684bdbeb27cf0dd33b0c95965cfd9`  
		Last Modified: Fri, 21 Dec 2018 13:31:20 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f65f9215f34ae37df6b1046943dced6579a492bf50571702902ee77fb010ed3`  
		Last Modified: Fri, 11 Jan 2019 12:50:28 GMT  
		Size: 53.6 MB (53638778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255ae441421b2995ebca83d4cafcf6b64a19bd7118f3030c66745cbab52a1903`  
		Last Modified: Fri, 11 Jan 2019 13:50:07 GMT  
		Size: 7.3 MB (7278536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d31d25863267d5571b50af81db8b43c7978b3fecf71e4ba47653aaa7a7b052a`  
		Last Modified: Fri, 11 Jan 2019 13:50:06 GMT  
		Size: 599.0 KB (598988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e77d0c0c248c90b19ec3e16158f0b15b72b6f8eff10faf6687605c06abeeef39`  
		Last Modified: Fri, 11 Jan 2019 13:51:45 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d2f687821f1cc954bc62d3463019b019803c3c421d45990a18cbbb750ad45b`  
		Last Modified: Fri, 11 Jan 2019 13:51:45 GMT  
		Size: 74.3 KB (74265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f891764c895c129cd37f98e5516677be1725d8ca8c665a422e9434c80209048`  
		Last Modified: Fri, 11 Jan 2019 13:51:54 GMT  
		Size: 147.9 MB (147939354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622341852ac81038f3bc013ec1596334adcb5a15deef6c816e7889d1f336df72`  
		Last Modified: Fri, 11 Jan 2019 13:51:45 GMT  
		Size: 4.2 KB (4226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2a8989fc56cdda7bf29d8e622426fc1d648f08bdb6b9c221e17ac8f34929c4`  
		Last Modified: Fri, 11 Jan 2019 13:51:45 GMT  
		Size: 4.3 KB (4258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
