## `solr:7-alpine`

```console
$ docker pull solr@sha256:f2d5601ba1322f0433880f3115a14f7612a7b1320f34bda3b165bf5186c4e45b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; s390x

### `solr:7-alpine` - linux; amd64

```console
$ docker pull solr@sha256:04150ca623ac2887295db932ca7c6e9520b59359ffb76ab62a903c225e9716e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.8 MB (232757548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f0637eed2f3e0c051b5a427057788fb8f3aaac668d5b8bbc8169d92644387bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 01:23:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:24:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 05 Sep 2018 01:24:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 01:24:27 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 01:24:27 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 01:24:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 05 Sep 2018 16:53:27 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Sep 2018 16:53:27 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Sep 2018 16:53:30 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 05 Sep 2018 16:53:32 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 05 Sep 2018 16:53:32 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.4.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.4.0/solr-7.4.0.tgz SOLR_SHA256=a50eac8dece0acb5e6f0d868c7868ce8174e299752356f3424a15aa39bd64407 SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 16:53:33 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 16:53:33 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 05 Sep 2018 16:53:34 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Wed, 05 Sep 2018 16:53:37 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 05 Sep 2018 16:53:57 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Wed, 05 Sep 2018 16:53:58 GMT
COPY dir:3ab6c2998615274979b7fe3c2f1554b0c63d5110555f3871ee3f56972484ccc6 in /opt/docker-solr/scripts 
# Wed, 05 Sep 2018 16:53:59 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Wed, 05 Sep 2018 16:53:59 GMT
EXPOSE 8983/tcp
# Wed, 05 Sep 2018 16:54:00 GMT
WORKDIR /opt/solr
# Wed, 05 Sep 2018 16:54:00 GMT
USER [solr]
# Wed, 05 Sep 2018 16:54:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 16:54:01 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146c373b4668ab06b15e7bed7d009c501c752b3de4c71491e4fc1a4b5d4d71a`  
		Last Modified: Wed, 05 Sep 2018 01:41:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f005771ae04a165e2a820ee9f99b43cf227c7577761b4eb0838fde7aeccd0a1c`  
		Last Modified: Wed, 05 Sep 2018 01:42:55 GMT  
		Size: 54.8 MB (54798238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f324e7ff8c4cdb356d7588600f02d3d62dc52f5f690a988fefeeeba774cf78`  
		Last Modified: Wed, 05 Sep 2018 17:06:31 GMT  
		Size: 7.1 MB (7118943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5b3c71eb7d91cb86898aec7ed06abd0acdc28f7ada958c2a0362d084ec0f23`  
		Last Modified: Wed, 05 Sep 2018 17:06:28 GMT  
		Size: 588.0 KB (587957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4785a98c93c5fef80552d7701f553a3ea29015a8516da53a13d4e3061fc8af11`  
		Last Modified: Wed, 05 Sep 2018 17:06:26 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e01413520684f0632ae3037cc81eab6b5ec3911413bafb68564fcfb938a770c`  
		Last Modified: Wed, 05 Sep 2018 17:06:26 GMT  
		Size: 74.4 KB (74424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e8d3142524aef96d5246e1c0c366fc54085e3bab20bf2d1796fd7aa136a1c0`  
		Last Modified: Wed, 05 Sep 2018 17:06:43 GMT  
		Size: 168.0 MB (167960436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5433bae2fc5b23873e6c77749dee22f9e27d032c76fcae4bd4f4e270507c15f2`  
		Last Modified: Wed, 05 Sep 2018 17:06:26 GMT  
		Size: 4.7 KB (4743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e15b23f9d2a86929560ebf90e856d724877e117666aee8fceb44770a4f07b290`  
		Last Modified: Wed, 05 Sep 2018 17:06:26 GMT  
		Size: 4.8 KB (4778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-alpine` - linux; s390x

```console
$ docker pull solr@sha256:adcec11f811ab48e39551cb93ad69302ca53a5f69194d47392aeb569954faef4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.8 MB (231796716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:154d2b95a1c9a47de66dcc6794a12f764c3f226e3253dca726f1ff9f162b69b2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 11:48:07 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 11:48:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 11:48:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 11 Jul 2018 11:48:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 11:48:25 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 11:48:25 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 11:48:27 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 11 Jul 2018 12:49:54 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 11 Jul 2018 12:49:54 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 11 Jul 2018 12:49:56 GMT
RUN apk add --no-cache         lsof         gnupg         procps         tar         bash
# Wed, 11 Jul 2018 12:49:57 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Wed, 11 Jul 2018 12:49:57 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.4.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.4.0/solr-7.4.0.tgz SOLR_SHA256=a50eac8dece0acb5e6f0d868c7868ce8174e299752356f3424a15aa39bd64407 SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 12:49:57 GMT
ENV GOSU_VERSION=1.10
# Wed, 11 Jul 2018 12:49:57 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 11 Jul 2018 12:49:58 GMT
RUN addgroup -S -g $SOLR_GID $SOLR_GROUP &&     adduser -S -u $SOLR_UID -G $SOLR_GROUP $SOLR_USER
# Wed, 11 Jul 2018 12:50:01 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 11 Jul 2018 12:50:16 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   apkArch="$(apk --print-arch | sed 's/x86_64/amd64/')";   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch";   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$apkArch.asc";   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -q $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -q $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Wed, 11 Jul 2018 12:50:16 GMT
COPY dir:3ab6c2998615274979b7fe3c2f1554b0c63d5110555f3871ee3f56972484ccc6 in /opt/docker-solr/scripts 
# Wed, 11 Jul 2018 12:50:17 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Wed, 11 Jul 2018 12:50:17 GMT
EXPOSE 8983/tcp
# Wed, 11 Jul 2018 12:50:17 GMT
WORKDIR /opt/solr
# Wed, 11 Jul 2018 12:50:17 GMT
USER [solr]
# Wed, 11 Jul 2018 12:50:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Jul 2018 12:50:18 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b948ae8f2138a45776e1be04e263eed4e16432ba2b82c7c0e4a71afc6f9c878c`  
		Last Modified: Wed, 11 Jul 2018 11:50:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9396fcd85e93dd30a4c0955f72660d20054ddf603de33f3cb4140f52552ce7`  
		Last Modified: Wed, 11 Jul 2018 11:51:10 GMT  
		Size: 53.6 MB (53581351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9f6f29c1f4b15e5686ec44bc7688fe11859da4e43a442b1212451382cc450f`  
		Last Modified: Wed, 11 Jul 2018 12:53:33 GMT  
		Size: 7.3 MB (7276806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf21b1ab963b717540c3b3071e713b3ff5ec1009f618c58f0e8f78482a67d4c`  
		Last Modified: Wed, 11 Jul 2018 12:53:31 GMT  
		Size: 599.0 KB (599002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a91c615286510717ca56fdf897155aabd17a20ef9be08ff6de118864019691`  
		Last Modified: Wed, 11 Jul 2018 12:53:30 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39df41fb1f7538d22ac6d233b358a8c7645ac6d9198b1c6087d97aab7da74259`  
		Last Modified: Wed, 11 Jul 2018 12:53:30 GMT  
		Size: 74.4 KB (74422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f9e873bcd397f3c54f9c6dc8156dbc63dc210914a809dae4306ba38d31df4c`  
		Last Modified: Wed, 11 Jul 2018 12:53:49 GMT  
		Size: 167.9 MB (167946468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:977164be60096393ff93881cd1c858e8e014302da859ec9afe775f47c5ddde69`  
		Last Modified: Wed, 11 Jul 2018 12:53:30 GMT  
		Size: 4.8 KB (4751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cac80fa22ce552569db116fe93d9c276d0493e73a8eb4e513c9b9e2025205e7`  
		Last Modified: Wed, 11 Jul 2018 12:53:30 GMT  
		Size: 4.8 KB (4781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
