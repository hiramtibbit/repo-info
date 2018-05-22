## `jetty:9-alpine`

```console
$ docker pull jetty@sha256:770dcdabc1a748ef666782990a1336543ab9fe4e8ef445a9212e4194b03fde64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `jetty:9-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:e9eee839ab9a4ab4fb5b8ece09f706d73d9b16a16ba6f648d90fe920d3f0e7ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64957694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e374463672d6360632892ac24459fedbf6c3a199e8e598c23085264fd5be59`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:08:55 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Wed, 10 Jan 2018 08:08:55 GMT
ENV JETTY_HOME=/usr/local/jetty
# Wed, 10 Jan 2018 08:09:04 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 08:09:05 GMT
RUN mkdir -p "$JETTY_HOME"
# Wed, 10 Jan 2018 08:09:15 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Thu, 22 Mar 2018 02:43:46 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:43:57 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:43:57 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:43:58 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:43:58 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:44:03 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:44:03 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:44:04 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:44:04 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:44:05 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:44:05 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:44:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:44:05 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e13391b3ecf9aadc6968371a4f783b8dacf673035afd804a877ac29ce481aac`  
		Last Modified: Wed, 10 Jan 2018 08:11:26 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc9a98da51f7d11a5a36433e908f3d3853158b15186bd21dc38bd66924d3a963`  
		Last Modified: Wed, 10 Jan 2018 08:11:25 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a4259f5f32446975ebb6eb10172917f1dd57132104ffe1ac6a00025ea96cdb`  
		Last Modified: Thu, 22 Mar 2018 02:50:14 GMT  
		Size: 8.4 MB (8433083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069251f2bd68e94fb4bb0ec4bb7d4d02c7afa389c8a0551e3669c9b459204b1a`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947a5a0d9626b38e3b979467a64e8437684f4ad8bca95478f3fcb668c622ed92`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9de715454250d52b9ad4cd4db1f96480ef68312cccc84decb7bc826a8bc0d33`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25c1aac58f097a6782b04b36c309565b8d68a52d28932aaffb0e48072c25388`  
		Last Modified: Thu, 22 Mar 2018 02:50:12 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-alpine` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:59f090bb9dee7117bfeb1666e3bd81de8914dea0f00e82d8abccc2f3154163ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.6 MB (63594258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b819d4469ef21f2c58b03f0f46d6f820fa82b42c742c2865d3a18b3c8acaec8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:05:19 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:05:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:11:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 11:11:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:11:06 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 11:11:07 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 11:11:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 22 May 2018 00:00:10 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Tue, 22 May 2018 00:00:10 GMT
ENV JETTY_HOME=/usr/local/jetty
# Tue, 22 May 2018 00:00:11 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 22 May 2018 00:00:13 GMT
RUN mkdir -p "$JETTY_HOME"
# Tue, 22 May 2018 00:00:13 GMT
WORKDIR /usr/local/jetty
# Tue, 22 May 2018 00:00:14 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Tue, 22 May 2018 00:00:14 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Tue, 22 May 2018 00:00:15 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 22 May 2018 00:00:25 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 22 May 2018 00:00:25 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 22 May 2018 00:00:27 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 22 May 2018 00:00:27 GMT
WORKDIR /var/lib/jetty
# Tue, 22 May 2018 00:00:31 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 22 May 2018 00:00:31 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 22 May 2018 00:00:33 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 22 May 2018 00:00:34 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 22 May 2018 00:00:34 GMT
USER [jetty]
# Tue, 22 May 2018 00:00:35 GMT
EXPOSE 8080/tcp
# Tue, 22 May 2018 00:00:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 May 2018 00:00:36 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4b770fee7695d8ca568c04817dd4e9d077997d617c75c75c6c47038c837df1`  
		Last Modified: Tue, 05 Dec 2017 11:12:04 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562a715d8887d3b429fa072a31bbf912f1897d49cf115a980301e3a880716eb6`  
		Last Modified: Tue, 05 Dec 2017 11:16:43 GMT  
		Size: 53.2 MB (53167047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0954a1879374ad95c22c4047606cffcca6f6a2897948c1244914e22437bdec`  
		Last Modified: Tue, 22 May 2018 00:05:14 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82081078330682b8d425a2ad59dc3a28cfe954bead15bde1aefed29a567802c2`  
		Last Modified: Tue, 22 May 2018 00:05:14 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05bd9ce9da512ae4fbf9e8a5a092b71aa9164f492705622658d76ba1ea2959d8`  
		Last Modified: Tue, 22 May 2018 00:05:13 GMT  
		Size: 8.4 MB (8433057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02eba06acceb6cd3ccd3d4f843efa218e1706b965e5a615c26d7a0682d5ea055`  
		Last Modified: Tue, 22 May 2018 00:05:12 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33b28c2f677f517b41f65623d235bb437a0dccef15a54eecfadf948a33ebb44`  
		Last Modified: Tue, 22 May 2018 00:05:12 GMT  
		Size: 2.0 KB (1989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa9257b86b7fa166844b95c96fe5f7c1486b4d2ca5d6628b04ec8b87ff08d3e`  
		Last Modified: Tue, 22 May 2018 00:05:11 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae5b8d0833d909ffb9b937c7c11f07315707ca2d12fb194c49c1ffd591ea6cc`  
		Last Modified: Tue, 22 May 2018 00:05:11 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-alpine` - linux; 386

```console
$ docker pull jetty@sha256:55bc2af5b77ea96b70bd3b8d7798786c669ab1f5dcc512a79dd3ab4f2e751dd7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65692913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f08f91183fe42437ea341a7db355ba883d0045a8b8429350661775c6258a5b1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Sat, 14 Apr 2018 02:57:07 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:57:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:57:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 14 Apr 2018 02:57:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 14 Apr 2018 02:57:09 GMT
ENV JAVA_VERSION=8u151
# Sat, 14 Apr 2018 02:57:09 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Sat, 14 Apr 2018 02:57:36 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 21 May 2018 23:59:45 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Mon, 21 May 2018 23:59:46 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 21 May 2018 23:59:46 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 21 May 2018 23:59:46 GMT
RUN mkdir -p "$JETTY_HOME"
# Mon, 21 May 2018 23:59:47 GMT
WORKDIR /usr/local/jetty
# Mon, 21 May 2018 23:59:47 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Mon, 21 May 2018 23:59:47 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Mon, 21 May 2018 23:59:47 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Mon, 21 May 2018 23:59:57 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Mon, 21 May 2018 23:59:57 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 21 May 2018 23:59:58 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 21 May 2018 23:59:58 GMT
WORKDIR /var/lib/jetty
# Tue, 22 May 2018 00:00:03 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 22 May 2018 00:00:03 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 22 May 2018 00:00:03 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 22 May 2018 00:00:04 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 22 May 2018 00:00:04 GMT
USER [jetty]
# Tue, 22 May 2018 00:00:04 GMT
EXPOSE 8080/tcp
# Tue, 22 May 2018 00:00:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 22 May 2018 00:00:05 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55638824f0b7939e7d7d4057f225ab9a2da2029a691af45e4d58bfc4e7db3377`  
		Last Modified: Sat, 14 Apr 2018 03:20:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271bf319136a138285a2c20d31d234174bfcd3133ff129f7605f0024d7e04e89`  
		Last Modified: Sat, 14 Apr 2018 03:20:26 GMT  
		Size: 55.1 MB (55128265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db4ae185917d2cccb6f0dc9503ec6da55e2f958ce0d283f42704d6abeb86dd27`  
		Last Modified: Tue, 22 May 2018 00:02:48 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6699b919a014e2c7d4d345692a7723ee5d0e0e708f2b4dea36427268a5d56cc`  
		Last Modified: Tue, 22 May 2018 00:02:50 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f468f098395af07ed3c8354823c03a7b246e5c9992e8452c44023834ef2a40c`  
		Last Modified: Tue, 22 May 2018 00:02:50 GMT  
		Size: 8.4 MB (8433127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f2b855da2834905359da3561922fcf297d6bb67efc84f38ace12df60e83b7c`  
		Last Modified: Tue, 22 May 2018 00:02:48 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccaddc940ee889ccf32391682a14880845135cd722b04b7e40080c73a3f90ddd`  
		Last Modified: Tue, 22 May 2018 00:02:50 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd575ddd270b717ef9ec8cfe802807c18be0e43644ee80647b318af4f2017d9`  
		Last Modified: Tue, 22 May 2018 00:02:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f2147af81b01638270aaee5416f6201a124cd042154a01a85a024b79738283`  
		Last Modified: Tue, 22 May 2018 00:02:48 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-alpine` - linux; ppc64le

```console
$ docker pull jetty@sha256:ebbd27f4d65511d3a15f5995af7672a836d1e208232c8846ab9b852ce1c126a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64270450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d567512d8fa07d4d699c2869a71204c5d8dcb006b9166c2554bc6ef066ee5d92`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 11:47:54 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 11:47:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 11:50:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 11:50:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 11:50:14 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 11:50:15 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 11:50:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 21 May 2018 23:52:41 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Mon, 21 May 2018 23:52:41 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 21 May 2018 23:52:42 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 21 May 2018 23:52:43 GMT
RUN mkdir -p "$JETTY_HOME"
# Mon, 21 May 2018 23:52:44 GMT
WORKDIR /usr/local/jetty
# Mon, 21 May 2018 23:52:44 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Mon, 21 May 2018 23:52:45 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Mon, 21 May 2018 23:52:45 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Mon, 21 May 2018 23:52:56 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Mon, 21 May 2018 23:52:57 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 21 May 2018 23:52:59 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 21 May 2018 23:52:59 GMT
WORKDIR /var/lib/jetty
# Mon, 21 May 2018 23:53:03 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 21 May 2018 23:53:03 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 21 May 2018 23:53:05 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 21 May 2018 23:53:06 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Mon, 21 May 2018 23:53:06 GMT
USER [jetty]
# Mon, 21 May 2018 23:53:07 GMT
EXPOSE 8080/tcp
# Mon, 21 May 2018 23:53:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 21 May 2018 23:53:09 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d80117bba7af560896439d844c0f3998317292d41faacc0a842ce3dd7e14605`  
		Last Modified: Tue, 05 Dec 2017 11:51:04 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc4291fffa1792d7db51ab729de6c46cbdbc6751a1277c001157aa94b9b2323`  
		Last Modified: Tue, 05 Dec 2017 11:53:56 GMT  
		Size: 53.8 MB (53750322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4210b5b39d4e312fd5bcd072138193a947608c72778f6d1de205d379457e30ff`  
		Last Modified: Tue, 22 May 2018 00:01:19 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b62c3685f1ccc932f3d9d61c2d1e6496780afb54c83801e36433db23ce81e46`  
		Last Modified: Tue, 22 May 2018 00:01:18 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb7044adb981ce45660278f030eece6baa267a8d947a298e52589bafa58d1f0`  
		Last Modified: Tue, 22 May 2018 00:01:16 GMT  
		Size: 8.4 MB (8433196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a376bee109de406968fa6735914643b12c87c41c9aaf8a935b7371ffc834ee5`  
		Last Modified: Tue, 22 May 2018 00:01:15 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c1e2a3d948761524eb4df2369dc05fef2cabfaa03114405fbe6eb6fabcf49d`  
		Last Modified: Tue, 22 May 2018 00:01:15 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2ec1493940e722a92784f1aea06f5139e03b9a36e0db338ad2aa53ea366099`  
		Last Modified: Tue, 22 May 2018 00:01:15 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5985ea9dbebdebcbf6d578a22fbbf7519ce43069909e8c5f8802cbfb38b98141`  
		Last Modified: Tue, 22 May 2018 00:01:15 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-alpine` - linux; s390x

```console
$ docker pull jetty@sha256:31fad02fca86d0c7cda5f253d5f6430872f2a36eff083c1cfe8eaf0adda68a63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63926648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2713b580f75527dad2cf81a634fbddf6db1c8895fe7a1aa11848b28b99771b8c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Tue, 05 Dec 2017 17:57:32 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 17:57:37 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 17:57:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 21 May 2018 23:51:19 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Mon, 21 May 2018 23:51:19 GMT
ENV JETTY_HOME=/usr/local/jetty
# Mon, 21 May 2018 23:51:19 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 21 May 2018 23:51:20 GMT
RUN mkdir -p "$JETTY_HOME"
# Mon, 21 May 2018 23:51:20 GMT
WORKDIR /usr/local/jetty
# Mon, 21 May 2018 23:51:20 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Mon, 21 May 2018 23:51:20 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Mon, 21 May 2018 23:51:21 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Mon, 21 May 2018 23:51:26 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Mon, 21 May 2018 23:51:26 GMT
ENV JETTY_BASE=/var/lib/jetty
# Mon, 21 May 2018 23:51:27 GMT
RUN mkdir -p "$JETTY_BASE"
# Mon, 21 May 2018 23:51:27 GMT
WORKDIR /var/lib/jetty
# Mon, 21 May 2018 23:51:29 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Mon, 21 May 2018 23:51:29 GMT
ENV TMPDIR=/tmp/jetty
# Mon, 21 May 2018 23:51:30 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Mon, 21 May 2018 23:51:30 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Mon, 21 May 2018 23:51:30 GMT
USER [jetty]
# Mon, 21 May 2018 23:51:31 GMT
EXPOSE 8080/tcp
# Mon, 21 May 2018 23:51:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 21 May 2018 23:51:31 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:cab7f5e8ff77bb713c36a7527b26ce321688ffc83c72a16c9488eef4c2a39327`  
		Last Modified: Tue, 05 Dec 2017 18:00:02 GMT  
		Size: 53.3 MB (53303048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1343d00e4dd7f4a077d944278b8aee07f1868df54dd1304ad21fda86ab997a`  
		Last Modified: Tue, 22 May 2018 00:01:00 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc278385586307a3e9c1680c247cb7e7de0a319088927ff241876dafffcee02`  
		Last Modified: Tue, 22 May 2018 00:00:59 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7dea19fdc9ac829050625b6e0ff6644913734fd45d7c6a9889e2bb654e63c2a`  
		Last Modified: Tue, 22 May 2018 00:00:59 GMT  
		Size: 8.4 MB (8433066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b436a6fe297f1c72e84ee76b57e2e449115b0fa3cb4275a724d7a2db78d66a3d`  
		Last Modified: Tue, 22 May 2018 00:00:58 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41023ce1ceb7f86117b3c3edd24271e5c8adca8b014fd0f0f11010607d2f19e`  
		Last Modified: Tue, 22 May 2018 00:00:58 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b32888923395ae6976d869822d55ad8543459d51cb5b07017d3262816efc434`  
		Last Modified: Tue, 22 May 2018 00:00:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ca62730ddaa021713fbb8decdad2ef49537c14eae94e94a17e9e6040c11611`  
		Last Modified: Tue, 22 May 2018 00:00:58 GMT  
		Size: 1.4 KB (1386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
