## `solr:alpine`

```console
$ docker pull solr@sha256:75512abc26795cfd02a858a25db010786699be45b43ddc7bca001faec2bcbd44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; s390x

### `solr:alpine` - linux; amd64

```console
$ docker pull solr@sha256:53f34b6bdecff2453e26af8db813bb29a833b6622c362c6cdca93cd1a8be9b0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.7 MB (232650585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03fe4659d3ebe7b474a242f86d23e17145e7870139a8c42d2e77c4c7772126ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Jun 2018 01:55:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 07:23:07 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 07:23:07 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 16 Jun 2018 07:23:11 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Jun 2018 06:26:34 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 27 Jun 2018 06:26:34 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 27 Jun 2018 06:26:37 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 27 Jun 2018 06:26:39 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Mon, 02 Jul 2018 23:42:50 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.4.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.4.0/solr-7.4.0.tgz SOLR_SHA256=a50eac8dece0acb5e6f0d868c7868ce8174e299752356f3424a15aa39bd64407 SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 02 Jul 2018 23:42:51 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Jul 2018 23:42:51 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 02 Jul 2018 23:42:52 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Mon, 02 Jul 2018 23:42:55 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 02 Jul 2018 23:43:18 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Mon, 02 Jul 2018 23:43:26 GMT
COPY dir:3ab6c2998615274979b7fe3c2f1554b0c63d5110555f3871ee3f56972484ccc6 in /opt/docker-solr/scripts 
# Mon, 02 Jul 2018 23:43:27 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Mon, 02 Jul 2018 23:43:27 GMT
EXPOSE 8983/tcp
# Mon, 02 Jul 2018 23:43:28 GMT
WORKDIR /opt/solr
# Mon, 02 Jul 2018 23:43:28 GMT
USER [solr]
# Mon, 02 Jul 2018 23:43:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Jul 2018 23:43:28 GMT
CMD ["solr-foreground"]
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
	-	`sha256:590b87a38029f9f6e54117d1917b23bbae8dd69885c9edf171799fd02390df9d`  
		Last Modified: Sat, 16 Jun 2018 07:33:41 GMT  
		Size: 54.5 MB (54536909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3eba2fd5d568eadc0266b87f0652fc21cbe8a1b2c6dde573c0285b157b5e9e6`  
		Last Modified: Wed, 27 Jun 2018 06:37:22 GMT  
		Size: 7.4 MB (7415345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77aa79401d237d95b49c2025dbbe23e2394376e54f03ba4f64b6bffe7c1a398`  
		Last Modified: Wed, 27 Jun 2018 06:37:19 GMT  
		Size: 586.9 KB (586948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0e7407041c555115111f7ad3df73ebc35fc9648b2fa364ba8e114f006d6392`  
		Last Modified: Mon, 02 Jul 2018 23:48:16 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb995424c67a107edbe6a6dd7138c0a89f888a7d4aa0cc1f2843706d3cf11521`  
		Last Modified: Mon, 02 Jul 2018 23:48:17 GMT  
		Size: 74.4 KB (74420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4af92aeba1a3902d59f241cfc99dfdfb34f352e4c1797fb2a8e90a257d59638`  
		Last Modified: Mon, 02 Jul 2018 23:48:36 GMT  
		Size: 168.0 MB (167960404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cde831a5b7cac087484372bfd6eba4f23b1d60bc3508482e725c5f279ad4fc7`  
		Last Modified: Mon, 02 Jul 2018 23:48:16 GMT  
		Size: 4.8 KB (4751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7303e7efd7e691ca0b57f22474763660e23ffe991c7ca2fe1da1053168299c88`  
		Last Modified: Mon, 02 Jul 2018 23:48:17 GMT  
		Size: 4.8 KB (4782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:alpine` - linux; s390x

```console
$ docker pull solr@sha256:8db39d48c6e23a89ef5b2e64b7ea6890f33d548dd8d57fbcfc2278cb8a55d186
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.8 MB (231809487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2c987fa0fef2ea1458fb10c72f8dd0b475297e0bb2b2c40bbcc27b23a535e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 17:54:50 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 17:54:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 17:57:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 17:57:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 11:42:18 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 11:42:18 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 16 Jun 2018 11:42:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 16 Jun 2018 12:03:40 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Sat, 16 Jun 2018 12:03:40 GMT
ARG SOLR_DOWNLOAD_SERVER
# Sat, 16 Jun 2018 12:03:42 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Sat, 16 Jun 2018 12:03:43 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 03 Jul 2018 11:58:44 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.4.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.4.0/solr-7.4.0.tgz SOLR_SHA256=a50eac8dece0acb5e6f0d868c7868ce8174e299752356f3424a15aa39bd64407 SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 03 Jul 2018 11:58:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 03 Jul 2018 11:58:45 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 03 Jul 2018 11:58:45 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Tue, 03 Jul 2018 11:58:48 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 03 Jul 2018 11:59:03 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 03 Jul 2018 11:59:03 GMT
COPY dir:3ab6c2998615274979b7fe3c2f1554b0c63d5110555f3871ee3f56972484ccc6 in /opt/docker-solr/scripts 
# Tue, 03 Jul 2018 11:59:04 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 03 Jul 2018 11:59:04 GMT
EXPOSE 8983/tcp
# Tue, 03 Jul 2018 11:59:05 GMT
WORKDIR /opt/solr
# Tue, 03 Jul 2018 11:59:05 GMT
USER [solr]
# Tue, 03 Jul 2018 11:59:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Jul 2018 11:59:05 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320238e3e22d841c8337cb6f2d8b95f9c1ab000f2845efcd5bd977690210f427`  
		Last Modified: Tue, 05 Dec 2017 17:58:18 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089a4cdcf5d84077978b4d3c65576c8061e8a409dc1539cba2ca60f218e37769`  
		Last Modified: Sat, 16 Jun 2018 11:44:03 GMT  
		Size: 53.4 MB (53359885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24cf5dcc9c7c831f05b02e2272dc913dd604b4be8d4e1e10387a92983fb21bf0`  
		Last Modified: Sat, 16 Jun 2018 12:06:36 GMT  
		Size: 7.6 MB (7631865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162c61d5abfada9d1e0f086fdd8d46a7af2ff46240163c6a2463ac99d9351d6b`  
		Last Modified: Sat, 16 Jun 2018 12:06:35 GMT  
		Size: 600.4 KB (600425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec06045ea972483cd90d42ae60919bfda6bade48c77f56507d360f654e36a8c`  
		Last Modified: Tue, 03 Jul 2018 12:04:23 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbaf68991361d0f2e2a522c9ff0e7f359ff888c733cd936ba94ddc3c5da48e4`  
		Last Modified: Tue, 03 Jul 2018 12:04:23 GMT  
		Size: 74.4 KB (74421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84dd9e33f357a4f69fb06efd329f23fb57f4cec5f220f83104934e24ead64ab8`  
		Last Modified: Tue, 03 Jul 2018 12:05:52 GMT  
		Size: 167.9 MB (167946466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8bd7759444da3ff2b867b55ab64dcaa5974066b206721352091b9ab46e447b3`  
		Last Modified: Tue, 03 Jul 2018 12:04:24 GMT  
		Size: 4.7 KB (4749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a83e30402f66f5c67e86101702974ec9ef79aacd6d8bc5c2f957820e2fa193b7`  
		Last Modified: Tue, 03 Jul 2018 12:04:24 GMT  
		Size: 4.8 KB (4781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
