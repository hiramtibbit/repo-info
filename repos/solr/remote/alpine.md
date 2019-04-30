## `solr:alpine`

```console
$ docker pull solr@sha256:eed6dbd32b3ea72469d275c1a893150407677dd852aa411fb637784faab85e2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `solr:alpine` - linux; amd64

```console
$ docker pull solr@sha256:14f4b48a423e94d02d2f9130e9476c1f6ddbb218a3c6939ff185248f8643c17f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.7 MB (238700997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f395063581173a3af8dc302e824aebd369640f7f89e3f9cc9ed4e448e31cff6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 01:52:32 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 01:52:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 01:52:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Apr 2019 01:52:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 01:52:54 GMT
ENV JAVA_VERSION=8u201
# Wed, 10 Apr 2019 01:52:54 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 10 Apr 2019 01:52:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Apr 2019 03:38:19 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 10 Apr 2019 03:38:20 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 10 Apr 2019 03:38:20 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 29 Apr 2019 17:40:29 GMT
RUN apk add --no-cache         acl         bash         gnupg         lsof         procps         tar
# Mon, 29 Apr 2019 17:40:30 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Mon, 29 Apr 2019 17:40:30 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.0.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.0.0/solr-8.0.0.tgz SOLR_SHA256=0e6392d3b980ab917c731b054101aafcebceacc0e5063cb1e305aeeaec911d12 SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Mon, 29 Apr 2019 17:40:30 GMT
ENV GOSU_VERSION=1.11
# Mon, 29 Apr 2019 17:40:30 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 29 Apr 2019 17:40:31 GMT
RUN addgroup -S -g "$SOLR_GID" "$SOLR_GROUP" &&     adduser -S -u "$SOLR_UID" -G "$SOLR_GROUP" "$SOLR_USER"
# Mon, 29 Apr 2019 17:40:32 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 29 Apr 2019 17:40:47 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(apk --print-arch | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -q "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -q "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   mkdir /etc/default &&   chown root: /etc/default &&   chmod 0755 /etc/default &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown solr:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e "/-Dsolr.clustering.enabled=true/ a SOLR_OPTS=\"\$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60\"" /etc/default/solr.in.sh &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Mon, 29 Apr 2019 17:40:47 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Mon, 29 Apr 2019 17:40:47 GMT
VOLUME [/var/solr]
# Mon, 29 Apr 2019 17:40:48 GMT
EXPOSE 8983
# Mon, 29 Apr 2019 17:40:48 GMT
WORKDIR /opt/solr
# Mon, 29 Apr 2019 17:40:48 GMT
USER solr
# Mon, 29 Apr 2019 17:40:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Apr 2019 17:40:48 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e12771959adeb3408e625492accf845401aa66bcca638859a6b34176d753d62`  
		Last Modified: Wed, 10 Apr 2019 01:57:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae272eb2814b212db0ef2f5b8db4be474597598efb779c8c1c4073d507939bc6`  
		Last Modified: Wed, 10 Apr 2019 01:57:42 GMT  
		Size: 54.9 MB (54918805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9b2040b6937499a953125bed35f1808fb6378bce02f3026a78fe12525177304`  
		Last Modified: Mon, 29 Apr 2019 17:50:03 GMT  
		Size: 7.4 MB (7424562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300905839f2b5aef38dd08effa52fc74b418c4c7a1154eaee3d7b356951242f5`  
		Last Modified: Mon, 29 Apr 2019 17:49:59 GMT  
		Size: 585.4 KB (585388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37dc6fabd38e96bc867cc4ea0d3cf2fb2155fc86a784cf972f55c943dfcf3077`  
		Last Modified: Mon, 29 Apr 2019 17:50:00 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43027095c7c31567dcf30a724fa519ff15ba808d775a934842b8bfbf7e544d8b`  
		Last Modified: Mon, 29 Apr 2019 17:49:59 GMT  
		Size: 75.4 KB (75369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c92c5dc1c0fdd82abebe0858a2a50752ef0158afcb2d3a7b948a3aca0f22ab`  
		Last Modified: Mon, 29 Apr 2019 17:50:14 GMT  
		Size: 172.9 MB (172934560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c9c3e8cfe264ac1867512f634a0bad4b705c30dccf3aa422f0fa8d28343d10`  
		Last Modified: Mon, 29 Apr 2019 17:49:59 GMT  
		Size: 3.8 KB (3813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:alpine` - linux; arm variant v6

```console
$ docker pull solr@sha256:1b7bddf864eae129926206ec78b6e14ce9dd5fb899ce4cc65aab4442ba1a7edb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235529854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d94c3000f49b686c66b0e7c9f847dd20016f575cd3eecd1990781ecdd89de9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:15:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 08:16:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 08:16:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Apr 2019 08:16:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 08:16:13 GMT
ENV JAVA_VERSION=8u201
# Wed, 10 Apr 2019 08:16:14 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 10 Apr 2019 08:16:19 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Apr 2019 09:52:02 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 10 Apr 2019 09:52:02 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 10 Apr 2019 09:52:02 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Apr 2019 07:53:09 GMT
RUN apk add --no-cache         acl         bash         gnupg         lsof         procps         tar
# Tue, 30 Apr 2019 07:53:11 GMT
RUN apk add --no-cache ca-certificates wget &&         update-ca-certificates
# Tue, 30 Apr 2019 07:53:11 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.0.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.0.0/solr-8.0.0.tgz SOLR_SHA256=0e6392d3b980ab917c731b054101aafcebceacc0e5063cb1e305aeeaec911d12 SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Tue, 30 Apr 2019 07:53:12 GMT
ENV GOSU_VERSION=1.11
# Tue, 30 Apr 2019 07:53:12 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 30 Apr 2019 07:53:13 GMT
RUN addgroup -S -g "$SOLR_GID" "$SOLR_GROUP" &&     adduser -S -u "$SOLR_UID" -G "$SOLR_GROUP" "$SOLR_USER"
# Tue, 30 Apr 2019 07:53:15 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 30 Apr 2019 07:55:10 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(apk --print-arch | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -q "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -q "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   mkdir /etc/default &&   chown root: /etc/default &&   chmod 0755 /etc/default &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown solr:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e "/-Dsolr.clustering.enabled=true/ a SOLR_OPTS=\"\$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60\"" /etc/default/solr.in.sh &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Tue, 30 Apr 2019 07:55:11 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Tue, 30 Apr 2019 07:55:11 GMT
VOLUME [/var/solr]
# Tue, 30 Apr 2019 07:55:11 GMT
EXPOSE 8983
# Tue, 30 Apr 2019 07:55:12 GMT
WORKDIR /opt/solr
# Tue, 30 Apr 2019 07:55:12 GMT
USER solr
# Tue, 30 Apr 2019 07:55:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 07:55:13 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740f9654bf3d64555b0034839bc01523005f3494bc52b01109cf0ceb7de78ece`  
		Last Modified: Wed, 10 Apr 2019 08:17:28 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e44c03e5dbccf9684eecd73adda46344a7ef33a1ef56568391eb8d1bb5766d4`  
		Last Modified: Wed, 10 Apr 2019 08:18:01 GMT  
		Size: 52.4 MB (52387331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1995a6294f9cf6d05334efff12cf0bee4149e65b94261048bc296ae3c79a0448`  
		Last Modified: Tue, 30 Apr 2019 08:04:00 GMT  
		Size: 7.1 MB (7059430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d1cfcdba36de952dc14c3ac277e8dbcad67f7bea229dd89bcdf321bdddc056`  
		Last Modified: Tue, 30 Apr 2019 08:03:56 GMT  
		Size: 573.5 KB (573484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40df2105c5810326021a9939d208f53c7cce26e580cfd70fcc34c4e667d481a1`  
		Last Modified: Tue, 30 Apr 2019 08:03:56 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8732158fa6e4f8669894bf4e0052076860af0884ea37618eb099f3242094151c`  
		Last Modified: Tue, 30 Apr 2019 08:03:56 GMT  
		Size: 75.4 KB (75432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd3458670c671b1cbd640959b9efaf28ea782d41d2da566afce9fe55a631f6e`  
		Last Modified: Tue, 30 Apr 2019 08:04:19 GMT  
		Size: 172.9 MB (172885375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3ea3e8e81b16e88c8d9a89cc270f06f1abddba00ed781429a676698fe21bf0`  
		Last Modified: Tue, 30 Apr 2019 08:03:56 GMT  
		Size: 3.8 KB (3840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
