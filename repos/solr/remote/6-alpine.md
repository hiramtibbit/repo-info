## `solr:6-alpine`

```console
$ docker pull solr@sha256:aeb342b7902797d19e25e099df6f19cd340c7353e8afbabfa07d8a541b444ea2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; s390x

### `solr:6-alpine` - linux; amd64

```console
$ docker pull solr@sha256:4998f4febf4b0de95e102cbc7bb8e5f11a9064ded0eee25aec31677a9cc6c597
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.0 MB (214045308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60b1500fccaf24965c5c4623815d93796c5f9d6a985fcd08ec61c968249a6fb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 02:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Tue, 02 Apr 2019 23:45:43 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:46:52 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 03 Apr 2019 00:46:52 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 03 Apr 2019 00:46:52 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 03 Apr 2019 00:46:54 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 03 Apr 2019 00:46:55 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 03 Apr 2019 00:48:19 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.5/solr-6.6.5.tgz SOLR_SHA256=fa65e922bc32d36ef65bee866095da563aa5ddd7e953798c06b6494572d51729 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 03 Apr 2019 00:48:19 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 00:48:19 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 03 Apr 2019 00:48:20 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Wed, 03 Apr 2019 00:48:21 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 03 Apr 2019 00:48:36 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Wed, 03 Apr 2019 00:48:36 GMT
COPY --chown=solr:solrdir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Wed, 03 Apr 2019 00:48:36 GMT
EXPOSE 8983
# Wed, 03 Apr 2019 00:48:36 GMT
WORKDIR /opt/solr
# Wed, 03 Apr 2019 00:48:37 GMT
USER solr
# Wed, 03 Apr 2019 00:48:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Apr 2019 00:48:37 GMT
CMD ["solr-foreground"]
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
	-	`sha256:0c5bd74861e4346a0beed670ef2a6613f3594b458820c50efc5e1044d865e134`  
		Last Modified: Tue, 02 Apr 2019 23:47:30 GMT  
		Size: 54.9 MB (54918577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d542a5ddb9717d5d492a5cd437f8b237debdd489e2b532069c989e110c49ef8`  
		Last Modified: Wed, 03 Apr 2019 00:49:35 GMT  
		Size: 7.4 MB (7354543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf723d5110ebe4304c08cfbef1e76e98f339720d07af8da91eb8e5378674059`  
		Last Modified: Wed, 03 Apr 2019 00:49:29 GMT  
		Size: 584.4 KB (584418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498962dec968d65213dc399c850212b89c661beda0d3b00fecbee950a2eba267`  
		Last Modified: Wed, 03 Apr 2019 00:50:18 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bf2556a0700994c533433c97efb86eb2ebc0b0fdbccdbce505882fae7b5c59`  
		Last Modified: Wed, 03 Apr 2019 00:50:18 GMT  
		Size: 74.3 KB (74280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a336709fb395c17ff847c108c1a489a3870065fe1c8c99ffc53476edf8e94e`  
		Last Modified: Wed, 03 Apr 2019 00:50:28 GMT  
		Size: 148.4 MB (148353039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3007e3c665e65b250598e952a3d4859796109a753ca9b343c2b3271d64f8aaee`  
		Last Modified: Wed, 03 Apr 2019 00:50:18 GMT  
		Size: 4.2 KB (4230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:6-alpine` - linux; arm variant v6

```console
$ docker pull solr@sha256:e1fec2df9ce8fe1a7ff6d8c4046b86221adecce7341d1ac55ab373982f398820
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.9 MB (210877632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1f9e1ae5853f6b387bbf9f4c5c27fca63cd3b803373ffdbb1dbd723c793b10a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:40:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:40:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 07:49:41 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 07:52:46 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 07:52:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 08:47:17 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 03 Apr 2019 08:47:18 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 03 Apr 2019 08:47:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 03 Apr 2019 08:47:23 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 03 Apr 2019 08:47:25 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 03 Apr 2019 08:52:59 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.5/solr-6.6.5.tgz SOLR_SHA256=fa65e922bc32d36ef65bee866095da563aa5ddd7e953798c06b6494572d51729 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 03 Apr 2019 08:52:59 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 08:53:00 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 03 Apr 2019 08:53:01 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Wed, 03 Apr 2019 08:53:03 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 03 Apr 2019 08:54:16 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Wed, 03 Apr 2019 08:54:17 GMT
COPY --chown=solr:solrdir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Wed, 03 Apr 2019 08:54:18 GMT
EXPOSE 8983
# Wed, 03 Apr 2019 08:54:18 GMT
WORKDIR /opt/solr
# Wed, 03 Apr 2019 08:54:19 GMT
USER solr
# Wed, 03 Apr 2019 08:54:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Apr 2019 08:54:19 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972acb4c659fffab6be0f752b78857f78dbda522970cf7946a5a622cf65f4797`  
		Last Modified: Wed, 03 Apr 2019 07:53:52 GMT  
		Size: 52.4 MB (52387444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed64681f188c4f80b8d47970b7e57a83b5bd65b0c6f2bbfbe2f254756ddf9254`  
		Last Modified: Wed, 03 Apr 2019 08:56:10 GMT  
		Size: 7.0 MB (6991247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0460065007bd03091748da1ea30748901940e44419a768ea8244e205120c4c`  
		Last Modified: Wed, 03 Apr 2019 08:56:06 GMT  
		Size: 572.5 KB (572541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6f01ae6c7d9c504f77291888d9747a26962f7f437874a060bc09f48eade077`  
		Last Modified: Wed, 03 Apr 2019 08:57:41 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912795a2ead9eeb58e380532079be534e830796db777ec3f88f7f1ee61ad228e`  
		Last Modified: Wed, 03 Apr 2019 08:57:40 GMT  
		Size: 74.3 KB (74340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:551c451224370a2c33c74e1dd5775d44b46e9e9eb728f3000ce615d197fe9339`  
		Last Modified: Wed, 03 Apr 2019 08:58:01 GMT  
		Size: 148.3 MB (148305607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac4aff895ba033afccb95f575eec76f0f99a7c0645401eb4dbd288036ad04f38`  
		Last Modified: Wed, 03 Apr 2019 08:57:40 GMT  
		Size: 4.3 KB (4258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:6-alpine` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:b322249558d52c732eca5568d1236692f6ac4250f34a1592a5e47b8abf8bc1ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.9 MB (213936142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ea2deeea39982a5ee41c7b04b1f0f0ea77261217fa0626e0f1ef2a06023e7c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 09:49:55 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 09:49:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 09:50:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 09:50:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 04:09:03 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:37:52 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:38:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 11:31:01 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 03 Apr 2019 11:31:02 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 03 Apr 2019 11:31:03 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 03 Apr 2019 11:31:08 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 03 Apr 2019 11:31:11 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 03 Apr 2019 11:35:19 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.5/solr-6.6.5.tgz SOLR_SHA256=fa65e922bc32d36ef65bee866095da563aa5ddd7e953798c06b6494572d51729 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 03 Apr 2019 11:35:19 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 11:35:20 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 03 Apr 2019 11:35:22 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Wed, 03 Apr 2019 11:35:25 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 03 Apr 2019 11:36:12 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Wed, 03 Apr 2019 11:36:14 GMT
COPY --chown=solr:solrdir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Wed, 03 Apr 2019 11:36:14 GMT
EXPOSE 8983
# Wed, 03 Apr 2019 11:36:15 GMT
WORKDIR /opt/solr
# Wed, 03 Apr 2019 11:36:16 GMT
USER solr
# Wed, 03 Apr 2019 11:36:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Apr 2019 11:36:17 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dc35c571266c194f6068f0540d063943a44ec79726311c42950083e6ab2460`  
		Last Modified: Fri, 08 Mar 2019 09:55:35 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d966274452f0f08a7fa71690eb7a8d0847f389e523c9842ad51121d5439b6a3d`  
		Last Modified: Wed, 03 Apr 2019 09:40:42 GMT  
		Size: 54.9 MB (54929195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dc95717f918f46e017b8e2df794c3b9b89ffe2f1ecb8c023d5257efcd5b35f`  
		Last Modified: Wed, 03 Apr 2019 11:38:35 GMT  
		Size: 7.4 MB (7366082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7642ea7150c1e75c7774e52fcbebc8c9aef395f494160c080fbaad16e9d182fe`  
		Last Modified: Wed, 03 Apr 2019 11:38:30 GMT  
		Size: 585.3 KB (585346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61825b71f36cb5da3a4f27a3a03bc5dfab55b0365ea98dbe34f06fef4c45eed7`  
		Last Modified: Wed, 03 Apr 2019 11:40:21 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20186af470051dd0786abcdc1eaac1042703444083db21066b55e45fc03e5469`  
		Last Modified: Wed, 03 Apr 2019 11:40:21 GMT  
		Size: 74.3 KB (74305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4f51d00c186029e535bb7b773311dde965ba74ee5b37933f74674e84b83f34`  
		Last Modified: Wed, 03 Apr 2019 11:40:43 GMT  
		Size: 148.3 MB (148287555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2446dae8eefadef8b11a731e15456fbcec1733add62074f755551cfea9488da3`  
		Last Modified: Wed, 03 Apr 2019 11:40:22 GMT  
		Size: 4.2 KB (4229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:6-alpine` - linux; s390x

```console
$ docker pull solr@sha256:6651a341f12f51d555ca438e71699dabcbee280a49bbf7e72029078623983f68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.7 MB (212734392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce3408f502313574cc54e140cddb7c265514264fc05e7bd119aa4822f5409e62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:02:40 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:02:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:02:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:02:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 11:49:46 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 11:49:46 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 11:49:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 11:49:52 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 12:11:30 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 28 Mar 2019 12:11:30 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Thu, 28 Mar 2019 12:11:31 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 28 Mar 2019 12:11:35 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Thu, 28 Mar 2019 12:11:37 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Thu, 28 Mar 2019 12:15:12 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.5/solr-6.6.5.tgz SOLR_SHA256=fa65e922bc32d36ef65bee866095da563aa5ddd7e953798c06b6494572d51729 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 12:15:13 GMT
ENV GOSU_VERSION=1.11
# Thu, 28 Mar 2019 12:15:13 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 28 Mar 2019 12:15:15 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Thu, 28 Mar 2019 12:15:18 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 28 Mar 2019 12:15:44 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Thu, 28 Mar 2019 12:15:45 GMT
COPY --chown=solr:solrdir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Thu, 28 Mar 2019 12:15:45 GMT
EXPOSE 8983
# Thu, 28 Mar 2019 12:15:46 GMT
WORKDIR /opt/solr
# Thu, 28 Mar 2019 12:15:47 GMT
USER solr
# Thu, 28 Mar 2019 12:15:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Mar 2019 12:15:48 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc974726c47232f0d4a4664c4fe09841c9a948a3e4a56abfe98770208fcc645`  
		Last Modified: Fri, 08 Mar 2019 04:04:06 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd30d3493ef1c50cdf283ce268e2a93881c8e726b7cf8e1c6e2f192b7e9ad19a`  
		Last Modified: Thu, 28 Mar 2019 11:53:46 GMT  
		Size: 51.5 MB (51504445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3217b4d39f31bdf50a940b9f6931cab97ac7ce6b67ac29a458b00c59cd4025e1`  
		Last Modified: Thu, 28 Mar 2019 11:53:41 GMT  
		Size: 2.2 MB (2191965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a402d0b33017278b45106bc5b599c60f4c21f1542c1cab4d052c7200de5cab8b`  
		Last Modified: Thu, 28 Mar 2019 12:20:33 GMT  
		Size: 7.5 MB (7483784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e661f18735e18adf9596622bad3f1c932f21176dd43288eb5095c867456ac7`  
		Last Modified: Thu, 28 Mar 2019 12:20:28 GMT  
		Size: 590.7 KB (590739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77fdc9ae8a22ef5d046b29017b6be7881389be5ecb6436bbe9dd9b9cbd41b53`  
		Last Modified: Thu, 28 Mar 2019 12:22:16 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7cb221b0054d7930cc79b8ea833e853ef5d17f0e10cbb89b9e1d67d8faebf48`  
		Last Modified: Thu, 28 Mar 2019 12:22:16 GMT  
		Size: 74.3 KB (74304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6895a3f153754065aa1ff998cdd9a63e34f3c57e36d9ae95e946a296f116184`  
		Last Modified: Thu, 28 Mar 2019 12:22:33 GMT  
		Size: 148.3 MB (148342129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1989635366d9731181af990936125a05f399ec005d50fabc9f8fa47dcf00378`  
		Last Modified: Thu, 28 Mar 2019 12:22:16 GMT  
		Size: 4.2 KB (4229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
