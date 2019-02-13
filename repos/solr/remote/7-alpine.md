## `solr:7-alpine`

```console
$ docker pull solr@sha256:017cdf48e28d366253aebe9d83b3639a704afd8e8ec12f79e7bd55d44bc865de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `solr:7-alpine` - linux; amd64

```console
$ docker pull solr@sha256:ca8a43ac753e9337e4f16b6d6ca8279a51b3c562d7f15685ec3607b8afeff122
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.1 MB (238056207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43d890abf24e17079c30d59abec28d641c289f71caeb899e2f6188574e0afcbc`
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
# Tue, 12 Feb 2019 21:46:25 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 12 Feb 2019 21:46:25 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Tue, 12 Feb 2019 21:46:26 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 12 Feb 2019 21:46:28 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Tue, 12 Feb 2019 21:46:31 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 12 Feb 2019 21:46:31 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.0/solr-7.7.0.tgz SOLR_SHA256=ad9eaa29449701fcabad497cc5f0506f8a8f76da714dc4a5429a549fcac24dc7 SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Feb 2019 21:46:32 GMT
ENV GOSU_VERSION=1.11
# Tue, 12 Feb 2019 21:46:32 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 12 Feb 2019 21:46:34 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Tue, 12 Feb 2019 21:46:36 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 12 Feb 2019 21:46:52 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Tue, 12 Feb 2019 21:46:52 GMT
COPY --chown=solr:solrdir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Tue, 12 Feb 2019 21:46:53 GMT
EXPOSE 8983
# Tue, 12 Feb 2019 21:46:53 GMT
WORKDIR /opt/solr
# Tue, 12 Feb 2019 21:46:54 GMT
USER solr
# Tue, 12 Feb 2019 21:46:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 21:46:55 GMT
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
	-	`sha256:54d4165574c77b332faa355d000afd7acd2bca1b8b94ed01cad925655aaa6a04`  
		Last Modified: Tue, 12 Feb 2019 21:58:13 GMT  
		Size: 7.4 MB (7354485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1882020eeff5d5d969f671dc59070eae7d3fb7e572385c797e7e6fb9e81bce03`  
		Last Modified: Tue, 12 Feb 2019 21:58:10 GMT  
		Size: 584.4 KB (584374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0a6cf01268f8adb667ad4132ccf4cf46978264321ee4ea40d39b459b560825`  
		Last Modified: Tue, 12 Feb 2019 21:58:10 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20bb0c38cc7ed87c27204f4f8ab832c44c740b8cf43740b2f1d5d6bc1bfcc64`  
		Last Modified: Tue, 12 Feb 2019 21:58:10 GMT  
		Size: 75.4 KB (75366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c021a5dd3e27c79f360dec29e62ad1e30ba5b6b72acaa750a2b7e3ac0430647c`  
		Last Modified: Tue, 12 Feb 2019 21:58:22 GMT  
		Size: 172.4 MB (172358807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7099d13a5e9a9ce3d5af55b602479a9576455bd85cbd4a22d4de7d6bfba32a68`  
		Last Modified: Tue, 12 Feb 2019 21:58:10 GMT  
		Size: 4.2 KB (4230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-alpine` - linux; arm variant v6

```console
$ docker pull solr@sha256:7953fb78e46b0dadb120922a4e49545db96d01e7e075a320fe8f326c8b3b611b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.8 MB (234813036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:846e68f149f87821c5650714346742b5aa3df2d3964234e5e3d0c463f3d25ec6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:09:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 09:09:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 09:09:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 09:09:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 09:09:34 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 09:09:35 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 09:09:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Feb 2019 09:02:17 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 13 Feb 2019 09:02:18 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 13 Feb 2019 09:02:19 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 13 Feb 2019 09:02:24 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 13 Feb 2019 09:02:26 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 13 Feb 2019 09:02:26 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.0/solr-7.7.0.tgz SOLR_SHA256=ad9eaa29449701fcabad497cc5f0506f8a8f76da714dc4a5429a549fcac24dc7 SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Feb 2019 09:02:27 GMT
ENV GOSU_VERSION=1.11
# Wed, 13 Feb 2019 09:02:27 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 13 Feb 2019 09:02:28 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Wed, 13 Feb 2019 09:02:30 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 13 Feb 2019 09:03:54 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Wed, 13 Feb 2019 09:03:55 GMT
COPY --chown=solr:solrdir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Wed, 13 Feb 2019 09:03:55 GMT
EXPOSE 8983
# Wed, 13 Feb 2019 09:03:56 GMT
WORKDIR /opt/solr
# Wed, 13 Feb 2019 09:03:56 GMT
USER solr
# Wed, 13 Feb 2019 09:03:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Feb 2019 09:03:57 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598092653ce578dc5f1728020fc7cea202bfd7c3694e321c61bdd914e0a1f5ec`  
		Last Modified: Wed, 06 Feb 2019 09:10:30 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a4f55d20a64c757c23b9e9b1382fa744e666c57cb22ae208fa26f8724585c2`  
		Last Modified: Wed, 06 Feb 2019 09:11:13 GMT  
		Size: 52.3 MB (52316622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ca694cd95adbc5d2f6dd7b3e490ee7d7cbe1f2ddd51418f5220209e83ea549`  
		Last Modified: Wed, 13 Feb 2019 09:17:38 GMT  
		Size: 7.0 MB (6991265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345d63d86cf0939fc7c418fed0975087364df486da1201b7a4d1ebfc5b132b5c`  
		Last Modified: Wed, 13 Feb 2019 09:17:34 GMT  
		Size: 572.6 KB (572573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e317ee82a17d87e19050d96e96176cf8265be69dbcbcbe86afbd2ca3e01f8b06`  
		Last Modified: Wed, 13 Feb 2019 09:17:34 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0fec71ad6f79bf830d8f9657efc533d254bf186be69cab6aebe069b3c2e2c6`  
		Last Modified: Wed, 13 Feb 2019 09:17:34 GMT  
		Size: 75.4 KB (75406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5783a4448c95411ccc48d87691add47eb318ba8dc0fc88244372cb3966f1a27e`  
		Last Modified: Wed, 13 Feb 2019 09:17:58 GMT  
		Size: 172.3 MB (172310476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803916d0329717d2667de4441fe91346d73f29b651c3e58b9a37c6bc404b6d50`  
		Last Modified: Wed, 13 Feb 2019 09:17:34 GMT  
		Size: 4.3 KB (4263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
