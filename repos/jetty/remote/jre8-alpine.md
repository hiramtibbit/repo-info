## `jetty:jre8-alpine`

```console
$ docker pull jetty@sha256:7b2d716223983a03ac01c0004d0caf38347812f3470850fc08b6054f0c21735e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `jetty:jre8-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:36a40fcc124519edf046ab09bc7ef9c3c1b8509d275f2b930fdc570d88f49d27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (65040744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c074c65bd67c8729702be88fcadab5357ced534478eb5e45d93f899b4608553`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

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
# Sat, 16 Jun 2018 08:15:54 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Sat, 16 Jun 2018 08:15:55 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 16 Jun 2018 08:15:55 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 08:15:56 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 16 Jun 2018 08:15:56 GMT
WORKDIR /usr/local/jetty
# Sat, 16 Jun 2018 08:15:56 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Sat, 16 Jun 2018 08:15:56 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Sat, 16 Jun 2018 08:15:56 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 16 Jun 2018 08:16:01 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 16 Jun 2018 08:16:01 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 16 Jun 2018 08:16:02 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 16 Jun 2018 08:16:02 GMT
WORKDIR /var/lib/jetty
# Sat, 16 Jun 2018 08:16:04 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 16 Jun 2018 08:16:04 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 16 Jun 2018 08:16:05 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 16 Jun 2018 08:16:05 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Sat, 16 Jun 2018 08:16:06 GMT
USER [jetty]
# Sat, 16 Jun 2018 08:16:06 GMT
EXPOSE 8080/tcp
# Sat, 16 Jun 2018 08:16:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 16 Jun 2018 08:16:06 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
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
	-	`sha256:1ee83fbaf3cbf0212c85f2a3d499c4a0d456f46c2db4c247fd320b10381aa1e2`  
		Last Modified: Sat, 16 Jun 2018 08:17:08 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95bb413617b232eb8d3eea589089ec7c1760e6ce2f01b8f823ac2600fb4c239`  
		Last Modified: Sat, 16 Jun 2018 08:17:08 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06748294404e1202a3e90fe8bf410e71353797b9ba76e5282a87c4086dd88fcb`  
		Last Modified: Sat, 16 Jun 2018 08:17:07 GMT  
		Size: 8.4 MB (8433167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c2bcc360a0a4beed40bf7c1a078debe057fc9b584d1ac5cc82c7d9b4216ac8`  
		Last Modified: Sat, 16 Jun 2018 08:17:06 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a49d37d34abba7ddcf7d83bb87fc992f03ff28ec9222f57e189326f3aa92423`  
		Last Modified: Sat, 16 Jun 2018 08:17:06 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598bfbe07ad851ccf12f5a2c265662305d96e8155b072e76b9b0acd1d3067ac7`  
		Last Modified: Sat, 16 Jun 2018 08:17:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12604299436a5fe2b1cf64f7a8b1632f7d6a7f48e9eab124175e0a4bca3877ff`  
		Last Modified: Sat, 16 Jun 2018 08:17:06 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre8-alpine` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:595c7e5afcde1afa74457f602976c020172fec79613f2796a944a18a99f0e6a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.6 MB (63649162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba6d8301236f09b798b9e8d3352240dd9f00f8fa3d09e770f157668cdb3846b`
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
# Sat, 16 Jun 2018 09:49:06 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 09:49:07 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 16 Jun 2018 09:49:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 16 Jun 2018 10:10:35 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Sat, 16 Jun 2018 10:10:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 16 Jun 2018 10:10:36 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 10:10:38 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 16 Jun 2018 10:10:39 GMT
WORKDIR /usr/local/jetty
# Sat, 16 Jun 2018 10:10:39 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Sat, 16 Jun 2018 10:10:40 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Sat, 16 Jun 2018 10:10:41 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 16 Jun 2018 10:10:51 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 16 Jun 2018 10:10:51 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 16 Jun 2018 10:10:53 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 16 Jun 2018 10:10:54 GMT
WORKDIR /var/lib/jetty
# Sat, 16 Jun 2018 10:10:57 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 16 Jun 2018 10:10:58 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 16 Jun 2018 10:11:00 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 16 Jun 2018 10:11:01 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Sat, 16 Jun 2018 10:11:02 GMT
USER [jetty]
# Sat, 16 Jun 2018 10:11:03 GMT
EXPOSE 8080/tcp
# Sat, 16 Jun 2018 10:11:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 16 Jun 2018 10:11:04 GMT
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
	-	`sha256:ca7c06fed0b115b921e7e7170c8303659f1c9d79b1c9c83fe5d22738542f99d0`  
		Last Modified: Sat, 16 Jun 2018 09:52:28 GMT  
		Size: 53.2 MB (53221880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4300714084441e856f096821c4f61e360614d3636b775967921f75a96e7199b2`  
		Last Modified: Sat, 16 Jun 2018 10:12:19 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc4e6249c685c4d94000d58e5b5fd3e08d593379ffacf943a7f8f36ced94c9e`  
		Last Modified: Sat, 16 Jun 2018 10:12:19 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2457892fb420aacca090b93de0c5bc60b738f886d0f92583c92f042f5b7f06f4`  
		Last Modified: Sat, 16 Jun 2018 10:12:19 GMT  
		Size: 8.4 MB (8433125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0901a1b71467ab20889b07d1d01add1a5460bb5d9d329b91861115d19a1dac9f`  
		Last Modified: Sat, 16 Jun 2018 10:12:17 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db07a2149a05f420176e7395baf85166daaf81620886f1eb502c23dace137e3`  
		Last Modified: Sat, 16 Jun 2018 10:12:18 GMT  
		Size: 2.0 KB (1994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16dd9de252095d7f05f00f1e19616b5274ed48b9149f34cb58625c075bea3b59`  
		Last Modified: Sat, 16 Jun 2018 10:12:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44c49ce75eecdf24445235312bf56e41318446035a1d392e1a9226f3f3119d3`  
		Last Modified: Sat, 16 Jun 2018 10:12:17 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre8-alpine` - linux; 386

```console
$ docker pull jetty@sha256:8a324d14daa6b155a21b5b766350b5db53ef1477e7815ad1229b24d0962dc27e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65692891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4321efeac9bfca6870fa56ca74659202c6c3902cc37e0a6eecb5a5c1bc026641`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:26 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Jun 2018 06:57:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 10:39:41 GMT
ENV LANG=C.UTF-8
# Fri, 01 Jun 2018 10:39:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Jun 2018 10:39:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 01 Jun 2018 10:39:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Jun 2018 10:39:42 GMT
ENV JAVA_VERSION=8u151
# Fri, 01 Jun 2018 10:39:42 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Fri, 01 Jun 2018 10:39:53 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 01 Jun 2018 16:09:11 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Fri, 01 Jun 2018 16:09:12 GMT
ENV JETTY_HOME=/usr/local/jetty
# Fri, 01 Jun 2018 16:09:12 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Jun 2018 16:09:12 GMT
RUN mkdir -p "$JETTY_HOME"
# Fri, 01 Jun 2018 16:09:13 GMT
WORKDIR /usr/local/jetty
# Fri, 01 Jun 2018 16:09:13 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Fri, 01 Jun 2018 16:09:13 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Fri, 01 Jun 2018 16:09:13 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Fri, 01 Jun 2018 16:09:59 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Fri, 01 Jun 2018 16:09:59 GMT
ENV JETTY_BASE=/var/lib/jetty
# Fri, 01 Jun 2018 16:10:00 GMT
RUN mkdir -p "$JETTY_BASE"
# Fri, 01 Jun 2018 16:10:00 GMT
WORKDIR /var/lib/jetty
# Fri, 01 Jun 2018 16:10:02 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Fri, 01 Jun 2018 16:10:02 GMT
ENV TMPDIR=/tmp/jetty
# Fri, 01 Jun 2018 16:10:03 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Fri, 01 Jun 2018 16:10:03 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Fri, 01 Jun 2018 16:10:04 GMT
USER [jetty]
# Fri, 01 Jun 2018 16:10:04 GMT
EXPOSE 8080/tcp
# Fri, 01 Jun 2018 16:10:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Jun 2018 16:10:04 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:061a9db3c9e4f3bc32618a5f1a7e2b8aefb20fcc48f8be709bc7f7eabe61d003`  
		Last Modified: Fri, 01 Jun 2018 06:57:51 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730d81ac3b103a2b66d5e57cd18c6079b49738517c93f83aa9bcc442da1f2b21`  
		Last Modified: Fri, 01 Jun 2018 10:42:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38aa4e05a05361475b30d39285d6c6909b468faa585fea375dd69bd2b0f01af7`  
		Last Modified: Fri, 01 Jun 2018 10:42:20 GMT  
		Size: 55.1 MB (55128231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:098542d9441437180dea44d812f7ce25feb822210269d09f9601d2cdd082590b`  
		Last Modified: Fri, 01 Jun 2018 16:11:18 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:548d6befa13b29be4a9a90e6ab281f22f61af6eb28e9a4393d67c5c8f40ab062`  
		Last Modified: Fri, 01 Jun 2018 16:11:13 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ca7de7a091244495206a9fecf10fcab3eabc6dcbd7bea306d7df59fba28dd7`  
		Last Modified: Fri, 01 Jun 2018 16:11:18 GMT  
		Size: 8.4 MB (8433142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093e857ecdfa777d3f2a46fb31520082689498e09d0c265105a7c9d1b15356b9`  
		Last Modified: Fri, 01 Jun 2018 16:11:10 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df755da5e203a2fd0cffb378f10ed547a1b6753254df36ad56565f6fd5ced6c4`  
		Last Modified: Fri, 01 Jun 2018 16:11:10 GMT  
		Size: 2.0 KB (1995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92b8d56e39c7c905ac7ee356b692687e93a9795651f14183d723a8fdb41b1b5`  
		Last Modified: Fri, 01 Jun 2018 16:11:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8601f3a4b379178bf5ec1d429e9c40378e52f0b743cb2c4345720bd997ebea1`  
		Last Modified: Fri, 01 Jun 2018 16:11:10 GMT  
		Size: 1.4 KB (1385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre8-alpine` - linux; ppc64le

```console
$ docker pull jetty@sha256:a14e7fd8b607e431ed991c00e92dba489c86d07ce7fa88488c719907de43ac06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64314618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2836657ffef498df58f29b57bb19300ebdd4a080866f54317e77b9b0559d7c5`
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
# Sat, 16 Jun 2018 08:17:20 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 08:17:21 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 16 Jun 2018 08:17:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 16 Jun 2018 08:39:08 GMT
RUN addgroup -S jetty && adduser -D -S -H -G jetty jetty && rm -rf /etc/group- /etc/passwd- /etc/shadow-
# Sat, 16 Jun 2018 08:39:09 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 16 Jun 2018 08:39:11 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 08:39:17 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 16 Jun 2018 08:39:18 GMT
WORKDIR /usr/local/jetty
# Sat, 16 Jun 2018 08:39:19 GMT
ENV JETTY_VERSION=9.4.9.v20180320
# Sat, 16 Jun 2018 08:39:20 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.9.v20180320/jetty-home-9.4.9.v20180320.tar.gz
# Sat, 16 Jun 2018 08:39:21 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 16 Jun 2018 08:39:35 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Sat, 16 Jun 2018 08:39:36 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 16 Jun 2018 08:39:39 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 16 Jun 2018 08:39:40 GMT
WORKDIR /var/lib/jetty
# Sat, 16 Jun 2018 08:39:44 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 16 Jun 2018 08:39:45 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 16 Jun 2018 08:39:49 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 16 Jun 2018 08:39:51 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Sat, 16 Jun 2018 08:39:53 GMT
USER [jetty]
# Sat, 16 Jun 2018 08:39:54 GMT
EXPOSE 8080/tcp
# Sat, 16 Jun 2018 08:39:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 16 Jun 2018 08:39:59 GMT
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
	-	`sha256:9545976955521b08bf9926e25243afcf0faae0ff2b41c86af80cae28bd4bc9df`  
		Last Modified: Sat, 16 Jun 2018 08:20:54 GMT  
		Size: 53.8 MB (53794400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6609f0c8221ac4b891c997bb32de1ccde9d6f7a915f578fb714664e697d182f3`  
		Last Modified: Sat, 16 Jun 2018 08:41:11 GMT  
		Size: 1.1 KB (1104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e30ad43ad8a683e07c6c3ef90701b0b5a121a5f8766b44795fe65ad1d42f3e5`  
		Last Modified: Sat, 16 Jun 2018 08:41:11 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:482d7c12cb914e803a97411dfd8d8a8ea6475816e5efe2987beb314d366536dc`  
		Last Modified: Sat, 16 Jun 2018 08:41:09 GMT  
		Size: 8.4 MB (8433278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d85b000753b82528bc5b9a58272d8089e8189e89ca0fe9118ece84b98cd4e5`  
		Last Modified: Sat, 16 Jun 2018 08:41:08 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a0e774358ca2699ce68718e73b5dd3aa7b58ba47a46a8d592458715d8a0f65`  
		Last Modified: Sat, 16 Jun 2018 08:41:08 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f15107fd7927e887945c2aa7f738737e707530fa2491c4e1bdd55fbe15051de`  
		Last Modified: Sat, 16 Jun 2018 08:41:09 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee668284b8fa3ea553f672f27bb39a96e10168bf71110fdaf3346b45507c873`  
		Last Modified: Sat, 16 Jun 2018 08:41:08 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:jre8-alpine` - linux; s390x

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
