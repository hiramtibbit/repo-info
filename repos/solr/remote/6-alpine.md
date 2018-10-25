## `solr:6-alpine`

```console
$ docker pull solr@sha256:3abaef68dde4bbc158e4b12489cbc92b951cbaa72f8797f5df8b498a195296a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; s390x

### `solr:6-alpine` - linux; amd64

```console
$ docker pull solr@sha256:bcedf2a1fac979fe5c3306098d0e5b2f8f6044eca47bc625fdbbf826b0d8fa9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.8 MB (212781660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06880c10d4ca809ad1c86039020e65e0fabffca48708a6cfd0b69e67bd0f8e6c`
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
# Thu, 25 Oct 2018 00:26:58 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.5/solr-6.6.5.tgz SOLR_SHA256=fa65e922bc32d36ef65bee866095da563aa5ddd7e953798c06b6494572d51729 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 25 Oct 2018 00:26:58 GMT
ENV GOSU_VERSION=1.10
# Thu, 25 Oct 2018 00:26:58 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 25 Oct 2018 00:26:59 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Thu, 25 Oct 2018 00:27:02 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 25 Oct 2018 00:28:10 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Thu, 25 Oct 2018 00:28:10 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Thu, 25 Oct 2018 00:28:11 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Thu, 25 Oct 2018 00:28:11 GMT
EXPOSE 8983/tcp
# Thu, 25 Oct 2018 00:28:12 GMT
WORKDIR /opt/solr
# Thu, 25 Oct 2018 00:28:12 GMT
USER [solr]
# Thu, 25 Oct 2018 00:28:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Oct 2018 00:28:12 GMT
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
	-	`sha256:d245607bd95f39d4410122a722a43149204532aa9bd41adf781f046ba1954eda`  
		Last Modified: Thu, 25 Oct 2018 00:38:11 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:face343b8480ef7afd3397e302fc852631bebce8e17abc9a24f65b3dab921bf9`  
		Last Modified: Thu, 25 Oct 2018 00:38:10 GMT  
		Size: 74.4 KB (74398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa017908c34dc0113cc95af3d4d827437fcd0722b4eec727c8aa92c29cd8dcb3`  
		Last Modified: Thu, 25 Oct 2018 00:38:21 GMT  
		Size: 148.0 MB (147953754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c64a0dd35ba872a58d2fee02e1f85e7184c1b44af734cbf722731cb834f77b86`  
		Last Modified: Thu, 25 Oct 2018 00:38:11 GMT  
		Size: 4.2 KB (4224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0489bf840da032f036d898df10c964fb344d9907300cda8052ecbef36b21ee88`  
		Last Modified: Thu, 25 Oct 2018 00:38:10 GMT  
		Size: 4.3 KB (4255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:6-alpine` - linux; arm variant v6

```console
$ docker pull solr@sha256:59f4bd27e72d35ec6800c0e94ba1f18803b506db10f4b53836646cc9af810240
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.8 MB (209795608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b8aa0c39cb032fb7041c313cda26481e56ed069661bbfc04b1e668e2ca0e622`
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
# Wed, 12 Sep 2018 08:29:11 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 08:29:11 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 08:29:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 09:01:00 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 12 Sep 2018 09:01:00 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 12 Sep 2018 09:01:03 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 12 Sep 2018 09:01:05 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 12 Sep 2018 09:02:53 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.5/solr-6.6.5.tgz SOLR_SHA256=fa65e922bc32d36ef65bee866095da563aa5ddd7e953798c06b6494572d51729 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 09:02:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 12 Sep 2018 09:02:53 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 12 Sep 2018 09:02:54 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Sat, 15 Sep 2018 09:52:12 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sat, 15 Sep 2018 09:53:31 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Sat, 15 Sep 2018 09:53:32 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Sat, 15 Sep 2018 09:53:34 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Sat, 15 Sep 2018 09:53:34 GMT
EXPOSE 8983/tcp
# Sat, 15 Sep 2018 09:53:34 GMT
WORKDIR /opt/solr
# Sat, 15 Sep 2018 09:53:35 GMT
USER [solr]
# Sat, 15 Sep 2018 09:53:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 09:53:35 GMT
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
	-	`sha256:00747677db18ac2063a80d62c65eb527d42e50b3d18451ed46e66a4695c28ce1`  
		Last Modified: Wed, 12 Sep 2018 08:31:08 GMT  
		Size: 52.3 MB (52277680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa390c48bbf0012549984b7b5abb962459278d8f1832a022a423d0c89f404cf5`  
		Last Modified: Sat, 15 Sep 2018 09:55:36 GMT  
		Size: 6.8 MB (6780485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5d48cb4a1123e8b5a6b15fb0cb79999bdf51ae65ecd058d7ecd322832eeef9`  
		Last Modified: Sat, 15 Sep 2018 09:55:33 GMT  
		Size: 578.0 KB (577976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4065a2c49f944adf83008237f33b6828ba282f708bda36d07c37ccb6a097544`  
		Last Modified: Sat, 15 Sep 2018 09:57:53 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95fee2ad0cf699ad2e67dad5fcc064e50242d83ec576396efdaa10882550ca4b`  
		Last Modified: Sat, 15 Sep 2018 09:57:53 GMT  
		Size: 74.4 KB (74437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f390d0111d3ae085d56b2874737b335c11a60e5f220041f0c25981b4a9b44277`  
		Last Modified: Sat, 15 Sep 2018 09:58:12 GMT  
		Size: 147.9 MB (147928385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe5ae8fbe49cf3482f1ee69ddd4a3012b216f8b1f0ec3175ea5c4f20cfdc51`  
		Last Modified: Sat, 15 Sep 2018 09:57:52 GMT  
		Size: 4.3 KB (4252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b819af2a8f6e9d9079e089b8cfd05beb709c064dec6d68a8cec5af835330a6aa`  
		Last Modified: Sat, 15 Sep 2018 09:57:53 GMT  
		Size: 4.3 KB (4255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:6-alpine` - linux; s390x

```console
$ docker pull solr@sha256:d6b3d1349255a01a5d908fbbddbfff17d90b0d7617a43b6483f17c499fcdaf03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211790982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de1f7426231039b007672831c0b47cb8422cf6f4a0d0ad78064b02c6c31d50d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:14:33 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 13:14:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 13:15:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 12 Sep 2018 13:15:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 13:15:01 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 13:15:01 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 13:15:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 14:39:58 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 12 Sep 2018 14:39:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 12 Sep 2018 14:40:00 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 12 Sep 2018 14:40:01 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 12 Sep 2018 14:43:08 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.5/solr-6.6.5.tgz SOLR_SHA256=fa65e922bc32d36ef65bee866095da563aa5ddd7e953798c06b6494572d51729 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 14:43:08 GMT
ENV GOSU_VERSION=1.10
# Wed, 12 Sep 2018 14:43:08 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 12 Sep 2018 14:43:09 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Wed, 12 Sep 2018 14:43:12 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 12 Sep 2018 14:43:25 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Wed, 12 Sep 2018 14:43:25 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Wed, 12 Sep 2018 14:43:25 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Wed, 12 Sep 2018 14:43:26 GMT
EXPOSE 8983/tcp
# Wed, 12 Sep 2018 14:43:26 GMT
WORKDIR /opt/solr
# Wed, 12 Sep 2018 14:43:26 GMT
USER [solr]
# Wed, 12 Sep 2018 14:43:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 14:43:26 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d467c81155dfdb8e21d7a7abb5210cdfe51c5e8336b7a58bf0fecf06d36633e`  
		Last Modified: Wed, 12 Sep 2018 13:16:20 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45eab26f75317f15c0092e0699523c867e1d27201dbcd548832fd4021658f067`  
		Last Modified: Wed, 12 Sep 2018 13:17:25 GMT  
		Size: 53.6 MB (53581524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6939c9a397a678ded4ad11df1096dd75c840e4887fa978d917ebee32e772ed35`  
		Last Modified: Wed, 12 Sep 2018 14:44:36 GMT  
		Size: 7.3 MB (7278448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ae5963561e87466b270f6479405de415b3893edc3023ee96e88e778d4d9afe7`  
		Last Modified: Wed, 12 Sep 2018 14:44:34 GMT  
		Size: 599.0 KB (599029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b473e5a3c3a34799e08b113fdc94a33ee40e2b39edf35c64a8d58374687d985`  
		Last Modified: Wed, 12 Sep 2018 14:46:44 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5810d6628552bbcba03b1d43e5ec87ab138c9c78db40d1b240e016320971cbaa`  
		Last Modified: Wed, 12 Sep 2018 14:46:45 GMT  
		Size: 74.4 KB (74400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ff6c6533b68ab54b7ed60bc0778b5278c66cb9cbcfd585f2148deb5a1b34c9`  
		Last Modified: Wed, 12 Sep 2018 14:46:55 GMT  
		Size: 147.9 MB (147939691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb3e2b7ff0bcddf1946329d846e7366fbe4012a1e44572650b0fb258eea4bbf`  
		Last Modified: Wed, 12 Sep 2018 14:46:44 GMT  
		Size: 4.2 KB (4225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426398e13300485aa643e96524265ae2a3c6e4c43e65f9ab5695fe6196422a57`  
		Last Modified: Wed, 12 Sep 2018 14:46:44 GMT  
		Size: 4.3 KB (4255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
