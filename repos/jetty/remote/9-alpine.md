## `jetty:9-alpine`

```console
$ docker pull jetty@sha256:44155f3e77bcbd8a329cdf1148e8510197964aed5d1e92d72163906be6357c79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `jetty:9-alpine` - linux; amd64

```console
$ docker pull jetty@sha256:e3b31336275fc8de2fbf1f2964fd3b9a6fe6431b4a801b287b6023b76e59a418
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.1 MB (65111075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f68ba9e0bd3ccaab81251a9545f636c0c9935d5036b3d00221c2b6a277853b1`
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
# Tue, 26 Jun 2018 17:20:33 GMT
ENV JETTY_VERSION=9.4.11.v20180605
# Tue, 26 Jun 2018 17:20:33 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.11.v20180605/jetty-home-9.4.11.v20180605.tar.gz
# Tue, 26 Jun 2018 17:20:33 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Tue, 26 Jun 2018 17:20:38 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Tue, 26 Jun 2018 17:20:38 GMT
ENV JETTY_BASE=/var/lib/jetty
# Tue, 26 Jun 2018 17:20:39 GMT
RUN mkdir -p "$JETTY_BASE"
# Tue, 26 Jun 2018 17:20:39 GMT
WORKDIR /var/lib/jetty
# Tue, 26 Jun 2018 17:20:43 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Tue, 26 Jun 2018 17:20:43 GMT
ENV TMPDIR=/tmp/jetty
# Tue, 26 Jun 2018 17:20:44 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Tue, 26 Jun 2018 17:20:44 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Tue, 26 Jun 2018 17:20:45 GMT
USER [jetty]
# Tue, 26 Jun 2018 17:20:45 GMT
EXPOSE 8080/tcp
# Tue, 26 Jun 2018 17:20:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 26 Jun 2018 17:20:45 GMT
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
	-	`sha256:fda03fe0f44e74481bcd5de622cb25adf5f28d5b53f232bdf8fc630da98e2a1d`  
		Last Modified: Tue, 26 Jun 2018 17:24:03 GMT  
		Size: 8.5 MB (8503504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e6eb346b69badbd374364fa14851f3634ce8297ed2bbb9bcded33efab62e94`  
		Last Modified: Tue, 26 Jun 2018 17:24:03 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e21f7feb802d305f13d7e6f9d5f8dc462a86bc138f07e072c9aacdbf8e75b52`  
		Last Modified: Tue, 26 Jun 2018 17:24:02 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14fbc1180831f74be0ffc8647684f2081e2092290e6920b1f1cf4dac0ebe1070`  
		Last Modified: Tue, 26 Jun 2018 17:24:02 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3c0744a9649f64d0740804b8b4eb7539d1e31e3497a45a761de30fc2cde3e9`  
		Last Modified: Tue, 26 Jun 2018 17:24:02 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-alpine` - linux; arm64 variant v8

```console
$ docker pull jetty@sha256:59fd3eade21e98d13611901b24bf986c359168d4a06ba6a98ae54445fda471a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.7 MB (63719596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73347c922d85a906acf181cf71ace08bcb75678bd148302dbce78702463ebcba`
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
# Wed, 27 Jun 2018 09:14:45 GMT
ENV JETTY_VERSION=9.4.11.v20180605
# Wed, 27 Jun 2018 09:14:46 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.11.v20180605/jetty-home-9.4.11.v20180605.tar.gz
# Wed, 27 Jun 2018 09:14:47 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 27 Jun 2018 09:14:58 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Wed, 27 Jun 2018 09:14:59 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 27 Jun 2018 09:15:02 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 27 Jun 2018 09:15:03 GMT
WORKDIR /var/lib/jetty
# Wed, 27 Jun 2018 09:15:09 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 27 Jun 2018 09:15:10 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 27 Jun 2018 09:15:14 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 27 Jun 2018 09:15:16 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 27 Jun 2018 09:15:17 GMT
USER [jetty]
# Wed, 27 Jun 2018 09:15:18 GMT
EXPOSE 8080/tcp
# Wed, 27 Jun 2018 09:15:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 09:15:20 GMT
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
	-	`sha256:c21843e30a94a56d49b86b966dcffa0917f9958967e70d67c0b5300977f32eb2`  
		Last Modified: Wed, 27 Jun 2018 09:20:15 GMT  
		Size: 8.5 MB (8503567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c7536f7f434575c8d7b8f9361a55235afaaeba7f26858343552d0e4e412623`  
		Last Modified: Wed, 27 Jun 2018 09:20:12 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e50bf1759b31613dbf9d28342f9028c1097813aff6f2efbad2377d98c2ae8422`  
		Last Modified: Wed, 27 Jun 2018 09:20:12 GMT  
		Size: 2.0 KB (1987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952f4a00bdf87899cd4359fa218d2a95c59c65cb1e7a8a19d7a4aa0ce8ca8bf6`  
		Last Modified: Wed, 27 Jun 2018 09:20:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a1dce116120bf4ef06f9d2d392f2e66f593e7e1de4f35a815ae6550923da64`  
		Last Modified: Wed, 27 Jun 2018 09:20:13 GMT  
		Size: 1.4 KB (1387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jetty:9-alpine` - linux; ppc64le

```console
$ docker pull jetty@sha256:b691c625ada99cf7f2782140fedfc8be60e61739241ae3be81a8e117cea7dd03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64384935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:963c42646af2ba06176721bfad224fc783b7f5acff913a496e4fd1468b2fa022`
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
# Wed, 27 Jun 2018 08:49:14 GMT
ENV JETTY_VERSION=9.4.11.v20180605
# Wed, 27 Jun 2018 08:49:15 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-home/9.4.11.v20180605/jetty-home-9.4.11.v20180605.tar.gz
# Wed, 27 Jun 2018 08:49:16 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Wed, 27 Jun 2018 08:49:22 GMT
RUN set -xe 	&& apk add --no-cache --virtual .build-deps gnupg curl 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvzf jetty.tar.gz 	&& mv jetty-home-$JETTY_VERSION/* ./ 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm jetty.tar.gz* 	&& rm -fr jetty-home-$JETTY_VERSION/ 	&& apk del .build-deps 	&& rm -fr .build-deps 	&& rm -rf /tmp/hsperfdata_root
# Wed, 27 Jun 2018 08:49:23 GMT
ENV JETTY_BASE=/var/lib/jetty
# Wed, 27 Jun 2018 08:49:25 GMT
RUN mkdir -p "$JETTY_BASE"
# Wed, 27 Jun 2018 08:49:26 GMT
WORKDIR /var/lib/jetty
# Wed, 27 Jun 2018 08:49:31 GMT
RUN set -xe 	&& java -jar "$JETTY_HOME/start.jar" --create-startd --add-to-start="server,http,deploy,jsp,jstl,ext,resources,websocket" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Wed, 27 Jun 2018 08:49:32 GMT
ENV TMPDIR=/tmp/jetty
# Wed, 27 Jun 2018 08:49:34 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Wed, 27 Jun 2018 08:49:35 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Wed, 27 Jun 2018 08:49:37 GMT
USER [jetty]
# Wed, 27 Jun 2018 08:49:38 GMT
EXPOSE 8080/tcp
# Wed, 27 Jun 2018 08:49:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Jun 2018 08:49:40 GMT
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
	-	`sha256:8d46f7036a96945e2f08ed338473ead9d72fe4e408c9b1f78de921407a012f8e`  
		Last Modified: Wed, 27 Jun 2018 08:54:02 GMT  
		Size: 8.5 MB (8503600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb61ac213efd4e5b639795ab91f20db991133ead89353c872125164d6ab2b6d3`  
		Last Modified: Wed, 27 Jun 2018 08:54:02 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fee5f9e109f69144c21fe2ae70c2d47cb6b5d1d249b41a0ca6fa3a5dd09fc03`  
		Last Modified: Wed, 27 Jun 2018 08:54:01 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ea31304d0c9430ef0a864d8581f573fe9b889e822e310495f4564ccb6b1e5b`  
		Last Modified: Wed, 27 Jun 2018 08:54:01 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3871cf2012b3ac0e2ff812ce7bae1b5195966b51fb6fe7bb79811bbd11b88bd1`  
		Last Modified: Wed, 27 Jun 2018 08:54:01 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
