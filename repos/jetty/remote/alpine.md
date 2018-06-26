## `jetty:alpine`

```console
$ docker pull jetty@sha256:e9538a444e5f5c8a08926bf6c97c0cb696dbdd1320637462c1491eefdf841628
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:alpine` - linux; amd64

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
