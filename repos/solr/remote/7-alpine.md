## `solr:7-alpine`

```console
$ docker pull solr@sha256:1ea3b7d202b9a242f2b8d5631c5a629f4637e49760d17688bfdadc04673285e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; s390x

### `solr:7-alpine` - linux; amd64

```console
$ docker pull solr@sha256:aae3b8077f3722fb50948240713abf36f23186eea67fedd9e6f3a985295ec400
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.1 MB (238057463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cf6c6a569aeb869726ea0b9bd9c4671a3dccc43713cf391d1c385379c3f2c51`
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
# Wed, 03 Apr 2019 00:46:56 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 03 Apr 2019 00:46:56 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 00:46:56 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 03 Apr 2019 00:46:57 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Wed, 03 Apr 2019 00:46:57 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 03 Apr 2019 00:47:13 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Wed, 03 Apr 2019 00:47:13 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 03 Apr 2019 00:47:14 GMT
EXPOSE 8983
# Wed, 03 Apr 2019 00:47:14 GMT
WORKDIR /opt/solr
# Wed, 03 Apr 2019 00:47:14 GMT
USER solr
# Wed, 03 Apr 2019 00:47:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Apr 2019 00:47:14 GMT
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
	-	`sha256:9c237b322db434787a949ad5aa69c586fcc7aa2751a8b3525812542511da11e2`  
		Last Modified: Wed, 03 Apr 2019 00:49:28 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2d40418f16291a74bd4b39eb6e02da84553f780735edc644f0f97bd24effc4`  
		Last Modified: Wed, 03 Apr 2019 00:49:28 GMT  
		Size: 74.3 KB (74282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b2f7dec00b58d6660620765ebbb48b1b177682cf9800c45ca2c3871cf4fdae`  
		Last Modified: Wed, 03 Apr 2019 00:49:39 GMT  
		Size: 172.4 MB (172365192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b9873222fe43c8fd1b1c659226610392a0586f4047b74b7135da6700f25ae6`  
		Last Modified: Wed, 03 Apr 2019 00:49:28 GMT  
		Size: 4.2 KB (4231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-alpine` - linux; arm variant v6

```console
$ docker pull solr@sha256:60a83db629c84d8044756c4306111ee20ba92b8a9b8d6d7537ba5aa2f28cb9c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234889305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5cb55595999aa7ebb77d538faedcefabc22719ca0846c0f638bc74444bf9d2a`
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
# Wed, 03 Apr 2019 08:47:26 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 03 Apr 2019 08:47:26 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 08:47:26 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 03 Apr 2019 08:47:28 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Wed, 03 Apr 2019 08:47:30 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 03 Apr 2019 08:48:55 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Wed, 03 Apr 2019 08:48:56 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 03 Apr 2019 08:48:56 GMT
EXPOSE 8983
# Wed, 03 Apr 2019 08:48:57 GMT
WORKDIR /opt/solr
# Wed, 03 Apr 2019 08:48:57 GMT
USER solr
# Wed, 03 Apr 2019 08:48:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Apr 2019 08:48:58 GMT
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
	-	`sha256:523aad86f20a2d664c9151f77314f0eb8d432241e1f5fe95a5c68e69bcf1e7a4`  
		Last Modified: Wed, 03 Apr 2019 08:56:06 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32455220223984ea6b6ab82dc879865de06d47c3dd6ea82bdbb7028fcc9bbe2e`  
		Last Modified: Wed, 03 Apr 2019 08:56:06 GMT  
		Size: 74.3 KB (74331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304f2408ed17167f60119944a2e716fd47883afd5734b5826de12de75d682d65`  
		Last Modified: Wed, 03 Apr 2019 08:56:29 GMT  
		Size: 172.3 MB (172317285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7a04869506901d23c700f349190e4acaff90ddcdb16657b2b22b351a8a609a`  
		Last Modified: Wed, 03 Apr 2019 08:56:06 GMT  
		Size: 4.3 KB (4264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-alpine` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:28e684e7d93efd1505959ada8746f69554451c22077e7b87d27362f2cd2a68a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.9 MB (237948826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff5cb131ef4b0da88f1cfd20970ce125699ff42e2187f12ce88ee4bcb7560a11`
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
# Wed, 03 Apr 2019 11:31:12 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 03 Apr 2019 11:31:13 GMT
ENV GOSU_VERSION=1.11
# Wed, 03 Apr 2019 11:31:14 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 03 Apr 2019 11:31:18 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Wed, 03 Apr 2019 11:31:24 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 03 Apr 2019 11:31:56 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Wed, 03 Apr 2019 11:31:57 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Wed, 03 Apr 2019 11:31:58 GMT
EXPOSE 8983
# Wed, 03 Apr 2019 11:31:58 GMT
WORKDIR /opt/solr
# Wed, 03 Apr 2019 11:31:59 GMT
USER solr
# Wed, 03 Apr 2019 11:32:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 03 Apr 2019 11:32:01 GMT
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
	-	`sha256:90ab36e9b7c24a6b77a0c0a73200606156f59399d8f06a91852207bbca2fc4ac`  
		Last Modified: Wed, 03 Apr 2019 11:38:31 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc8eae7e6367c79f56ecf022075c05fedbc42d724bfb95ac3e93fd2d6ed5330`  
		Last Modified: Wed, 03 Apr 2019 11:38:30 GMT  
		Size: 74.3 KB (74317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517987b8afe67a485b13a208c3e9658669b2233e7298d2e2303edb4de078ee10`  
		Last Modified: Wed, 03 Apr 2019 11:38:56 GMT  
		Size: 172.3 MB (172300224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83d89141d129b252be2759ebcd838b9eb63f1a17530cb441f2a876555ffab0a`  
		Last Modified: Wed, 03 Apr 2019 11:38:30 GMT  
		Size: 4.2 KB (4232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-alpine` - linux; s390x

```console
$ docker pull solr@sha256:ed0b0bc8fb29efd35dae21a9730f58ade5395e974cd2b6e567c94eaa811ffbee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236746400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca71da83469ed7024eeda12c98c573ca04e92d03d2fd1182759b1668cb1fcd5a`
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
# Thu, 28 Mar 2019 12:11:37 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 12:11:38 GMT
ENV GOSU_VERSION=1.11
# Thu, 28 Mar 2019 12:11:38 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 28 Mar 2019 12:11:40 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Thu, 28 Mar 2019 12:11:43 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 28 Mar 2019 12:12:09 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Thu, 28 Mar 2019 12:12:10 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Thu, 28 Mar 2019 12:12:10 GMT
EXPOSE 8983
# Thu, 28 Mar 2019 12:12:11 GMT
WORKDIR /opt/solr
# Thu, 28 Mar 2019 12:12:11 GMT
USER solr
# Thu, 28 Mar 2019 12:12:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Mar 2019 12:12:12 GMT
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
	-	`sha256:14b277611e63446db2999247dffca1e04c75b8f044990abcc538d79f77b2180c`  
		Last Modified: Thu, 28 Mar 2019 12:20:28 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75604199a5ab2daaed8664b0352551b203f90555b04a040fb970a77feaf2c940`  
		Last Modified: Thu, 28 Mar 2019 12:20:28 GMT  
		Size: 74.3 KB (74305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f72b25de24478d04e4db2f72f3a8a1e29a18a902b29ad501485b67dcf2e9149`  
		Last Modified: Thu, 28 Mar 2019 12:20:46 GMT  
		Size: 172.4 MB (172354136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd375cc6b7fb330143c81697b2fdac2445f9efcb1dc7962cdfaa61c15c67976`  
		Last Modified: Thu, 28 Mar 2019 12:20:28 GMT  
		Size: 4.2 KB (4230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
